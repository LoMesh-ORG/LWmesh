#include "pwrctl.h"


bool sleep_for(uint16_t sec)
{
#if (_18F27K42 || _18F47K42 || _18F26K42)
    //Turn off all sources of interrupts
    
#endif
}