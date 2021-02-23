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
 * File:   application.h
 * Author: Samuel
 *
 * Created on November 26, 2018, 8:07 PM
 */


#ifndef APPLICATION_H
#define	APPLICATION_H

#include <string.h>
#include <stdio.h>
#include <xc.h> 
#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#include "EEPROM.h"
#include "errors.h"
#include "nwk.h"
#include "circular buffer.h"


#ifdef	__cplusplus
extern "C" {
#endif

#define REGION_NA
    
#define atCommandLen 80 
#define atCommandMaxTimeout 1000
#define payloadSizeMax (NWK_FRAME_MAX_PAYLOAD_SIZE - AES_BLOCKLEN)
    
//Uart mode of operations
enum UART_PARITY_ENUM {
    UART_8BIT_NO_PARITY = 0,
    UART_7BIT_MODE,
    UART_9BIT_ODD_PARITY,    
    UART_9BIT_EVEN_PARITY,   
    UART_PARITY_SENTINAL
};  

#if (__32MM0256GPM048__)
enum PIC32_UART_PARITY_ENUM {
    P8N = 0,
    P8E,
    P8O,
    P9N
};
#endif

//UART baud rate setting
enum UART_BAUD_ENUM {
    UART_BAUD_9600 = 0,
    UART_BAUD_19200,
    UART_BAUD_38400,
    UART_BAUD_57600,
    UART_BAUD_115200,
    UART_BAUD_SENTINAL
};
#if defined(__PICC18__)
uint24_t current_baud_rate; //Used for the MB stack
#endif
#if defined(__PIC32__)
uint32_t current_baud_rate; //Used for the MB stack
#endif
enum UART_BAUD_ENUM uart_baud_rate; // Used for MB map
enum UART_PARITY_ENUM uart_parity;
uint8_t curent_parity;
uint16_t pan_id;

#ifdef ATCOMM
enum ATTESTCASES{
    WDTTEST = 1,
    EETEST
};
#endif
/*******************************************************************************
 * Network related variables used at application level
*******************************************************************************/
//Radio modes
#define ROUTER          0
#define ENDDEVICE       1
#define AESKEYLEN       32

#define MEMBER_RADIUS_MAX       16
#define NONMEBER_RADIUS_MAX     16
uint8_t currentAddr0 = 0x12,currentAddr1 = 0x34,currentNetID = 0x55,
        currentMsgID = 0;
uint8_t sinkAddr0 = 0x00,sinkAddr1 = 0x00;
uint16_t mcast_id;
//Unit EUID
uint8_t EUIDbyte[12];

uint8_t currentMode = ROUTER;
uint8_t msgIDCounter = 0;

//AES encryption key default value
uint8_t aes_key[16];
uint8_t net_key[16];
#ifdef ATCOMM
char atCommand[atCommandLen];
char uartmsg[6];
volatile bool tx_done = 0;
#endif
uint8_t commandByteCounter = 0;
volatile uint16_t ATTimeoutTimer = 1000;
extern uint8_t currentAddr0,currentAddr1;

/*******************************************************************************
 * End point organization.
 ******************************************************************************/
enum endpoint_t{
    NETWORK_EP = 0,
    DATA_EP,
    MANAGEMENT_EP,
    OTA_EP,
    RESV1,
    RESV2,
    RESV3,
    RESV4,
    RESV5,
    RESV6,
    RESV7,
    RESV8,
    RESV9,
    RESV10,
    RESV11,
    RESV12
};

/*******************************************************************************
 * Buffer management structures for data send operation
 ******************************************************************************/
#define APP_TX_BUFFER_DEPTH 4
struct __attribute__ ((packed)) tx_buffer_t{
    unsigned retires:2; // Number of retires left for this message
    unsigned free:1;    // Descriptor un used
    unsigned active:1;  // Messages with stack do not request operation till 0
    unsigned resv:4;
    uint8_t backoff_timer; //Time between reties
    uint8_t msgid;
    NWK_DataReq_t nwkDataReq; //Stack request
    uint8_t payload[NWK_MAX_PAYLOAD_SIZE];//message payload
};
struct tx_buffer_t tx_buffer[APP_TX_BUFFER_DEPTH];

#if _18F26K42
#define APP_RX_BUFFER_DEPTH 4
#endif
#if (_18F27K42 || _18F47K42 || __32MM0256GPM048__)
#define APP_RX_BUFFER_DEPTH 8
#endif
struct __attribute__ ((packed)) rx_buffer_t{
    unsigned free:1;
    unsigned resv:7;
    NWK_DataInd_t rx_ind; //RX indication structure for the RX message
    uint8_t payload[NWK_MAX_PAYLOAD_SIZE];//message payload
};
struct rx_buffer_t rx_buffer[APP_RX_BUFFER_DEPTH];
uint8_t rx_buffer_queue[APP_RX_BUFFER_DEPTH];
CircularBufferContext rx_buffer_queue_context;

#define MSG_ACK_BUF_DEPTH   8
struct __attribute__ ((packed)) msg_ack_t{
    uint16_t dest_addr;
    uint8_t msgid;
    bool status;
};
struct msg_ack_t msg_ack_queue[MSG_ACK_BUF_DEPTH];
CircularBufferContext msg_ack_queue_context;

#ifdef MBRTU
#define MB_RTU_ADDR_MAX         247
#define MB_RTU_ADDR_MIN         1

uint8_t uartmode = 0;
uint8_t mb_rtu_addr = MB_RTU_ADDR_MAX;
#endif
const uint8_t ATVersionMajor = 1; 
const uint8_t ATVersionMinor = 0;    
#ifdef ATCOMM
const uint8_t FirmwareVersionMajor = 1;
#endif
#ifdef MBRTU
const uint8_t FirmwareVersionMajor = 1;
#endif
const uint8_t FirmwareVersionMinor = 1;

enum atState
{
    initMessage = 0,
    lookingForA,
    lookingForT,
    readingCommand,
    endingCommand,
    processCommand,
    resetATMachine
}atStateVar = initMessage;

/*******************************************************************************
 * Application header
 ******************************************************************************/
struct __attribute__ ((packed)) app_header_t{
    uint16_t iv_seed;
    uint16_t crc16;
    uint8_t resv[12];
};

#ifdef MBRTU
/*******************************************************************************
 * End point interpretation
 ******************************************************************************/
enum{
    TX_UCAST_ACK = 1,
    TX_UCAST_NOACK,
    TX_MCAST,
    TX_BCAST,
    TX_PING
}MB_TX_TYPE_ENCODING;

#define READ_ONLY_REG_NUM     16
#define READ_ONLY_REG_BASE    0
#define READ_ONLY_REG_START   1
#define READ_ONLY_REG_END     17
enum{
    RO_MAC1 = 1,
    RO_MAC2,
    RO_MAC3,
    RO_MAC4,
    RO_MAC5,
    RO_MAC6,
    RO_SINK_ID,
    RO_FW_VER,
    RO_REGION,
    RO_MODE,
    RO_TX_MSG_ID,
    RO_RX_MSG_ID,
    RO_RX_MSG_COUNT,
    RO_SADDR,
    RO_ADDR_DEBUG1,
    RO_ADDR_DEBUG2
}MB_RO_REGS;

#define WRITE_ONLY_REG_NUM     17
#define WRITE_ONLY_REG_BASE    500
#define WRITE_ONLY_REG_START   501
#define WRITE_ONLY_REG_END     (WRITE_ONLY_REG_START + WRITE_ONLY_REG_NUM)

enum{
    WO_AES1 = 1,
    WO_AES2,
    WO_AES3,
    WO_AES4,
    WO_AES5,
    WO_AES6,
    WO_AES7,
    WO_AES8,
    WO_NAES1,
    WO_NAES2,
    WO_NAES3,
    WO_NAES4,
    WO_NAES5,
    WO_NAES6,
    WO_NAES7,
    WO_NAES8,
    WO_SET_SINK
}MB_WO_REGS;

#define RW_REG_NUM     32
#define RW_REG_BASE    1000
#define RW_REG_START   1001
#define RW_REG_END     (RW_REG_START + RW_REG_NUM)

enum{
    RW_NET_ID = 1,
    RW_TX_POW,
    RW_SF,
    RW_TARGET_RSSI,
    RW_CAD_COL,
    RW_RF_CH,
    RW_MESH_HOPS,
    RW_LAST_ERR,
    RW_MBADDR,
    RW_MB_ADDR_KEY1,
    RW_MB_ADDR_KEY2,
    RW_MB_BAUD_RATE,
    RW_MB_PARITY,
    RW_MB_UART_KEY1,
    RW_MB_UART_KEY2,
    RW_MB_RSSI_ACCEPT,
    RW_MB_SOFT_RESET,
    RW_MB_MIN_LOOP_TIME,
    RW_MB_MAX_LOOP_TIME,
    RW_MB_MCASTID_1,
    RW_MB_MCASTID_2,
    RW_MB_MCASTID_3,
    RW_MB_MCASTID_4,
    RW_MB_MCASTID_5,
    RW_MB_MCASTID_6,
    RW_MB_MCASTID_7,
    RW_MB_MCASTID_8,
    RW_MB_MCASTID_9,
    RW_MB_MCASTID_10,
    RW_MB_MCASTID_KEY1,
    RW_MB_MCASTID_KEY2,
    RW_MB_ACK_STAT
}MB_RW_REGS;

#define TX_REG_NUM     58
#define TX_REG_BASE    2000
#define TX_REG_START   2001
#define TX_REG_END     (TX_REG_START + TX_REG_NUM)

enum{
    TX_CONTROL = 1,
    TX_DEST,
    TX_WORD1
}MB_TX_REGS;

#define RX_REG_NUM     59
#define RX_REG_BASE    3000
#define RX_REG_START   3001
#define RX_REG_END     (RX_REG_START + RX_REG_NUM)

enum{
    RX_CONTROL = 1,
    RX_NO_MSG,
    RX_SRC_ADDR,
    RX_WORD1
}MB_RX_REGS;

enum{
    NA = 1,
    IND
}REGION_CODE;

#define RESET_TIMER     1000; //Time in ms to wait before reset
uint16_t reset_timer = 0;
#endif
#ifdef ATCOMM
/*!
 * \brief Process a message command from UART
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void processATCommand(void);

/*!
 * \brief Send information message
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void sendInfo(void);
#endif

/*!
 * \brief Load necessary information from EEPROM and bootload app
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void bootLoadApplication(void);

/*!
 * \brief Load necessary information from EEPROM and bootload app
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void UART1_framing_error_handler(void);

/*!
 * \brief process a message received for this node
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void app_processes_msg(void);

/*!
 * \brief Call the MBRTU protocol stack functions
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
void MBRTUStack(void);

/*!
 * \brief Call every main cycle to run the application tasks
 *
 * \param [OUT] None.
 * \param [IN] None.
 */
inline void application(void);

#ifdef	__cplusplus
}
#endif

#endif	/* APPLICATION_H */

