/* 
 * File:   sx1280_drv.h
 * Author: samue
 *
 * Created on December 21, 2020, 8:09 PM
 */

#ifdef SX1280
#ifndef SX1280_DRV_H
#define	SX1280_DRV_H

#ifdef	__cplusplus
extern "C" {
#endif

    #define cadTimeOutms    2000
#define TxTimeOutms     1000
#define RANOM_TX_WAIT_MAX   200

//SX1276 Output power limits
#define sx1276LowerPower 2
#define sx1276UpperPower 17
#define sx1276SFMAX      12
#define sx1276SFMIN      7
#define SX1276RSSIMAX    -30
#define SX1276RSSIMIN    -120
#define PREAMBLE         12
#define RSSIGOODMIN      -110
#define RSSIGOODMAX      -30

#define PHY_RSSI_BASE_VAL                     (-157)

// Global variable for symbol length
uint8_t _implicitHeaderMode = 0;
uint32_t symbolDuration;
uint8_t _packetIndex = 0;
volatile uint16_t _cadBackoffTimer = 0,cadTimeOut = 0;
uint8_t cadDone = 0,cadCounter = 0, need_radio_reset = 0;
//variables to store the RSSI, packet RSSI and SNR values
int8_t RSSI,packetRSSI,SNR;
volatile uint16_t txTimeOut;
uint8_t current_sf;

//Channel setting variable
uint8_t channel;

//const uint32_t fhssList[] = {906E6,908E6,910E6,912E6,914E6,916E6,918E6,920E6,922E6,924E6,\
//                       923E6,921E6,919E6,917E6,915E6,913E6,911E6,909E6,907E6,905E6,\
//                       903E6,905.5E6,907.5E6,909.5E6,915.5E6,917.5E6,919.5E6,921.5E6,923.5E6,924.5E6,\
//                       906.25E6,908.75E6,910.25E6,912.75E6,914.25E6,916.75E6,918.25E6,920.75E6,922.25E6,924.75E6,\
//                       923.25E6,921.25E6,919.25E6,917.75E6,915.25E6,913.75E6,911.25E6,909.75E6,907.25E6,905.75E6,\
//                       903.5E6,905.25E6,907.75E6,909.25E6,915.75E6,917.25E6,919.75E6,921.25E6,923.75E6,924.52E6,\
//                       905.75E6,910.75E6,912.75E6};

const uint32_t fhssList[] = {906E6,908E6,910E6,912E6,914E6,916E6,918E6,920E6,922E6,924E6};

//Stores precomputed frf values
uint8_t fhssReg[sizeof(fhssList)/4][3];

uint8_t syncList[]  = {0x12,0x23,0x45,0x56,0x67,0x78,0x89,0x9A,0xAB,0xBC};
volatile uint8_t fhssdebug = 0;

//Target RSSI for channel activity detection
int8_t RSSITarget = -80;

//TX power level
uint8_t TXPower;

//FHSS dwell time timer. upto 4 messages per 20.1 sec
uint8_t dwellTimer = 0;

//RSSI threshold to accept packet
int8_t rssi_debug = -65;

//Unit EUID
extern uint8_t EUIDbyte[12];

uint8_t phyRxBuffer[128];
uint8_t phyTxBuffer[128];
uint8_t phyTxSize;

enum radio_state_enum
{
    RAD_RESET_LOW = 0,
    RAD_RESET_LOW_WAIT,
    RAD_RESET_HIGH,
    RAD_RESET_HIGH_WAIT,
    INIT_RADIO,
    START_RX,
    WAIT_FOR_RX,
    RX_MESSAGE,
    WAIT_RANDOM_TX,
    START_CAD,
    WAIT_FOR_CAD,
    START_TX,
    WAIT_FOR_TX,
    RESET_RADIO_ENGINE
}radio_state_var = INIT_RADIO; 
/*!
 * \brief Initialize the radio
 *
 * \param [OUT] None.
 * \param [IN] None
 */
void initRadio(void);

/*!
 * \brief Enable the recieve mode
 *
 * \param [OUT] None.
 * \param [IN] Max size of the packet to be recieved
 */
void receive(uint8_t size);

/*!
 * \brief Sets the SX1276 TX/RX frequency
 *
 * \param [OUT] None.
 * \param [IN] Frequency in Hz.
 */
uint32_t setFrequency(uint32_t frequency);

/*!
 * \brief Sets the SX1276 TX power level
 *
 * \param [OUT] None.
 * \param [IN] power in dBm.
 */
void setTxPower(uint8_t power);

/*!
 * \brief Sets the SX1280 to idle mode
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void idle(void);

/*!
 * \brief Sets the SX1276 spreading factor
 *
 * \param [OUT] None.
 * \param [IN] spreading factor between 7 to 12.
 */
void setSpreadingFactor(uint8_t sf);

/*!
 * \brief Sets the SX1276 bandwidth
 *
 * \param [OUT] None.
 * \param [IN] bandwidth within LoRa specifications
 */
void setSignalBandwidth(uint32_t sbw);

/*!
 * \brief Sets the SX1276 coding rate denominator
 *
 * \param [OUT] None.
 * \param [IN] Coding rate denominator
 */
void setCodingRate4(uint8_t denominator);

/*!
 * \brief Sets the SX1276 Sync byte
 *
 * \param [OUT] None.
 * \param [IN] Sync Byte
 */
void setSyncWord(uint8_t sw);

/*!
 * \brief State engine to handle the radio state engine
 *
 * \param [OUT] None
 * \param [IN] None
 */
void radio_engine(void);
#ifdef	__cplusplus
}
#endif

#endif	/* SX1280_DRV_H */
#endif
