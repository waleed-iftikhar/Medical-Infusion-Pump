

	#define _XTAL_FREQ 4000000
	#define RS LATB2
	#define EN LATB1
	#define LCD_TRIS	TRISB
	#define LCD_PORT	PORTB

//FUNCTION PROTOTYPES HERE

void write_4bit_data(char);
void write_8bit_data(char);
void init_display(void);
void send_msg(const unsigned char msg[]);
void clear_display(void);
void set_address_line1(unsigned char);
void set_address_line2(unsigned char);
void write_command(unsigned char);
void write_data(unsigned char);
void init_intrupt(void);
void init(void);
void Flow_Rate (void);
void INT0_isr(void);
void caluclation (void);