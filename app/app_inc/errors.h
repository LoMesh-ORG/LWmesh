/* 
 * File:   errors.h
 * Author: samue
 *
 * Created on February 16, 2020, 9:56 AM
 */

#ifndef ERRORS_H
#define	ERRORS_H

#ifdef	__cplusplus
extern "C" {
#endif

    enum{
        DIG_ZERO = 0,
        DIG_ONE,
        E_OK,     //operation ok
        E_PIN,    //invalid pin
        E_MODE,   //invalid mode for this pin or operation
        NOT_VADLID_ADDR,            
        FAILED_SAVE_NADDR,          
        MESSAGE_TOO_LONG,          
        KEYLENERROR,               
        UNDEFCMD,                  
        CHOUTOFBOUNDS,           
        TXOUTOFBOUNDS,           
        RSSIOUTOFBOUNDS,           
        ILLEGALPARAMETER, 
        MESSAGE_IN_CACHE,
        MESSAGE_NOT_IN_CACHE,
        NO_RX_MESSAGES,
        NO_FREE_BUF,
        NO_ACK_STATUS,
        E_UNKNOWN        
    };


#ifdef	__cplusplus
}
#endif

#endif	/* ERRORS_H */

