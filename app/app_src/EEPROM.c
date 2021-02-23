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
#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#include "EEPROM.h"
#include "application.h"
#include "phy.h"
#ifdef SX1276
#include "sx1276.h"
#endif
#ifdef SX1280
#include "sx1280_drv.h"
#endif

uint8_t DATAEE_ReadByte_Platform(uint16_t addr){
    uint8_t copy1, copy2, copy3;
    copy1 = DATAEE_ReadByte(addr);
    copy2 = DATAEE_ReadByte(addr + EEPROMback1);
    copy3 = DATAEE_ReadByte(addr + EEPROMback2);
    
    //Start voting logic
    if((copy1 == copy2) && (copy2 == copy3)){
        return copy1;
    }
    else if((copy1 == copy2) && (copy2 != copy3)){
        //Fix copy3
        DATAEE_WriteByte(addr + EEPROMback2, copy1);
        return copy1;
    }
    else if((copy1 != copy2) && (copy2 == copy3)){
        //Fix copy1
        DATAEE_WriteByte(addr , copy2);
        return copy2;
    }
    else if((copy1 == copy3) && (copy2 != copy3)){
        //Fix copy2
        DATAEE_WriteByte(addr + EEPROMback1, copy1);
        return copy1;
    }
    else{
        //All three are unequal. Assume copy1 is best
        //Fix copy2 and copy3
        DATAEE_WriteByte(addr + EEPROMback1, copy1);
        DATAEE_WriteByte(addr + EEPROMback2, copy1);
    }
    return copy1;
}

void DATAEE_WriteByte_Platform(uint16_t addr, uint8_t data){
    //Write data to all three locations
    DATAEE_WriteByte(addr, data);
    DATAEE_WriteByte(addr + EEPROMback1, data);
    DATAEE_WriteByte(addr + EEPROMback2, data);
}

void sync_eeprom(void){
    if(!eeprom_write_flags.flag_master){
        return;
    }
    //Atleast one flag is set to sink data back to EEPROM
    if(eeprom_write_flags.flag_bootload){
        DATAEE_WriteByte_Platform(REQBootLoad, 0xAA);
        eeprom_write_flags.flag_bootload = 0;
    }
    else if(eeprom_write_flags.flag_appkey){
        for(uint8_t i = 0; i < sizeof(aes_key); i++){
            DATAEE_WriteByte_Platform((AESkey0 + i),aes_key[i]);
        }
        eeprom_write_flags.flag_appkey = 0;
    }
    else if(eeprom_write_flags.flag_netkey){
        for(uint8_t i = 0; i < sizeof(net_key); i++){
            DATAEE_WriteByte_Platform((NETkey0 + i),net_key[i]);
        }
        eeprom_write_flags.flag_netkey = 0;
    }
    else if(eeprom_write_flags.flag_netid){
        DATAEE_WriteByte_Platform(networkID,(pan_id >> 8) & 0xFF);
        DATAEE_WriteByte_Platform(networkID_LSB,pan_id & 0xFF);
        eeprom_write_flags.flag_netid = 0;
    }
    else if(eeprom_write_flags.flag_sink){
        DATAEE_WriteByte_Platform(sinkAddrEE0, sinkAddr0);
        DATAEE_WriteByte_Platform(sinkAddrEE0, sinkAddr1);
        eeprom_write_flags.flag_sink = 0;
    }
    else if(eeprom_write_flags.flag_radio_ch){
        DATAEE_WriteByte_Platform(radioChannel, channel);
        eeprom_write_flags.flag_radio_ch = 0;
    }
    else if(eeprom_write_flags.flag_tx_power){
        DATAEE_WriteByte_Platform(txPowerSetting, TXPower);
        eeprom_write_flags.flag_tx_power = 0;
    }
    else if(eeprom_write_flags.flag_rssi){
        DATAEE_WriteByte_Platform(RSSITargetSetting, RSSITarget);
        eeprom_write_flags.flag_rssi = 0;
    }
    else if(eeprom_write_flags.flag_uart_baud){
        DATAEE_WriteByte_Platform(UARTBaud, uart_baud_rate);
        eeprom_write_flags.flag_uart_baud = 0;
    }
    else if(eeprom_write_flags.flag_uart_parity){
        DATAEE_WriteByte_Platform(UARTParity, uart_parity);
        eeprom_write_flags.flag_uart_parity = 0;
    }
    else if(eeprom_write_flags.flag_sf){
        DATAEE_WriteByte_Platform(SF, current_sf);
        eeprom_write_flags.flag_sf = 0;
    }
    else if(eeprom_write_flags.flag_mbaddr){
#ifdef MBRTU
        DATAEE_WriteByte_Platform(MBADDR, mb_rtu_addr);
#endif
        eeprom_write_flags.flag_mbaddr = 0;
    }
    else if(eeprom_write_flags.flag_serial){
        eeprom_write_flags.flag_serial = 0;
    }
    else if(eeprom_write_flags.flag_good_rssi){
        DATAEE_WriteByte_Platform(RSSI_GOOD, PHY_Get_Packet_Rssi_Threshold());
        eeprom_write_flags.flag_good_rssi = 0;
    }
    else if(eeprom_write_flags.resv){
        eeprom_write_flags.resv = 0;
    }
    else{
        eeprom_write_flags.flag_master = 0;
    }
}

uint8_t set_eeprom_sync(uint8_t flag_type){
    switch(flag_type){
        case EEPROM_BOOTLOADER:
            eeprom_write_flags.flag_bootload = 1; 
            break;
        case EEPROM_SERIAL:
            eeprom_write_flags.flag_serial = 1;
            break;
        case EEPROM_APPKEY:
            eeprom_write_flags.flag_appkey = 1;
            break;
        case EEPROM_NETKEY:
            eeprom_write_flags.flag_netkey = 1;
            break;
        case EEPROM_NETID:
            eeprom_write_flags.flag_netid = 1;
            break;
        case EEPROM_SINK:
            eeprom_write_flags.flag_sink = 1;
            break;
        case EEPROM_RADIO_CH:
            eeprom_write_flags.flag_radio_ch = 1;
            break;
        case EEPROM_TX_POWER:
            eeprom_write_flags.flag_tx_power = 1;
            break;
        case EEPROM_RSSI:
            eeprom_write_flags.flag_rssi = 1;
            break;
        case EEPROM_UART_PARITY:
            eeprom_write_flags.flag_uart_parity = 1;
            break;
        case EEPROM_UART_BAUD:
            eeprom_write_flags.flag_uart_baud = 1;
            break;
        case EEPROM_SF:
            eeprom_write_flags.flag_sf = 1;
            break;
        case EEPROM_MBADDR:
            eeprom_write_flags.flag_mbaddr = 1;
            break;
        case EEPROM_GOOD_RSSI:
            eeprom_write_flags.flag_good_rssi = 1;
            break;
        default:
            return ILLEGALPARAMETER;            
    }
    eeprom_write_flags.flag_master = 1;
    return E_OK;
}
