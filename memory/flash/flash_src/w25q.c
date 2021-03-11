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

#include "../flash_inc/w25q.h"
#include "../../../PIC32MM0256GPM048/mcc_generated_files/spi2.h"

//  _Declare



/* ------------------------------------------------------------------------ */

//SPI 数据通讯
u8 SPI_Communication(u8 TxData)
{

  return SPI2_Exchange8bit(TxData);
}




/* -------------------------------  W25Q 配置 ------------------------------ */

//W25Q 读状态
u8 W25Q_ReadSR(void)   
{  
	u8 byte=0;   

	F_CS_Low;      
  SPI_Communication(W25Q_ReadStatusReg);  
	byte=SPI_Communication(0Xff); 
	F_CS_High;  
	     
	return byte;   
} 


//W25Q 写状态
void W25Q_Write_SR(u8 sr)   
{   
	F_CS_Low;                               
	SPI_Communication(W25Q_WriteStatusReg);     
	SPI_Communication(sr);                 
	F_CS_High;                                 	      
}   



//W25Q 写使能
void W25Q_Write_Enable(void)   
{
    F_CS_Low;                             
    SPI_Communication(W25Q_WriteEnable);      
    F_CS_High;                               	      
} 


//W25Q16 写禁止 
void W25Q_Write_Disable(void)   
{  
    F_CS_Low;                            
    SPI_Communication(W25Q_WriteDisable);        
    F_CS_High;                                	      
}


//等待空闲
void W25Q_Wait_Busy(void)   
{   
	while ((W25Q_ReadSR()&0x01)==0x01);   
}



// 读取ID
uint16_t W25Q_ReadDeviceID(void)
{
    u16 Temp,temp1,temp2;

    F_CS_Low;

    /* Send "RDID " instruction */
    SPI_Communication(W25Q_ManufactDeviceID);
    SPI_Communication(0x00);
    SPI_Communication(0x00);
    SPI_Communication(0x00);

    /* Read a byte from the FLASH */
    temp1 = SPI_Communication(0x00);
    temp2 = SPI_Communication(0x00);

    /* Deselect the FLASH: Chip Select high */
    F_CS_High;

    Temp = (temp1 << 8) + temp2;

    return Temp;
}


//读取数据
void W25Q_Read(u8* Buffer,u32 Addr,u16 ByteNum)   
{ 
 	u16 i;    							
						    
	F_CS_Low;      
	SPI_Communication(W25Q_ReadData);            
	SPI_Communication((u8)((Addr)>>16));     
	SPI_Communication((u8)((Addr)>>8));   
	SPI_Communication((u8)Addr);   
	for(i=0;i<ByteNum;i++)
	{ 
		Buffer[i]=SPI_Communication(0XFF);    
	}
	F_CS_High;      	      
} 



//W25Q 写一页
void W25Q_Write_Page(u8* Buffer,u32 Addr,u16 ByteNum)
{
    uint16_t i; 

    W25Q_Write_Enable();   
    F_CS_Low;   
    SPI_Communication(W25Q_PageProgram);   
    SPI_Communication((u8)((Addr)>>16));    
    SPI_Communication((u8)((Addr)>>8));   
    SPI_Communication((u8)Addr);   
    for(i=0;i<ByteNum;i++)SPI_Communication(Buffer[i]);  
    F_CS_High;  
    W25Q_Wait_Busy();  
} 



//W25Q 写
void W25Q_Write(u8* Buffer,u32 Addr,u16 ByteNum)   
{ 			 		 
	u16 pageremain;
		   
	pageremain=256-Addr%256; 		 	    
	if(ByteNum<=pageremain)pageremain=ByteNum;
	while(1)
	{	   
		W25Q_Write_Page(Buffer, Addr, pageremain);
		if(ByteNum==pageremain)break;
	 	else 
		{
			Buffer+=pageremain;
			Addr+=pageremain;	

			ByteNum-=pageremain;	 
			if(ByteNum>256)pageremain=256; 
			else pageremain=ByteNum; 
		}
	}	    
} 
 		


// W25Q 擦除一片
void W25Q_Erase_Chip(void)   
{                                             
	W25Q_Write_Enable();                  
	W25Q_Wait_Busy();   
	F_CS_Low;                            
	SPI_Communication(W25Q_ChipErase);        
	F_CS_High;                                 	      
	W25Q_Wait_Busy();   				  
} 



//W25Q 擦除一扇区
void W25Q_Erase_Sector(u32 Dst_Addr)   
{   
    W25Q_Write_Enable();    	 
    W25Q_Wait_Busy();   
    F_CS_Low;        
    SPI_Communication(W25Q_SectorErase);      
    SPI_Communication((u8)((Dst_Addr)>>16));      
    SPI_Communication((u8)((Dst_Addr)>>8));   
    SPI_Communication((u8)Dst_Addr);  
    F_CS_High;       	      
    W25Q_Wait_Busy(); 
} 




//W25Q 擦除一块区
void W25Q_Erase_Block(u32 Bst_Addr)   
{   
	W25Q_Write_Enable();    
	W25Q_Wait_Busy();   
	F_CS_Low;        
	SPI_Communication(W25Q_BlockErase);      
	SPI_Communication((uint8_t)((Bst_Addr)>>16));   
	SPI_Communication((uint8_t)((Bst_Addr)>>8));   
	SPI_Communication((uint8_t)Bst_Addr);  
	F_CS_High;       	      
  W25Q_Wait_Busy(); 
}   





/* -------------------------------  end code  --------------------------------*/
