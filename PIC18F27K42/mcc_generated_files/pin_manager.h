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
        Device            :  PIC18F27K42
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

// get/set DIO2 aliases
#define DIO2_TRIS                 TRISAbits.TRISA0
#define DIO2_LAT                  LATAbits.LATA0
#define DIO2_PORT                 PORTAbits.RA0
#define DIO2_WPU                  WPUAbits.WPUA0
#define DIO2_OD                   ODCONAbits.ODCA0
#define DIO2_ANS                  ANSELAbits.ANSELA0
#define DIO2_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define DIO2_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define DIO2_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define DIO2_GetValue()           PORTAbits.RA0
#define DIO2_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define DIO2_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define DIO2_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define DIO2_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define DIO2_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define DIO2_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define DIO2_SetAnalogMode()      do { ANSELAbits.ANSELA0 = 1; } while(0)
#define DIO2_SetDigitalMode()     do { ANSELAbits.ANSELA0 = 0; } while(0)

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

// get/set MODE aliases
#define MODE_TRIS                 TRISAbits.TRISA2
#define MODE_LAT                  LATAbits.LATA2
#define MODE_PORT                 PORTAbits.RA2
#define MODE_WPU                  WPUAbits.WPUA2
#define MODE_OD                   ODCONAbits.ODCA2
#define MODE_ANS                  ANSELAbits.ANSELA2
#define MODE_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define MODE_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define MODE_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define MODE_GetValue()           PORTAbits.RA2
#define MODE_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define MODE_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define MODE_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define MODE_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define MODE_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define MODE_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define MODE_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define MODE_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

// get/set LED aliases
#define LED_TRIS                 TRISAbits.TRISA3
#define LED_LAT                  LATAbits.LATA3
#define LED_PORT                 PORTAbits.RA3
#define LED_WPU                  WPUAbits.WPUA3
#define LED_OD                   ODCONAbits.ODCA3
#define LED_ANS                  ANSELAbits.ANSELA3
#define LED_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define LED_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define LED_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define LED_GetValue()           PORTAbits.RA3
#define LED_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define LED_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define LED_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define LED_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)
#define LED_SetPushPull()        do { ODCONAbits.ODCA3 = 0; } while(0)
#define LED_SetOpenDrain()       do { ODCONAbits.ODCA3 = 1; } while(0)
#define LED_SetAnalogMode()      do { ANSELAbits.ANSELA3 = 1; } while(0)
#define LED_SetDigitalMode()     do { ANSELAbits.ANSELA3 = 0; } while(0)

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

// get/set DIO0 aliases
#define DIO0_TRIS                 TRISBbits.TRISB4
#define DIO0_LAT                  LATBbits.LATB4
#define DIO0_PORT                 PORTBbits.RB4
#define DIO0_WPU                  WPUBbits.WPUB4
#define DIO0_OD                   ODCONBbits.ODCB4
#define DIO0_ANS                  ANSELBbits.ANSELB4
#define DIO0_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define DIO0_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define DIO0_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define DIO0_GetValue()           PORTBbits.RB4
#define DIO0_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define DIO0_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define DIO0_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define DIO0_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define DIO0_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define DIO0_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define DIO0_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define DIO0_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set DIO1 aliases
#define DIO1_TRIS                 TRISBbits.TRISB5
#define DIO1_LAT                  LATBbits.LATB5
#define DIO1_PORT                 PORTBbits.RB5
#define DIO1_WPU                  WPUBbits.WPUB5
#define DIO1_OD                   ODCONBbits.ODCB5
#define DIO1_ANS                  ANSELBbits.ANSELB5
#define DIO1_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define DIO1_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define DIO1_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define DIO1_GetValue()           PORTBbits.RB5
#define DIO1_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define DIO1_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define DIO1_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define DIO1_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define DIO1_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define DIO1_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define DIO1_SetAnalogMode()      do { ANSELBbits.ANSELB5 = 1; } while(0)
#define DIO1_SetDigitalMode()     do { ANSELBbits.ANSELB5 = 0; } while(0)

// get/set RC0 procedures
#define RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define RC0_GetValue()              PORTCbits.RC0
#define RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define RC0_SetPullup()             do { WPUCbits.WPUC0 = 1; } while(0)
#define RC0_ResetPullup()           do { WPUCbits.WPUC0 = 0; } while(0)
#define RC0_SetAnalogMode()         do { ANSELCbits.ANSELC0 = 1; } while(0)
#define RC0_SetDigitalMode()        do { ANSELCbits.ANSELC0 = 0; } while(0)

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

// get/set RC3 procedures
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()              PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetPullup()             do { WPUCbits.WPUC3 = 1; } while(0)
#define RC3_ResetPullup()           do { WPUCbits.WPUC3 = 0; } while(0)
#define RC3_SetAnalogMode()         do { ANSELCbits.ANSELC3 = 1; } while(0)
#define RC3_SetDigitalMode()        do { ANSELCbits.ANSELC3 = 0; } while(0)

// get/set DIO5 aliases
#define DIO5_TRIS                 TRISCbits.TRISC4
#define DIO5_LAT                  LATCbits.LATC4
#define DIO5_PORT                 PORTCbits.RC4
#define DIO5_WPU                  WPUCbits.WPUC4
#define DIO5_OD                   ODCONCbits.ODCC4
#define DIO5_ANS                  ANSELCbits.ANSELC4
#define DIO5_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define DIO5_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define DIO5_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define DIO5_GetValue()           PORTCbits.RC4
#define DIO5_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define DIO5_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define DIO5_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define DIO5_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define DIO5_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define DIO5_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define DIO5_SetAnalogMode()      do { ANSELCbits.ANSELC4 = 1; } while(0)
#define DIO5_SetDigitalMode()     do { ANSELCbits.ANSELC4 = 0; } while(0)

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
#define NSS_TRIS                 TRISCbits.TRISC6
#define NSS_LAT                  LATCbits.LATC6
#define NSS_PORT                 PORTCbits.RC6
#define NSS_WPU                  WPUCbits.WPUC6
#define NSS_OD                   ODCONCbits.ODCC6
#define NSS_ANS                  ANSELCbits.ANSELC6
#define NSS_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define NSS_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define NSS_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define NSS_GetValue()           PORTCbits.RC6
#define NSS_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define NSS_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define NSS_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define NSS_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define NSS_SetPushPull()        do { ODCONCbits.ODCC6 = 0; } while(0)
#define NSS_SetOpenDrain()       do { ODCONCbits.ODCC6 = 1; } while(0)
#define NSS_SetAnalogMode()      do { ANSELCbits.ANSELC6 = 1; } while(0)
#define NSS_SetDigitalMode()     do { ANSELCbits.ANSELC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetPullup()             do { WPUCbits.WPUC7 = 1; } while(0)
#define RC7_ResetPullup()           do { WPUCbits.WPUC7 = 0; } while(0)
#define RC7_SetAnalogMode()         do { ANSELCbits.ANSELC7 = 1; } while(0)
#define RC7_SetDigitalMode()        do { ANSELCbits.ANSELC7 = 0; } while(0)

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