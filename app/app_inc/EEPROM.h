/* 
 * File:   EEPROM.h
 * Author: Samuel
 *
 * Created on December 27, 2018, 7:40 PM
 */

#ifndef EEPROM_H
#define	EEPROM_H

#ifdef	__cplusplus
extern "C" {
#endif

#define EEPROMbase  0
#define EEPROMback1  256
#define EEPROMback2  512
    
//Boot load req
#define REQBootLoad  EEPROMbase + 0  
    
//Serial number    
#define UUTSerial0   REQBootLoad + 1
#define UUTSerial1   UUTSerial0 + 1
#define UUTSerial2   UUTSerial1 + 1    
#define UUTSerial3   UUTSerial2 + 1
#define UUTSerial4   UUTSerial3 + 1     
#define UUTSerial5   UUTSerial4 + 1    
#define UUTSerial6   UUTSerial5 + 1
#define UUTSerial7   UUTSerial6 + 1   
    
//App AES Key    
#define AESkey0       UUTSerial7 + 1
#define AESkey1       AESkey0    + 1 
#define AESkey2       AESkey1    + 1
#define AESkey3       AESkey2    + 1
#define AESkey4       AESkey3    + 1
#define AESkey5       AESkey4    + 1 
#define AESkey6       AESkey5    + 1
#define AESkey7       AESkey6    + 1  
#define AESkey8       AESkey7    + 1
#define AESkey9       AESkey8    + 1 
#define AESkey10      AESkey9    + 1
#define AESkey11      AESkey10   + 1 
#define AESkey12      AESkey11   + 1
#define AESkey13      AESkey12   + 1 
#define AESkey14      AESkey13   + 1 
#define AESkey15      AESkey14   + 1 
     
    
#define networkID     AESkey15   + 1
#define networkID_LSB networkID    + 1
    
#define sinkAddrEE0   networkID_LSB + 1
#define sinkAddrEE1   sinkAddrEE0  + 1 
    
#define radioChannel  sinkAddrEE1 + 1
    
#define txPowerSetting     radioChannel + 1
#define RSSITargetSetting  txPowerSetting + 1  
#define UARTParity         RSSITargetSetting + 1
#define UARTBaud           UARTParity + 1
#define SF                 UARTBaud + 1
#define MBADDR             SF + 1
    
//Net AES Key    
#define NETkey0       MBADDR     + 1
#define NETkey1       NETkey0    + 1 
#define NETkey2       NETkey1    + 1
#define NETkey3       NETkey2    + 1
#define NETkey4       NETkey3    + 1
#define NETkey5       NETkey4    + 1 
#define NETkey6       NETkey5    + 1
#define NETkey7       NETkey6    + 1  
#define NETkey8       NETkey7    + 1
#define NETkey9       NETkey8    + 1 
#define NETkey10      NETkey9    + 1
#define NETkey11      NETkey10   + 1 
#define NETkey12      NETkey11   + 1
#define NETkey13      NETkey12   + 1 
#define NETkey14      NETkey13   + 1 
#define NETkey15      NETkey14   + 1
#define RSSI_GOOD     NETkey15   + 1
    
#define MCAST_GRP_ID_MSB RSSI_GOOD + 1
#define MCAST_GRP_ID_LSB MCAST_GRP_ID_MSB +1
    
enum{
    EEPROM_BOOTLOADER,
    EEPROM_SERIAL,
    EEPROM_APPKEY,
    EEPROM_NETKEY,
    EEPROM_NETID,
    EEPROM_SINK,
    EEPROM_RADIO_CH,
    EEPROM_TX_POWER,
    EEPROM_RSSI,
    EEPROM_UART_PARITY,
    EEPROM_UART_BAUD,
    EEPROM_SF,
    EEPROM_MBADDR,
    EEPROM_GOOD_RSSI
}eeprom_write_flags_enum;

struct eeprom_write_flags_type{
    unsigned flag_master:1;
    unsigned flag_bootload:1;
    unsigned flag_serial:1;
    unsigned flag_appkey:1;
    unsigned flag_netkey:1;
    unsigned flag_netid:1;
    unsigned flag_sink:1;
    unsigned flag_radio_ch:1;
    unsigned flag_tx_power:1;
    unsigned flag_rssi:1;
    unsigned flag_uart_parity:1;
    unsigned flag_uart_baud:1;
    unsigned flag_sf:1;
    unsigned flag_mbaddr:1;
    unsigned flag_good_rssi:1;
    unsigned resv:1;
}eeprom_write_flags;

uint8_t DATAEE_ReadByte_Platform(uint16_t addr);
void DATAEE_WriteByte_Platform(uint16_t addr, uint8_t data);
void sync_eeprom(void);
uint8_t set_eeprom_sync(uint8_t);

#if (__32MM0256GPM048__)
uint8_t DATAEE_ReadByte(uint32_t addr){}
DATAEE_WriteByte(uint32_t addr, uint8_t data){}
#endif
#ifdef	__cplusplus
}
#endif

#endif	/* EEPROM_H */

