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
 * File:   led.h
 * Author: Samuel
 *
 * Created on September 12, 2019, 10:00 PM
 */

#ifndef LED_H
#define	LED_H

#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#include <xc.h>
#ifdef	__cplusplus
extern "C" {
#endif        
    volatile uint16_t ledtimer = 0;
    void ledInit(void);
    void handle_led_events(void);
    int8_t queueLedEvent(uint8_t LEDState,uint16_t duration);
    void queue_serial_led_event(void);
    void queue_tx_led_event(void);
    void queue_rx_led_event(void);


#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */

