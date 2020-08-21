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
*  Filename:           PIC16_I2C_BITBANG.h
*  Date:               February 21, 2012
*  File Version:       1.0
*  Compiled using:     MPLAB X IDE v1.41
*                      XC8 v1.10
*
*  Author:             Eugen Ionescu
*  Company:            Microchip Technology Inc.
*
*******************************************************************/


void i2c_start(void);				// generates an I2C start condition
void i2c_stop(void);				// generates an I2C stop condition
void bit_out(unsigned char data);               // outputs a bit to I2C bus
void bit_in(unsigned char *data);               // inputs a bit from the I2C bus
unsigned char i2c_wr(unsigned char i2c_data);   // writes a byte to the I2C bus
unsigned char i2c_rd(unsigned char ack);	// reads a byte from the I2C bus
void ack_poll(unsigned char control);


//#define SDA_TRIS  TRISCbits.TRISC4
//#define SCL_TRIS  TRISCbits.TRISC3
//#define SDA       PORTCbits.RC4
//#define SCL       PORTCbits.RC3

#define ACK       0x00
#define NACK      0x80



