#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include<stdbool.h>
#include<ctype.h>
#include <at89c51ed2.h>
#define HEAP_SIZE 4000
#define ask_allocation "Enter number of bytes for initial allocation  \n\r"
#define ask_allocation_new "enter number of bytes for allocation between 30 and 300 \n\r"
#define message_pass "Allocation was succesful\n\r"
#define message_initial_fail "Enter a different value\n\r"
#define endingaddress(x,y) printf("Ending address: %p\r\n",(x)+y-1);
#define message_fail "Allocation failed\n\r"
#define max_no_buffers 100

__xdata char __sdcc_heap[HEAP_SIZE];
const unsigned int __sdcc_heap_size = HEAP_SIZE;
_sdcc_external_startup()
{
    AUXR &=(!XRS2);
    AUXR != XRS1| XRS0;
    return 0;
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
    while (*s) 			// output characters until NULL found
    {
        putchar(*s++);
        i++;
    }
    //putchar('\n');
    return i+1;
}

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
    char *bufferaddress;
};
int readint()
{
    char *reader=NULL;
    gets(reader);
    int number=atoi(reader);
    return number;
}



void main()
{
    int status=1;
    int counter=0;
    uint16_t initial_allocation;
    uint16_t overall_character_count=0;
    uint8_t checkchar_counter=0;
    char *buffers[max_no_buffers]= {NULL};
    struct bufferinfo buffers_[max_no_buffers];
//to keep track of buffers allocated

//char *reader;

    while(status==1)
    {
        putstr(ask_allocation);
//gets(reader);
        initial_allocation=readint();
        if((initial_allocation>=32) && (initial_allocation<=3200) &&(initial_allocation%16==0))
        {
            buffers[counter]=malloc(sizeof(char)*initial_allocation);
            printf("%p\n\r",buffers[0]);
            //memset(buffers[counter], 0, buffers_[counter].initial_allocation);
            counter++;
            buffers[counter]=malloc(sizeof(char)*initial_allocation);
            printf("%p\n\r",buffers[1]);
            //memset(buffers[counter], 0, buffers_[counter].initial_allocation);
            counter++;
            if((buffers[0])==NULL || buffers[1]==NULL)
            {


                free(buffers[1]);
                buffers[1]=NULL;
                counter--;
                free(buffers[0]);
                buffers[0]=NULL;
                counter--;
                putstr(message_initial_fail);
            }
            else
            {
                putstr(message_pass);
                buffers_[0].buffersize=initial_allocation;
                buffers_[1].buffersize=initial_allocation;
                buffers_[0].bufferaddress=buffers[0];
                buffers_[1].bufferaddress=buffers[1];
                status=0;
            }
        }
        else
            putstr(message_initial_fail);
    }


    char activebuffers[max_no_buffers];
    activebuffers[0]='1';
    activebuffers[1]='1';
    int receiveinput;
    uint16_t new_allocation;
    while(1)
    {
        receiveinput=getchar();
        putchar(receiveinput);
        switch(receiveinput)
        {
        case '+':
            putstr(ask_allocation_new);
            new_allocation=readint();
            if(new_allocation>=30 && new_allocation<=300)
            {
                buffers_[counter].buffersize=new_allocation;
                buffers[counter] =malloc(buffers_[counter].buffersize);
                buffers_[counter].bufferaddress=buffers[counter];
                if((buffers[counter])==NULL)
                {
                    free(buffers[counter]);
                    counter--;
                    putstr(message_initial_fail);


                }
                else
                {
                    putstr(message_pass);
                    activebuffers[counter]='1';
                    counter++;

                }
            }
            else
            {
                putstr("Invalid allocation. Valid values between 30 and 300");
                counter--;
            }
            break;
        case '-':
            putstr("Enter buffer to be deleted\n\r");
            int buffer_delete=getchar()-'0';
            putchar(buffer_delete);
            if(buffer_delete==0)
                putstr("Invalid input-Buffer 0 not to be deleted\n\r");

            else
            {
                if(buffer_delete==1)
                {
                    free(buffers[1]);
                    activebuffers[1]='0';
                    buffers[1]=NULL;
                    putstr("Buffer 1 deleted");
                }
                else
                {
                    if(buffer_delete<=counter)
                    {
                        free(buffers[buffer_delete]);
                        buffers[buffer_delete]=NULL;
                        printf_tiny("Buffer %d was deleted",buffer_delete);
                        activebuffers[buffer_delete]='0';
                    }
                    else
                        printf_tiny("Buffer %d not created yet",buffer_delete);
                }
                break;
            case '?':
                for(int i=0; i<=counter; i++)
                {
                    if(activebuffers[i]=='1')
                    {
                        putstr("Active buffers in heap:\n\r");
                        printf_tiny("Buffer %d\n\r",i);
                        printf("Starting Address at %P \n\r",buffers_[i].bufferaddress);
                        endingaddress(buffers_[i].bufferaddress,buffers_[i].buffersize);
                        if(i==0)//only for buffer 0
                        {
                            printf_tiny("Number of characters in buffer: %d and free space is %d\n\r",overall_character_count,(buffers_[0].buffersize-overall_character_count));
                            putstr("Characters in Buffer 0 are:\r\n");
                            for(int k=0; k<overall_character_count; k++)
                            {
                                if((k%64)==0)
                                {
                                    putstr("\n\r");
                                    //rintf("%P:",&buffers[0][k]);
                                }
                                printf_tiny("%d ",buffers[0][k]);
                            }
                            putstr("\n\r");
                        }

                        else
                            printf_tiny("Number of characters in buffer: 0 and free spaces is %d\n\r",(buffers_[i].buffersize));




                    }
                }

                printf_tiny("number of characters since last ? command: %d\n\r",checkchar_counter);
                // memset(buffers[0], 0, overall_character_count);
                overall_character_count=0;
                checkchar_counter=0;
                break;
            case '=':
                putstr("Characters in Buffer 0 are:\r\n");
                for(int k=0; k<=overall_character_count; k++)
                {
                    if((k%16)==0)
                    {
                        putstr("\n\r");
                        printf("%P:",&buffers[0][k]);
                    }
                    printf_tiny("%X ",buffers[0][k]);
                }
                break;




            default:
                if(overall_character_count<initial_allocation)
                {


                    if(islower(receiveinput))
                    {
                        buffers[0][overall_character_count]=receiveinput;
                        printf_tiny("buffer 0 character %c\r\n",buffers[0][overall_character_count]);
                        overall_character_count++;
                        checkchar_counter++;
                    }
                    else
                        putchar(receiveinput);
                }
                else
                {
                    putstr("Buffer 0 full\n\r");
                    putchar(receiveinput);
                }
            }
        }
    }
}















