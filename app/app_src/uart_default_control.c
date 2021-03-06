#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#endif
#include "uart_default_control.h"
#include "Timers.h"
#include "application.h"
#include "EEPROM.h"
#ifdef MBRTU
#include "mb.h"
#endif
#if (__32MM0256GPM048__)
#include "pin_manager.h"
#endif

#define BLEN_SAMPLE_TIME_MS     250
extern uint8_t set_uart_baud(uint8_t i);
extern uint8_t set_parity(uint8_t parity);

enum UART_DEFAULT_STATE_T{
        UART_DEFAULT_INIT = 0,
        WAIT_GPIO_GO_LOW,
        DEBOUNCE_ACTIVATION,
        SWITCH_TO_DEFAULT,
        WAIT_GPIO_GO_HIGH,
        DEBOUNCE_DEACTIVATION,
        SWITCH_TO_CURRENT
    };
enum UART_DEFAULT_STATE_T uart_default_state_var = UART_DEFAULT_INIT;

enum USER_APPLICATION_STATE get_current_state(void){
    return user_application_state;
}

void uart_default_engine(void){
    switch(uart_default_state_var){
        case UART_DEFAULT_INIT:
            uart_default_state_var = WAIT_GPIO_GO_LOW;
            break;
        case WAIT_GPIO_GO_LOW:
            if(!BLEN_GetValue()){
                set_timer0base(&blen_sample_timer, BLEN_SAMPLE_TIME_MS);
                uart_default_state_var = DEBOUNCE_ACTIVATION;
            }
            break;
        case DEBOUNCE_ACTIVATION:
            if(!get_timer0base(&blen_sample_timer)){
                if(!BLEN_GetValue()){
                    uart_default_state_var = SWITCH_TO_DEFAULT;
                }
                else{
                    uart_default_state_var = WAIT_GPIO_GO_LOW;
                }
            }
            break;
        case SWITCH_TO_DEFAULT:
            {
                (void*)set_parity(UART_9BIT_EVEN_PARITY);
                (void*)set_uart_baud(UART_BAUD_19200);
                user_application_state = DEFAULT_PROFILE;
            }
#ifdef MBRTU
            eMBInit( MB_RTU, MB_RTU_ADDR_MAX, 0, UART_BAUD_19200, 
                                             UART_9BIT_EVEN_PARITY);
#endif
            uart_default_state_var = WAIT_GPIO_GO_HIGH;
            break;
            
        case WAIT_GPIO_GO_HIGH:
            if(0 != BLEN_GetValue()){
                set_timer0base(&blen_sample_timer, BLEN_SAMPLE_TIME_MS);
                uart_default_state_var = DEBOUNCE_DEACTIVATION;
            }
            else{}
            break;
        case DEBOUNCE_DEACTIVATION:
            if(!get_timer0base(&blen_sample_timer)){
                if(0 != BLEN_GetValue()){
                    uart_default_state_var = SWITCH_TO_CURRENT;
                }
                else{
                    uart_default_state_var = WAIT_GPIO_GO_HIGH;
                }
            }
            break;
        case SWITCH_TO_CURRENT:
#ifdef ATCOMM
            {
                (void*)set_parity(DATAEE_ReadByte_Platform(UARTParity));
                (void*)set_uart_baud(DATAEE_ReadByte_Platform(UARTBaud));
                user_application_state = CURRENT_PROFILE;
            }
#endif
#ifdef MBRTU
            {
                (void*)set_parity(curent_parity);
                (void*)set_uart_baud(current_baud_rate);
                eMBInit( MB_RTU, mb_rtu_addr, 0, current_baud_rate, 
                                                 curent_parity);
            }
#endif
#ifdef USERAPP
            (void)set_parity(UART_8BIT_NO_PARITY);
            (void)set_uart_baud(UART_BAUD_9600);
            user_application_state = CURRENT_PROFILE;
#endif
#ifdef TRANS
            (void)set_parity(uart_parity);
            (void)set_uart_baud(uart_baud_rate);
            user_application_state = CURRENT_PROFILE;
#endif
            uart_default_state_var = WAIT_GPIO_GO_LOW;
        break;
        
        default:
            uart_default_state_var = UART_DEFAULT_INIT;
            break;
    }
}
