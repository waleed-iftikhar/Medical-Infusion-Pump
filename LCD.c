#include "LCD.h"
#include <xc.h>  
void init_display(void)
		{
		LCD_TRIS=0x01; //set the data direction for LCD PORT
		LCD_PORT=0x00;  //clear the LCD PORT
		__delay_ms(20);  // wait > 15 msecs	required by Hitachi Data Sheet	
		write_8bit_data(0x30) ;   // data = 0011 RS = 0 = command	
		__delay_ms(6) ; //wait > 5ms required by Hitachi Data Sheet
		write_8bit_data(0x30) ;
		__delay_ms(1); //delay required by Data Sheet - we use HITECH compiler delay function
		write_8bit_data(0x30) ; //repetition of selecting 8-bit mode (COMMAND 0x30)
		__delay_ms(1); //delay required by Data Sheet
		write_8bit_data(0x20) ;  // set  for 4 bit operation
		__delay_ms(1); //delay required by Data Sheet
		write_4bit_data(0x28) ;   // set operating conditions
		write_4bit_data(0x08) ;   // display off
		write_4bit_data(0x01) ;   // clear display
		__delay_ms(2); //allow time for clear display command - can take up to 1.5ms to complete
		write_4bit_data(0x06) ;   // shift - cursor moves one place right after each data entry
		write_4bit_data(0x0C) ;   // display on
		RS = 1 ; // set for data transmission
		}

void	write_8bit_data(char data_to_send)	       
					{
					LCD_PORT= data_to_send; //this will clear control line bits to '0' - ok in 8 bit mode
					EN = 1 ;
					__delay_ms(1);
					EN = 0 ;       // blip the ENABLE line to enter the data to display
					}


void	write_4bit_data(char data_to_send)		
					{
					unsigned char temp=0;
					LCD_PORT=LCD_PORT &0x0F;
					temp=data_to_send &0xF0;
					LCD_PORT=LCD_PORT|temp;
					EN=1;
					__delay_ms(1);
					EN=0; //now blip enable line to enter data to display
					data_to_send=data_to_send<<4; //shift the lower 4 bits of data to upper 4 bits 
				    __delay_ms(1); //allow time to complete shifting
					LCD_PORT=LCD_PORT&0x0F;
					temp=data_to_send &0xF0;
					LCD_PORT=LCD_PORT|temp;
					EN=1;
					__delay_ms(1);
					EN=0;//now blip enable line to enter data to display
					}
void write_data(unsigned char data_to_write)
					{
					RS=1; //set for data
					write_4bit_data(data_to_write);
					RS=0;
					}
void write_command(unsigned char command_to_write)
					{
					RS=0; //set for command
					write_4bit_data(command_to_write);
					__delay_ms(2); //allow time for longest command to complete
					RS=1; // set for data
					}
void set_address_line1(unsigned char position)
					{
					write_command(0x7F + position);
					__delay_ms(1);//allow time to complete
					} // postion range 0-15
void set_address_line2(unsigned char position)
					{
					write_command(0xBF + position);
					__delay_ms(1);//allow time to complete
					} //position range 0-15
void clear_display(void)
					{
					write_command(0x01);
					__delay_ms(2); //allow time for clearing
					}

void send_msg(const unsigned char *text)
		{
		while(*text)
		write_data(*text++);
		}

