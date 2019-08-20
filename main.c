#include <xc.h>

#include "LCD.h"
#pragma config WDTEN=OFF, FOSC=INTIO67,MCLRE=EXTMCLR,IESO=OFF, LVP=OFF
#define _XTAL_FREQ 4000000

unsigned char TENS1=0,UNITS1=0,TENTHS1=0, control=1;
unsigned char tens,units,tenths;
unsigned int rate=0;

	unsigned char i;
	double value,N,t;


double value,Syringe_Calibration,t,Step_Number;

void interrupt chk_isr(void)
{
	if(INTCONbits.INT0IF==1)
	INT0_isr();
}

void caluclation (void)
{
					N=TENTHS1;
					N=N/10;
                    value=(TENS1*10)+UNITS1+N;
                    Step_Number=48*64;
					Syringe_Calibration=Step_Number*1.8;
					Syringe_Calibration= Syringe_Calibration/3600;
					value*=Syringe_Calibration;
					t=1000/value;
					t=t+0.5;
					rate=t;
					control=1;
}
void Flow_Rate (void)
{
for(unsigned int i=0;i<rate;i++){
					__delay_ms(1);
					}
}

void INT0_isr(void)
{

    PORTC=0x00;
	control=0;
	INTCONbits.INT0IF=0;
}

void init(void)
	{

	OSCCON=0b01010010;//this to select internal osc at 4MHz
	ANSELC=0x00;//make PORTC digital I/O
	TRISC=0xF0;//set appropriate data direction bits
	PORTC=0x00;//clear any PORTC outputs
	ANSELB=0x00;//make PORTB digital I/O
	TRISB=0x01;//set appropriate data direction bits (RB0 is input)
	PORTB=0x00;//clear PORTB outputs
	TRISA=0x0F; //all outputs except RA0 analogue IP
	ANSELA=0x00; //make PORTA digital I/O except RA0 analogue
	PORTA=0x00; //clear all PORTA digital pins
    TRISBbits.TRISB0=1;
    INTCONbits.INT0IF=0;
    INTCONbits.INT0IE=1;
    INTCONbits.GIE=1;
	}
void dec_ASCII(void)
	{
	tens=(TENS1/1)+0x30;
  	units=(UNITS1/1)+0x30;
    tenths=(TENTHS1/1)+0x30;
	}

void display(void)
	{
    set_address_line1(1);					//Set cursor position at 1 on line 1
    send_msg("FLOW= ");
	set_address_line2(1);
	write_data(tens);
	write_data(units);
	write_data('.');
	write_data(tenths);
    set_address_line2(6);					//Set cursor position at 6 on line 2
    send_msg("ml/h ");
	}


void main(void)
 {
    
    init();
    init_display();
	
	
     
    TENS1=0;
    UNITS1=0;
    TENTHS1=0; 
       while(1)
          {
                
                    if(!PORTCbits.RC4)
                    {
                    TENS1++;
                    if(TENS1 > 9)
                    TENS1 = 0;
                    for(i=0;i<4;i++)
                   __delay_ms(10);//make a delay
                    }

                    if(!PORTCbits.RC5)
                    {
                    UNITS1++;
                    if(UNITS1 > 9)
                    UNITS1=0; 
				    for(i=0;i<4;i++)
                   __delay_ms(10);//make a delay   
                    }

                    if(!PORTCbits.RC6)
                    {
                    TENTHS1++;
                    if(TENTHS1 > 9)
                    TENTHS1=0;    
                   for(i=0;i<4;i++)
                   __delay_ms(10);//make a delay
                    }

                   if((!PORTCbits.RC7) && (TENS1 || UNITS1 || TENTHS1))
                   {
					caluclation ();
          	    	while (control==1)
            		{

					PORTC=0x09; //the sequence drives the stepper phases two at a time 1001
					Flow_Rate ();
					PORTC=0x0C; // the sequence drives the stepper phases two at a time 1100	
					Flow_Rate ();
					PORTC=0x06; //the sequence drives the stepper phases two at a time 0110		
					Flow_Rate ();
					PORTC=0x03; //the sequence drives the stepper phases two at a time 0011
					Flow_Rate ();
             		}
                  
          			}
					dec_ASCII();
           			display();
                   	__delay_ms(150);
                   	for(i=0;i<6;i++)
                   	__delay_ms(10);//make a delay           
              
        }
}
    
	
