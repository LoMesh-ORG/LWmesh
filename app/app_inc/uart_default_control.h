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
 * File:   uart_default_control.h
 * Author: samuel
 *
 * Created on June 18, 2020, 12:43 AM
 */

#ifndef UART_DEFAULT_CONTROL_H
#define	UART_DEFAULT_CONTROL_H

#ifdef	__cplusplus
extern "C" {
#endif
    uint16_t blen_sample_timer = 0;
    
    void uart_default_engine(void);
    
    enum USER_APPLICATION_STATE {CURRENT_PROFILE, DEFAULT_PROFILE};
    enum USER_APPLICATION_STATE user_application_state = CURRENT_PROFILE;
    enum USER_APPLICATION_STATE get_current_state(void);

#ifdef	__cplusplus
}
#endif

#endif	/* UART_DEFAULT_CONTROL_H */

