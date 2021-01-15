#ifdef SX1280
#include "mcc.h"
#include "sx1280_drv.h"
#include "sx1280.h"
#include "sx1280-hal.h"
#include "Timers.h"
#include "phy.h"
#include "led.h"
#include <stdlib.h>

static ModulationParams_t mod_params;
static PacketParams_t     packet_params;

/*!
 * \brief Sets the SX1280 TX/RX frequency
 *
 * \param [OUT] None.
 * \param [IN] Frequency in Hz.
 */
uint32_t setFrequency(uint32_t frequency)
{
    SX1280SetRfFrequency(frequency);
    return 0;
}

/*!
 * \brief Sets the SX1280 TX power level
 *
 * \param [OUT] None.
 * \param [IN] power in dBm.
 */
void setTxPower(uint8_t power)
{
    SX1280SetTxParams((int8_t)power, RADIO_RAMP_10_US);
}

/*!
 * \brief Sets the SX1276 spreading factor
 *
 * \param [OUT] None.
 * \param [IN] spreading factor between 7 to 12.
 */
void setSpreadingFactor(uint8_t sf)
{
    uint8_t tempsf;
    switch(sf)
    {
        case 7u:
            tempsf = LORA_SF7;
            break;
        case 8u:
            tempsf = LORA_SF8;
            break;
        case 9u:
            tempsf = LORA_SF9;
            break;
        case 10u:
            tempsf = LORA_SF10;
            break;
        case 11u:
            tempsf = LORA_SF11;
            break;
        case 12u:
            tempsf = LORA_SF12;
            break;
        default:
            tempsf = LORA_SF9;
            break;
    }
    mod_params.Params.LoRa.SpreadingFactor = tempsf;
    SX1280SetModulationParams(&mod_params);
}

/*!
 * \brief Sets the SX1280 bandwidth
 *
 * \param [OUT] None.
 * \param [IN] bandwidth within LoRa specifications
 */
void setSignalBandwidth(uint32_t sbw)
{
    uint8_t tempbw;
    if(203000u == sbw)
    {
        tempbw = LORA_BW_0200;
    }
    else if(406000u == sbw)
    {
        tempbw = LORA_BW_0400;
    }
    else if(812000u == sbw)
    {
        tempbw = LORA_BW_0800;
    }
    else if(1625000u == sbw)
    {
        tempbw = LORA_BW_1600;
    }
    else
    {
        tempbw = LORA_BW_0800;
    }
    mod_params.Params.LoRa.Bandwidth = tempbw;
    SX1280SetModulationParams(&mod_params);
}

/*!
 * \brief Sets the SX1276 coding rate denominator
 *
 * \param [OUT] None.
 * \param [IN] Coding rate denominator
 */
void setCodingRate4(uint8_t deno)
{
    uint8_t denominator = deno;
    if (denominator < LORA_CR_LI_4_5) 
    {
        denominator = LORA_CR_LI_4_5;
    } 
    else if (denominator > LORA_CR_LI_4_7) 
    {
        denominator = LORA_CR_LI_4_7;
    }
    else
    {
        denominator = LORA_CR_LI_4_7;
    }
    mod_params.Params.LoRa.CodingRate = denominator;
    SX1280SetModulationParams(&mod_params);
}

/*!
 * \brief Sets the SX1276 Sync byte
 *
 * \param [OUT] None.
 * \param [IN] Sync Byte
 */
void setSyncWord(uint8_t sw)
{
    (void)sw;
    //Stubbed out for now
}

/*!
 * \brief Sets the SX1280 to idle mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void idle(void)
{
    SX1280SetStandby(STDBY_RC);
}

/*!
 * \brief Enable the recieve mode
 *
 * \param [OUT] None.
 * \param [IN] Max size of the packet to be recieved
 */
void receive(uint8_t size)
{
    volatile RadioStatus_t rad_stat;
    PacketParams_t     packet_params;
    packet_params.PacketType                 = PACKET_TYPE_LORA;
    packet_params.Params.LoRa.PreambleLength = 0x32u;    
    packet_params.Params.LoRa.CrcMode        = LORA_CRC_ON;
    packet_params.Params.LoRa.InvertIQ       = LORA_IQ_NORMAL;
    if (0u != size) 
    {
        packet_params.Params.LoRa.HeaderType     = LORA_PACKET_IMPLICIT;
        packet_params.Params.LoRa.PayloadLength  = size;
    } 
    else 
    {
       packet_params.Params.LoRa.HeaderType     = LORA_PACKET_EXPLICIT;
    }
    SX1280SetPacketParams(&packet_params);
    SX1280SetBufferBaseAddresses(0u, 128u);
    SX1280ClearIrqStatus(IRQ_RADIO_ALL);
    SX1280SetRx(RX_TX_CONTINUOUS);
    rad_stat = SX1280GetStatus();
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
static void DIO0_Receive_ISR(void)
{
    PacketStatus_t pktStatus;
    uint16_t irqFlags;
    //Get packet status
    SX1280GetPacketStatus((PacketStatus_t*)&pktStatus);
    // clear IRQ's
    irqFlags = SX1280GetIrqStatus( );
    SX1280ClearIrqStatus(IRQ_RADIO_ALL);
    
    if (/*(0 == pktStatus.Params.LoRa.ErrorStatus.CrcError) && */
        /*(0 == pktStatus.Params.LoRa.ErrorStatus.LengthError) && */
        /*(0 == pktStatus.Params.LoRa.ErrorStatus.AbortError) && */
        (0 == pktStatus.Params.LoRa.ErrorStatus.SyncError) &&
        (0 != pktStatus.Params.LoRa.ErrorStatus.PacketReceived)) 
    {
        PHY_DataInd_t ind;
        uint8_t packetLength;
        // received a packet
        // read packet length
        SX1280GetPayload(&phyRxBuffer, &packetLength, sizeof(phyRxBuffer));
 
        //load the snr, and packet RSSI values
        SNR = pktStatus.Params.LoRa.SnrPkt;
        packetRSSI = pktStatus.Params.LoRa.RssiPkt;
        ind.data = phyRxBuffer;
        ind.size = packetLength;
        ind.rssi = packetRSSI;
        ind.lqi  = get_lqi(ind.rssi); 
        if(ind.rssi > rssi_debug){
            PHY_DataInd(&ind);
#ifndef MODULE            
            queue_rx_led_event();
#endif            
        }        
    }    
    receive(0);
}

/*!
 * \brief Perform channel activity detection. This is a blocking call
 *
 * \param [OUT] 1 if the channel is active else 0
 * \param [IN] Node
 */
static uint8_t cad(void){
    uint16_t temp;
    int16_t RSSI_loc;
    volatile RadioStatus_t rad_stat;
    //Read the modem status and check if radio is not busy
    RSSI_loc = SX1280GetRssiInst();
    if(RSSI_loc > RSSITarget){
        return 1; //Report that channel is active
    }  
    SX1280ClearIrqStatus(IRQ_RADIO_ALL);
    idle();
    SX1280SetCad();
    rad_stat = SX1280GetStatus();
    cadDone = 0;
    set_timer0base(&cadTimeOut, cadTimeOutms);
    //Wait here till cad is done or timed out
    while((cadDone == 0) && (get_timer0base(&cadTimeOut)))
    {
        temp = SX1280GetIrqStatus();
        
        if(0 != (temp & IRQ_CAD_DONE))
        {
            cadDone = 1;
            if(0 != (temp & IRQ_CAD_ACTIVITY_DETECTED))
            {
                return 1;
            }
            else
            {                
                return 0;
            }
        }
    }
    if(!get_timer0base(&cadTimeOut))
    {
        //CAD timed out return channel active
        return 1;
    }
}

static void sx1276_send()
{
    PacketParams_t     packet_params;
    packet_params.PacketType                 = PACKET_TYPE_LORA;
    packet_params.Params.LoRa.PreambleLength = 0x32u;    
    packet_params.Params.LoRa.CrcMode        = LORA_CRC_ON;
    packet_params.Params.LoRa.InvertIQ       = LORA_IQ_NORMAL;
    packet_params.Params.LoRa.HeaderType     = LORA_PACKET_EXPLICIT;
    packet_params.Params.LoRa.PayloadLength  = phyTxSize;
    SX1280SetPacketParams(&packet_params);
    SX1280SetBufferBaseAddresses(0u, 128u);
    SX1280SendPayload(phyTxBuffer, phyTxSize, RX_TX_CONTINUOUS);
}

/*!
 * \brief Initialize the radio
 *
 * \param [OUT] None.
 * \param [IN] None
 */
void initRadio(void)
{
    volatile uint16_t rad_ver;
    volatile RadioStatus_t rad_stat;
    volatile uint8_t test;
    volatile double freq_error;
    PacketParams_t     packet_params;
    CalibrationParams_t calib_params;
    calib_params.PLLEnable = 1;
    calib_params.RC13MEnable = 1;
    calib_params.RC64KEnable = 1;
    
    
    SX1280Calibrate(calib_params);
    SX1280SetRegulatorMode(USE_DCDC);  
    rad_ver = SX1280GetFirmwareVersion();    
    SX1280SetStandby(STDBY_RC);
#if 0
    test = SX1280HalReadRegister(0x944);
    SX1280HalWriteRegister(0x944, 0xaa);
    test = SX1280HalReadRegister(0x944);
    SX1280SetPacketType(PACKET_TYPE_LORA);
    test = SX1280GetPacketType();
#endif
    
    mod_params.PacketType                    = PACKET_TYPE_LORA;
    mod_params.Params.LoRa.SpreadingFactor   = LORA_SF12;
    mod_params.Params.LoRa.Bandwidth         = LORA_BW_1600;
    mod_params.Params.LoRa.CodingRate        = LORA_CR_4_6;
    
    SX1280SetModulationParams(&mod_params);
    SX1280HalWriteRegister(0x925u, 0x32u);
    SX1280HalWriteRegister(0x093Cu, 0x01u);

        
    packet_params.PacketType                 = PACKET_TYPE_LORA;
    packet_params.Params.LoRa.PreambleLength = 0x32u;    
    packet_params.Params.LoRa.CrcMode        = LORA_CRC_ON;
    packet_params.Params.LoRa.InvertIQ       = LORA_IQ_NORMAL;
    packet_params.Params.LoRa.HeaderType     = LORA_PACKET_EXPLICIT;
    
    SX1280SetPacketParams(&packet_params);
    SX1280SetBufferBaseAddresses(0, 128);
    SX1280SetRfFrequency(2404000000);
    SX1280SetTxParams(8, RADIO_RAMP_02_US);
    
    SX1280SetDioIrqParams(IRQ_RX_DONE | IRQ_CAD_DONE | IRQ_TX_DONE | 
            IRQ_CAD_ACTIVITY_DETECTED, IRQ_RX_DONE, IRQ_CAD_DONE, 
            IRQ_HEADER_ERROR);
    
    SX1280SetCadParams(LORA_CAD_04_SYMBOL);
    SX1280SetFs();
    freq_error = SX1280GetFrequencyError();
    rad_stat = SX1280GetStatus();
}

/*!
 * \brief State engine to handle the radio state engine
 *
 * \param [OUT] None
 * \param [IN] None
 */
void radio_engine(void)
{
    switch(radio_state_var){
        case RAD_RESET_LOW:
            RADRST_SetLow();
            set_timer0base(&txTimeOut, 100); //Reuse the timer
            radio_state_var = RAD_RESET_LOW_WAIT;
            break;
        case RAD_RESET_LOW_WAIT:
            if(!get_timer0base(&txTimeOut)){
                RADRST_SetHigh();
                set_timer0base(&txTimeOut, 700); //Reuse the timer
                radio_state_var = RAD_RESET_HIGH_WAIT;
            }
            break;
        case RAD_RESET_HIGH_WAIT:
            if(!get_timer0base(&txTimeOut)){
                radio_state_var = INIT_RADIO;
            }
            break;
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
            //Poll for DIO1 for RX done
            if(DIO1_GetValue()){
                radio_state_var = RX_MESSAGE;                
            }
            if(phyTxSize){
                //Set random backoff timer
                uint16_t temp_time = rand();
                while(temp_time > RANOM_TX_WAIT_MAX){
                   temp_time -= RANOM_TX_WAIT_MAX;
                }
                set_timer0base(&_cadBackoffTimer, temp_time);
                radio_state_var = WAIT_RANDOM_TX;
            }
            break;    
        case RX_MESSAGE:
            DIO0_Receive_ISR();
            radio_state_var = START_RX;
            break;
        case WAIT_RANDOM_TX:
            if(!get_timer0base(&_cadBackoffTimer)){
                radio_state_var = START_CAD;
            }
            if(DIO1_GetValue()){
                DIO0_Receive_ISR(); // Do not change state
            }
            break;
        case START_CAD:
            if(!get_timer0base(&_cadBackoffTimer)){
                if(cad()){
                    //Channel is active. Back away for some time
                    set_timer0base(&_cadBackoffTimer, cadTimeOutms);
                    //Backing off from the channel for now
                    radio_state_var = START_RX;
                    if(cadCounter < 10){
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
                radio_state_var = WAIT_FOR_RX;
            }
            break;
        case START_TX:
            sx1276_send();
            set_timer0base(&txTimeOut, TxTimeOutms);
            radio_state_var = WAIT_FOR_TX;            
            break;
        case WAIT_FOR_TX:
            if((!get_timer0base(&txTimeOut)) || 
                    (0 != (SX1280GetIrqStatus() & IRQ_TX_DONE)))
            {
                phyTxSize = 0;
                radio_state_var = START_RX;
                if(get_timer0base(&txTimeOut)){
                    PHY_DataConf(PHY_STATUS_SUCCESS);
#ifndef MODULE                    
                    queue_tx_led_event();
#endif                    
                }
                else{
                    PHY_DataConf(PHY_STATUS_NO_ACK);
                }
            }
            break;
        default:
            radio_state_var = RAD_RESET_LOW;
    }
}
#endif