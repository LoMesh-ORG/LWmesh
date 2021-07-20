/*******************************************************************************
Copyright 2020 Samuel Ramrajkar

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*******************************************************************************/
//Handlers for all the timer ISRs
#include "Timers.h"
#ifdef SX1276
#include "sx1276.h"
#endif
#ifdef SX1280
#include "sx1280_drv.h"
#endif
#include "application.h"
#include "led.h"
#include "uart_default_control.h"
#ifdef USERAPP
#include "user_app.h"
#endif
    
void Timer0Handler(void){
    if(0 != txTimeOut){
        txTimeOut--;
    }
    if(0 != ATTimeoutTimer){
        ATTimeoutTimer--;
    }
    if(0 != cadTimeOut){
        cadTimeOut--;
    }
    if(0 != _cadBackoffTimer){
        _cadBackoffTimer--;
    }
    if(0 != ledtimer){
        ledtimer--;
    }
    if(0 != blen_sample_timer){
        blen_sample_timer--;
    }
#ifdef MBRTU
    if(0 != reset_timer){
        reset_timer--;
    }
#endif
#if (USERAPP || ENERGYMTR)
    if(0 != sensor_send_timer)
    {
        sensor_send_timer--;
    }
#endif
    halTimerIrqCount++;
}

inline uint16_t get_timer0base(uint16_t* timer){
    uint16_t tval;
    Enter_Timer0_Critical();
    tval = *timer;
    Exit_Timer0_Critical();
    return tval;
}

inline void set_timer0base(uint16_t* timer, uint16_t tval){
    Enter_Timer0_Critical();
    *timer = tval;
    Exit_Timer0_Critical();
}

#if (__32MM0256GPM048__)
void UART2_Transmit_CallBack ( void )
{
    TXEN_SetHigh();
}
#endif