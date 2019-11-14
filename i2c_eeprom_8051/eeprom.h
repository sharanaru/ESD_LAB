#include "i2c.h"
#include "stdio.h"
#define newl "\n\r"
void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata);
int random_read(uint8_t controlcode,uint8_t byte_address);
void seq_read(uint8_t controlcode,uint8_t address1,uint8_t addresss2,uint8_t block1,uint8_t block2);
