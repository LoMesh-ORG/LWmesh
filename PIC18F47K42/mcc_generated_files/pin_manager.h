/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.3
        Device            :  PIC18F47K42
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.20 and above
        MPLAB 	          :  MPLAB X 5.40	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set BLEN aliases
#define BLEN_TRIS                 TRISAbits.TRISA1
#define BLEN_LAT                  LATAbits.LATA1
#define BLEN_PORT                 PORTAbits.RA1
#define BLEN_WPU                  WPUAbits.WPUA1
#define BLEN_OD                   ODCONAbits.ODCA1
#define BLEN_ANS                  ANSELAbits.ANSELA1
#define BLEN_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define BLEN_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define BLEN_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define BLEN_GetValue()           PORTAbits.RA1
#define BLEN_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define BLEN_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define BLEN_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define BLEN_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define BLEN_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define BLEN_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define BLEN_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define BLEN_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set DIO0 aliases
#define DIO0_TRIS                 TRISAbits.TRISA4
#define DIO0_LAT                  LATAbits.LATA4
#define DIO0_PORT                 PORTAbits.RA4
#define DIO0_WPU                  WPUAbits.WPUA4
#define DIO0_OD                   ODCONAbits.ODCA4
#define DIO0_ANS                  ANSELAbits.ANSELA4
#define DIO0_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define DIO0_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define DIO0_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define DIO0_GetValue()           PORTAbits.RA4
#define DIO0_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define DIO0_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define DIO0_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define DIO0_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define DIO0_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define DIO0_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define DIO0_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define DIO0_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set RB0 procedures
#define RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define RB0_GetValue()              PORTBbits.RB0
#define RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define RB0_SetPullup()             do { WPUBbits.WPUB0 = 1; } while(0)
#define RB0_ResetPullup()           do { WPUBbits.WPUB0 = 0; } while(0)
#define RB0_SetAnalogMode()         do { ANSELBbits.ANSELB0 = 1; } while(0)
#define RB0_SetDigitalMode()        do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set RB1 procedures
#define RB1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define RB1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define RB1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define RB1_GetValue()              PORTBbits.RB1
#define RB1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define RB1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define RB1_SetPullup()             do { WPUBbits.WPUB1 = 1; } while(0)
#define RB1_ResetPullup()           do { WPUBbits.WPUB1 = 0; } while(0)
#define RB1_SetAnalogMode()         do { ANSELBbits.ANSELB1 = 1; } while(0)
#define RB1_SetDigitalMode()        do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set RB2 procedures
#define RB2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define RB2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define RB2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define RB2_GetValue()              PORTBbits.RB2
#define RB2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define RB2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define RB2_SetPullup()             do { WPUBbits.WPUB2 = 1; } while(0)
#define RB2_ResetPullup()           do { WPUBbits.WPUB2 = 0; } while(0)
#define RB2_SetAnalogMode()         do { ANSELBbits.ANSELB2 = 1; } while(0)
#define RB2_SetDigitalMode()        do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set RC1 procedures
#define RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define RC1_GetValue()              PORTCbits.RC1
#define RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define RC1_SetPullup()             do { WPUCbits.WPUC1 = 1; } while(0)
#define RC1_ResetPullup()           do { WPUCbits.WPUC1 = 0; } while(0)
#define RC1_SetAnalogMode()         do { ANSELCbits.ANSELC1 = 1; } while(0)
#define RC1_SetDigitalMode()        do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set RC2 procedures
#define RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define RC2_GetValue()              PORTCbits.RC2
#define RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define RC2_SetPullup()             do { WPUCbits.WPUC2 = 1; } while(0)
#define RC2_ResetPullup()           do { WPUCbits.WPUC2 = 0; } while(0)
#define RC2_SetAnalogMode()         do { ANSELCbits.ANSELC2 = 1; } while(0)
#define RC2_SetDigitalMode()        do { ANSELCbits.ANSELC2 = 0; } while(0)

// get/set RADRST aliases
#define RADRST_TRIS                 TRISCbits.TRISC5
#define RADRST_LAT                  LATCbits.LATC5
#define RADRST_PORT                 PORTCbits.RC5
#define RADRST_WPU                  WPUCbits.WPUC5
#define RADRST_OD                   ODCONCbits.ODCC5
#define RADRST_ANS                  ANSELCbits.ANSELC5
#define RADRST_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RADRST_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RADRST_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RADRST_GetValue()           PORTCbits.RC5
#define RADRST_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RADRST_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RADRST_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define RADRST_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define RADRST_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define RADRST_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define RADRST_SetAnalogMode()      do { ANSELCbits.ANSELC5 = 1; } while(0)
#define RADRST_SetDigitalMode()     do { ANSELCbits.ANSELC5 = 0; } while(0)

// get/set NSS aliases
#define NSS_TRIS                 TRISDbits.TRISD7
#define NSS_LAT                  LATDbits.LATD7
#define NSS_PORT                 PORTDbits.RD7
#define NSS_WPU                  WPUDbits.WPUD7
#define NSS_OD                   ODCONDbits.ODCD7
#define NSS_ANS                  ANSELDbits.ANSELD7
#define NSS_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define NSS_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define NSS_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define NSS_GetValue()           PORTDbits.RD7
#define NSS_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define NSS_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define NSS_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define NSS_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define NSS_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define NSS_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define NSS_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define NSS_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);




#endif // PIN_MANAGER_H
/**
 End of File
*/