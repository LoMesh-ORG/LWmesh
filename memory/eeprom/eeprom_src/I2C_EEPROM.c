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
*  Filename:           I2C_EEPROM.c
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
*  Files required:     xc.h
*                      PIC16_I2C_BITBANG.h
*                      I2C_EEPROM.h
*
** I N C L U D E S ************************************************/

#include <xc.h>
#include "I2C_EEPROM.h"
#include "PIC16_I2C_BITBANG.h"
#include <stdint.h>


//.............................................................................
//          Writes data to the EEPROM address
//.............................................................................
void eeprom_wr_byte(unsigned int addr, unsigned char data)
{
    di();
    i2c_start();                 // generate Start COndition
    i2c_wr(EEPROM_WR);           // send WRITE command
 
    // comment the next line if a Low-Density (<=2kB) device is used
    i2c_wr(addr>>8);             //      address MSB
    i2c_wr(addr & 0xff);         //      address LSB

    i2c_wr(data);                // send data
    //ack_poll(EEPROM_WR);         // ACK polling
    i2c_stop();                  // initiate Stop Condition
    ei();
}


//.............................................................................
//          Reads a byte from the EEPROM address
//.............................................................................
unsigned char eeprom_rd_byte(unsigned int addr)
{
    unsigned char data;
    di();
    i2c_start();                 // generate Start COndition
    i2c_wr(EEPROM_WR);           // send WRITE command

    // comment the next line if a Low-Density (<=2kB) device is used
    i2c_wr(addr>>8);             //      address MSB
    i2c_wr(addr & 0xff);         //      address LSB

    i2c_start();                 // generate Start COndition
    i2c_wr(EEPROM_RD);           // send READ command

    data=i2c_rd(NACK);           // read data from buffer
    i2c_stop();                  // send Stop Condition
    ei();
    return data;                 // return data from I2C buffer
}


//.............................................................................
//         Writes a page to the EEPROM address
//.............................................................................
void eeprom_wr_page(unsigned int addr,unsigned char *data, unsigned char length)
{
unsigned char i=0, j=0, page_nr=0;

i2c_start();                 // generate Start COndition
i2c_wr(EEPROM_WR);           // send WRITE command

// comment the next line if a Low-Density (<=2kB) device is used
i2c_wr(addr>>8);             //      address MSB
i2c_wr(addr & 0xff);         //      address LSB


if (addr%PAGE_SIZE)
    {
    if (length>(PAGE_SIZE-(addr%PAGE_SIZE)))
        {
        for (i=0; i<(PAGE_SIZE-(addr%PAGE_SIZE)); i++)  // Loop through number of bytes
            {
            i2c_wr(data[j]); // write next byte from array
            j++;             // inc array index
            }
        i2c_stop();          // initiate Stop Condition
        ack_poll(EEPROM_WR); // ACK polling

        addr+=(PAGE_SIZE-(addr%PAGE_SIZE));   // go to the start of the next page
        page_nr=length/PAGE_SIZE;// calculate the number of pages
        eeprom_next_page(addr);  // write the address of the next page

        while(page_nr)           // loop until all pages are written
            {
            for (i=0; i<PAGE_SIZE; i++)// Loop through number of bytes
                {
                i2c_wr(data[j]);// write next byte from array
                j++;            // inc the array index
                }
            i2c_stop();         // send Stop condition
            ack_poll(EEPROM_WR);// ACK polling

            page_nr--;          // dec the number of pages
            addr+=PAGE_SIZE;    // inc address with 1 page
            eeprom_next_page(addr); // write the address of the next page
            }

        for (; j<length; j++)   // loop through number of bytes
             i2c_wr(data[j]);   // write next byte from array
        }

    else for (i=0; i<length; i++)// loop through number of bytes
            {
            i2c_wr(data[i]);     // write next byte from array
            }
    }


else
    {
    if (length>PAGE_SIZE)
        {
        page_nr=length/PAGE_SIZE;// calculate the number of pages
        while(page_nr)           // loop until all pages are written
            {
            for (i=0; i<PAGE_SIZE; i++)// Loop through number of bytes
                {
                i2c_wr(data[j]);// write next byte from array
                j++;            // inc the array index
                }
            i2c_stop();         // send Stop condition
            ack_poll(EEPROM_WR);// ACK polling

            page_nr--;          // dec the number of pages
            addr+=PAGE_SIZE;    // inc address with 1 page
            eeprom_next_page(addr); // write the address of the next page
            }
        for (; j<length; j++)   // loop through number of bytes
             i2c_wr(data[j]);   // write next byte from array
        }

    else for (i=0; i<length; i++)     // loop through number of bytes
            {
            i2c_wr(data[i]);    // write next byte from array
            }
    }

i2c_stop();                     // send Stop condition
ack_poll(EEPROM_WR);            // ACK polling
}


//.............................................................................
//          Reads a page from the EEPROM address
//.............................................................................
void eeprom_rd_page(unsigned int addr, unsigned char *data, unsigned char length)
{
unsigned char i=0;

i2c_start();                    // generate Start COndition
i2c_wr(EEPROM_WR);              // send WRITE command

// comment the next line if a Low-Density (<=2kB) device is used
i2c_wr(addr>>8);                //      address MSB
i2c_wr(addr&0xff);              //      address LSB

i2c_start();                    // generate Start COndition
i2c_wr(EEPROM_RD);              // send READ command

for (i=0; i<length; i++)        // loop through number of bytes
    {
    
    if (i<(length-1)) data[i]=i2c_rd(ACK);  // write next byte to array & send ACK bit
    else data[i]=i2c_rd(NACK);  // send NACK bit
    }

i2c_stop();                     // send Stop Condition
}


//.............................................................................
//          Writes the start address of the nexr page
//.............................................................................
void eeprom_next_page(unsigned int address)
{
i2c_start();                    // send Start condition
i2c_wr(EEPROM_WR);              // send WRITE command
// comment the next line if a Low-Density (<=2kB) device is used
i2c_wr(address>>8);             //      address MSB
i2c_wr(address & 0xff);         //      address LSB
}



