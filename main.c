#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<stdbool.h>
#include<ctype.h>
#include <at89c51ed2.h>
#define HEAP_SIZE 4000
#define message_pass "Allocation was succesful\n\r"
#define message_initial_fail "Enter a different value\n\r"
#define message_fail "Allocation failed\n\r"
__xdata char __sdcc_heap[HEAP_SIZE];
const unsigned int __sdcc_heap_size = HEAP_SIZE;


extern int putchar(int c)
{
	while (!TI);				// compare asm code generated for these three lines
	while (TI == 0);
	while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
	return 0;
}


extern int getchar(void)
{

    while (!RI);                // compare asm code generated for these three lines
    while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
	while (RI == 0);
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}
int putstr (char *s)
{
	int i = 0;
	while (*s){			// output characters until NULL found
		putchar(*s++);
		i++;
	}
	//putchar('\n');
	return i+1;
}



/*
// compiler flags
// -c -mmcs51 --std-sdcc99 --verbose --model-large

// linker flags for C501 with code in SRAM at 0x6000 and data in SRAM at 0xC000
// --code-loc 0x6000 --code-size 0x6000 --xram-loc 0xC000 --xram-size 0x0400 --model-large --out-fmt-ihx

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x400 --model-large --out-fmt-ihx

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal/external XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x8400 --model-large --out-fmt-ihx

// All processor XRAM should be enabled before the call to main().
// This can be done in a user supplied _sdcc_external_startup() function.
// See section 3.11.1 of sdccman.pdf for SDCC revision 2.6.0.
*/
bool checkmalloc(int *test)
{
  if(test==NULL)
        return false;
    else
        return true;

}

void main()
{
    bool status=true;
    uint16_t input;

    while(status)
    {
    putstr("Enter number of bytes for initial allocation\n\r");
    input= getchar();
    if((input>=32) && (input<=3200) &&(input%16==0))
    {
     char *buffer_0=malloc(input);
     char *buffer_1=malloc(input);
     if(checkmalloc(buffer_1)==false)
        {
            free(buffer_0);free(buffer_1);
            putstr(message_initial_fail);
        }
      else
      {
        putstr(message_pass);
        status=false;
      }
    }
    else
    putstr(message_initial_fail);
    }
struct bufferinfo
{
int buffersize;
uint16_t 
};
int maximumbuffers=(HEAP_SIZE-(2*input))/30;//30 is minimum no. of bytes to be allocated; stores maximum number of buffers that can be allocated
char* buffers[maximumbuffers];
int counter=0;//to keep track of buffers allocated
while

}


