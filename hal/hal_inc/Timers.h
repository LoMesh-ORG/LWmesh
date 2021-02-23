/*
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
*/
/* 
 * File:   Timers.h
 * Author: Samuel
 *
 * Created on July 6, 2019, 6:52 PM
 */

#ifndef TIMERS_H
#define	TIMERS_H
#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#if (__32MM0256GPM048__)
#include "coretimer.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/uart2.h"
#endif


#ifdef	__cplusplus
extern "C" {
#endif

#if (_18F27K42 || _18F47K42 || _18F26K42)
#define Enter_Timer0_Critical()   PIE3bits.TMR0IE = 0;
#define Exit_Timer0_Critical()    PIE3bits.TMR0IE = 1;
#endif
#if (__32MM0256GPM048__)
#define Enter_Timer0_Critical()   CORETIMER_DisableInterrupt();
#define Exit_Timer0_Critical()    CORETIMER_EnableInterrupt();
#endif
#define HAL_TIMER_INTERVAL        1ul // ms
    
    volatile uint16_t halTimerIrqCount = 0;
    volatile uint16_t test_timer = 5000;
    void Timer0Handler(void);
    
    void Timer1Handler(void);
    
    inline void set_timer0base(uint16_t*, uint16_t);
    inline uint16_t get_timer0base(uint16_t*);


#ifdef	__cplusplus
}
#endif

#endif	/* TIMERS_H */

