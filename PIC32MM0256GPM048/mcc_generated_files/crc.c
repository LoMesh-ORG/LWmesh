/**
  CRC Generated Driver File 

  @Company:
    Microchip Technology Inc.

  @File Name:
    crc.c

  @Summary:
    This is the generated driver implementation file for the CRC 
    driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description:
    This source file provides implementations for driver APIs for CRC. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0256GPM048
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.61
        MPLAB             :  MPLAB X v5.45
*/
/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
   Section: Includes
*/

#include "crc.h"

/**
    Section: CRC Initializers
*/

void CRC_Initialize(void)
{   
    // reset the module
    DCRCCON = 0;
    DCRCDATA = 0;
    DCRCXOR = 0;

    // initialize the module

    // CRCTYP LFSR CRC; PLEN 16; WBO data unaltered; CRCAPP DMA transfers data from source to destination; CRCEN enabled; BITO Start with MSb; BYTO No swapping; CRCCH DMA Channel 0; 
    DCRCCON = 0xF80;

    // DCRCDATA 33999; 
    DCRCDATA = 0x84CF;

    // DCRCXOR 4129; 
    DCRCXOR = 0x1021;


}

static uint32_t CRC_ReverseValue(uint32_t crc)
{
    uint32_t mask;
    uint32_t reverse;
    uint8_t polyWidth = (DCRCCONbits.PLEN + 1);

    mask = 1;
    mask <<= (polyWidth - 1);
    reverse = 0;

    while(crc)
    {
        if(crc & 0x01)
            reverse |= mask;

        mask >>= 1;
        crc >>= 1;
    }

    return reverse;

}

static uint32_t CRC_PolynomialMask(void)
{
    uint32_t mask = 0;
    uint32_t idx;
    uint8_t polyWidth = (DCRCCONbits.PLEN + 1);

    for(idx = 0; idx < polyWidth; idx++)
    {
        mask <<= 1;
        mask |= 1;
    }

    return mask;

}

void CRC_Enable()
{
    DCRCCONSET = _DCRCCON_CRCEN_MASK;
}

void CRC_Disable()
{
    DCRCCONCLR = _DCRCCON_CRCEN_MASK;
}

void CRC_ChannelSelect(uint16_t channel)
{
    DCRCCONbits.CRCCH = channel;
}

void CRC_ReseltAppendMode(bool mode)
{
    DCRCCONbits.CRCAPP = mode;
}

uint32_t CRC_CalculationResultRawGet(void)
{
    uint32_t result;
    uint8_t polyWidth = (DCRCCONbits.PLEN + 1);

    if(polyWidth <= 8)
    {
        result = (uint32_t)DCRCDATA & 0xFF;
    }else if(polyWidth <= 16)
    {
        result = (uint32_t)DCRCDATA & 0xFFFF;
    }else
    {
        result = (uint32_t)DCRCDATA;
    }
    
    return result;
}

uint32_t CRC_CalculationResultReverseGet(void)
{
    uint32_t result;

    result = CRC_CalculationResultRawGet();

    return CRC_ReverseValue(result);
}

uint32_t CRC_CalculationResultXORGet(uint32_t xorValue)
{
    uint32_t result;

    result = CRC_CalculationResultRawGet();

    result ^= xorValue;

    return result & CRC_PolynomialMask();
}

uint32_t CRC_CalculationResultGet(bool reverse, uint32_t xorValue)
{
    uint32_t result;

    result = CRC_CalculationResultRawGet();

    if(reverse)
        result = CRC_CalculationResultReverseGet();
    else
        result = CRC_CalculationResultRawGet();

    result ^= xorValue;

    return result & CRC_PolynomialMask();
}
