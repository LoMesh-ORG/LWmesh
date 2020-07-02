//Handlers for all the timer ISRs
#include "Timers.h"
#include "phy.h"
#include "application.h"
#include "led.h"
#include "uart_default_control.h"
    
void Timer0Handler(void){

    if(txTimeOut){
        txTimeOut--;
    }
    if(ATTimeoutTimer){
        ATTimeoutTimer--;
    }
    if(cadTimeOut){
        cadTimeOut--;
    }
    if(_cadBackoffTimer){
        _cadBackoffTimer--;
    }
    if(ledtimer){
        ledtimer--;
    }
    if(blen_sample_timer){
        blen_sample_timer--;
    }
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