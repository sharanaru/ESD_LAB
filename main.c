#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#define DEBUG
#include<ctype.h>
#include <at89c51ed2.h>
#include "macrodefs.h"
#ifdef DEBUG
#define DEBUGPORT_pass(x) debug_pass(x) //moves x to 0xFFFF
#define DEBUGPORT_fail(x) debug_fail(x) //moves int signifying command to 0xFFFE
#else
#define DEBUGPORT_pass(x)
#define DEBUGPORT_fail(x) //empty statement, nothing passed on from the preprocessor to the compiler
#endif

__xdata char __sdcc_heap[HEAP_SIZE];
const unsigned int __sdcc_heap_size = HEAP_SIZE;// heap size to 4000
_sdcc_external_startup() //enabling internal xram
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

*/
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



struct bufferinfo //struct to store details of address and size of each buffer
{
    uint16_t buffersize;
    char *bufferaddress;
};
int readint()//reads  char string as integer
{
    char *reader=NULL;
    gets(reader);
    int number=atoi(reader);
    return number;
}

void debug_pass(uint8_t c) //writes debug value when fn. passes to 0xffff
{
    ACC=c;
    __asm
    mov dptr,#0xffff
    movx @dptr,a
    __endasm;

}
void debug_fail(uint8_t c) //writes value when fn. fails in role. writes to 0xfffe
{
    ACC=c;
    __asm
    mov dptr,#0xfffe
    movx @dptr,a
    __endasm;

}

void main()
{



    uint8_t status=1; //indicates whether buffer 0 needs to be allocated. 1 if yes,0 if no
    uint8_t counter=0;// keeps count of how many buffers have been created
    uint16_t initial_allocation=0;//records no. of bytes buffer 0 and 1 have been allocated
    uint16_t overall_character_count=0;//records number of characters buffer 0 has read
    uint8_t checkchar_counter=0;//records number of characters received in serial from last ? command
    char *buffers[max_no_buffers]= {NULL};//creates an array of char pointers- each pointer points to a buffer if allocated
    struct bufferinfo buffers_[max_no_buffers];//contains address of buffer and size
    char activebuffers[max_no_buffers];//records whether buffer is active or not
    uint8_t receiveinput;//receives serial commands
    uint16_t new_allocation;//details the size of new buffer being created

    while(1)
    {


        while(status==1)
        {
            putstr(ask_allocation);

            initial_allocation=readint();//asks for byte size for buffer 0 and 1
            if((initial_allocation>=32) && (initial_allocation<=3200) &&(initial_allocation%16==0))
            {
                buffers[counter]=malloc(sizeof(char)*initial_allocation);
                printf("%p\n\r",buffers[0]);// prints address of buffer 0

                counter++;//incrementing no. of buffers created
                buffers[counter]=malloc(sizeof(char)*initial_allocation);
                printf("%p\n\r",buffers[1]); //prints address of buffer 1

                counter++;//increments no. of buffers in heap
                if((buffers[0])==NULL || buffers[1]==NULL) // checking if malloc failed for either allocation
                {


                    free(buffers[1]);
                    buffers[1]=NULL;//pointing to null after freeing
                    counter--;//decreases buffer in heap
                    free(buffers[0]);
                    buffers[0]=NULL;
                    counter--;//decreases buffer no. in heap
                    putstr(message_initial_fail);//prints allocation was unsuccesfull
                    DEBUGPORT_fail(1);//reports failure to debug address
                }
                else
                {
                    putstr(message_pass);//acknowledges allocation success
                    buffers_[0].buffersize=initial_allocation;//storing size of buffer in struct
                    buffers_[1].buffersize=initial_allocation;//storing size of buffer in struct
                    buffers_[0].bufferaddress=buffers[0];//storing add. buffer in struct
                    buffers_[1].bufferaddress=buffers[1];//storing add. buffer in struct
                    activebuffers[0]='1';//mainting list of active buffers in activebuffers array
                    activebuffers[1]='1';
                    status=0;
                    DEBUGPORT_pass(1);//reports to debug address operation was succesfull
                }
            }
            else
                putstr(message_initial_fail);//reports failure to user
            DEBUGPORT_fail(1);//reports failure to debug
        }




        receiveinput=getchar();//gets command character or other serial input
        checkchar_counter++;//stores no. of characters entered since last '?'
        putchar(receiveinput);//throws back input serial value to serial out
        switch(receiveinput)
        {
        case '+': //carries out allocation of new buffer
            putstr(ask_allocation_new);
            new_allocation=readint();
            if(new_allocation>=30 && new_allocation<=300)//checks buffer size conditions
            {
                buffers_[counter].buffersize=new_allocation;
                buffers[counter] =malloc(buffers_[counter].buffersize *sizeof(char));
                buffers_[counter].bufferaddress=buffers[counter];
                if((buffers[counter])==NULL)//checks if allocation was successfull
                {
                    free(buffers[counter]);
                    counter--;
                    putstr(message_initial_fail);
                    DEBUGPORT_fail(2);


                }
                else
                {
                    putstr(message_pass);
                    activebuffers[counter]='1';
                    counter++;
                    DEBUGPORT_pass(2);

                }
            }
            else
            {
                putstr("Invalid allocation. Valid values between 30 and 300\n\r");
                counter--;
            }
            break;
        case '-'://deletes chosen buffers
            putstr("Enter buffer to be deleted\n\r");
            uint8_t buffer_delete=getchar()-'0';//converts char to int
            putchar(buffer_delete);
            if(buffer_delete==0)
            {


                putstr("Invalid input-Buffer 0 not to be deleted\n\r");
                DEBUGPORT_fail(3);
            }

            else
            {

                if(buffer_delete<=counter)
                {
                    free(buffers[buffer_delete]);
                    buffers[buffer_delete]=NULL;
                    printf_tiny("Buffer %d was deleted\n\r");
                    activebuffers[buffer_delete]='0';
                    DEBUGPORT_pass(3);
                }
                else
                    printf_tiny("Buffer %d not created yet\n\r",buffer_delete);//when buffer doesnt exist
                DEBUGPORT_fail(3);
            }
            break;
        case '?':
            putstr("Active buffers in heap:\n\r");
            for(uint8_t i=0; i<=counter; i++)
            {
                if(activebuffers[i]=='1')
                {

                    printf_tiny("Buffer %d\n\r",i);
                    printf("Starting Address at %P \n\r",buffers_[i].bufferaddress);
                    endingaddress(buffers_[i].bufferaddress,buffers_[i].buffersize);
                    if(i==0)//only for buffer 0
                    {
                        printf_tiny("Number of characters in buffer: %d and free space is %d\n\r",overall_character_count,(buffers_[0].buffersize-overall_character_count));
                        putstr("Characters in Buffer 0 are:\n\r");
                        for(uint8_t k=0; k<overall_character_count; k++)
                        {
                            if((k%64)==0)
                            {
                                putstr("\n\r");
                                //rintf("%P:",&buffers[0][k]);
                            }
                            printf_tiny("%d ",buffers[0][k]);
                        }
                        putstr("\n\r");
                        DEBUGPORT_pass(4);
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
        case '='://prints characters in buffer 0
            putstr("Characters in Buffer 0 are:\r\n");
            for(uint8_t k=0; k<=overall_character_count; k++)
            {
                if((k%16)==0)
                {
                    putstr("\n\r");
                    printf("%P:",&buffers[0][k]);
                }
                printf_tiny("%x ",buffers[0][k]);
            }
            DEBUGPORT_pass(5);
            break;
        case '@'://frees all buffers and asks for allocation buffer 0 and 1 again
            for(uint8_t i=0; i<=counter; i++)
            {
                if(activebuffers[i]=='1')
                {
                    free(buffers[i]);
                    printf_tiny("Buffer %d freed from heap\n\r",i);
                }
            }
            status=1;//going to start reallocation of buffer 0 and 1
            DEBUGPORT_pass(6);
            break;





        default://handles char inputs apart from selected command



            if(overall_character_count<initial_allocation)
            {


                if(islower(receiveinput))
                {
                    buffers[0][overall_character_count]=receiveinput;
                    printf_tiny("buffer 0 character %c\n\r",buffers[0][overall_character_count]);
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
            break;
        }
    }
}
















