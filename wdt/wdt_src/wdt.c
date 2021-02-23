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
#include "mcc.h"
#include "wdt.h"
#include <stdbool.h>

#define LOOPTIMERRESET	    0
#define LOOPTIMERARRAYCNT	8 

static uint16_t min_loop_time = 0xFFFF, max_loop_time = 0;
static uint8_t  loop_timer_wrt_ptr = 0;

inline void start_loop_timer(void){
#if (_18F27K42 || _18F47K42 || _18F26K42)
	TMR5_WriteTimer(LOOPTIMERRESET);
	TMR5_StartTimer();
#endif
}

inline void stop_loop_timer(void){
    uint16_t looptime;
#if (_18F27K42 || _18F47K42 || _18F26K42)
	TMR5_StopTimer();
	looptime = TMR5_ReadTimer();
    if(looptime < min_loop_time){
        min_loop_time = looptime;
    }
    if(looptime > max_loop_time){
        max_loop_time = looptime;
    }
#endif
}

inline void get_loop_time(uint16_t* min, uint16_t* max){
	*min = min_loop_time;
    *max = max_loop_time;
}
