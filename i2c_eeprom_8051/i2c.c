#include "i2c.h"

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
    clearSCL;
    clearSDA;

    setSDA;
    setSCL;
    delay();
}
void i2c_start()
{
    clearSDA;
    delay();
    clearSCL;
    delay();

}
void i2c_stop()
{
    clearSDA;
    setSCL;
    delay();
    setSDA; //low to high transition of sda marks stop
    delay();

}
void long_delay()
{
    for(uint16_t i=800;i!=0;i--)
        {
            delay();
        }
}
void restart_i2c()
{
     setSCL;
        clearSDA;
        delay();
        clearSCL;
}

int i2c_write(int k)
{


    for(int i=0; i<8; i++)
    {
//masking everything except msb
        if(k & 128)
        {
            setSDA;
            setSCL;
            delay();
            clearSCL;

        }
        else
        {


            clearSDA;
            setSCL;
            delay();
            clearSCL;

        }
//        if (k > 0)
//        {
//            clearSDA;
//        }

        delay();
        k<<=1;

    }
    setSDA;
    __asm
    nop
    __endasm;
    setSCL;
    int ack_check=0;
    ack_check |=P1_5;

    delay();
    clearSCL;
    return ack_check;
}
void i2c_ack()
{
clearSDA;
delay();
setSCL;
delay();
clearSCL;
setSDA;
}
void i2c_nack()
{
    setSCL;
            delay();
            setSDA;
            clearSCL;
            delay();
}
int i2c_read()
{
    int reader=0;
    setSDA;

            for (int i=0; i<8; i++)
            {
              reader<<=1;
                setSCL;
                delay();
                reader |=P1_5;
                clearSCL;
                delay();


            }
//creating nack after read

            return reader;

}
