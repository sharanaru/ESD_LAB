/*
 */

#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<ctype.h>
#include "at89c51ed2.h"
#define setSDA P1_5 = 1
#define clearSCL  P1_4 = 0
#define setSCL  P1_4=1
#define clearSDA  P1_5=0
//sda-p1.5 scl p1.4
//http://codinglab.blogspot.com/2008/10/i2c-on-avr-using-bit-banging.html - Used for reference
int putchar (int c)//serial outps char value
{
    while (!TI);				// compare asm code generated for these three lines
    while (TI == 0);
    while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
    SBUF = c;  	// load serial port with transmit value
    TI = 0;  	// clear TI flag
    return 0;
}


int getchar(void)//reads char value from serial
{

    while (!RI);                // compare asm code generated for these three lines
    while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
    while (RI == 0);
    RI = 0;			// clear RI flag
    return SBUF;  	// return character from SBUF
}
int putstr (char *s)//outputs string to serial
{
    int i = 0;
    while (*s) 			// output characters until NULL found
    {
        putchar(*s++);
        i++;
    }
    //putchar('\n');
    return i+1;
}




int readint()//reads  char string as integer
{
    char *reader=NULL;
    gets(reader);
    int number=atoi(reader);
    return number;
}

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
void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
{
        restart_i2c();
        i2c_write(controlcode);
        delay();
        i2c_write(byte_address);
        delay();
        i2c_write(writedata);
        delay();
        i2c_stop();
        long_delay();

        int t=1;
        while(t) //ack polling
        {

        restart_i2c();
        t=i2c_write(controlcode);
        delay();
        }
        i2c_stop();
}


void random_read(uint8_t controlcode,uint8_t byte_address)
{
    restart_i2c();
    i2c_write(controlcode);delay();
    i2c_write(byte_address);delay();
    restart_i2c();
    i2c_write((controlcode+1)); //change to read operation
    int s;
    s=i2c_read();
    i2c_nack();
    putchar(s);
    i2c_stop();
    putchar('\n');
    putchar('\r'); long_delay();

}
void main(void)
{
while(1)
{
i2c_reset();
byte_write(0xA0,0x01,'b');
byte_write(0xA0,0x02,'c');
restart_i2c();
i2c_write(0xA0);delay();
i2c_write(0x01);delay();
restart_i2c();
i2c_write((0xA1)); //change to read operation
int s;
s=i2c_read();
i2c_ack();
putchar(s);
s=i2c_read();
i2c_nack();
putchar(s);
i2c_stop();










    }
}




