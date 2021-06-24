#include "mcc.h"
#include "partitions.h"

uint8_t formatPartitions(void)
{
    /*Read each partition in the table form memory and see if CRC is ok.
     If CRC on the partition fails then erase and format the partition.
     CRC includes the 4kB header of the partition. Set CRC to 0 for calculations*/
}