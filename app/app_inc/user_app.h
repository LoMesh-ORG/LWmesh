/*
Copyright 2021 Samuel Ramrajkar

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
 * File:   application.h
 * Author: Samuel
 *
 * Created on February 28, 2021, 12:52 PM
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded. 
#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#include "application.h"
#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
#define sensorDataLen 3
#define sensorTimeout 1000
#define SENSOR_SEND_TIMER_DEFAULT   10000
uint8_t distanceDataCounter = 0;    
uint8_t distanceData[sensorDataLen];
volatile uint16_t sensor_send_timer;

enum sensorState
{
    initSensor = 0,
    lookingForHeader,
    lookingForDataL,
    lookingForDataH,
    lookingForSum,
    processData,
    resetSensorMachine
}sensorStateVar = initSensor;

void user_application(void); 

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

