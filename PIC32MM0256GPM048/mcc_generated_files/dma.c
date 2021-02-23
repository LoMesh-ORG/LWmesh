/**
  DMA Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    dma.c

  @Summary
    This is the generated driver implementation file for the DMA driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for DMA.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.170.0
        Device            :  PIC32MM0256GPM048
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.50
        MPLAB 	          :  MPLAB X v5.45
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
  Section: Included Files
*/

#include "dma.h"

void DMA_Initialize(void) 
{ 
    // DMABUSY disabled; SUSPEND Normal DMA operation; ON disabled; 
    DMACON = (0x00 | 0x01) & 0x7FFF; //Enable DMA later

    // CHCHNS Chain to channel higher; CHAEN disabled; CHEN disabled; CHCHN disabled; CHBUSY disabled; CHAED disabled; CHPRI Priority 0; 
    DCH0CON= 0x00 & 0xFF7F; //Enable DMA Channel later;
    // AIRQEN disabled; CABORT disabled; CHAIRQ 0; SIRQEN disabled; CHSIRQ 0; PATEN disabled; CFORCE disabled; 
    DCH0ECON= 0x00;
    // CHSDIE enabled; CHSDIF No interrupt; CHERIF No interrupt; CHSHIE disabled; CHSHIF No interrupt; CHERIE enabled; CHCCIF No interrupt; CHBCIE disabled; CHBCIF No interrupt; CHDDIF No interrupt; CHDDIE enabled; CHCCIE disabled; CHDHIF No interrupt; CHDHIE disabled; CHTAIE disabled; CHTAIF No interrupt; 
    DCH0INT= 0xA10000;
    // CHSSA 0; 
    DCH0SSA= 0x00;
    // CHDSA 0; 
    DCH0DSA= 0x00;
    // CHSSIZ 0; 
    DCH0SSIZ= 0x00;
    // CHDSIZ 0; 
    DCH0DSIZ= 0x00;
    // CHCSIZ 1; 
    DCH0CSIZ= 0x01;
    // DCHPDAT 0; 
    DCH0DAT= 0x00;
    // Clearing Channel 0 Interrupt Flag;
    IFS3CLR= 1 << _IFS3_DMA0IF_POSITION;

    // CHEN disabled; CHCHNS Chain to channel higher; CHAEN disabled; CHCHN disabled; CHBUSY disabled; CHPRI Priority 0; CHAED disabled; 
    DCH1CON= 0x00 & 0xFF7F; //Enable DMA Channel later;
    // AIRQEN disabled; CHAIRQ 0; SIRQEN disabled; CHSIRQ 0; CABORT disabled; PATEN disabled; CFORCE disabled; 
    DCH1ECON= 0x00;
    // CHSDIE enabled; CHSDIF No interrupt; CHERIF No interrupt; CHSHIE disabled; CHSHIF No interrupt; CHERIE enabled; CHCCIF No interrupt; CHBCIE disabled; CHBCIF No interrupt; CHDDIF No interrupt; CHDDIE enabled; CHCCIE disabled; CHDHIF No interrupt; CHDHIE disabled; CHTAIE disabled; CHTAIF No interrupt; 
    DCH1INT= 0xA10000;
    // CHSSA 0; 
    DCH1SSA= 0x00;
    // CHDSA 0; 
    DCH1DSA= 0x00;
    // CHSSIZ 0; 
    DCH1SSIZ= 0x00;
    // CHDSIZ 0; 
    DCH1DSIZ= 0x00;
    // CHCSIZ 1; 
    DCH1CSIZ= 0x01;
    // DCHPDAT 0; 
    DCH1DAT= 0x00;
    // Clearing Channel 1 Interrupt Flag;
    IFS3CLR= 1 << _IFS3_DMA1IF_POSITION;

    // CHPRI Priority 0; CHCHNS Chain to channel higher; CHAEN disabled; CHCHN disabled; CHEN disabled; CHBUSY disabled; CHAED disabled; 
    DCH2CON= 0x00 & 0xFF7F; //Enable DMA Channel later;
    // AIRQEN disabled; CHAIRQ 0; SIRQEN disabled; CABORT disabled; PATEN disabled; CHSIRQ 0; CFORCE disabled; 
    DCH2ECON= 0x00;
    // CHSDIE enabled; CHSDIF No interrupt; CHERIF No interrupt; CHSHIE disabled; CHSHIF No interrupt; CHERIE enabled; CHCCIF No interrupt; CHBCIE disabled; CHBCIF No interrupt; CHDDIF No interrupt; CHDDIE enabled; CHCCIE disabled; CHDHIF No interrupt; CHDHIE disabled; CHTAIE disabled; CHTAIF No interrupt; 
    DCH2INT= 0xA10000;
    // CHSSA 0; 
    DCH2SSA= 0x00;
    // CHDSA 0; 
    DCH2DSA= 0x00;
    // CHSSIZ 0; 
    DCH2SSIZ= 0x00;
    // CHDSIZ 0; 
    DCH2DSIZ= 0x00;
    // CHCSIZ 1; 
    DCH2CSIZ= 0x01;
    // DCHPDAT 0; 
    DCH2DAT= 0x00;
    // Clearing Channel 2 Interrupt Flag;
    IFS3CLR= 1 << _IFS3_DMA2IF_POSITION;

    // CHPRI Priority 0; CHAED disabled; CHEN disabled; CHCHNS Chain to channel higher; CHCHN disabled; CHAEN disabled; CHBUSY disabled; 
    DCH3CON= 0x00 & 0xFF7F; //Enable DMA Channel later;
    // AIRQEN disabled; CHAIRQ 0; SIRQEN disabled; CABORT disabled; PATEN disabled; CHSIRQ 0; CFORCE disabled; 
    DCH3ECON= 0x00;
    // CHSDIE enabled; CHSDIF No interrupt; CHERIF No interrupt; CHSHIE disabled; CHSHIF No interrupt; CHERIE enabled; CHCCIF No interrupt; CHBCIE disabled; CHBCIF No interrupt; CHDDIF No interrupt; CHDDIE enabled; CHCCIE disabled; CHDHIF No interrupt; CHDHIE disabled; CHTAIE disabled; CHTAIF No interrupt; 
    DCH3INT= 0xA10000;
    // CHSSA 0; 
    DCH3SSA= 0x00;
    // CHDSA 0; 
    DCH3DSA= 0x00;
    // CHSSIZ 0; 
    DCH3SSIZ= 0x00;
    // CHDSIZ 0; 
    DCH3DSIZ= 0x00;
    // CHCSIZ 1; 
    DCH3CSIZ= 0x01;
    // DCHPDAT 0; 
    DCH3DAT= 0x00;
    // Clearing Channel 3 Interrupt Flag;
    IFS3CLR= 1 << _IFS3_DMA3IF_POSITION;
    
    
}

void __attribute__ ((weak)) DMA_Channel0_CallBack(void)
{
    // Add your custom callback code here
}

void __attribute__ ( ( vector ( _DMA0_VECTOR ) , interrupt ( IPL1SOFT ) ) ) DMA0_ISR( void )
{
    DMA_Channel0_CallBack();

    //Clear flag
    IFS3CLR= 1 << _IFS3_DMA0IF_POSITION;
}

void __attribute__ ((weak)) DMA_Channel1_CallBack(void)
{
    // Add your custom callback code here
}

void __attribute__ ( ( vector ( _DMA1_VECTOR ) , interrupt ( IPL1SOFT ) ) ) DMA1_ISR( void )
{
    DMA_Channel1_CallBack();

    //Clear flag
    IFS3CLR= 1 << _IFS3_DMA1IF_POSITION;
}

void __attribute__ ((weak)) DMA_Channel2_CallBack(void)
{
    // Add your custom callback code here
}

void __attribute__ ( ( vector ( _DMA2_VECTOR ) , interrupt ( IPL1SOFT ) ) ) DMA2_ISR( void )
{
    DMA_Channel2_CallBack();

    //Clear flag
    IFS3CLR= 1 << _IFS3_DMA2IF_POSITION;
}

void __attribute__ ((weak)) DMA_Channel3_CallBack(void)
{
    // Add your custom callback code here
}

void __attribute__ ( ( vector ( _DMA3_VECTOR ) , interrupt ( IPL1SOFT ) ) ) DMA3_ISR( void )
{
    DMA_Channel3_CallBack();

    //Clear flag
    IFS3CLR= 1 << _IFS3_DMA3IF_POSITION;
}

void DMA_ChannelEnable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0CONbits.CHEN = 1;
                IFS3CLR= 1 << _IFS3_DMA0IF_POSITION;
                IEC3bits.DMA0IE = 1;
                break; 
        case DMA_CHANNEL_1:
                DCH1CONbits.CHEN = 1;
                IFS3CLR= 1 << _IFS3_DMA1IF_POSITION;
                IEC3bits.DMA1IE = 1;
                break; 
        case DMA_CHANNEL_2:
                DCH2CONbits.CHEN = 1;
                IFS3CLR= 1 << _IFS3_DMA2IF_POSITION;
                IEC3bits.DMA2IE = 1;
                break; 
        case DMA_CHANNEL_3:
                DCH3CONbits.CHEN = 1;
                IFS3CLR= 1 << _IFS3_DMA3IF_POSITION;
                IEC3bits.DMA3IE = 1;
                break; 
        default: break;
    }
}
void DMA_ChannelDisable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0CONbits.CHEN = 0;
                IFS3CLR= 1 << _IFS3_DMA0IF_POSITION;
                IEC3bits.DMA0IE = 0;
                break;    
        case DMA_CHANNEL_1:
                DCH1CONbits.CHEN = 0;
                IFS3CLR= 1 << _IFS3_DMA1IF_POSITION;
                IEC3bits.DMA1IE = 0;
                break;    
        case DMA_CHANNEL_2:
                DCH2CONbits.CHEN = 0;
                IFS3CLR= 1 << _IFS3_DMA2IF_POSITION;
                IEC3bits.DMA2IE = 0;
                break;    
        case DMA_CHANNEL_3:
                DCH3CONbits.CHEN = 0;
                IFS3CLR= 1 << _IFS3_DMA3IF_POSITION;
                IEC3bits.DMA3IE = 0;
                break;    
        default: break;
    }
}
void DMA_TransferStartEnable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0ECONbits.CFORCE = 1;
                break; 
        case DMA_CHANNEL_1:
                DCH1ECONbits.CFORCE = 1;
                break; 
        case DMA_CHANNEL_2:
                DCH2ECONbits.CFORCE = 1;
                break; 
        case DMA_CHANNEL_3:
                DCH3ECONbits.CFORCE = 1;
                break; 
        default: break;
    }
}
void DMA_TransferAbortEnable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0ECONbits.CABORT = 1;
                break; 
        case DMA_CHANNEL_1:
                DCH1ECONbits.CABORT = 1;
                break; 
        case DMA_CHANNEL_2:
                DCH2ECONbits.CABORT = 1;
                break; 
        case DMA_CHANNEL_3:
                DCH3ECONbits.CABORT = 1;
                break; 
        default: break;
    }
}
void DMA_TransferStartIRQEnable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0ECONbits.SIRQEN = 1;
                break; 
        case DMA_CHANNEL_1:
                DCH1ECONbits.SIRQEN = 1;
                break; 
        case DMA_CHANNEL_2:
                DCH2ECONbits.SIRQEN = 1;
                break; 
        case DMA_CHANNEL_3:
                DCH3ECONbits.SIRQEN = 1;
                break; 
        default: break;
    }
}
void DMA_TransferAbortIRQEnable(DMA_CHANNEL  channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0ECONbits.AIRQEN = 1;
                break; 
        case DMA_CHANNEL_1:
                DCH1ECONbits.AIRQEN = 1;
                break; 
        case DMA_CHANNEL_2:
                DCH2ECONbits.AIRQEN = 1;
                break; 
        case DMA_CHANNEL_3:
                DCH3ECONbits.AIRQEN = 1;
                break; 
        default: break;
    }
}
void DMA_SourceSizeSet(DMA_CHANNEL channel, uint16_t sourceSize)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0SSIZ = sourceSize;
                break;
        case DMA_CHANNEL_1:
                DCH1SSIZ = sourceSize;
                break;
        case DMA_CHANNEL_2:
                DCH2SSIZ = sourceSize;
                break;
        case DMA_CHANNEL_3:
                DCH3SSIZ = sourceSize;
                break;
        default: break;
    }
}
void DMA_DestinationSizeSet(DMA_CHANNEL channel, uint16_t destinationSize)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0DSIZ = destinationSize;
                break;
        case DMA_CHANNEL_1:
                DCH1DSIZ = destinationSize;
                break;
        case DMA_CHANNEL_2:
                DCH2DSIZ = destinationSize;
                break;
        case DMA_CHANNEL_3:
                DCH3DSIZ = destinationSize;
                break;
        default: break;
    }
}
void DMA_TransferCountSet(DMA_CHANNEL channel, uint16_t transferCount)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                DCH0CSIZ = transferCount;
                break;
        case DMA_CHANNEL_1:
                DCH1CSIZ = transferCount;
                break;
        case DMA_CHANNEL_2:
                DCH2CSIZ = transferCount;
                break;
        case DMA_CHANNEL_3:
                DCH3CSIZ = transferCount;
                break;
        default: break;
    }
}
uint16_t DMA_TransferCountGet(DMA_CHANNEL channel)
{
    switch(channel) {
        case DMA_CHANNEL_0:
                return (DCH0CSIZ);
        case DMA_CHANNEL_1:
                return (DCH1CSIZ);
        case DMA_CHANNEL_2:
                return (DCH2CSIZ);
        case DMA_CHANNEL_3:
                return (DCH3CSIZ);
        default: return 0;
    }
}
void DMA_SourceAddressSet(DMA_CHANNEL  channel, uint32_t address) {
    switch(channel) {
        case DMA_CHANNEL_0:
                // Convert virtual address to physical address
                DCH0SSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_1:
                // Convert virtual address to physical address
                DCH1SSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_2:
                // Convert virtual address to physical address
                DCH2SSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_3:
                // Convert virtual address to physical address
                DCH3SSA = (address & 0x1FFFFFFF);
                break;
        default: break;
    }    
}

void DMA_DestinationAddressSet(DMA_CHANNEL  channel, uint32_t address) {
    switch(channel) {
        case DMA_CHANNEL_0:
                // Convert virtual address to physical address
                DCH0DSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_1:
                // Convert virtual address to physical address
                DCH1DSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_2:
                // Convert virtual address to physical address
                DCH2DSA = (address & 0x1FFFFFFF);
                break;
        case DMA_CHANNEL_3:
                // Convert virtual address to physical address
                DCH3DSA = (address & 0x1FFFFFFF);
                break;
        default: break;
    }    
}

DMA_STATUS DMA_StatusGet (DMA_CHANNEL channel ) {
    switch(channel) {
        case DMA_CHANNEL_0:
                return (DCH0INT);
        case DMA_CHANNEL_1:
                return (DCH1INT);
        case DMA_CHANNEL_2:
                return (DCH2INT);
        case DMA_CHANNEL_3:
                return (DCH3INT);
        default: return 0;
    }    
}

