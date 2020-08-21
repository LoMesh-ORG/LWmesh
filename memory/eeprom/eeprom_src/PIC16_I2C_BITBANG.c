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
*  Filename:           PIC16_I2C_BITBANG.c
*  Date:               September 14, 2012
*  File Version:       1.0
*  Compiled using:     MPLAB X IDE v1.41
*                      XC8 v1.10
*  Processor:          PIC16LF1947
*
*  Author:             Eugen Ionescu
*  Company:            Microchip Technology Inc.
*
*******************************************************************
*
*  Files required:     pic16lf1947.h
*                      PIC16_I2C_BITBANG.h
*                      xc.h
*
** I N C L U D E S ************************************************/


#include "PIC16_I2C_BITBANG.h"
#include "mcc.h"



//....................................................................
// This function generates an I2C Start Condition
//....................................................................
void i2c_start(void)
{
unsigned int i;

//SDA_TRIS = 1;                   // ensure SDA & SCL are high
//SCL = 1;
SDA_TRIS = 0;                   // SDA = output
SDA_SetHigh();
SCL_SetHigh();
for (i=0;i<2;i++) NOP();
//SDA = 0;                        // pull SDA low
SDA_SetLow();
for (i=0;i<2;i++) NOP();
//SCL = 0;                        // pull SCL low
SCL_SetLow();
}


//....................................................................
// This function generates an I2C Stop Condition
//....................................................................
void i2c_stop(void)
{
unsigned int i;

//SCL = 0;                        // ensure SCL is low
SCL_SetLow();
SDA_TRIS = 0;                   // SDA = output
//SDA = 0;                        // SDA low
SDA_SetLow();
for (i=0;i<3;i++) NOP();
//SCL = 1;                        // pull SCL high
SCL_SetHigh();
SDA_TRIS = 1;                   // allow SDA to be pulled high
for (i=0;i<3;i++) NOP();
//SCL=0;                          // ensure SCL is low
SCL_SetLow();
}


//....................................................................
// Outputs a bit to the I2C bus
//....................................................................
void bit_out(unsigned char data)
{
unsigned int i;

//SCL = 0;                        // ensure SCL is low
SCL_SetLow();
SDA_TRIS=0;                     // configure SDA as an output
//SDA= (data>>7);                 // output the MSB
if(data & 0x80)
{
    SDA_SetHigh();
}
else
{
    SDA_SetLow();
}
for (i=0;i<2;i++) NOP();
//SCL = 1;                        // pull SCL high to clock bit
SCL_SetHigh();
for (i=0;i<3;i++) NOP();
//SCL = 0;                        // pull SCL low for next bit
SCL_SetLow();
}


//....................................................................
// Inputs a bit from the I2C bus
//....................................................................
void bit_in(unsigned char *data)
{
unsigned int i;

//SCL = 0;                        // ensure SCL is low
SCL_SetLow();
SDA_TRIS = 1;                   // configure SDA as an input
//SCL = 1;                        // bring SCL high to begin transfer
for (i=0;i<3;i++) NOP();
SCL_SetHigh();
for (i=0;i<3;i++) NOP();
//*data |= SDA;                   // input the received bit
*data |= SDA_GetValue();
//SCL = 0;                        // bring SCL low again.
SCL_SetLow();
}


//....................................................................
// Writes a byte to the I2C bus
//....................................................................
unsigned char i2c_wr(unsigned char data)
{
unsigned char i;                // loop counter
unsigned char ack;              // ACK bit

ack = 0;
for (i = 0; i < 8; i++)         // loop through each bit
    {
    bit_out(data);              // output bit
    data = data << 1;           // shift left for next bit
    }

bit_in(&ack);                   // input ACK bit
return ack;
}


//....................................................................
// Reads a byte from the I2C bus
//....................................................................
unsigned char i2c_rd(unsigned char ack)
{
    unsigned char i;                // loop counter
    volatile unsigned char ret=0;            // return value

    for (i = 0; i < 8; i++)         // loop through each bit
    {
        ret = ret << 1;             // shift left for next bit
        bit_in(&ret);               // input bit
    }

    bit_out(ack);                   // output ACK/NAK bit
    return ret;
}


//.............................................................................
//          Polls the bus for ACK from device
//.............................................................................
void ack_poll (unsigned char control)
{
unsigned char result=1;

while(result)
	{
	i2c_start();            // generate Restart condition
	result=i2c_wr(control); // send control byte (WRITE command)
        }

i2c_stop();                     // generate Stop condition
}

