/**
  CRC Generated Driver File 

  @Company:
    Microchip Technology Inc.

  @File Name:
    crc.h

  @Summary:
    This is the generated driver implementation file for the CRC 
    driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description:
    This source file provides implementations for driver APIs for CRC. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0256GPM048
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
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

#ifndef _CRC_H
#define _CRC_H

/**
    Section: Includes
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/**
    Section: Enumerations
*/

/**
  @Summary
    The seed method that is used, direct or indirect

  @Description
    The seed method that is used, direct or indirect.  The direct method
    refers to the seed being placed before the shifters with the result being
    shifted through the polynomial.  The indirect method refers to the seed being
    placed after the shifters with the result not being shifted through the polynomial.
    
  @Example
    With a polynomial CRC-16-CCITT (0x1021) and a seed/initial value of 0xFFFF
    Direct - the result of 0xFFFF shifted, 0x84CF, will be in the CRC result register
    Indirect - the value of 0xFFFF will be placed in the CRC result register
*/
typedef enum
{
    CRC_SEED_METHOD_DIRECT,
    CRC_SEED_METHOD_INDIRECT
}CRC_SEED_METHOD;
/**
  @Summary
    The seed shift direction that is used in the direct method

  @Description
    The seed shift direction that is used in the direct method.  The seed will be 
    shift direction is independent of the data direction.  This setting is only used
    when the seed method is direct.
*/
typedef enum
{
    CRC_SEED_DIRECTION_Msb,
    CRC_SEED_DIRECTION_Lsb,
}CRC_SEED_DIRECTION;


// Provide C++ Compatibility
#ifdef __cplusplus  

extern "C" {

#endif

/**
  @Summary
    Initializes the CRC module

  @Description
    This routine sets the polynomial and data width; data and seed shift;
    updates the polynomial.

    After the routine is called, the CRC module is ready to calculate the
    CRC of a data buffer.
 

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Initialize the CRC module
    CRC_Initialize();
    // Start the CRC
    CRC_Enable();
    </code>

*/
void CRC_Initialize(void);

/**
  @Summary
    Enables the CRC module.

  @Description
    This function enables the CRC module.
 
  @Preconditions
    CRC module should be initialized.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Enable the CRC
    CRC_Enable();
    </code>

*/
void CRC_Enable();

/**
  @Summary
    Disables the CRC module.

  @Description
    This function disables the CRC module.
 
  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>

    // Enable the CRC
    CRC_Enable();
    // Disable the CRC
    CRC_Disable();
    </code>

*/
void CRC_Disable();

/**
  @Summary
    Selects the channel for the CRC module.

  @Description
    This function selects the channel for the CRC module.
 
  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>

    uint16_t channel;

    channel = 5;//Channel 5 is used

    // Enable the CRC
    CRC_Enable();
    // Channel is selected for CRC
    CRC_ChannelSelect( channel);
    </code>

*/
void CRC_ChannelSelect(uint16_t channel);

/**
  @Summary
    Selects the result append mode for the CRC module.

  @Description
    This function selects the result append mode for the CRC module.
 
  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>

    bool appendMode;

    appendMode = 1;//Data is not transfered to the destination

    // Enable the CRC
    CRC_Enable();
    // Append is enabled
    CRC_ReseltAppendMode(appendMode);
    </code>

*/
void CRC_ReseltAppendMode(bool mode);

/**
  @Summary
    Gets the CRC result.

  @Description
    This routine returns the CRC result from the module.

  @Preconditions
    The CRC module needs to be initialized with the desired settings.  Please
    refer to the CRC initialization routines.

  @Returns
    The CRC result for the module.

  @Example
    <code>
    uint8_t buffer [] = "Hello";
    uint32_t bufferCRC;

    // CRC module has been initialized 

    // Start the CRC

    // wait until CRC is calculated

    // get the CRC value
    bufferCRC = CRC_CalculationResultRawGet();
    </code>

*/
uint32_t CRC_CalculationResultRawGet(void);

/**
  @Summary
    Gets the CRC result.

  @Description
    This routine returns the CRC result from the module. This routine will reverse the bits, MSb to LSb,
    to the result read from the CRC SFR.

  @Preconditions
    The CRC module needs to be initialized with the desired settings.  Please
    refer to the CRC initialization routines.

  @Returns
    The CRC result for the module.

  @Example
    <code>
    uint8_t buffer [] = "Hello";
    uint32_t bufferCRC;

    // CRC module has been initialized 

    // Start the CRC

    // wait until CRC is calculated

    // get the CRC value
    bufferCRC = CRC_CalculationResultReverseGet();
    </code>

*/
uint32_t CRC_CalculationResultReverseGet(void);

/**
  @Summary
    Gets the CRC result.

  @Description
    This routine returns the CRC result from the module. This routine will XOR the passed value with the
    CRC result from the CRC SFR.

  @Preconditions
    The CRC module needs to be initialized with the desired settings.  Please
    refer to the CRC initialization routines.

  @Returns
    The CRC result for the module, reversed and XOR'd if desired.

  @Param
    xorValue - a value that will be XOR'd with the CRC result, after reversed if desired.

  @Example
    <code>
    uint8_t buffer [] = "Hello";
    uint32_t bufferCRC;

    // CRC module has been initialized 

    // Start the CRC

    // wait until CRC is calculated

    // get the CRC value XOR with 0xFFFF
    bufferCRC = CRC_CalculationResultXORGet(0xFFFF);
    </code>

*/
uint32_t CRC_CalculationResultXORGet(uint32_t xorValue);

/**
  @Summary
    Gets the CRC result.

  @Description
    This routine returns the CRC result from the module.

  @Preconditions
    The CRC module needs to be initialized with the desired settings.  Please
    refer to the CRC initialization routines.

  @Returns
    The CRC result for the module, reversed and XOR'd if desired.

  @Param
    reverse - if the CRC result from the module is bit reversed
    xorValue - a value that will be XOR'd with the CRC result, after reversed if desired.

  @Example
    <code>
    uint8_t buffer [] = "Hello";
    uint32_t bufferCRC;

    // CRC module has been initialized 

    // Start the CRC

    // wait until CRC is calculated

    // get the CRC value: do not reverse and XOR = 0
    bufferCRC = CRC_CalculationResultGet(false,0);
    </code>

*/    
uint32_t CRC_CalculationResultGet(bool reverse, uint32_t xorValue);


// Provide C++ Compatibility
#ifdef __cplusplus  

}

#endif
#endif