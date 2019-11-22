#include "eeprom.h"
#include "stdio.h"
#include "converter.h"
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


int random_read(uint8_t controlcode,uint8_t byte_address)
{
    restart_i2c();
    i2c_write(controlcode);
    delay();
    i2c_write(byte_address);
    delay();
    restart_i2c();
    i2c_write((controlcode+1)); //change to read operation
    int s;
    s=i2c_read();
    i2c_nack();
    //putchar(s);
    i2c_stop();
    //putchar('\n');
    //putchar('\r');
    long_delay();
    return s;

}
void seq_read(uint8_t controlcode)
{
//printf("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
    char *addressreceiver1=NULL;
    printf("Enter first address\n\r");
    gets(addressreceiver1);
    uint16_t address1=strtohex(addressreceiver1);
    printf("%address 1d\n\r",address1);
    printf("Enter second address\n\r");
    gets(addressreceiver1);
    uint16_t address2=strtohex(addressreceiver1);
    printf("%address 1d\n\r",address2);
    printf("%d %d\n\r",address1,address2);
    printf("Starter: %d Ender %d\n\r",address1,address2);
    printf("difference is %d\n\r",address2-address1);



    restart_i2c();
    i2c_write(0xFF);
    i2c_nack();
    restart_i2c();
    i2c_stop();
    restart_i2c();
    i2c_write(controlcode);
    delay();
    i2c_write(address1);
    delay();
    restart_i2c();
    int s=0;
    int k=0;
    i2c_write((controlcode+1));//change to read operation
//    uint8_t block1=(address1 & 0xE00)>>8;
//    uint8_t startaddress=(address1&0x0FF);
//    uint8_t block2=(address2 & 0xE00)>>8;
//    uint8_t endaddress=(address2&0x0FF);

    uint16_t t=address1;
    while(t<(address2))
    {
        if(k%16==0)
        {
            printf("\n\r");
            printf("%3X:",t);
        }
        s=i2c_read();
        i2c_ack();
        k++;
        printf(" %X ",s);
        t++;
    }

    s=i2c_read();
    i2c_nack();
    i2c_stop();
    k++;
    if(k%16==0)
    {
        printf("\n\r");
        printf("%X:",t);
    }
    printf(" %X ",s);
    printf(newl);
    restart_i2c();
    i2c_write(0xFF);
    i2c_nack();
    restart_i2c();
    i2c_stop();


}


