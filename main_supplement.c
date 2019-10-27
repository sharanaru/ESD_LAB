/*Sharan Arumugam- supplemental 8051 pca. Code sourced from http://ww1.microchip.com/downloads/en/appnotes/s72052.pdf
 */

#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>

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
void PWM_on()
{
// This program generates a pulse by comparing the CL register with the
// value stored in CCAP0L. If CL >= CCAP0L then the output is HIGH.
// If CL < CCAP0L then the output is LOW.
// The duty cycle is determined by the value stored in CCAP0H.
CMOD |= 0x02; // Setup PCA timer to use clockperiphal/2
CL  = 0x00; //timer counter
CH  = 0x00; //timer counter
CCAP0L = 140; // Set the initial value same as CCAP0H
CCAP0H = 140;
CCAPM0 |= 0x42; // Setup PCA module 0 in PWM mode.
CR = 1; // Start PCA Timer.
}

void PWM_off()
{
   CCAPM0 &= 0;
}

void idle()
{

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
CMOD = CMOD | 0x40;
CR=1;
static int watchdogflag=1;
}

void manage_watchdog()
{
EA = 0;
CCAP4L = 0;
CCAP4H = CH;
EA = 1;
}
void timerinit()
{
CMOD |= 0x01; // Setup PCA timer mode.
CH = 0x00; // Init values
CL = 0x00;
CCAP0L = 0x20; // Set compare limit
CCAP0H = 0x4E;
CCAPM0 = 0x49; // Set Modules zero for 16bit Timer mode.
IE = 0xC0; // Enable Interrupts
CR = 1;// Start PCA timer
}

void PCA_ISR()__interrupt(6)__using(1)
{
unsigned int temp;
putstr("entered isr\n");
IE = IE & 0xBF; // Stop Interrupts
CCF0 = 0; // Clear Int flag
temp = CCAP0L | (CCAP0H << 8); // The following four lines
temp += 0x4E20; // of code increase the
CCAP0L = temp; // compare value in CCAP0
CCAP0H = temp >> 8; // by 20000, effectively
// refreshing the timer.
IE = IE | 0x40; // Start interrupts
}


void main(void)
{
    while(1)
    {


putstr("User menu\r\n+PRESS P TO TURN ON PWM PIN AT P1.3\r\n+PRESS L TO STOP PWM\r\n+PRESS H TO SET MAX FREQUENCY AT FCLCK PERIPH\r\n+PRESS J TO LOWER FCLK PERIPH TO MIN FREQUENCY\r\n+PRESS I TO ENTER IDLE\r\n+PRESS A TO ENTER POWER DOWN\r\n");
putstr("Additonal Features O- Watchdog T-software timer\r\n");
char x=getchar();
switch(x)
{
case 'p':
    PWM_on(); putstr("P pressed\n\r");
                     break;
case 'l':
    PWM_off();
    putstr("L pressed\n\r");
    break;
case 'h':
    changeperiphclock(1);
    putstr("H pressed\n\r");
    break;
case 'j':
    putstr("J pressed\n\r");
    changeperiphclock(0);

    break;
case 'i':
    putstr("I pressed\n\r");
    idle();
    break;
case 'a':
    putstr("A pressed\n\r");
    poweroff();break;
case 'o':
    putstr("O pressed\n\r");
    watchdog_init();break;
case 't':
    putstr("T pressed\n\r");
    timerinit();break;


}
putstr("Function processed\n\r");
    }


}
