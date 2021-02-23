/*
 / _____)             _              | |
( (____  _____ ____ _| |_ _____  ____| |__
 \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 _____) ) ____| | | || |_| ____( (___| | | |
(______/|_____)_|_|_| \__)_____)\____)_| |_|
    (C)2013 Semtech

Description: Generic SX1276 driver implementation

License: Revised BSD License, see LICENSE.TXT file include in the project

Maintainer: Miguel Luis and Gregory Cristian
*/
#ifndef __PHY_H__
#define __PHY_H__

#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#include <stdbool.h>
#endif
/*- Types ------------------------------------------------------------------*/
typedef struct PHY_DataInd_t
{
  uint8_t    *data;
  uint8_t    size;
  uint8_t    lqi;
  int8_t     rssi;
} PHY_DataInd_t;

enum
{
  PHY_STATUS_SUCCESS                = 0,
  PHY_STATUS_CHANNEL_ACCESS_FAILURE = 1,
  PHY_STATUS_NO_ACK                 = 2,
  PHY_STATUS_ERROR                  = 3,
};

#ifdef PHY_ENABLE_FRONTEND
enum
{
  PHY_ANT_SEL_DISABLED = 0,
  PHY_ANT1 = 1,
  PHY_ANT2 = 2,
  PHY_ANT_DIVERSITY = 3,
};
#endif

#ifdef PHY_ENABLE_RANDOM_NUMBER_GENERATOR
uint16_t PHY_RandomReq(void);
#endif

#ifdef PHY_ENABLE_AES_MODULE
void PHY_EncryptReq(uint8_t *text, uint8_t *key);
#endif

#ifdef PHY_ENABLE_ENERGY_DETECTION
int8_t PHY_EdReq(void);
#endif

#ifdef PHY_ENABLE_FRONTEND
void PHY_FrontendSetBypass(bool bypass);
void PHY_FrontendSelectAntenna(uint8_t mode);
#endif

/*- Prototypes -------------------------------------------------------------*/
void PHY_Init(void);
void PHY_SetRxState(bool rx);
void PHY_SetChannel(uint8_t channel);
void PHY_SetPanId(uint16_t panId);
void PHY_SetShortAddr(uint16_t addr);
void PHY_SetTxPower(uint8_t txPower);
void PHY_Sleep(void);
void PHY_Wakeup(void);
void PHY_DataReq(uint8_t *data, uint8_t size);
void PHY_DataConf(uint8_t status);
void PHY_DataInd(PHY_DataInd_t *ind);
void PHY_TaskHandler(void);
inline void PHY_Set_Packet_Rssi_Threshold(int8_t rssi);
inline int8_t PHY_Get_Packet_Rssi_Threshold(void);
inline void PHY_Get_Packet_Rssi_Threshold_Limits(int8_t*, int8_t*);
inline uint8_t PHYGetCadCounter(void);
inline void PHYReSetCadCounter(void);

#endif // __PHY_H__
