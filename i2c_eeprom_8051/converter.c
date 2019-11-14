#include "converter.h"
uint16_t strtohex(char *l)
{
//only upper case input

int length=strlen(l);

char f[4];
switch(length){
case 1:


    f[0]='0';f[1]='0';f[2]=l[0];
break;
case 2:
    f[0]='0';f[1]=l[0];f[2]=l[1];break;
case 3:
    f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
}

uint16_t i=0;

for(int k=0; k<3; k++)
    {

        switch(toupper(f[k]))
        {

        case '1'://1
            if(k==0)
                i+=0x100;
            if(k==1)
                i+=0x010;
            if(k==2)
                i+=0x001;
            break;
        case 50://2
            if(k==0)
                i+=0x200;
            if(k==1)
                i+=0x020;
            if(k==2)
                i+=0x002;
            break;
        case 51://3
            if(k==0)
                i+=0x300;
            if(k==1)
                i+=0x030;
            if(k==2)
                i+=0x003;
            break;
        case 52://4
            if(k==0)
                i+=0x400;
            if(k==1)
                i+=0x040;
            if(k==2)
                i+=0x004;
            break;
        case 53://5
            if(k==0)
                i+=0x500;
            if(k==1)
                i+=0x050;
            if(k==2)
                i+=0x005;
            break;
        case 54://6
            if(k==0)
                i+=0x600;
            if(k==1)
                i+=0x060;
            if(k==2)
                i+=0x006;
            break;
        case 55://7
            if(k==0)
                i+=0x700;
            if(k==1)
                i+=0x070;
            if(k==2)
                i+=0x007;
            break;
        case 56://8
            if(k==0)
                i+=0x800;
            if(k==1)
                i+=0x080;
            if(k==2)
                i+=0x008;
            break;
        case 57://9
            if(k==0)
                i+=0x900;
            if(k==1)
                i+=0x090;
            if(k==2)
                i+=0x009;
            break;
        case 65://A
            if(k==0)
                i+=0xA00;
            if(k==1)
                i+=0x0A0;
            if(k==2)
                i+=0x00A;
            break;
        case 66://B
            if(k==0)
                i+=0xB00;
            if(k==1)
                i+=0x0B0;
            if(k==2)
                i+=0x00B;
            break;
        case 67://C
            if(k==0)
                i+=0xC00;
            if(k==1)
                i+=0x0C0;
            if(k==2)
                i+=0x00C;
            break;
        case 68://D
            if(k==0)
                i+=0xD00;
            if(k==1)
                i+=0x0D0;
            if(k==2)
                i+=0x00D;
            break;
        case 69://E
            if(k==0)
                i+=0xE00;
            if(k==1)
                i+=0x0E0;
            if(k==2)
                i+=0x00E;
            break;
        case 70://F
            if(k==0)
                i+=0xF00;
            if(k==1)
                i+=0x0F0;
            if(k==2)
                i+=0x00F;
            break;


        }
    }
    if(length!=3)
        return (uint8_t)i;
    else
        return i;
}

