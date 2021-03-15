/*
Copyright 2020 Samuel Ramrajkar

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at*/

    //   http://www.apache.org/licenses/LICENSE-2.0

   /*Unless required by applicable law or agreed to in writing, software
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
#include "I2C_EEPROM.h"
#ifdef SX1276
#include "sx1276.h"
#endif
#ifdef SX1280
#include "sx1280_drv.h"
#endif

#if (__32MM0256GPM048__)
#include "w25q.h"
#include "lfs.h"

#define EEPROM_DATA_FILE "nvm_data.bin"
// variables used by the filesystem
static lfs_t lfs;
static lfs_file_t file;
static uint8_t rd_buffer[128];
static uint8_t wr_buffer[128];
static uint8_t lookahead_buffer[128];
static uint8_t file_cache[128];
static int flash_read(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, void *buffer, lfs_size_t size);
static int flash_write(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, const void *buffer, lfs_size_t size); 
static int flash_erase(const struct lfs_config *c, lfs_block_t block);
static int flash_sync(const struct lfs_config *c);
// configuration of the filesystem is provided by this struct    
const struct lfs_config cfg = {
    // block device operations
    .read  = flash_read,
    .prog  = flash_write,
    .erase = flash_erase,
    .sync  = flash_sync,

    // block device configuration
    .read_size = 128,
    .prog_size = 128,
    .block_size = 4096,
    .block_count = 128,
    .cache_size = 128,
    .lookahead_size = 128,
    .block_cycles = 500,
    .read_buffer = &rd_buffer[0],
    .prog_buffer = &wr_buffer[0],
    .lookahead_buffer = &lookahead_buffer[0],
    };
static uint8_t eeprom_data[EEPROM_SIZE];

static void persisit_eeprom_data(void); //Write to data file
#endif

#if (_18F27K42)
//#include "w25q.h"
#include "lfs.h"

#define EEPROM_DATA_FILE "nvm_data.bin"
// variables used by the filesystem
static lfs_t lfs;
static lfs_file_t file;
static uint8_t rd_buffer[128];
static uint8_t wr_buffer[128];
static uint8_t lookahead_buffer[128];
static uint8_t file_cache[128];
static int eeprom_rd(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, void *buffer, lfs_size_t size);
static int eeprom_wr(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, const void *buffer, lfs_size_t size); 
static int eeprom_er(const struct lfs_config *c, lfs_block_t block);
static int eeprom_sync(const struct lfs_config *c);
// configuration of the filesystem is provided by this struct    
const struct lfs_config cfg = {
    // block device operations
    .read  = eeprom_rd,
    .prog  = eeprom_wr,
    .erase = eeprom_er,
    .sync  = eeprom_sync,

    // block device configuration
    .read_size = 128,
    .prog_size = 128,
    .block_size = 128,
    .block_count = 2048,
    .cache_size = 128,
    .lookahead_size = 128,
    .block_cycles = 500,
    .read_buffer = &rd_buffer[0],
    .prog_buffer = &wr_buffer[0],
    .lookahead_buffer = &lookahead_buffer[0],
    };
static uint8_t eeprom_data[EEPROM_SIZE];

static void persisit_eeprom_data(void); //Write to data file
#endif

uint8_t DATAEE_ReadByte_Platform(uint16_t addr){
    uint8_t copy1;
    uint8_t copy2;
    uint8_t copy3;
    copy1 = DATAEE_ReadByte(addr);
    copy2 = DATAEE_ReadByte(addr + EEPROMback1);
    copy3 = DATAEE_ReadByte(addr + EEPROMback2);
    
    uint8_t return_copy;
    
    //Start voting logic
    if((copy1 == copy2) && (copy2 == copy3)){
        return_copy = copy1;
    }
    else if((copy1 == copy2) && (copy2 != copy3)){
        //Fix copy3
        DATAEE_WriteByte(addr + EEPROMback2, copy1);
        return_copy = copy1;
    }
    else if((copy1 != copy2) && (copy2 == copy3)){
        //Fix copy1
        DATAEE_WriteByte(addr , copy2);
        return_copy = copy2;
    }
    else if((copy1 == copy3) && (copy2 != copy3)){
        //Fix copy2
        DATAEE_WriteByte(addr + EEPROMback1, copy1);
        return_copy = copy1;
    }
    else{
        //All three are unequal. Assume copy1 is best
        //Fix copy2 and copy3
        DATAEE_WriteByte(addr + EEPROMback1, copy1);
        DATAEE_WriteByte(addr + EEPROMback2, copy1);
        return_copy = copy1;
    }
    return return_copy;
}

void DATAEE_WriteByte_Platform(uint16_t addr, uint8_t data){
    //Write data to all three locations
    DATAEE_WriteByte(addr, data);
    DATAEE_WriteByte(addr + EEPROMback1, data);
    DATAEE_WriteByte(addr + EEPROMback2, data);
}

void sync_eeprom(void){
    if(0 != eeprom_write_flags.flag_master){
        //At least one flag is set to sink data back to EEPROM
        if(0 != eeprom_write_flags.flag_bootload){
            DATAEE_WriteByte_Platform(REQBootLoad, 0xAA);
            eeprom_write_flags.flag_bootload = 0;
        }
        else if(0 != eeprom_write_flags.flag_appkey){
            for(uint8_t i = 0; i < sizeof(aes_key); i++){
                DATAEE_WriteByte_Platform((AESkey0 + i),aes_key[i]);
            }
            eeprom_write_flags.flag_appkey = 0;
        }
        else if(0 != eeprom_write_flags.flag_netkey){
            for(uint8_t i = 0; i < sizeof(net_key); i++){
                DATAEE_WriteByte_Platform((NETkey0 + i),net_key[i]);
            }
            eeprom_write_flags.flag_netkey = 0;
        }
        else if(0 != eeprom_write_flags.flag_netid){
            DATAEE_WriteByte_Platform(networkID,(pan_id >> 8) & 0xFF);
            DATAEE_WriteByte_Platform(networkID_LSB,pan_id & 0xFF);
            eeprom_write_flags.flag_netid = 0;
        }
        else if(0 != eeprom_write_flags.flag_sink){
            DATAEE_WriteByte_Platform(sinkAddrEE0, sinkAddr0);
            DATAEE_WriteByte_Platform(sinkAddrEE0, sinkAddr1);
            eeprom_write_flags.flag_sink = 0;
        }
        else if(0 != eeprom_write_flags.flag_radio_ch){
            DATAEE_WriteByte_Platform(radioChannel, channel);
            eeprom_write_flags.flag_radio_ch = 0;
        }
        else if(0 != eeprom_write_flags.flag_tx_power){
            DATAEE_WriteByte_Platform(txPowerSetting, TXPower);
            eeprom_write_flags.flag_tx_power = 0;
        }
        else if(0 != eeprom_write_flags.flag_rssi){
            DATAEE_WriteByte_Platform(RSSITargetSetting, RSSITarget);
            eeprom_write_flags.flag_rssi = 0;
        }
        else if(0 != eeprom_write_flags.flag_uart_baud){
            DATAEE_WriteByte_Platform(UARTBaud, uart_baud_rate);
            eeprom_write_flags.flag_uart_baud = 0;
        }
        else if(0 != eeprom_write_flags.flag_uart_parity){
            DATAEE_WriteByte_Platform(UARTParity, uart_parity);
            eeprom_write_flags.flag_uart_parity = 0;
        }
        else if(0 != eeprom_write_flags.flag_sf){
            DATAEE_WriteByte_Platform(SF, current_sf);
            eeprom_write_flags.flag_sf = 0;
        }
        else if(0 != eeprom_write_flags.flag_mbaddr){
#ifdef MBRTU
            DATAEE_WriteByte_Platform(MBADDR, mb_rtu_addr);
#endif
            eeprom_write_flags.flag_mbaddr = 0;
        }
        else if(0 != eeprom_write_flags.flag_serial){
            eeprom_write_flags.flag_serial = 0;
        }
        else if(0 != eeprom_write_flags.flag_good_rssi){
            DATAEE_WriteByte_Platform(RSSI_GOOD, PHY_Get_Packet_Rssi_Threshold());
            eeprom_write_flags.flag_good_rssi = 0;
        }
        else if(0 != eeprom_write_flags.resv){
            eeprom_write_flags.resv = 0;
        }
        else{
            eeprom_write_flags.flag_master = 0;
        }
    }
    return;
}

uint8_t set_eeprom_sync(uint8_t flag_type){
    uint8_t return_parameter = E_OK;
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
            return_parameter = ILLEGALPARAMETER;
            break;
    }
    eeprom_write_flags.flag_master = 1;
    return return_parameter;
}

#if (__32MM0256GPM048__)
uint8_t DATAEE_ReadByte(uint32_t addr)
{
    uint8_t data;
    if(addr < 256)
    {
        data = eeprom_data[addr];
    }
    else if(addr < 512)
    {
        data = eeprom_data[addr - 256];
    }
    else if(addr > 512)
    {
        data = eeprom_data[addr - 512];
    }
    else
    {
        data = 0xFF;
    }
    return data;
}

DATAEE_WriteByte(uint32_t addr, uint8_t data)
{
    if(addr < 256)
    {
        eeprom_data[addr] = data;
        persisit_eeprom_data();
    }
}
/*******************************************************************************
 * PIC32 will use SPI flash and SPIFFS file system to save NV data
*******************************************************************************/

static int flash_read(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, void *buffer, lfs_size_t size)
{
    W25Q_Read(buffer, (block * c->read_size) + off, size);
    return LFS_ERR_OK;
}

static int flash_write(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, const void *buffer, lfs_size_t size)
{
    W25Q_Write(buffer, (block * c->prog_size) + off, size);
    return LFS_ERR_OK;
}
  
static int flash_erase(const struct lfs_config *c, lfs_block_t block)
{
    W25Q_Erase_Sector(block * c->block_size);
    return LFS_ERR_OK;
}

static int flash_sync(const struct lfs_config *c)
{
    return LFS_ERR_OK;
}

void init_fs(void)
{
    // mount the filesystem
    int err = lfs_mount(&lfs, &cfg);

    // reformat if we can't mount the filesystem
    // this should only happen on the first boot
    if (err) 
    {
        lfs_format(&lfs, &cfg);
        lfs_mount(&lfs, &cfg);
    }
}

void load_nvm_data(void)
{
    int ret;    
    struct lfs_file_config file_cfg;
    file_cfg.buffer = &file_cache[0];
    file_cfg.attrs = NULL;
    file_cfg.attr_count = 0;
    memset(&eeprom_data[0], 0xFFu, sizeof(eeprom_data)); //Set to default
    //Try to load eeprom data from saved file if it exist
    ret = lfs_file_opencfg(&lfs, &file, EEPROM_DATA_FILE, LFS_O_RDWR, 
                           &file_cfg);
    if(0 == ret)
    {
        //File open for reading. Copy data to eeprom array
        ret = lfs_file_read(&lfs, &file, &eeprom_data[0], sizeof(eeprom_data));
        if(ret <= 0)
        {
            //Found error on reading or an empty file. Reset eeprom array
            memset(&eeprom_data[0], 0xFFu, sizeof(eeprom_data)); 
        }
        lfs_file_close(&lfs, &file);
    }
}

static void persisit_eeprom_data(void)
{
    int ret;     
    struct lfs_file_config file_cfg;
    file_cfg.buffer = &file_cache[0];
    file_cfg.attrs = NULL;
    file_cfg.attr_count = 0;
    //Open file and create if it does not exist
    ret = lfs_file_opencfg(&lfs, &file, EEPROM_DATA_FILE, 
            LFS_O_RDWR | LFS_O_CREAT, &file_cfg);
    if(LFS_ERR_OK == ret)
    {
        ret = lfs_file_write(&lfs, &file, &eeprom_data[0], 
                             sizeof(eeprom_data));
        lfs_file_close(&lfs, &file);
    }
}

void format_fs(void)
{
    lfs_format(&lfs, &cfg);
}
#endif

#if (_18F27K42)
uint8_t DATAEE_ReadByte(uint32_t addr)
{
    uint8_t data;
    if(addr < 256)
    {
        data = eeprom_data[addr];
    }
    else if(addr < 512)
    {
        data = eeprom_data[addr - 256];
    }
    else if(addr > 512)
    {
        data = eeprom_data[addr - 512];
    }
    else
    {
        data = 0xFF;
    }
    return data;
}

DATAEE_WriteByte(uint32_t addr, uint8_t data)
{
    if(addr < 256)
    {
        eeprom_data[addr] = data;
        persisit_eeprom_data();
    }
}
/*******************************************************************************
 * PIC32 will use SPI flash and SPIFFS file system to save NV data
*******************************************************************************/

static int eeprom_rd(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, void *buffer, lfs_size_t size)
{   
    //W25Q_Read(buffer, (block * c->read_size) + off, size);
   /* for(lfs_size_t i = 0; i < size; i++){
        *(buffer + i) = eeprom_rd_byte((block * c->read_size) + off + i);
    }*/
    return LFS_ERR_OK;
}

static int eeprom_wr(const struct lfs_config *c, lfs_block_t block,
            lfs_off_t off, const void *buffer, lfs_size_t size)
{
    //W25Q_Write(buffer, (block * c->prog_size) + off, size);
    /*for(lfs_size_t i = 0; i < size; i++){
        eeprom_wr_byte((block * c->prog_size) + off + i, *(buffer + i));
    }*/
    return LFS_ERR_OK;
}
  
static int eeprom_er(const struct lfs_config *c, lfs_block_t block)
{
    //W25Q_Erase_Sector(block * c->block_size);
    return LFS_ERR_OK;
}

static int eeprom_sync(const struct lfs_config *c)
{
    return LFS_ERR_OK;
}

void init_fs(void)
{
    // mount the filesystem
    int err = lfs_mount(&lfs, &cfg);

    // reformat if we can't mount the filesystem
    // this should only happen on the first boot
    if (err) 
    {
        lfs_format(&lfs, &cfg);
        lfs_mount(&lfs, &cfg);
    }
}

void load_nvm_data(void)
{
    int ret;    
    struct lfs_file_config file_cfg;
    file_cfg.buffer = &file_cache[0];
    file_cfg.attrs = NULL;
    file_cfg.attr_count = 0;
    memset(&eeprom_data[0], 0xFFu, sizeof(eeprom_data)); //Set to default
    //Try to load eeprom data from saved file if it exist
    ret = lfs_file_opencfg(&lfs, &file, EEPROM_DATA_FILE, LFS_O_RDWR, 
                           &file_cfg);
    if(0 == ret)
    {
        //File open for reading. Copy data to eeprom array
        ret = lfs_file_read(&lfs, &file, &eeprom_data[0], sizeof(eeprom_data));
        if(ret <= 0)
        {
            //Found error on reading or an empty file. Reset eeprom array
            memset(&eeprom_data[0], 0xFFu, sizeof(eeprom_data)); 
        }
        lfs_file_close(&lfs, &file);
    }
}

static void persisit_eeprom_data(void)
{
    int ret;     
    struct lfs_file_config file_cfg;
    file_cfg.buffer = &file_cache[0];
    file_cfg.attrs = NULL;
    file_cfg.attr_count = 0;
    //Open file and create if it does not exist
    ret = lfs_file_opencfg(&lfs, &file, EEPROM_DATA_FILE, 
            LFS_O_RDWR | LFS_O_CREAT, &file_cfg);
    if(LFS_ERR_OK == ret)
    {
        ret = lfs_file_write(&lfs, &file, &eeprom_data[0], 
                             sizeof(eeprom_data));
        lfs_file_close(&lfs, &file);
    }
}

void format_fs(void)
{
    lfs_format(&lfs, &cfg);
}
#endif
