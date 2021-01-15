/*
 / _____)             _              | |
( (____  _____ ____ _| |_ _____  ____| |__
 \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 _____) ) ____| | | || |_| ____( (___| | | |
(______/|_____)_|_|_| \__)_____)\____)_| |_|
    (C)2013 Semtech

Description: Generic SX1276 driver implementation

License: Revised BSD License, see LICENSE.TXT file include in the project

Maintainer: Miguel Luis, Gregory Cristian and Wael Guibene
*/


#include "phy.h"
#ifdef SX1276
#include "sx1276.h"
#endif
#ifdef SX1280
#include "sx1280_drv.h"
#include "sx1280.h"
#include "sx1280-hal.h"
#endif

#include "Timers.h"
#include "led.h"
#include <stdlib.h>
#include <string.h>

/******************************************************************************/
//LWmesh phy interface
void PHY_Init(void){
    radio_state_var = RAD_RESET_LOW;
}

void PHY_SetRxState(bool rx){
    receive(0);
}

void PHY_SetChannel(uint8_t channel){
    setFrequency(fhssList[channel]);
}

void PHY_SetPanId(uint16_t panId){
    
}

void PHY_SetShortAddr(uint16_t addr){
    
}

void PHY_SetTxPower(uint8_t txPower){
    setTxPower(txPower);
}

void PHY_Sleep(void){
    
}

void PHY_Wakeup(void){
    
}

void PHY_DataReq(uint8_t *data, uint8_t size){
    
    if(size < sizeof(phyTxBuffer)){
        memcpy(phyTxBuffer, data, size);
    }
    phyTxSize = size;
}

void PHY_TaskHandler(void){
    radio_engine();
}

inline void PHY_Set_Packet_Rssi_Threshold(int8_t rssi){
    rssi_debug = rssi;
}

inline int8_t PHY_Get_Packet_Rssi_Threshold(void){
    return (rssi_debug);
}

inline void PHY_Get_Packet_Rssi_Threshold_Limits(int8_t* max, int8_t* min){
    *max = RSSIGOODMAX;
    *min = RSSIGOODMIN;
}

inline uint8_t PHYGetCadCounter(void){
    return cadCounter;
}
inline void PHYReSetCadCounter(void){
    cadCounter = 0;
}

