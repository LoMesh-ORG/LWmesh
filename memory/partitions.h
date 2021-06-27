#include "mcc.h"

#define SIZE_OF_APP_PARTITION   131072      

typedef struct 
{
    uint8_t name[32];
    uint32_t startAddr;
    uint32_t size;
    uint16_t crc16;
}partition_t;

partition_t partitions[3] = {
    
    {"app_a", 0u, SIZE_OF_APP_PARTITION, 0u},
    {"app_b", SIZE_OF_APP_PARTITION, SIZE_OF_APP_PARTITION, 0u},
    {NULL, NULL, NULL, NULL}
};

uint8_t formatPartitions(uint8_t partitionid);