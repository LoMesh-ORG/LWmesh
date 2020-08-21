/********************************************************************
*
*                     Software License Agreement
*
*     ©2007 Microchip Technology Inc
*     Mirochip Technology Inc. ("Microchip") licenses this software to
*     you solely for the use with Microchip Products. The software is
*     owned by Microchip and is protected under applicable copyright
*     laws. All rights reserved.
*
*     SOFTWARE IS PROVIDED "AS IS." MICROCHIP EXPRESSLY DISCLAIMS ANY
*     WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
*     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
*     PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP
*     BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
*     DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
*     PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
*     BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
*     ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
*
*******************************************************************
*
*  Filename:           I2C_EEPROM.h
*  Date:               February 21, 2012
*  File Version:       1.0
*  Compiled using:     MPLAB X IDE v1.41
*                      XC8 v1.10
*
*  Author:             Eugen Ionescu
*  Company:            Microchip Technology Inc.
*
*******************************************************************/



void eeprom_wr_byte(unsigned int addr, unsigned char data);
unsigned char eeprom_rd_byte(unsigned int addr);
void eeprom_wr_page(unsigned int addr,unsigned char *data, unsigned char length);
void eeprom_rd_page(unsigned int addr, unsigned char *data, unsigned char length);
void eeprom_next_page(unsigned int address);



#define PAGE_SIZE     256                     // EEPROM Page Size
#define EEPROM_WR     0xA0                   // WRITE instruction
#define EEPROM_RD     0xA1                   // READ instruction













