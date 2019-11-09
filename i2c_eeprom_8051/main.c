/*
 */

#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<ctype.h>
#include "at89c51ed2.h"
#define setSDA P1 |= 1<< 5
#define clearSCL  P1 &= ~(1<< 4)
#define setSCL  P1 |= 1<< 4
#define clearSDA  P1 &= ~(1<< 5)
//sda-p1.5 scl p1.4

void delay()
{
    __asm
    mov a,#3
l1:
    dec a
    cjne a,#0,l1
    __endasm;
}
void i2c_reset() //setting both lines to high to go into normal condition
{
    setSDA;
    setSCL;
    delay();
}
void i2c_start()
{
    clearSDA;
    delay();
    clearSCL;
}
void i2c_stop()
{
    delay();
    setSCL;
    delay();
    clearSDA; //low to high transition of sda marks stop
    delay();
    setSDA;
    delay();


}

void main(void)
{

i2c_start();
i2c_stop();
i2c_start();
i2c_start();





}
