#include "user_app.h"
#include "Timers.h"
#include "application.h"
#include <stdio.h>
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

void user_application(void){
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
static uint16_t payloadWritePtr;
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

void transparentMode(void)
{
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
            //Broad cast the message.@TODO packets > 84 bytes
            transparentStateVar = initTransparent;
            break;
        default:
            transparentStateVar = initTransparent;
            break;
    }
}
#endif