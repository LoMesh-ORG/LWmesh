/*
 / _____)             _              | |
( (____  _____ ____ _| |_ _____  ____| |__
 \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 _____) ) ____| | | || |_| ____( (___| | | |
(______/|_____)_|_|_| \__)_____)\____)_| |_|
    (C)2013 Semtech

Description: Generic SX1276 driver implementation

License: Revised BSD License, see LICENSE.TXT file include in the project

Maintainer: Miguel Luis, Gregory Cristian and Wael Guibene
*/


#include "phy.h"
#include "Timers.h"
#include <stdlib.h>

static void SX1276ReadBuffer( uint8_t addr, uint8_t *buffer, uint8_t size );
static void SX1276WriteBuffer( uint8_t addr, uint8_t *buffer, uint8_t size );

static uint8_t phyRxBuffer[128];

/*!
 * \brief Reads the radio register at the specified address
 *
 * \param [IN]: addr Register address
 * \retval data Register value
 */
static uint8_t SX1276Read( uint8_t addr )
{
    uint8_t data;
    SX1276ReadBuffer( addr, &data, 1 );
    return data;
}

/*!
 * \brief Writes the radio register at the specified address
 *
 * \param [IN]: addr Register address
 * \param [IN]: data New register value
 */
static void SX1276Write( uint8_t addr, uint8_t data )
{
    SX1276WriteBuffer( addr, &data, 1 );
}

/*!
 * \brief Reads multiple radio registers starting at address
 *
 * \param [IN] addr First Radio register address
 * \param [OUT] buffer Buffer where to copy the registers data
 * \param [IN] size Number of registers to be read
 */
static void SX1276ReadBuffer( uint8_t addr, uint8_t *buffer, uint8_t size )
{
    uint8_t i;
    //NSS = 0;
    NSS_SetLow();
    SPI1_ExchangeByte(addr & SPI_READ_MASK);
    SPI1_ReadBlock(buffer, size);
    //NSS = 1;
    NSS_SetHigh();
}

/*!
 * \brief Writes multiple radio registers starting at address
 *
 * \param [IN] addr   First Radio register address
 * \param [IN] buffer Buffer containing the new register's values
 * \param [IN] size   Number of registers to be written
 */
static void SX1276WriteBuffer( uint8_t addr, uint8_t *buffer, uint8_t size )
{    
    uint8_t i;
    //NSS = 0;
    NSS_SetLow();
    SPI1_ExchangeByte(addr | SPI_WRITE_MASK);
    SPI1_WriteBlock(buffer, size);
    //NSS = 1;
    NSS_SetHigh();
}


/*!
 * \brief Writes the buffer contents to the SX1276 FIFO
 *
 * \param [IN] buffer Buffer containing data to be put on the FIFO.
 * \param [IN] size Number of bytes to be written to the FIFO
 */
static void SX1276WriteFifo( uint8_t *buffer, uint8_t size )
{
    SX1276WriteBuffer( 0, buffer, size );
}


/*!
 * \brief Reads the contents of the SX1276 FIFO
 *
 * \param [OUT] buffer Buffer where to copy the FIFO read data.
 * \param [IN] size Number of bytes to be read from the FIFO
 */
static void SX1276ReadFifo( uint8_t *buffer, uint8_t size )
{
    SX1276ReadBuffer( 0, buffer, size );
}

/*!
 * \brief Sets the SX1276 to idle mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void idle(void)
{
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_STANDBY);
}


/*!
 * \brief Sets the SX1276 to sleep mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void sleep(void)
{
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_SLEEP);
}

/*!
 * \brief Sets the SX1276 TX power level
 *
 * \param [OUT] None.
 * \param [IN] power in dBm.
 */
void setTxPower(uint8_t power)
{
    if(power < sx1276LowerPower)
    {
        power = sx1276LowerPower;
    }
    if(power > sx1276UpperPower)
    {
        power = sx1276UpperPower;
    }
    power = power -2;
    SX1276Write(REG_LR_PACONFIG, 0x70 | power | 0x80);
}


/*!
 * \brief Sets the SX1276 TX/RX frequency
 *
 * \param [OUT] None.
 * \param [IN] Frequency in Hz.
 */
uint32_t setFrequency(uint32_t frequency)
{
    uint32_t num, num_mod;

    // Frf = (Fxosc * num) / 2^19
    // We take advantage of the fact that 32MHz = 15625Hz * 2^11
    // This simplifies our formula to Frf = (15625Hz * num) / 2^8
    // Thus, num = (Frf * 2^8) / 15625Hz

    // First, do the division, since Frf * 2^8 does not fit in 32 bits
    num = frequency / 15625;
    num_mod = frequency % 15625;

    // Now do multiplication as well, both for the quotient as well as for
    // the remainder
    num <<= 8;
    num_mod <<= 8;

    // Try to correct for the remainder. After the multiplication we can still
    // recover some accuracy
    num_mod = num_mod / 15625;
    num += num_mod;
    

    SX1276Write(REG_LR_FRFMSB, (uint8_t)(num >> 16));
    SX1276Write(REG_LR_FRFMID, (uint8_t)(num >> 8));
    SX1276Write(REG_LR_FRFLSB, (uint8_t)(num));
    
    return(num);
}


/*!
 * \brief Sets the SX1276 spreading factor
 *
 * \param [OUT] None.
 * \param [IN] spreading factor between 7 to 12.
 */
void setSpreadingFactor(uint8_t sf)
{
    if (sf < 7) 
    {
        sf = 7;
    } 
    else if (sf > 12) 
    {
        sf = 12;
    }
    
    SX1276Write(REG_LR_DETECTOPTIMIZE, 0xc3);
    SX1276Write(REG_LR_DETECTIONTHRESHOLD, 0x0a);
    SX1276Write(REG_LR_MODEMCONFIG2, (SX1276Read(REG_LR_MODEMCONFIG2) & 0x0f) | ((sf << 4) & 0xf0));
    
    symbolDuration = 1000 / ( getSignalBandwidth() / (1L << getSpreadingFactor()) ) ;
}


/*!
 * \brief Sets the SX1276 bandwidth
 *
 * \param [OUT] None.
 * \param [IN] bandwidth within LoRa specifications
 */
void setSignalBandwidth(uint32_t sbw)
{
  uint32_t bw;

  if (sbw <= 7.8E3) {
    bw = 0;
  } else if (sbw <= 10.4E3) {
    bw = 1;
  } else if (sbw <= 15.6E3) {
    bw = 2;
  } else if (sbw <= 20.8E3) {
    bw = 3;
  } else if (sbw <= 31.25E3) {
    bw = 4;
  } else if (sbw <= 41.7E3) {
    bw = 5;
  } else if (sbw <= 62.5E3) {
    bw = 6;
  } else if (sbw <= 125E3) {
    bw = 7;
  } else if (sbw <= 250E3) {
    bw = 8;
  } else /*if (sbw > 250E3)*/ {
    bw = 9;
  }

  SX1276Write(REG_LR_MODEMCONFIG1, (SX1276Read(REG_LR_MODEMCONFIG1) & 0x0f) | (bw << 4));
  symbolDuration = 1000 / ( getSignalBandwidth() / (1L << getSpreadingFactor()) ) ;
}



/*!
 * \brief Sets the SX1276 bandwidth
 *
 * \param [OUT] Current spreading factor of the radio.
 * \param [IN] None.
 */
uint32_t getSpreadingFactor()
{
  return SX1276Read(REG_LR_MODEMCONFIG2) >> 4;
}

/*!
 * \brief Gets the SX1276 bandwidth
 *
 * \param [OUT] Current spreading factor of the radio.
 * \param [IN] None.
 */
uint32_t getSignalBandwidth()
{
  uint8_t bw = (SX1276Read(REG_LR_MODEMCONFIG1) >> 4);
  switch (bw) {
    case 0: return (uint32_t)7.8E3;
    case 1: return (uint32_t)10.4E3;
    case 2: return (uint32_t)15.6E3;
    case 3: return (uint32_t)20.8E3;
    case 4: return (uint32_t)31.25E3;
    case 5: return (uint32_t)41.7E3;
    case 6: return (uint32_t)62.5E3;
    case 7: return (uint32_t)125E3;
    case 8: return (uint32_t)250E3;
    case 9: return (uint32_t)500E3;
  }
  return 0;
}


/*!
 * \brief Sets the SX1276 coding rate denominator
 *
 * \param [OUT] None.
 * \param [IN] Coding rate denominator
 */
void setCodingRate4(uint8_t denominator)
{
  if (denominator < 5) {
    denominator = 5;
  } else if (denominator > 8) {
    denominator = 8;
  }

  uint8_t cr = denominator - 4;

  SX1276Write(REG_LR_MODEMCONFIG1, (SX1276Read(REG_LR_MODEMCONFIG1) & 0xf1) | (cr << 1));
}

/*!
 * \brief Sets the SX1276 preamble length
 *
 * \param [OUT] None.
 * \param [IN] preamble length
 */
void setPreambleLength(uint16_t length)
{
  SX1276Write(REG_LR_PREAMBLEMSB, (uint8_t)(length >> 8));
  SX1276Write(REG_LR_PREAMBLELSB, (uint8_t)(length >> 0));
}


/*!
 * \brief Sets the SX1276 Sync byte
 *
 * \param [OUT] None.
 * \param [IN] Sync Byte
 */
void setSyncWord(uint8_t sw)
{
  SX1276Write(REG_LR_SYNCWORD, sw);
}

/*!
 * \brief Returns the SX1276 Sync byte
 *
 * \param [OUT] Sync Byte
 * \param [IN] None
 */
uint8_t getSyncWord(void)
{
    return(SX1276Read(REG_LR_SYNCWORD));
}

/*!
 * \brief Enable packet CRC
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void enableCrc()
{
  SX1276Write(REG_LR_MODEMCONFIG2, SX1276Read(REG_LR_MODEMCONFIG2) | 0x04);
}


/*!
 * \brief Disable packet CRC
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void disableCrc(void)
{
    SX1276Write(REG_LR_MODEMCONFIG2, SX1276Read(REG_LR_MODEMCONFIG2) & 0xFB);
}

/*!
 * \brief Set up the SX1276 in explicite header mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void explicitHeaderMode(void)
{
  _implicitHeaderMode = 0;

  SX1276Write(REG_LR_MODEMCONFIG1, SX1276Read(REG_LR_MODEMCONFIG1) & 0xfe);
}


/*!
 * \brief Set up the SX1276 in implicite header mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void implicitHeaderMode(void)
{
  _implicitHeaderMode = 1;

  SX1276Write(REG_LR_MODEMCONFIG1, SX1276Read(REG_LR_MODEMCONFIG1) | 0x01);
}


/*!
 * \brief Enable the recieve mode
 *
 * \param [OUT] None.
 * \param [IN] Max size of the packet to be recieved
 */
void receive(uint8_t size)
{
  if (size > 0) {
    implicitHeaderMode();

    SX1276Write(REG_LR_PAYLOADLENGTH, size & 0xff);
  } else {
    explicitHeaderMode();
  }
  //Clear the FHSS IRQ flag
  SX1276Write(REG_LR_FIFOADDRPTR, 0);  // Reset rx FIFO pointer in radio
  SX1276Write(REG_LR_IRQFLAGS, 0xFF);  // Clear all interrupts
  SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_RECEIVER);
}


/*!
 * \brief Check if there are bytes left to read
 *
 * \param [OUT] .
 * \param [IN] None.
 */
uint8_t available(void)
{
  return (SX1276Read(REG_LR_RXNBBYTES));
}

uint8_t read()
{

  _packetIndex++;

  return SX1276Read(REG_LR_FIFO);
}


/*!
 * \brief Initialize the radio
 *
 * \param [OUT] None.
 * \param [IN] None
 */
void initRadio(void)
{
    uint8_t version;
    uint32_t BWset;
    uint16_t wideRSSI;
    //Reset the radio
    RADRST_SetLow();
    __delay_ms(100);
    RADRST_SetHigh();
    computeFRF();
    __delay_ms(500);
    //Read the radio version
    version = SX1276Read(REG_LR_VERSION);
    version++;
    SX1276Write(REG_LR_OPMODE,0x00);  //Sleep mode and high frequency register
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON);  //LoRa mode    
    
    setFrequency(fhssList[0]);
    setSpreadingFactor(7);
    setTxPower(17);
    setSignalBandwidth(500E3);
    explicitHeaderMode();
    setCodingRate4(4);
    setPreambleLength(12);
    enableCrc();
    SX1276Write(REG_LR_FIFOTXBASEADDR, 0x0);
    SX1276Write(REG_LR_FIFORXBASEADDR, 0);
    
    // set LNA boost
    SX1276Write(REG_LR_LNA, SX1276Read(REG_LR_LNA) | 0x03);
    
    // set auto AGC
    SX1276Write(REG_LR_MODEMCONFIG3, 0x04);
    
    //500kHz optimizations
    SX1276Write(REG_LR_TEST36,0x02);
    SX1276Write(REG_LR_TEST3A,0x64);
    
    //125kHz optimization
//    version = SX1276Read(REG_LR_DETECTOPTIMIZE);
//    version &= 0b01111111;
//    SX1276Write(REG_LR_DETECTOPTIMIZE,version);
//    SX1276Write(REG_LR_TEST2F,0x40);
//    SX1276Write(REG_LR_TEST30,0x00);
    
    
    //Enable time out for rxception
    
    SX1276Write(REG_LR_SYMBTIMEOUTLSB,255);
    //enable reception
    receive(0);
        
    __delay_ms(100);
    //Seed the random number generator for UUID
    wideRSSI = (SX1276Read(REG_LR_RSSIWIDEBAND)<<8) + SX1276Read(REG_LR_RSSIWIDEBAND);
    
    srand(wideRSSI);    
}

/*!
 * \brief Perform channel activity detection. This is a blocking call
 *
 * \param [OUT] 1 if the channel is active else 0
 * \param [IN] Node
 */
uint8_t cad(void)
{
    uint8_t temp;
    //Read the modem status and check if radio is not busy
    temp = SX1276Read(REG_LR_MODEMSTAT);
    if((temp & 0x01) | (temp & 0x02))
    {
        return 1; //Report that channel is active
    }
    start_radio_cad();
    cadDone = 0;
    set_timer0base(&cadTimeOut, cadTimeOutms);
    //Wait here till cad is done or timed out
    while((cadDone == 0) && (get_timer0base(&cadTimeOut)))
    {
        temp = SX1276Read(REG_LR_IRQFLAGS);
        SX1276Write(REG_LR_IRQFLAGS,temp);
        if(temp & RFLR_IRQFLAGS_CADDONE_MASK)
        {
            cadDone = 1;
            if(temp & RFLR_IRQFLAGS_CADDETECTED_MASK)
            {
                return 1;
            }
            else
            {
                int16_t RSSI;
                RSSI = -157 + SX1276Read(REG_LR_RSSIVALUE);
                //Check if the RSSI is favourable for TX
                if(RSSI < RSSITarget)
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
        }
    }
    if(!get_timer0base(&cadTimeOut))
    {
        //CAD timed out return channel active
        return 1;
    }
}

/*!
 * \brief Start radio CAD mode
 *
 * \param [OUT] None
 * \param [IN] none
 */
void start_radio_cad(void)
{
    idle();
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_CAD);
}

/*!
 * \brief CAD done ISR
 *
 * \param [OUT] None
 * \param [IN] none
 */
void cad_done_isr(void)
{
    //Clear cad done flag
    SX1276Write(REG_LR_IRQFLAGS,RFLR_IRQFLAGS_CADDONE_MASK);
    //If code reaches here, then restart cad on next channel
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_CAD);
}

/*!
 * \brief CAD detected ISR
 *
 * \param [OUT] None
 * \param [IN] none
 */
void cad_detected_isr(void)
{
    //Clear cad done and cad detected flag
    SX1276Write(REG_LR_IRQFLAGS,RFLR_IRQFLAGS_CADDONE_MASK | RFLR_IRQFLAGS_CADDETECTED_MASK);
    receive(1);
}

/*!
 * \brief Receive timeout ISR
 *
 * \param [OUT] None
 * \param [IN] none
 */
void rx_timeout_isr(void)
{
    //Clear All ISR flags
    SX1276Write(REG_LR_IRQFLAGS,RFLR_IRQFLAGS_RXTIMEOUT_MASK | RFLR_IRQFLAGS_CADDONE_MASK | RFLR_IRQFLAGS_CADDETECTED_MASK);
    //If code reaches here, then restart cad on next channel
    SX1276Write(REG_LR_OPMODE,RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_CAD);
}

/*!
 * \brief Calculate packet RSSI
 *
 * \param [OUT] RSSI
 * \param [IN] RSSI reg value from radio
 */
int8_t get_rssi(uint8_t rssi_reg){
    int16_t temp_rssi = -157 + rssi_reg; 
    if(temp_rssi < -127){
        temp_rssi = -127;
    }
    return (temp_rssi);
}

/*!
 * \brief Calculate packet LQI from packet RSSI
 *
 * \param [OUT] LQI
 * \param [IN] RSSI
 */
static uint8_t get_lqi(int8_t rssi){
    if(rssi > -10){
        return 255;
    }
    return ((2.18*(int16_t)rssi) + 10795);
}

/*!
 * \brief Read the received message from the radio
 *
 * \param [OUT] Packet in the last received buffer.
 * \param [IN] None
 */
void DIO0_Receive_ISR(void)
{
    uint8_t irqFlags = SX1276Read(REG_LR_IRQFLAGS);
    
    // clear IRQ's
    SX1276Write(REG_LR_IRQFLAGS, irqFlags);
    SX1276Write(REG_LR_IRQFLAGS, irqFlags);
    
    if (((irqFlags & RFLR_IRQFLAGS_PAYLOADCRCERROR) == 0) && (irqFlags & RFLR_IRQFLAGS_RXDONE) && ((irqFlags & RFLR_IRQFLAGS_RXTIMEOUT) == 0)) 
    {
        PHY_DataInd_t ind;
        uint8_t packetLength;
        // received a packet
        // read packet length
        packetLength = SX1276Read(REG_LR_RXNBBYTES);
        
        // set FIFO address to current RX address
        SX1276Write(REG_LR_FIFOADDRPTR, SX1276Read(REG_LR_FIFORXCURRENTADDR));                
        SX1276ReadBuffer(REG_LR_FIFO, &phyRxBuffer, packetLength);  
        //load the snr, and packet RSSI values
        SNR = SX1276Read(REG_LR_PKTSNRVALUE);
        packetRSSI = SX1276Read(REG_LR_PKTRSSIVALUE);
        ind.data = phyRxBuffer;
        ind.size = packetLength;
        ind.rssi = get_rssi(packetRSSI);
        ind.lqi  = get_lqi(ind.rssi);        
        PHY_DataInd(&ind);
    }
rx_error:    
    receive(0);
}


/*!
 * \brief Manage FHSS interrupt from the radio
 *
 * \param [OUT] Packet in the last received buffer.
 * \param [IN] None
 */
void DIO2_FHSS_ISR(void)
{
    SX1276Write(REG_LR_IRQFLAGS,RFLR_IRQFLAGS_FHSSCHANGEDCHANNEL);
    fhssdebug++;
//    if(DIO2_GetValue())
//    {
//        uint8_t channel;        
//        //Change the frequency channel
//        channel = (SX1276Read(REG_LR_HOPCHANNEL) & RFLR_HOPCHANNEL_CHANNEL_MASK);
//        //setFrequency(fhssList[channel]);
//        SX1276Write(REG_LR_FRFMSB, (uint8_t)fhssReg[channel][0]);
//        SX1276Write(REG_LR_FRFMID, (uint8_t)fhssReg[channel][1]);
//        SX1276Write(REG_LR_FRFLSB, (uint8_t)fhssReg[channel][2]);
//        //Clear the FHSS IRQ flag
//        
//    }    
}

/*!
 * \brief Pre compute frequency reg values for FHSS
 *
 * \param [OUT] None
 * \param [IN] None
 */
void computeFRF(void)
{
    for(uint8_t i = 0; i < (sizeof(fhssList)/4);i++)
    {
        uint32_t num, num_mod, frequency;
        frequency = fhssList[i];
        // Frf = (Fxosc * num) / 2^19
        // We take advantage of the fact that 32MHz = 15625Hz * 2^11
        // This simplifies our formula to Frf = (15625Hz * num) / 2^8
        // Thus, num = (Frf * 2^8) / 15625Hz

        // First, do the division, since Frf * 2^8 does not fit in 32 bits
        num = frequency / 15625;
        num_mod = frequency % 15625;

        // Now do multiplication as well, both for the quotient as well as for
        // the remainder
        num <<= 8;
        num_mod <<= 8;

        // Try to correct for the remainder. After the multiplication we can still
        // recover some accuracy
        num_mod = num_mod / 15625;
        num += num_mod;
        
        fhssReg[i][0] = (num >> 16);
        fhssReg[i][1] = (num >> 8);
        fhssReg[i][2] = (num);
    }
}

/*!
 * \brief State engine to handle the radio state engine
 *
 * \param [OUT] None
 * \param [IN] None
 */
static void radio_engine(void){
    switch(radio_state_var){
        case INIT_RADIO:
            initRadio();
            radio_state_var = START_RX;   
            need_radio_reset = 0;
            break;
        case START_RX:
            if(need_radio_reset){
                radio_state_var = INIT_RADIO;
                break;
            }
            receive(0);
            radio_state_var = WAIT_FOR_RX;
            break;
        case WAIT_FOR_RX:
            if(DIO0_GetValue()){
                radio_state_var = RX_MESSAGE;                
            }
            break;    
        case RX_MESSAGE:
            DIO0_Receive_ISR();
            radio_state_var = START_RX;
            break;
        case START_CAD:
            if(!get_timer0base(&_cadBackoffTimer)){
                if(cad()){
                    //Channel is active. Back away for some time
                    set_timer0base(&_cadBackoffTimer, cadTimeOutms);
                    //Backing off from the channel for now
                    radio_state_var = START_RX;
                    if(cadCounter < 10)
                    {
                        cadCounter++;
                    }
                }
                else{
                //Backing off from the cannel for now
                radio_state_var = START_TX;
                }
            }
            else{
                //Backing off from the cannel for now
                radio_state_var = START_RX;
            }
            break;
        case START_TX:
            set_timer0base(&txTimeOut, TxTimeOutms);
            radio_state_var = WAIT_FOR_TX;            
            break;
        case WAIT_FOR_TX:
            if((!get_timer0base(&txTimeOut)) || ((SX1276Read(REG_LR_IRQFLAGS) & RFLR_IRQFLAGS_TXDONE))){
                radio_state_var = START_RX;
                if(get_timer0base(&txTimeOut)){
                    PHY_DataConf(PHY_STATUS_SUCCESS);
                }
                else{
                    PHY_DataConf(PHY_STATUS_NO_ACK);
                }
            }
            break;
        default:
            radio_state_var = INIT_RADIO;
    }
}

/******************************************************************************/
//LWmesh phy interface
void PHY_Init(void){
    initRadio();
}

void PHY_SetRxState(bool rx){
    receive(0);
}

void PHY_SetChannel(uint8_t channel){
    setFrequency(fhssList[channel]);
}

void PHY_SetPanId(uint16_t panId){
    
}

void PHY_SetShortAddr(uint16_t addr){
    
}

void PHY_SetTxPower(uint8_t txPower){
    setTxPower(txPower);
}

void PHY_Sleep(void){
    
}

void PHY_Wakeup(void){
    
}

void PHY_DataReq(uint8_t *data, uint8_t size){
    idle();
    explicitHeaderMode();

    SX1276Write(REG_LR_FIFOTXBASEADDR, 0x0);
    SX1276Write(REG_LR_FIFOADDRPTR, 0x00);
    SX1276Write(REG_LR_PAYLOADLENGTH, size);

    NSS_SetLow();
    SPI1_ExchangeByte(REG_LR_FIFO | SPI_WRITE_MASK);
    SPI1_WriteBlock(data,size);
    NSS_SetHigh();
    SX1276Write(REG_LR_OPMODE, 
            RFLR_OPMODE_LONGRANGEMODE_ON | RFLR_OPMODE_TRANSMITTER);
    radio_state_var = START_TX;
}

void PHY_TaskHandler(void){
    radio_engine();
}
/******************************************************************************/
void readAllReg(void)
{
    uint8_t data[128],index;
    for(index = 0;index < 128; index++)
    {
        data[index] = SX1276Read(index);
    }
    asm("nop");
}

