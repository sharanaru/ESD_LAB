//SHARAN ARUMUGAM- ESD LAB3 part 2
//ADC reading temperature sensor value derived from TI Example code
//******************************************************************************
#include "msp.h"
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#define basev 63500 //determines frequency of pwm signal
int duty_cycle=10; //initialisation of initial pwm duty cycle to 90%
volatile long temp;
volatile float IntDegF;//stores temperature
volatile float IntDegC;//stores temp in c
char receive;//stores received value
int pflag=0; int nflag=0;
int32_t adcRefTempCal_1_2v_30;
int32_t adcRefTempCal_1_2v_85;
void uartinit()
{ // changing smclock frequency to 12 Mhz
    CS->KEY = CS_KEY_VAL;                   //
    CS->CTL0 = 0;                           // Reset tuning parameters
    CS->CTL0 = CS_CTL0_DCORSEL_3;           // Set DCO to 12MHz (nominal, center of 8-16MHz range)
    CS->CTL1 =  CS_CTL1_SELS_3;             //
    CS->KEY = 0;                                         // SMCLK = 12 MHz
    // Lock CS module from unintended accesses

    // Configure UART pins
    P1->SEL0 |= BIT2 | BIT3;                // selecting secondary function of pins 1.2 and 1.3 as uart pins

    // Configure UART
    EUSCI_A0->CTLW0 |= EUSCI_A_CTLW0_SWRST; // Puts uart in reset
    EUSCI_A0->CTLW0 = EUSCI_A_CTLW0_SWRST| EUSCI_A_CTLW0_SSEL__SMCLK; // Remain eUSCI in reset
    // Configure eUSCI clock source for SMCLK

    EUSCI_A0->BRW = 6;                     // baud rate at 115200
    EUSCI_A0->MCTLW = (8<< EUSCI_A_MCTLW_BRF_OFS) |(0x20<<EUSCI_A_MCTLW_BRS_OFS)|EUSCI_A_MCTLW_OS16;

    EUSCI_A0->CTLW0 &= ~EUSCI_A_CTLW0_SWRST; // Initialize eUSCI
    EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;    // Clear eUSCI RX interrupt flag
    EUSCI_A0->IE |= EUSCI_A_IE_RXIE;        // Enable USCI_A0 RX interrupt
}
uint16_t duty=0; //writing dutycycle value to timer comapre
void timerinit()
{

    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG;//clearing flag
    TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CCIFG; //clearing flag
    TIMER_A0->CCTL[0] |= TIMER_A_CCTLN_CCIE|TIMER_A_CCTLN_OUTMOD_3; // TACCR0 interrupt enabled - output mode 3
    TIMER_A0->CCTL[1] |= TIMER_A_CCTLN_CCIE|TIMER_A_CCTLN_OUTMOD_3; //TACCR1 interrupt enabled - output mode 3
    TIMER_A0->CCR[0] = basev;//loading base frequency value
    duty=duty_cycle*basev/100; //finding value with the duty cycle chosen
    TIMER_A0->CCR[1] =(uint16_t) duty; //casting float to int and then loading
    TIMER_A0->CTL = TIMER_A_CTL_SSEL__SMCLK |TIMER_A_CTL_MC__UP  ; //selecting SMCLK as clock for timer - 12 MHz



    P1->DIR |= BIT0; //setting led direction
    P1->OUT &= ~BIT0;

}
void buttoninit()
{
    P1->DIR &= ~BIT1;
    P1->OUT |= BIT1;
    P1->REN |= BIT1;
    P1->IES |= BIT1;                         // Interrupt on high-to-low transition
    // Clear all P1 interrupt flags
    P1->IE |= BIT1; //enabling interrupt
    P1->DIR &= ~BIT4;
    P1->OUT |= BIT4;
    P1->REN |= BIT4;// Enable global interrupt
    P1->IES |= BIT4;                         // Interrupt on high-to-low transition
    P1->IFG &= 0;                            // Clear all P1 interrupt flags
    P1->IE |= BIT4;
}
void tempinit()
{
    adcRefTempCal_1_2v_30 = TLV->ADC14_REF1P2V_TS30C;
    adcRefTempCal_1_2v_85 = TLV->ADC14_REF1P2V_TS85C;

    // Initialize the shared reference module
    // By default, REFMSTR=1 => REFCTL is used to configure the internal reference
    while(REF_A->CTL0 & REF_A_CTL0_GENBUSY);// If ref generator busy, WAIT
    REF_A->CTL0 |= REF_A_CTL0_VSEL_0 |      // Enable internal 1.2V reference
            REF_A_CTL0_ON;                  // Turn reference on

    REF_A->CTL0 &= ~REF_A_CTL0_TCOFF;       // Enable temperature sensor

    // Configure ADC - Pulse sample mode; ADC14_CTL0_SC trigger
    ADC14->CTL0 |= ADC14_CTL0_SHT0_6 |      // ADC ON,temperature sample period>5us
            ADC14_CTL0_ON |
            ADC14_CTL0_SHP;
    ADC14->CTL1 |= ADC14_CTL1_TCMAP;        // Enable internal temperature sensor
    ADC14->MCTL[0] = ADC14_MCTLN_VRSEL_1 |  // ADC input ch A22 => temp sense
            ADC14_MCTLN_INCH_22;
    ADC14->IER0 = 0x0001;                   // ADC_IFG upon conv result-ADCMEM0

    // Wait for reference generator to settle
    while(!(REF_A->CTL0 & REF_A_CTL0_GENRDY));

    ADC14->CTL0 |= ADC14_CTL0_ENC;
}

int main(void)
{

    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;            // Stop watchdog timer
    uartinit(); // baud rate at 115200 ; sm clock reconfigured to 12 MHz.
    timerinit();
    buttoninit();
    tempinit();
    __enable_irq();
    // Enable eUSCIA0 interrupt in NVIC module
    NVIC->ISER[0] |= 1 << ((EUSCIA0_IRQn) & 31);
    NVIC->ISER[0] |= 1 << ((TA0_0_IRQn) & 31);
    NVIC->ISER[0] |= 1 << ((TA0_N_IRQn) & 31);
    NVIC->ISER[1] |= 1 << ((PORT1_IRQn) & 31);
    NVIC->ISER[0] |= 1 << ((ADC14_IRQn) & 31);
    char initialmsg[]="\r\nUser Guide:\r\n Press: \r\n+P to get  duty cycle \r\n+C to get temperature in Celsius \r\n+F to get temperature in Fahrenheit \r\n+Buttons to adjust PWM duty cycle\r\n";
    int m;
    for(m=0;initialmsg[m]!='\0';m++)
    {
        while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
        EUSCI_A0->TXBUF=initialmsg[m];// printing menu
    }

    while(1)
    {
        ADC14->CTL0 |= ADC14_CTL0_SC;
        if (receive=='p') //setting flag to print duty cycle
            pflag=1;
        if(pflag)
        {
            int i;
            char msg_duty[]="\r\nDuty cycle is ";
            for(i=0;msg_duty[i]!='\0';i++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=msg_duty[i];
            }
            char duty_no[20];
            snprintf(duty_no,20, "%d", 100-duty_cycle);

            for(i=0;duty_no[i]!='\0';i++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=duty_no[i];
            }

            pflag=0;receive=NULL;
        }
        IntDegC = (((float) temp - adcRefTempCal_1_2v_30) * (85 - 30)) /
                (adcRefTempCal_1_2v_85 - adcRefTempCal_1_2v_30) + 30.0f;
        IntDegF = ((9 * IntDegC) / 5) + 32;
        if(nflag)
        {
            int i;
            char msg_duty1[]="\r\nDuty cycle is ";
            for(i=0;msg_duty1[i]!='\0';i++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=msg_duty1[i];
            }
            char duty_no1[20];
            snprintf(duty_no1,20, "%d", 100-duty_cycle);

            for(i=0;duty_no1[i]!='\0';i++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=duty_no1[i];
            }// For debugger
            nflag=0;
        }
        if(receive=='c'||receive=='C')
        {
            int k;
            char msg_temp[]="\r\nTemperature in Celsius is ";
            char temperature[20];
            snprintf(temperature,20, "%f \r\n", IntDegC);
            for(k=0;msg_temp[k]!='\0';k++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=msg_temp[k];
            }
            for(k=0;msg_temp[k]!='\0';k++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=temperature[k];
            }
            receive=NULL;
        }
        if(receive=='f'||receive=='F')
        {
            int k;
            char msg_tempf[]="\r\nTemperature in Fahrenheit is ";
            char temperaturef[20];
            snprintf(temperaturef,20, "%f \r\n", IntDegF);
            for(k=0;msg_tempf[k]!='\0';k++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=msg_tempf[k];
            }
            for(k=0;msg_tempf[k]!='\0';k++)
            {
                while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
                EUSCI_A0->TXBUF=temperaturef[k];
            }
            receive=NULL;
        }
    }
}
// UART interrupt service routine
void EUSCIA0_IRQHandler(void)
{
    if (EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG)
    {
        // Check if the TX buffer is empty first
        while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
        // Echo the received character back
        receive=EUSCI_A0->RXBUF;
        EUSCI_A0->TXBUF = receive;
        if(receive=='\r')
            EUSCI_A0->TXBUF ='\n';

    }
}

void TA0_0_IRQHandler(void)
{

    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG;
    P1->OUT &= ~BIT0;//clearing bit
}
void TA0_N_IRQHandler(void)
{

    TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CCIFG;
    P1->OUT |= BIT0;//setting bit
    // Add Offset to TIMER_A0->CCR[1]
}
void PORT1_IRQHandler(void)//handling button presses
{
    if(P1->IFG & BIT1)
    {
        int i;
        if(duty_cycle<=100)
        {
            duty_cycle+=10; //recalculating values
            duty=duty_cycle*basev/100;
            TIMER_A0->CCR[1] =(uint16_t) duty;
            pflag=1;
        }
        else
            pflag=0;
        // Delay for switch debounce
        for( i = 0; i <100; i++)
            ;

        P1->IFG &= ~BIT1;
    }
    if(P1->IFG & BIT4)
    { int i;
    if(duty_cycle>=10)
    {
        duty_cycle-=10;
        duty=duty_cycle*basev/100;
        TIMER_A0->CCR[1] =(uint16_t) duty;
        nflag=1;
    }
    for( i = 0; i <100; i++)
        ;
    P1->IFG &= ~BIT4
            ;
    }
}
void ADC14_IRQHandler(void)
{
    if (ADC14->IFGR0 & ADC14_IFGR0_IFG0)
    {
        temp = ADC14->MEM[0];
    }
}

