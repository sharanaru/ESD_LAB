/*I2c LAB4 ESD - Sharan Arumugam */
#define newl "\n\r"
#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<ctype.h>
#include "at89c51ed2.h"
#include "string.h"
#include "i2c.h"
#include "eeprom.h"
#include "converter.h"
int flag_inputcheck=0;
void inputchecker(char *r)
{
    int i=0;
    flag_inputcheck=0;
    while(r[i]!='\0')
    {
        if(((r[i]>='0')&&(r[i]<='9'))||((r[i]>='a')&&(r[i]<='f'))||((r[i]>='A')&&(r[i]<='F')))
            i++;
        else
        {


            printf_tiny("Invalid character entered Please retry\n\r");
            flag_inputcheck=1;
            return;
        }
    }

}

//sda-p1.5 scl p1.4
//http://codinglab.blogspot.com/2008/10/i2c-on-avr-using-bit-banging.html - Used for reference (Adruino serial library reference
char addressreceiver[4];
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


uint8_t control=0xA0;

int menuselect;
uint8_t errorflag=0;


void writebytehandler(char *receiver)
{
    uint16_t t=strtohex(receiver);
    uint8_t blockno=(t & 0x7ff)>>8;

    if(((t&0xE00)>>8)<8)
    {

        control |=(blockno<<1);



    }
    else
    {
        putstr("\n\rInvalid block no.\n\r");
        return;
    }
    //return;
    uint8_t address=(t&0x0FF);
//    if(address>0xFF)
//        return;
    putstr("Enter data to be written\n\r");
    uint8_t data=0;
    gets(addressreceiver);
    inputchecker(addressreceiver);
    if(!flag_inputcheck)
    {
        putstr("data is ");
        putstr(addressreceiver);
        putstr(newl);
        data=strtohex(addressreceiver);
        byte_write(control,address,data);
    }

}

int randomread_handler(char *receiver)
{
    uint16_t t=strtohex(receiver);

    uint8_t blockno=(t & 0x7ff)>>8;

    if(((t&0xE00)>>8)<8)
    {

        control |=(blockno<<1);


    }
    else
        errorflag=1;
    if(errorflag)
    {
        putstr("Wrong block number. \n\r");
        return -1;
    }
    else
    {

        uint8_t address=(t&0x0FF);
        int result =random_read(control,address);
        errorflag=0;
        return result;

    }
}
volatile uint8_t output;
void main(void)
{
    i2c_reset();
    while(1)
    {


        errorflag=0;
        putstr("*************************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\rPRESS X FOR EEPROM RESET\n\r");
        menuselect=getchar();

        putchar(menuselect);
        putstr("\n\r");

        switch(toupper(menuselect))
        {

        case 'W':
            putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER IN HEX\n\r");

            gets(addressreceiver);
            inputchecker(addressreceiver);
            if(!flag_inputcheck)
                writebytehandler(addressreceiver);
            control=0xA0;
            break;

        case 'R':
            putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER in HEX\n\r");
            gets(addressreceiver);
            inputchecker(addressreceiver);
            if(!flag_inputcheck)
            {

                output=randomread_handler(addressreceiver);
                if(errorflag==0)
                    printf("Read value is 0x%X\n\r",output);
            }
            control=0xA0;

            break;
        case 'S':
            putstr("\n\r");
            char addressreceiver1[4];

            putstr("Enter first address\n\r");
            gets(addressreceiver1);
            inputchecker(addressreceiver1);
            if(flag_inputcheck)
            {
                putstr("Error in input");
                putstr(newl);
                break;
            }


            uint16_t address1=strtohex(addressreceiver1);

            uint8_t block1=(address1 & 0x7FF)>>8;
            uint8_t startaddress=(address1&0x0FF);
            char addressreceiver2[4];



            putstr("Enter second address\n\r");
            gets(addressreceiver2);
            inputchecker(addressreceiver2);
            if(flag_inputcheck)
            {
                putstr("Error in input");
                putstr(newl);
                break;
            }


            uint16_t address2=strtohex(addressreceiver2);
            uint8_t block2=(address2 & 0x7FF)>>8;
            uint8_t endaddress=(address2&0x0FF);

            if((((address1&0xE00)>>8)>7) || (((address2&0xE00)>>8)>7))
            {

                putstr("Block numbers are invalid\n\r");
                break;
            }
            if(address1>address2)
            {
                printf("Initial address is greater than Second address\n\r");
                break;
            }

             control |=(block1<<1);


            //int *k=NULL;
            seq_read(control,startaddress,endaddress,block1,block2);





            control=0xA0;

            break;
        case 'X':
            restart_i2c();
            i2c_write(0xFF);
            i2c_nack();
            restart_i2c();
            i2c_stop();
            break;
        default:
            printf("No function attached to input\r\n");
            break;











        }
    }


}



















