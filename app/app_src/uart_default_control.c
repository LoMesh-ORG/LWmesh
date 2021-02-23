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
            set_parity(UART_9BIT_EVEN_PARITY);
            set_uart_baud(UART_BAUD_19200);
#ifdef MBRTU
            eMBInit( MB_RTU, MB_RTU_ADDR_MAX, 0, UART_BAUD_19200, 
                                             UART_9BIT_EVEN_PARITY);
#endif
            uart_default_state_var = WAIT_GPIO_GO_HIGH;
            break;
        case WAIT_GPIO_GO_HIGH:
            if(BLEN_GetValue()){
                set_timer0base(&blen_sample_timer, BLEN_SAMPLE_TIME_MS);
                uart_default_state_var = DEBOUNCE_DEACTIVATION;
            }
            break;
        case DEBOUNCE_DEACTIVATION:
            if(!get_timer0base(&blen_sample_timer)){
                if(BLEN_GetValue()){
                    uart_default_state_var = SWITCH_TO_CURRENT;
                }
                else{
                    uart_default_state_var = WAIT_GPIO_GO_HIGH;
                }
            }
            break;
        case SWITCH_TO_CURRENT:
#ifdef ATCOMM
            set_parity(DATAEE_ReadByte_Platform(UARTParity));
            set_uart_baud(DATAEE_ReadByte_Platform(UARTBaud));
#endif
#ifdef MBRTU
            set_parity(curent_parity);
            set_uart_baud(current_baud_rate);
            eMBInit( MB_RTU, mb_rtu_addr, 0, current_baud_rate, 
                                             curent_parity);
#endif
            uart_default_state_var = WAIT_GPIO_GO_LOW;
            break;
        default:
            uart_default_state_var = UART_DEFAULT_INIT;
    }
}