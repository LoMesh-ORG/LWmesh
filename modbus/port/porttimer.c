/*
 * FreeModbus Libary: BARE Port
 * Copyright (C) 2006 Christian Walter <wolti@sil.at>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * File: $Id: porttimer.c,v 1.1 2006/08/22 21:35:13 wolti Exp $
 */

/* ----------------------- Platform includes --------------------------------*/
#include "port.h"

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbport.h"

/* ----------------------- static functions ---------------------------------*/
void prvvTIMERExpiredISR( void );
static uint16_t timerval = 0;

/* ----------------------- Start implementation -----------------------------*/
BOOL
xMBPortTimersInit( USHORT usTim1Timerout50us )
{
#if (_18F27K42 || _18F47K42 || _18F26K42)
    timerval = 0xFFFF - (usTim1Timerout50us*400);
    TMR3_SetInterruptHandler(&prvvTIMERExpiredISR);
#endif
#if (__32MM0256GPM048__)
    timerval = (uint16_t)((usTim1Timerout50us * 50) / 23);
#endif
    return TRUE;
}


void
vMBPortTimersEnable(  )
{
    /* Enable the timer with the timeout passed to xMBPortTimersInit( ) */
#if (_18F27K42 || _18F47K42 || _18F26K42)
    TMR3_StopTimer();
    TMR3_WriteTimer(timerval);
    TMR3_StartTimer();
#endif
#if (__32MM0256GPM048__)
    TMR3_Stop();
    TMR3_Counter16BitSet(timerval);
    TMR3_Start();
#endif
}

void
vMBPortTimersDisable(  )
{
    /* Disable any pending timers. */
#if (_18F27K42 || _18F47K42 || _18F26K42)
    TMR3_StopTimer();
#endif
#if (__32MM0256GPM048__)
    TMR3_Stop();
#endif
}

/* Create an ISR which is called whenever the timer has expired. This function
 * must then call pxMBPortCBTimerExpired( ) to notify the protocol stack that
 * the timer has expired.
 */
void prvvTIMERExpiredISR( void )
{
#if (_18F27K42 || _18F47K42 || _18F26K42)
    TMR3_StopTimer();
#endif
#if (__32MM0256GPM048__)
    TMR3_Stop();
#endif
    ( void )pxMBPortCBTimerExpired(  );
}

void vMBPortTimersDelay( USHORT usTimeOutMS ){
}

void TMR3_CallBack(void)
{
    prvvTIMERExpiredISR();
}
