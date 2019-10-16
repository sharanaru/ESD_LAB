#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<stdbool.h>
#include<ctype.h>
#include <at89c51ed2.h>
#define HEAP_SIZE 4000
#define ask_allocation "Enter number of bytes for initial allocation\n\r"
#define ask_allocation_new "enter number of bytes for allocation between 30 and 300 \n\r"
#define message_pass "Allocation was succesful\n\r"
#define message_initial_fail "Enter a different value\n\r"
#define message_fail "Allocation failed\n\r"
#define max_no_buffers (4000-(2*32))/30
__xdata char __sdcc_heap[HEAP_SIZE];
const unsigned int __sdcc_heap_size = HEAP_SIZE;


 int putchar (int c)
{
	while (!TI);				// compare asm code generated for these three lines
	while (TI == 0);
	while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
	return 0;
}


 int getchar(void)
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
struct bufferinfo
{
uint16_t buffersize;
uint16_t bufferaddress;
uint16_t bufferend;
};
int readint()
{
    char *reader;
    gets(reader);int number=atoi(reader);
    return number;

}



void main()
{
bool status=true;
int counter=0;
uint16_t initial_allocation;
uint16_t overall_character_count=0;char *buffers[max_no_buffers];//array of pointers with no. of elements being maximum no. of buffers that can be allocated
//to keep track of buffers allocated

//char *reader;

while(status==true)
{
putstr(ask_allocation);
//gets(reader);
initial_allocation=readint();
if((initial_allocation>=32) && (initial_allocation<=3200) &&(initial_allocation%16==0))
{
     buffers[counter]=malloc(initial_allocation);
    counter++;
     buffers[counter]=malloc(initial_allocation);
    counter++;
    if((checkmalloc(buffers[0])==false)||(checkmalloc(buffers[1])==false))
        {
        free(buffers[1]);
        counter--;
        free(buffers[0]);counter--;
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

struct bufferinfo buffers_[max_no_buffers];
char *activebuffers=malloc(sizeof(char)*max_no_buffers);activebuffers[0]='1';activebuffers[1]='1';

int receiveinput;
while(1)
{
   receiveinput=getchar();
   switch(receiveinput)
   {
   case '+':
    putstr(ask_allocation_new);
    counter++;
    buffers_[counter].buffersize=readint();
buffers[counter] =malloc(buffers_[counter].buffersize);
    if(checkmalloc(buffers[counter])==false)
    {
     free(buffers[counter]);counter--;
    putstr(message_initial_fail);

    break;
    }
    else
    {
    putstr(message_pass);activebuffers[counter]='1';
    break;
    }
   break;
   case '-':
    putstr("Enter buffer to be deleted\n\r");
    int buffer_delete=getchar()-'0';
    if(buffer_delete==0)
putstr("Invalid input-Buffer 0 not to be deleted\n\r");

else{
    if(buffer_delete==1)
    {
        free(buffers[1]);
        putstr("Buffer 1 deleted");
    }
    else
{
    if(buffer_delete<=counter)
    {
    free(buffers[buffer_delete]);
    printf_tiny("Buffer %d was deleted",buffer_delete);
    }
    else
        printf_tiny("Buffer %d not created yet",buffer_delete-'0');
}
break;
   default:
    if(islower(receiveinput))
    {
        buffers[0][overall_character_count]=receiveinput;printf_tiny("buffer 0 character %c\r\n",buffers[0][overall_character_count]);
        overall_character_count++;
    }
    else
        putchar(receiveinput);
}
}
}
}















