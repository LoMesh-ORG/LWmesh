#include "led.h"
#include "circular buffer.h"
#if defined(__PICC18__)
#include "mcc.h"
#else
#include "system.h"
#include "pin_manager.h"
#endif
#include "Timers.h"
#define led_event_queue_depth       32
   
extern const uint8_t FirmwareVersionMajor;
extern const uint8_t FirmwareVersionMinor;

struct ledEvent
    {
        uint8_t LEDCondition;
        uint16_t eventDuration;
    };

struct ledEvent ledqueue[led_event_queue_depth]; 
uint16_t ledTimerVar = 0;
uint8_t ledStateVar;
    
CircularBufferContext ledtasksbuf;


void ledInit(void)
{
    
    //Initialize the led task queue
    CircularBufferInit(&ledtasksbuf,&ledqueue,
            sizeof(ledqueue),sizeof(struct ledEvent));
    
    //Now load the version blink activity on the queue
    //Initial off period
    queueLedEvent(0,2000);
    
    //Blink major
    for(uint8_t i = 0; i < FirmwareVersionMajor; i++)
    {
        queueLedEvent(1,250);
        queueLedEvent(0,250);
    }
    //Gap between major and minor
    queueLedEvent(0,1000);
    //Blink minor
    for(uint8_t i = 0; i < FirmwareVersionMinor; i++)
    {
        queueLedEvent(1,250);
        queueLedEvent(0,250);
    }
    //Gap between minor and led always on
    queueLedEvent(0,2000);
    queueLedEvent(1,100);
}

int8_t queueLedEvent(uint8_t LEDState,uint16_t duration)
{
    if(0 != CircularBufferSpace(&ledtasksbuf))
    {
        struct ledEvent temp;
        temp.LEDCondition = LEDState;
        temp.eventDuration = duration;
        CircularBufferPushBack(&ledtasksbuf,&temp);
        return 0;
    }
    else
    {
        return -1;
    }
}

void handle_led_events(void)
{
    //Call every loop to find out if LED event has to be handled
    if(!get_timer0base(&ledtimer)){
        //No active led event. Look for new event
        if(!CircularBufferEmpty(&ledtasksbuf)){
            //New event to handle. Load the event
            struct ledEvent temp;
            CircularBufferPopFront(&ledtasksbuf,&temp);
            //Check if it was a zero time event
            if(0 == temp.eventDuration){
                //Turn LED on and exit
                LED_SetLow();
                return;
            }
            if(temp.LEDCondition){
                LED_SetLow();
            }
            else{
                LED_SetHigh();           
            }
            set_timer0base(&ledtimer, temp.eventDuration);
        }
        else{
            LED_SetLow();
        }
    }
}


void queue_serial_led_event(void)
{
    queueLedEvent(0,400);
    for(uint8_t i = 0; i < 2; i++)
    {
        queueLedEvent(1,100);
        queueLedEvent(0,100);
    }
    queueLedEvent(0,100);
    queueLedEvent(1,100);
}

void queue_tx_led_event(void)
{    
    queueLedEvent(0,400);
    for(uint8_t i = 0; i < 2; i++)
    {
        queueLedEvent(1,100);
        queueLedEvent(0,100);
    }
    queueLedEvent(1,300);
    queueLedEvent(0,300);
    queueLedEvent(1,100);
}

void queue_rx_led_event(void)
{
    queueLedEvent(0,400);
    for(uint8_t i = 0; i < 2; i++)
    {
        queueLedEvent(1,300);
        queueLedEvent(0,300);
    }
    queueLedEvent(1,100);
    queueLedEvent(0,300);
    queueLedEvent(1,100);
}
