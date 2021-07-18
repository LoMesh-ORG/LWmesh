#include "user_app.h"
#include "Timers.h"
#include "application.h"
#include "AES.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#ifdef USERAPP
static uint16_t distance = 0;
enum SENSO_SEND_STATE_ENUM
{
    SENSOR_STATE_INIT,
    SENSOR_STATE_WAIT,
    SENSOR_STATE_SEND
}sensor_send_state_var = SENSOR_STATE_INIT;
extern uint8_t set_parity(uint8_t parity);
extern uint8_t set_uart_baud(uint8_t i);
/*!
 * \brief process distance data
 * \param [OUT] None.
 * \param [IN] None.
 */
static uint8_t processDistanceData(uint8_t* distance_data){
    distance = ((distance_data[0] << 8u) & 0xFF00u) + distance_data[1];
    // TODO(anyone): Handle data obtained above
}

static void sendSensorData(void)
{
    uint8_t senddata[64];
    switch(sensor_send_state_var)
    {
        case SENSOR_STATE_INIT:
            set_timer0base(&sensor_send_timer, SENSOR_SEND_TIMER_DEFAULT);
            sensor_send_state_var = SENSOR_STATE_WAIT;
            break;
        case SENSOR_STATE_WAIT:
            if(!get_timer0base(&sensor_send_timer))
            {
                sensor_send_state_var = SENSOR_STATE_SEND;
            }
            break;
        case SENSOR_STATE_SEND:
            (void)memset(senddata, 0, sizeof(senddata));
            (void)sprintf(senddata, 
                    "=%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%04X", 
                    EUIDbyte[0], EUIDbyte[1],EUIDbyte[2], EUIDbyte[3],
                    EUIDbyte[4], EUIDbyte[5],EUIDbyte[6], EUIDbyte[7],
                    EUIDbyte[8], EUIDbyte[9],EUIDbyte[10], EUIDbyte[11],
                    distance);
            cmdSendSinkUnacked((char*)&senddata[0]);
            sensor_send_state_var = SENSOR_STATE_INIT;
            break;
        default:
            sensor_send_state_var = SENSOR_STATE_INIT;
            break;
    }
    
}

void user_application(void)
{
    //Check if RS485 tx should be turned off
    sendSensorData();
#if 0
    if(tx_done && U1ERRIRbits.TXMTIF){
//       TXEN_SetLow();
       tx_done = 0;
    }
#endif
    //Check if there is a command halfway thru and it timed out   
    if(!((lookingForHeader == sensorStateVar) || (processData == sensorStateVar)) && 
            (!get_timer0base(&ATTimeoutTimer)))        {
        sensorStateVar = resetSensorMachine;
    }
    switch(sensorStateVar){
        case initMessage:  
            (void)set_parity(UART_8BIT_NO_PARITY);
            (void)set_uart_baud(UART_BAUD_9600);
            sensorStateVar = resetSensorMachine;
            break;
        case lookingForHeader:
            //Read a byte if it is available
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            if(true == UART3_IsRxReady())
            #endif  
            {
                //There is a byte available
                #if (_18F27K42 || _18F47K42 || _18F26K42)
                if(UART1_Read() == 0xff)
                #endif
                #if (__32MM0256GPM048__)
                if(UART3_Read() == 0xff)
                #endif
                {
                    //Found 0xff
                    sensorStateVar = lookingForDataH;
                    set_timer0base(&ATTimeoutTimer, sensorTimeout);
                }
            }                
            break;        
        case lookingForDataH:
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            if(true == UART3_IsRxReady())
            #endif 
            {
                //There is a byte available
                #if (_18F27K42 || _18F47K42 || _18F26K42)
                uint8_t data = UART1_Read();
                #endif
                #if (__32MM0256GPM048__)
                uint8_t data = UART3_Read();
                #endif
                //Found DATA_H
                sensorStateVar = lookingForDataL;
                distanceData[distanceDataCounter] = data;
                distanceDataCounter++;
                set_timer0base(&ATTimeoutTimer, sensorTimeout);
            }
            break;            
        case lookingForDataL:
            //Found a AT command start now read till it is /r
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            if(true == UART3_IsRxReady())
            #endif 
            {
                #if (_18F27K42 || _18F47K42 || _18F26K42)
                uint8_t data = UART1_Read();
                #endif  
                #if (__32MM0256GPM048__)
                uint8_t data = UART3_Read();
                #endif
                // Found DATA_L
                sensorStateVar = lookingForSum;
                distanceData[distanceDataCounter] = data;
                distanceDataCounter++;
                set_timer0base(&ATTimeoutTimer, sensorTimeout);
            }
            break;         
        case lookingForSum:
            //Found an end of AT command. Wait for /n
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            if(true == UART3_IsRxReady())
            #endif 
            {
                #if (_18F27K42 || _18F47K42 || _18F26K42)
                uint8_t data = UART1_Read();
                #endif  
                #if (__32MM0256GPM048__)
                uint8_t data = UART3_Read();
                #endif
                // Found sum
                distanceData[distanceDataCounter] = data;
                distanceDataCounter++;
        
                // checksum validation
                uint8_t checksum = (0xFFu + 
                                    distanceData[0] + 
                                    distanceData[1]) &
                                    0xffu;
                if(checksum == distanceData[2])
                {
                    sensorStateVar = processData;
                }
                else
                {
                    sensorStateVar = resetSensorMachine;
                }
            }
            break;
            
        case processData:
            (void)processDistanceData(&distanceData[0]);
            sensorStateVar = resetATMachine;
            break;
        case resetSensorMachine:
            sensorStateVar = lookingForHeader;
            distanceDataCounter = 0;
            //clear the sensor data buffer
            (void)memset(&distanceData[0],0,sizeof(distanceData));
            set_timer0base(&ATTimeoutTimer, sensorTimeout);
            break;
            
        default:
            sensorStateVar = resetSensorMachine;
            break;
    }
}
#endif

#ifdef TRANS
static uint8_t transParentPayload[MAX_TRANSPARENT_PAYLOAD];
static uint8_t transParentPayloadTx[MAX_TRANSPARENT_PAYLOAD];
static uint16_t payloadWritePtr;
static uint16_t rxPayloadLenToTx;
static bool transDataToTx = false;
static uint8_t transDataToTxLen = 0;
static const uint16_t timeOutTable[] = 
{
    (0xFFFF - 4.004E-6/TIMEOUT_TIMER_RESOLUTION) + 1, /*9600*/
    (0xFFFF - 2.002E-6/TIMEOUT_TIMER_RESOLUTION) + 1, /*19200*/
    (0xFFFF - 1.75E-6/TIMEOUT_TIMER_RESOLUTION) + 1,  /*38400*/
    (0xFFFF - 1.75E-6/TIMEOUT_TIMER_RESOLUTION) + 1,  /*57600*/
    (0xFFFF - 1.75E-6/TIMEOUT_TIMER_RESOLUTION) + 1   /*115200*/
};
static void serialEndOfPacketTimeoutHandler(void)
{
    exitConditionTransparent = true;
}

bool transparentDataInd(NWK_DataInd_t *ind)
{
    // process the frame
    uint8_t buf_id;
    uint8_t* dataptr = ind->data;
    uint8_t bytesToTx = 0;
    static uint16_t rxPayloadWritePtr = 0;
    struct app_header_t* appHdr;
    if(CRC_OK != app_aes_decrypt(dataptr, (ind->size - AES_BLOCKLEN))){
            goto func_exit;
    }
    appHdr = dataptr;
    //Check if it is first packet
    if(true == appHdr->startOfPacket)
    {
        rxPayloadWritePtr = 0;
    }
    memcpy(&transParentPayloadTx[rxPayloadWritePtr],dataptr + AES_BLOCKLEN, 
            appHdr->dataLen);
    rxPayloadWritePtr += appHdr->dataLen;
    if(rxPayloadWritePtr > sizeof(transParentPayloadTx))
    {
        //Error detected prevent overwriting
        rxPayloadWritePtr = 0;
    }
    //Set Tx flag if no more data to be Rxed
    if(false == appHdr->moreBytes)
    {
        transDataToTx = true;
        transDataToTxLen = rxPayloadWritePtr;
    }    
    return true;
func_exit:
    return false;
}

void transparentMode(void)
{
    static uint16_t bytesToSend = 0;
    static uint16_t txPtr = 0;
    static bool firstPacket = false;
    //Check if we have to Tx data and FSM is ready for tx
    if((true == transDataToTx) && 
            (recievingPacketTransparent != transparentStateVar))
    {
        //There is data to Tx and FSM is good state to Tx
        for(uint8_t i = 0; i < transDataToTxLen; i++)
        {
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            UART1_Write(transParentPayloadTx[i]);
            #endif
            #if (__32MM0256GPM048__)
            #error //@TODO PIC32 time out timer setup
            #endif
        }
        transDataToTx = false;
    }
    switch(transparentStateVar)
    {
        case initTransparent:
            memset(transParentPayload, 0, sizeof(transParentPayload));
            payloadWritePtr = 0;
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            TMR0_SetInterruptHandler(serialEndOfPacketTimeoutHandler);
            #endif
            #if (__32MM0256GPM048__)
            #error //@TODO PIC32 time out timer setup
            #endif
            transparentStateVar = waitForPacketTransparent;            
            break;
        case waitForPacketTransparent:
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            if(true == UART3_IsRxReady())
            #endif 
            {
                //Found at least one byte. Advance to receive packet
                exitConditionTransparent = false;
                transparentStateVar = recievingPacketTransparent;
            }
            break;
        case recievingPacketTransparent:
            if(true == exitConditionTransparent)
            {
                TMR0_StopTimer();
                bytesToSend = payloadWritePtr;
                firstPacket = true;
                txPtr = 0;
                transparentStateVar = processPacketTransparent;
            }
            #if (_18F27K42 || _18F47K42 || _18F26K42)
            else if(UART1_is_rx_ready())
            #endif
            #if (__32MM0256GPM048__)
            else if(true == UART3_IsRxReady())
            #endif 
            {
                #if (_18F27K42 || _18F47K42 || _18F26K42)
                transParentPayload[payloadWritePtr++] = UART1_Read();
                TMR0_StopTimer();
                while((UART1_is_rx_ready()) && 
                        (payloadWritePtr < MAX_TRANSPARENT_PAYLOAD))
                {
                    transParentPayload[payloadWritePtr++] = UART1_Read(); 
                }
                TMR0_WriteTimer(timeOutTable[uart_baud_rate]);
                TMR0_StartTimer();
                #endif  
                #if (__32MM0256GPM048__)
                transParentPayload[payloadWritePtr++] = UART3_Read();
                #endif
            }  
            if(payloadWritePtr >= MAX_TRANSPARENT_PAYLOAD)
            {
                //bail as more than max payload received
                transparentStateVar = initTransparent;
            }
            break;
        case processPacketTransparent:
            if(bytesToSend > 0)
            {
                if(bytesToSend > MAX_USE_PAYLOAD)
                {
                    binaryBcast(&transParentPayload[txPtr], 
                            MAX_USE_PAYLOAD, true, firstPacket);
                    txPtr += MAX_USE_PAYLOAD;
                    bytesToSend -= MAX_USE_PAYLOAD;
                    txComplete = false;
                    transparentStateVar = waitSendPacket;
                }
                else
                {
                    binaryBcast(&transParentPayload[txPtr], 
                            bytesToSend, false, firstPacket);
                    transparentStateVar = initTransparent;
                }
            }
            else
            {
                transparentStateVar = initTransparent;
            }
            firstPacket = false;
            break;
        case waitSendPacket:
            if(true == txComplete)
            {
                transparentStateVar = processPacketTransparent;
            }
            break;
        default:
            transparentStateVar = initTransparent;
            break;
    }
}
#endif

#ifdef ENERGYMTR
#define PAYLOADVER  1
enum SENSO_SEND_STATE_ENUM
{
    SENSOR_STATE_INIT,
    SENSOR_STATE_WAIT,
    SENSOR_STATE_SEND
}sensor_send_state_var = SENSOR_STATE_INIT;

uint8_t senddata[MAX_USE_PAYLOAD];
//function for V1,V2,V3 and I1, I2, I3
//when you call this function --> then return rand()+ 230V +/- 10
static uint8_t send_voltage_current_gen(uint8_t nominal_val, 
        uint8_t pos_tolerance, uint8_t neg_tolerance)
{
    // Voltage or current to return
    uint8_t pwr_ret_val = 0;
    uint8_t calc_pos_tol = (uint8_t)((float)nominal_val + 
               ((float)nominal_val * (float)((float)pos_tolerance/(float)100)));
    uint8_t calc_neg_tol = (uint8_t)((float)nominal_val - 
               ((float)nominal_val * (float)((float)neg_tolerance/(float)100)));

    //generate random number between the +/- tolerance
    pwr_ret_val = (rand() % (calc_pos_tol - calc_neg_tol + 1)) + calc_neg_tol;

    return pwr_ret_val;
}      
static void sendSensorData(void)
{
    switch(sensor_send_state_var)
    {
        case SENSOR_STATE_INIT:
            set_timer0base(&sensor_send_timer, SENSOR_SEND_TIMER_DEFAULT);
            sensor_send_state_var = SENSOR_STATE_WAIT;
            break;
        case SENSOR_STATE_WAIT:
            if(!get_timer0base(&sensor_send_timer))
            {
                sensor_send_state_var = SENSOR_STATE_SEND;
            }
            break;
        case SENSOR_STATE_SEND:
            (void)memset(senddata, 0, sizeof(senddata));
            uint8_t V1 = send_voltage_current_gen(NOMINAL_VLT,VLTG_POS_TOL1,
                    VLTG_NEG_TOL1);
            uint8_t V2 = send_voltage_current_gen(NOMINAL_VLT,VLTG_POS_TOL2,
                    VLTG_NEG_TOL2);
            uint8_t V3 = send_voltage_current_gen(NOMINAL_VLT,VLTG_POS_TOL3,
                    VLTG_NEG_TOL3);
            uint8_t I1 = send_voltage_current_gen(NOMINAL_AMP,AMP_POS_TOL1,
                    AMP_NEG_TOL1);
            uint8_t I2 = send_voltage_current_gen(NOMINAL_AMP,AMP_POS_TOL2,
                    AMP_NEG_TOL2);
            uint8_t I3 = send_voltage_current_gen(NOMINAL_AMP,AMP_POS_TOL3,
                    AMP_NEG_TOL3);
            (void)sprintf(senddata, 
                    "=%u/%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X/%.1f"
                    "/%.1f/%.1f/%.1f/%.1f/%.1f/%.1f", PAYLOADVER,
                    EUIDbyte[0], EUIDbyte[1],EUIDbyte[2], EUIDbyte[3],
                    EUIDbyte[4], EUIDbyte[5],EUIDbyte[6], EUIDbyte[7],
                    EUIDbyte[8], EUIDbyte[9],EUIDbyte[10], EUIDbyte[11],
                    (float)V1,(float)V2,(float)V3,(float)I1,(float)I2,
                    (float)I3,(float)PWR_RATE);
            cmdSendSinkUnacked((char*)&senddata[0]);
            sensor_send_state_var = SENSOR_STATE_INIT;
            break;
        default:
            sensor_send_state_var = SENSOR_STATE_INIT;
            break;
    }
    
}        
   
void user_application(void)
{
    sendSensorData();
}
#endif