/*
 */

#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<stdbool.h>
#include <at89c51ed2.h>

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


void changeperiphclock(int a)
{
    if(a)
        CKRL=0xFF;//maximum frequency
    else
        CKRL=0x00;//setting to zero  for minimum frequency
}
void PWM_on(uint8_t duty)
{
// This program generates a pulse by comparing the CL register with the
// value stored in CCAP0L. If CL >= CCAP0L then the output is HIGH.
// If CL < CCAP0L then the output is LOW.
// The duty cycle is determined by the value stored in CCAP0H.
CMOD |= 0x02; // Setup PCA timer to use clockperiphal/2
CL  = 0x00; //timer counter
CH  = 0x00; //timer counter
CCAP0L = duty; // Set the initial value same as CCAP0H
CCAP0H = duty; // 75% Duty Cycle
CCAPM0 |= 0x42; // Setup PCA module 0 in PWM mode.
CR = 1; // Start PCA Timer.
}
void PWM_off()
{
   CCAPM0 &= 0;
}

void idle()
{
   CMOD |=
PCON|=0x1;//setting pcon idl bit to put into idle. can be woken up by isrs
}
void poweroff()
{
    PCON|=(1<<1);//setting pcon pd bit to go into power down mode can only be woken up by external interrupt
}
void watchdog_init()
{

CCAP4L = 0xFF; // Setup PCA module 4 for Watchdog Timer
CCAP4H = 0xFF;
CCAPM4 = 0x4C;
CMOD = CMOD | 0x40;CR=1;
static int watchdogflag=1;
}


/**********WATCH DOG REFRESH*********/
void manage_watchdog()
{
EA = 0;
CCAP4L = 0;
CCAP4H = CH;
EA = 1;
}


void main(void)
{
uint16_t i=0;
while(i!=65500)
{
    i++;
}
watchdog_init();

}
