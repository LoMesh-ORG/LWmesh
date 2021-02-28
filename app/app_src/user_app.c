#include "user_app.h"
#include "Timers.h"
#ifdef USERAPP
/*!
 * \brief process distance data
 * \param [OUT] None.
 * \param [IN] None.
 */
static uint8_t processDistanceData(uint8_t* distance_data){
    uint16_t distance = ((distance_data[0] << 8u) & 0xFF00u) + distance_data[1];
    // TODO(anyone): Handle data obtained above
}

void user_application(void){
    //Check if RS485 tx should be turned off
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