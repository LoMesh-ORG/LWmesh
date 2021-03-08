/**
  ******************************************************************************
  * @file
  * @author  lisck
  * @version V1.0.0
  * @date    2016-01-01
  * @brief
  ******************************************************************************
  * @attention
  *
  *
  ******************************************************************************
  */


//  _Includes
#include "../../../PIC32MM0256GPM048/mcc_generated_files/pin_manager.h"

/* -------------------------------- W25Q ָ�� ------------------------------ */

#define	 F_CS_High  MEM_CS_SetHigh()
#define	 F_CS_Low   MEM_CS_SetLow()

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;


//ָ����
#define W25Q_WriteEnable		  0x06 
#define W25Q_WriteDisable	  	0x04 
#define W25Q_ReadStatusReg		0x05 
#define W25Q_WriteStatusReg		0x01 
#define W25Q_ReadData		    	0x03 
#define W25Q_FastReadData	  	0x0B 
#define W25Q_FastReadDual	  	0x3B 
#define W25Q_PageProgram	  	0x02 
#define W25Q_BlockErase		  	0xD8 
#define W25Q_SectorErase		  0x20 
#define W25Q_ChipErase		  	0xC7 
#define W25Q_PowerDown			  0xB9 
#define W25Q_ReleasePowerDown	0xAB 
#define W25Q_ManufactDeviceID	0x90 



uint16_t  W25Q_ReadDeviceID(void);
uint8_t   W25Q_ReadSR(void);     
void W25Q_Write_SR(u8 sr); 
void W25Q_Write_Enable(void);  
void W25Q_Write_Disable(void);	
void W25Q_Read(u8* Buffer,u32 Addr,u16 ByteNum);  
void W25Q_Write_Page(u8* Buffer,u32 Addr,u16 ByteNum); 
void W25Q_Write(u8* Buffer,u32 Addr,u16 NumByte);
void W25Q_Erase_Chip(void);   
void W25Q_Erase_Sector(u32 Dst_Addr);
void W25Q_Erase_Block(u32 Bst_Addr); 
void W25Q_Wait_Busy(void);




/* ------------------------------------------------------------------------- */

















/* -------------------------------  end code  --------------------------------*/
