#include "eeprom.h"
#include "stdio.h"
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
void seq_read(uint8_t controlcode,uint8_t address1,uint8_t address2,uint8_t block1,uint8_t block2)
{
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
int blocknumber=block1;int s=0;
i2c_write((controlcode+1));//change to read operation
uint16_t starter=0;
starter|=block1;
starter=starter<<8;
starter|=address1;
uint16_t ender=0;
ender|=block2;
ender=ender<<8;
ender|=address2;uint8_t k=0;uint16_t t=0;
t=starter;
printf("Starter: %d Ender %d\n\r",starter,ender);
printf("difference is %d\n\r",ender-starter);
while(t<(ender)){
if(k%16==0)
{
    printf("\n\r");
    printf("%3X:",t);
}
s=i2c_read();
i2c_ack();
k++;
printf(" %X ",s);t++;
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


