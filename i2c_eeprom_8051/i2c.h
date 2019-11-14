#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<ctype.h>
#include "at89c51ed2.h"
#define setSDA P1_5 = 1
#define clearSCL  P1_4 = 0
#define setSCL  P1_4=1
#define clearSDA  P1_5=0

void delay();
void i2c_reset();
void i2c_start();
void i2c_stop();
void long_delay();
void restart_i2c();
int i2c_write(int k);
void i2c_ack();
void i2c_nack();
int i2c_read();



