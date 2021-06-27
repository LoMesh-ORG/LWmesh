#include "mcc.h"
#include "w25q.h"
#include "partitions.h"

#define MAXPARTITION    (sizeof(partitions)/sizeof(partitions[0]))

uint8_t formatPartitions(uint8_t partitionid)
{
    /*This is simple erase for us*/
    for(uint8_t part_table = 0;part_table < MAXPARTITION; part_table++)
    {
        if(part_table == partitionid)
        {
            uint32_t eraseAddr = partitions[part_table].startAddr;
            while(eraseAddr < partitions[part_table].startAddr + partitions[part_table].size)
            {
                W25Q_Erase_Sector((uint8_t)(eraseAddr));
                eraseAddr += 4096;
            }
            break;
        }
    }                             
}