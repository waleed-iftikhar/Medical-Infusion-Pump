opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 54009"

opt pagewidth 120

	opt lm

	processor	18F25K22
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 90 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 139 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 470 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 831 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1095 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1156 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1226 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1277 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1350 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1458 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1552 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1662 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1668 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1795 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1814 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1877 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1883 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1902 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1984 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1990 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2009 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2028 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2115 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2425 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2512 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2531 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2550 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2581 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3096 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3165 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3240 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3246 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3284 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3345 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3406 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3723 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4115 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4205 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4224 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4229 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4531 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4536 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4822 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5114 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5119 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5151 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5156 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5225 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5351 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5625 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5630 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6108 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6147 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6178 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6209 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6257 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6549 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7254 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7523 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7655 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7787 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7919 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7924 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8140 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8145 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8361 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8366 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8582 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8602 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8671 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8676 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8950 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9026 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9102 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9178 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9263 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9348 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9433 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9556 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9635 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9714 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9779 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9817 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9886 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9895 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10347 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10352 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10356 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10727 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10732 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10736 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10804 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10809 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10813 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10886 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10890 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10958 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10967 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11035 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11144 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11150 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11169 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11188 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11282 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11287 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11663 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11668 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11916 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11925 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11929 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12705 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12710 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12878 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12948 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12967 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12986 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13067 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13073 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13092 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13111 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13181 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13248 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13372 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13378 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13397 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13416 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13421 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13859 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13864 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14138 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14143 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14849 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14854 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15191 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15239 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15244 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15360 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15365 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15481 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15575 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15693 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15712 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15731 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15863 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15890 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15946 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16028 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16097 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16103 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16122 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16141 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16219 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16225 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16244 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16269 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16288 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16307 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16326 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16345 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16351 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16357 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16376 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16382 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16401 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16420 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16439 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16458 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16477 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16514 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16520 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16539 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16545 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16564 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16583 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16602 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16621 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16640 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16731 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16800 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16931 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16937 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16956 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16975 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 16996 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17002 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17021 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17040 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17070 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17083 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17102 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17121 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17127 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17232 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17238 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17257 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17276 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 90 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 139 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 470 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 831 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1095 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1156 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1226 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1277 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1350 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1420 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1458 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1552 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1662 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1668 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1795 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1814 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1877 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1883 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1902 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1984 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1990 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2009 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2028 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2115 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2425 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2506 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2512 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2531 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2550 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2581 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3096 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3165 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3240 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3246 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3284 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3345 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3406 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3723 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4115 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4205 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4224 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4229 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4531 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4536 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4822 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4827 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5114 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5119 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5151 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5156 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5188 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5193 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5225 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5351 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5625 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5630 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6108 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6147 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6178 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6209 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6257 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6549 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7254 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7523 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7655 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7787 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7919 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7924 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8140 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8145 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8361 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8366 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8582 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8602 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8671 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8676 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8950 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9026 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9102 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9178 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9263 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9348 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9433 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9556 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9635 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9714 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9779 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9817 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9886 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9891 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9895 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10347 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10352 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10356 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10727 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10732 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10736 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10804 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10809 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10813 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10881 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10886 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10890 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10958 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10963 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10967 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11035 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11144 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11150 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11169 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11188 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11282 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11287 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11663 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11668 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11916 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11921 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11925 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11929 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12705 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12710 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12878 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12948 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12967 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12986 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13067 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13073 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13092 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13111 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13181 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13248 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13372 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13378 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13397 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13416 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13421 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13859 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13864 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14138 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14143 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14849 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14854 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15186 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15191 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15239 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15244 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15360 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15365 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15481 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15575 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15687 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15693 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15712 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15731 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15863 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15890 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15946 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16028 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16097 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16103 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16122 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16141 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16219 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16225 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16244 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16250 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16269 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16288 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16307 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16326 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16345 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16351 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16357 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16376 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16382 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16401 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16420 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16439 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16458 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16477 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16514 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16520 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16539 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16545 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16564 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16583 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16602 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16621 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16640 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16731 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16800 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16931 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16937 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16956 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16975 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 16996 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17002 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17021 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17040 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17070 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17077 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17083 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17102 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17121 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17127 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17232 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17238 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17257 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17276 "C:\Program Files (x86)\Microchip\xc8\v1.21\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_init_display
	FNCALL	_main,_caluclation
	FNCALL	_main,_Flow_Rate
	FNCALL	_main,_init
	FNCALL	_main,_dec_ASCII
	FNCALL	_main,_display
	FNCALL	_display,_write_data
	FNCALL	_display,_set_address_line1
	FNCALL	_display,_set_address_line2
	FNCALL	_display,_send_msg
	FNCALL	_send_msg,_write_data
	FNCALL	_write_data,_write_4bit_data
	FNCALL	_set_address_line2,_write_command
	FNCALL	_set_address_line1,_write_command
	FNCALL	_write_command,_write_4bit_data
	FNCALL	_caluclation,___ftadd
	FNCALL	_caluclation,___ftdiv
	FNCALL	_caluclation,___asftmul
	FNCALL	_caluclation,___ftmul
	FNCALL	_caluclation,___awtoft
	FNCALL	_caluclation,___fttol
	FNCALL	_caluclation,___lbtoft
	FNCALL	___lbtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___asftmul,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_init_display,_write_8bit_data
	FNCALL	_init_display,_write_4bit_data
	FNROOT	_main
	FNCALL	_chk_isr,_INT0_isr
	FNCALL	intlevel2,_chk_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_control
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	7

;initializer for _control
	db	low(01h)
	global	_N
	global	_Step_Number
	global	_Syringe_Calibration
	global	_t
	global	_rate
	global	_TENS1
	global	_TENTHS1
	global	_UNITS1
	global	_i
	global	_tens
	global	_tenths
	global	_units
	global	_value
	global	_ANSELA
_ANSELA	set	0xF38
	global	_ANSELB
_ANSELB	set	0xF39
	global	_ANSELC
_ANSELC	set	0xF3A
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_LATB1
_LATB1	set	0x7C51
	global	_LATB2
_LATB2	set	0x7C52
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	global __stringdata
__stringdata:
	
STR_1:
	db	70	;'F'
	db	76	;'L'
	db	79	;'O'
	db	87	;'W'
	db	61	;'='
	db	32
	db	0
	
STR_2:
	db	109	;'m'
	db	108	;'l'
	db	47
	db	104	;'h'
	db	32
	db	0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTIO67
__CFG_FOSC$INTIO67 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_MCLRE$EXTMCLR
__CFG_MCLRE$EXTMCLR equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"Project_2.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_N
_N:
       ds      3
	global	_Step_Number
_Step_Number:
       ds      3
	global	_Syringe_Calibration
_Syringe_Calibration:
       ds      3
	global	_t
_t:
       ds      3
	global	_rate
_rate:
       ds      2
	global	_TENS1
_TENS1:
       ds      1
	global	_TENTHS1
_TENTHS1:
       ds      1
	global	_UNITS1
_UNITS1:
       ds      1
	global	_i
_i:
       ds      1
	global	_tens
_tens:
       ds      1
	global	_tenths
_tenths:
       ds      1
	global	_units
_units:
       ds      1
	global	_value
_value:
       ds      3
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	7
	global	_control
_control:
       ds      1
	file	"Project_2.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (24 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	24
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
	line	#
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_INT0_isr:	; 0 bytes @ 0x0
??_INT0_isr:	; 0 bytes @ 0x0
?_init_display:	; 0 bytes @ 0x0
?_chk_isr:	; 0 bytes @ 0x0
?_caluclation:	; 0 bytes @ 0x0
?_Flow_Rate:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_dec_ASCII:	; 0 bytes @ 0x0
?_display:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds   1
??_chk_isr:	; 0 bytes @ 0x1
	ds   14
	global	?_write_8bit_data
?_write_8bit_data:	; 0 bytes @ 0xF
	global	?_write_4bit_data
?_write_4bit_data:	; 0 bytes @ 0xF
??_Flow_Rate:	; 0 bytes @ 0xF
??_init:	; 0 bytes @ 0xF
??_dec_ASCII:	; 0 bytes @ 0xF
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xF
	global	?___fttol
?___fttol:	; 4 bytes @ 0xF
	global	write_8bit_data@data_to_send
write_8bit_data@data_to_send:	; 1 bytes @ 0xF
	global	write_4bit_data@data_to_send
write_4bit_data@data_to_send:	; 1 bytes @ 0xF
	global	Flow_Rate@i
Flow_Rate@i:	; 2 bytes @ 0xF
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0xF
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xF
	ds   1
??_write_8bit_data:	; 0 bytes @ 0x10
??_write_4bit_data:	; 0 bytes @ 0x10
	ds   1
	global	write_4bit_data@temp
write_4bit_data@temp:	; 1 bytes @ 0x11
	ds   1
??_init_display:	; 0 bytes @ 0x12
	global	?_write_data
?_write_data:	; 0 bytes @ 0x12
	global	?_write_command
?_write_command:	; 0 bytes @ 0x12
	global	write_data@data_to_write
write_data@data_to_write:	; 1 bytes @ 0x12
	global	write_command@command_to_write
write_command@command_to_write:	; 1 bytes @ 0x12
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x12
	ds   1
??_write_data:	; 0 bytes @ 0x13
??_write_command:	; 0 bytes @ 0x13
	global	?_send_msg
?_send_msg:	; 0 bytes @ 0x13
??___fttol:	; 0 bytes @ 0x13
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x13
	global	send_msg@text
send_msg@text:	; 2 bytes @ 0x13
	ds   1
??___ftpack:	; 0 bytes @ 0x14
	global	?_set_address_line1
?_set_address_line1:	; 0 bytes @ 0x14
	global	?_set_address_line2
?_set_address_line2:	; 0 bytes @ 0x14
	global	set_address_line1@position
set_address_line1@position:	; 1 bytes @ 0x14
	global	set_address_line2@position
set_address_line2@position:	; 1 bytes @ 0x14
	ds   1
??_set_address_line1:	; 0 bytes @ 0x15
??_set_address_line2:	; 0 bytes @ 0x15
??_send_msg:	; 0 bytes @ 0x15
??_display:	; 0 bytes @ 0x15
	ds   2
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x17
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x17
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x17
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x17
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x17
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x17
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x17
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x17
	ds   1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x18
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x19
	ds   1
??___awtoft:	; 0 bytes @ 0x1A
??___lbtoft:	; 0 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1A
	ds   1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1B
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1C
	ds   1
??___ftdiv:	; 0 bytes @ 0x1D
??___ftmul:	; 0 bytes @ 0x1D
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1D
	ds   2
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1F
	ds   3
??___ftadd:	; 0 bytes @ 0x22
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x22
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x22
	ds   3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x25
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x25
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x26
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x26
	ds   1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x27
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x27
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x27
	ds   1
	global	?___asftmul
?___asftmul:	; 3 bytes @ 0x28
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x28
	global	___asftmul@f1p
___asftmul@f1p:	; 2 bytes @ 0x28
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x29
	ds   1
	global	___asftmul@f2
___asftmul@f2:	; 3 bytes @ 0x2A
	ds   3
??_caluclation:	; 0 bytes @ 0x2D
??___asftmul:	; 0 bytes @ 0x2D
	ds   1
??_main:	; 0 bytes @ 0x2E
	ds   1
;!
;!Data Sizes:
;!    Strings     13
;!    Constant    0
;!    Data        1
;!    BSS         24
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     47      72
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    ?___ftpack	float  size(2) Largest target is 0
;!
;!    ?___fttol	long  size(2) Largest target is 3
;!		 -> value(COMRAM[3]), 
;!
;!    ?___asftmul	float  size(2) Largest target is 0
;!
;!    ?___ftmul	float  size(2) Largest target is 0
;!
;!    ?___ftadd	float  size(2) Largest target is 3
;!		 -> value(COMRAM[3]), 
;!
;!    ?___awtoft	float  size(2) Largest target is 0
;!
;!    ?___ftdiv	float  size(2) Largest target is 0
;!
;!    ?___lbtoft	float  size(2) Largest target is 0
;!
;!    __asftmul@f1p	PTR float  size(2) Largest target is 3
;!		 -> value(COMRAM[3]), 
;!
;!    send_msg@text	PTR const unsigned char  size(2) Largest target is 7
;!		 -> STR_2(CODE[6]), STR_1(CODE[7]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_caluclation
;!    _display->_set_address_line1
;!    _display->_set_address_line2
;!    _display->_send_msg
;!    _send_msg->_write_data
;!    _write_data->_write_4bit_data
;!    _set_address_line2->_write_command
;!    _set_address_line1->_write_command
;!    _write_command->_write_4bit_data
;!    _caluclation->___asftmul
;!    ___lbtoft->___ftpack
;!    ___awtoft->___ftpack
;!    ___asftmul->___ftmul
;!    ___ftmul->___ftpack
;!    ___ftdiv->___ftpack
;!    ___ftadd->___awtoft
;!    _init_display->_write_4bit_data
;!
;!Critical Paths under _chk_isr in COMRAM
;!
;!    _chk_isr->_INT0_isr
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _chk_isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2775
;!                                             46 COMRAM     1     1      0
;!                       _init_display
;!                        _caluclation
;!                          _Flow_Rate
;!                               _init
;!                          _dec_ASCII
;!                            _display
;! ---------------------------------------------------------------------------------
;! (1) _display                                              1     1      0     420
;!                                             21 COMRAM     1     1      0
;!                         _write_data
;!                  _set_address_line1
;!                  _set_address_line2
;!                           _send_msg
;! ---------------------------------------------------------------------------------
;! (2) _send_msg                                             2     0      2     120
;!                                             19 COMRAM     2     0      2
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (3) _write_data                                           1     0      1      90
;!                                             18 COMRAM     1     0      1
;!                    _write_4bit_data
;! ---------------------------------------------------------------------------------
;! (2) _set_address_line2                                    1     0      1     105
;!                                             20 COMRAM     1     0      1
;!                      _write_command
;! ---------------------------------------------------------------------------------
;! (2) _set_address_line1                                    1     0      1     105
;!                                             20 COMRAM     1     0      1
;!                      _write_command
;! ---------------------------------------------------------------------------------
;! (3) _write_command                                        2     1      1      90
;!                                             18 COMRAM     2     1      1
;!                    _write_4bit_data
;! ---------------------------------------------------------------------------------
;! (1) _dec_ASCII                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Flow_Rate                                            2     2      0      15
;!                                             15 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _caluclation                                          1     1      0    2250
;!                                             45 COMRAM     1     1      0
;!                            ___ftadd
;!                            ___ftdiv
;!                          ___asftmul
;!                            ___ftmul
;!                           ___awtoft
;!                            ___fttol
;!                           ___lbtoft
;! ---------------------------------------------------------------------------------
;! (2) ___lbtoft                                             5     2      3     150
;!                                             23 COMRAM     5     2      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     165
;!                                             15 COMRAM    15    11      4
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             5     2      3     195
;!                                             23 COMRAM     5     2      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___asftmul                                            5     0      5     390
;!                                             40 COMRAM     5     0      5
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             17    11      6     345
;!                                             23 COMRAM    17    11      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             17    11      6     315
;!                                             23 COMRAM    17    11      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             14     8      6     690
;!                                             28 COMRAM    14     8      6
;!                           ___ftpack
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5     135
;!                                             15 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _init_display                                         1     1      0      90
;!                                             18 COMRAM     1     1      0
;!                    _write_8bit_data
;!                    _write_4bit_data
;! ---------------------------------------------------------------------------------
;! (4) _write_4bit_data                                      3     2      1      75
;!                                             15 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (2) _write_8bit_data                                      1     0      1      15
;!                                             15 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _chk_isr                                             14    14      0       0
;!                                              1 COMRAM    14    14      0
;!                           _INT0_isr
;! ---------------------------------------------------------------------------------
;! (6) _INT0_isr                                             1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init_display
;!     _write_8bit_data
;!     _write_4bit_data
;!   _caluclation
;!     ___ftadd
;!       ___ftpack
;!       ___awtoft (ARG)
;!         ___ftpack
;!     ___ftdiv
;!       ___ftpack
;!     ___asftmul
;!       ___ftmul
;!         ___ftpack
;!     ___ftmul
;!       ___ftpack
;!     ___awtoft
;!       ___ftpack
;!     ___fttol
;!     ___lbtoft
;!       ___ftpack
;!   _Flow_Rate
;!   _init
;!   _dec_ASCII
;!   _display
;!     _write_data
;!       _write_4bit_data
;!     _set_address_line1
;!       _write_command
;!         _write_4bit_data
;!     _set_address_line2
;!       _write_command
;!         _write_4bit_data
;!     _send_msg
;!       _write_data
;!         _write_4bit_data
;!
;! _chk_isr (ROOT)
;!   _INT0_isr
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0      0       0       4        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     2F      48       1       75.8%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       8       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      48       9        0.0%
;!DATA                 0      0      50      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 92 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_init_display
;;		_caluclation
;;		_Flow_Rate
;;		_init
;;		_dec_ASCII
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	92
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	94
	
l1071:
;main.c: 94: init();
	call	_init	;wreg free
	line	95
	
l1073:
;main.c: 95: init_display();
	call	_init_display	;wreg free
	line	99
	
l1075:
;main.c: 99: TENS1=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_TENS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	line	100
	
l1077:
;main.c: 100: UNITS1=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_UNITS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	line	101
	
l1079:
;main.c: 101: TENTHS1=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_TENTHS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	goto	l1081
	line	102
;main.c: 102: while(1)
	
l140:
	line	105
	
l1081:
;main.c: 103: {
;main.c: 105: if(!PORTCbits.RC4)
	
	btfsc	((c:3970)),c,4	;volatile
	goto	u31
	goto	u30
u31:
	goto	l141
u30:
	line	107
	
l1083:
;main.c: 106: {
;main.c: 107: TENS1++;
	incf	((c:_TENS1)),c
	line	108
	
l1085:
;main.c: 108: if(TENS1 > 9)
	movlw	(0Ah-1)
	cpfsgt	((c:_TENS1)),c
	goto	u41
	goto	u40
u41:
	goto	l142
u40:
	line	109
	
l1087:
;main.c: 109: TENS1 = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_TENS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l142:
	line	110
;main.c: 110: for(i=0;i<4;i++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_i)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l1089:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u51
	goto	u50
u51:
	goto	l1093
u50:
	goto	l141
	
l1091:
	goto	l141
	line	111
	
l143:
	
l1093:
;main.c: 111: _delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	13
movwf	(??_main+0+0)&0ffh,c,f
	movlw	251
u717:
	decfsz	wreg,f
	goto	u717
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u717
	nop2

	line	110
	
l1095:
	incf	((c:_i)),c
	
l1097:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u61
	goto	u60
u61:
	goto	l1093
u60:
	goto	l141
	
l144:
	line	112
	
l141:
	line	114
;main.c: 112: }
;main.c: 114: if(!PORTCbits.RC5)
	
	btfsc	((c:3970)),c,5	;volatile
	goto	u71
	goto	u70
u71:
	goto	l145
u70:
	line	116
	
l1099:
;main.c: 115: {
;main.c: 116: UNITS1++;
	incf	((c:_UNITS1)),c
	line	117
	
l1101:
;main.c: 117: if(UNITS1 > 9)
	movlw	(0Ah-1)
	cpfsgt	((c:_UNITS1)),c
	goto	u81
	goto	u80
u81:
	goto	l146
u80:
	line	118
	
l1103:
;main.c: 118: UNITS1=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_UNITS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l146:
	line	119
;main.c: 119: for(i=0;i<4;i++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_i)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l1105:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u91
	goto	u90
u91:
	goto	l1109
u90:
	goto	l145
	
l1107:
	goto	l145
	line	120
	
l147:
	
l1109:
;main.c: 120: _delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	13
movwf	(??_main+0+0)&0ffh,c,f
	movlw	251
u727:
	decfsz	wreg,f
	goto	u727
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u727
	nop2

	line	119
	
l1111:
	incf	((c:_i)),c
	
l1113:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u101
	goto	u100
u101:
	goto	l1109
u100:
	goto	l145
	
l148:
	line	121
	
l145:
	line	123
;main.c: 121: }
;main.c: 123: if(!PORTCbits.RC6)
	
	btfsc	((c:3970)),c,6	;volatile
	goto	u111
	goto	u110
u111:
	goto	l149
u110:
	line	125
	
l1115:
;main.c: 124: {
;main.c: 125: TENTHS1++;
	incf	((c:_TENTHS1)),c
	line	126
	
l1117:
;main.c: 126: if(TENTHS1 > 9)
	movlw	(0Ah-1)
	cpfsgt	((c:_TENTHS1)),c
	goto	u121
	goto	u120
u121:
	goto	l150
u120:
	line	127
	
l1119:
;main.c: 127: TENTHS1=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_TENTHS1)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l150:
	line	128
;main.c: 128: for(i=0;i<4;i++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_i)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l1121:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u131
	goto	u130
u131:
	goto	l1125
u130:
	goto	l149
	
l1123:
	goto	l149
	line	129
	
l151:
	
l1125:
;main.c: 129: _delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	13
movwf	(??_main+0+0)&0ffh,c,f
	movlw	251
u737:
	decfsz	wreg,f
	goto	u737
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u737
	nop2

	line	128
	
l1127:
	incf	((c:_i)),c
	
l1129:
	movlw	(04h-1)
	cpfsgt	((c:_i)),c
	goto	u141
	goto	u140
u141:
	goto	l1125
u140:
	goto	l149
	
l152:
	line	130
	
l149:
	line	132
;main.c: 130: }
;main.c: 132: if((!PORTCbits.RC7) && (TENS1 || UNITS1 || TENTHS1))
	
	btfsc	((c:3970)),c,7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l1153
u150:
	
l1131:
	tstfsz	((c:_TENS1)),c
	goto	u161
	goto	u160
u161:
	goto	l1137
u160:
	
l1133:
	tstfsz	((c:_UNITS1)),c
	goto	u171
	goto	u170
u171:
	goto	l1137
u170:
	
l1135:
	movf	((c:_TENTHS1)),c,w
	btfsc	status,2
	goto	u181
	goto	u180
u181:
	goto	l1153
u180:
	goto	l1137
	
l155:
	line	134
	
l1137:
;main.c: 133: {
;main.c: 134: caluclation ();
	call	_caluclation	;wreg free
	line	135
;main.c: 135: while (control==1)
	goto	l1151
	
l157:
	line	138
	
l1139:
;main.c: 136: {
;main.c: 138: PORTC=0x09;
	movlw	low(09h)
	movwf	((c:3970)),c	;volatile
	line	139
	
l1141:
;main.c: 139: Flow_Rate ();
	call	_Flow_Rate	;wreg free
	line	140
	
l1143:
;main.c: 140: PORTC=0x0C;
	movlw	low(0Ch)
	movwf	((c:3970)),c	;volatile
	line	141
;main.c: 141: Flow_Rate ();
	call	_Flow_Rate	;wreg free
	line	142
	
l1145:
;main.c: 142: PORTC=0x06;
	movlw	low(06h)
	movwf	((c:3970)),c	;volatile
	line	143
	
l1147:
;main.c: 143: Flow_Rate ();
	call	_Flow_Rate	;wreg free
	line	144
;main.c: 144: PORTC=0x03;
	movlw	low(03h)
	movwf	((c:3970)),c	;volatile
	line	145
	
l1149:
;main.c: 145: Flow_Rate ();
	call	_Flow_Rate	;wreg free
	goto	l1151
	line	146
	
l156:
	line	135
	
l1151:
	decf	((c:_control)),c,w

	btfsc	status,2
	goto	u191
	goto	u190
u191:
	goto	l1139
u190:
	goto	l1153
	
l158:
	goto	l1153
	line	148
	
l153:
	line	149
	
l1153:
;main.c: 146: }
;main.c: 148: }
;main.c: 149: dec_ASCII();
	call	_dec_ASCII	;wreg free
	line	150
	
l1155:
;main.c: 150: display();
	call	_display	;wreg free
	line	151
	
l1157:
;main.c: 151: _delay((unsigned long)((150)*(4000000/4000.0)));
	movlw	195
movwf	(??_main+0+0)&0ffh,c,f
	movlw	205
u747:
	decfsz	wreg,f
	goto	u747
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u747

	line	152
	
l1159:
;main.c: 152: for(i=0;i<6;i++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_i)),c
	movf	(??_main+0+0)&0ffh,c,w
	
l1161:
	movlw	(06h-1)
	cpfsgt	((c:_i)),c
	goto	u201
	goto	u200
u201:
	goto	l1165
u200:
	goto	l1081
	
l1163:
	goto	l1081
	line	153
	
l159:
	
l1165:
;main.c: 153: _delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	13
movwf	(??_main+0+0)&0ffh,c,f
	movlw	251
u757:
	decfsz	wreg,f
	goto	u757
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u757
	nop2

	line	152
	
l1167:
	incf	((c:_i)),c
	
l1169:
	movlw	(06h-1)
	cpfsgt	((c:_i)),c
	goto	u211
	goto	u210
u211:
	goto	l1165
u210:
	goto	l1081
	
l160:
	goto	l1081
	line	155
	
l161:
	line	102
	goto	l1081
	
l162:
	line	156
	
l163:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_display

;; *************** function _display *****************
;; Defined at:
;;		line 78 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_write_data
;;		_set_address_line1
;;		_set_address_line2
;;		_send_msg
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	78
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	79
	
l1053:
;main.c: 79: set_address_line1(1);
	movwf	(??_display+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_set_address_line1)),c
	movf	(??_display+0+0)&0ffh,c,w
	call	_set_address_line1	;wreg free
	line	80
	
l1055:
;main.c: 80: send_msg("FLOW= ");
	movlw	high(STR_1)
	movwf	((c:?_send_msg+1)),c
	movlw	low(STR_1)
	movwf	((c:?_send_msg)),c
	call	_send_msg	;wreg free
	line	81
	
l1057:
;main.c: 81: set_address_line2(1);
	movwf	(??_display+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_set_address_line2)),c
	movf	(??_display+0+0)&0ffh,c,w
	call	_set_address_line2	;wreg free
	line	82
	
l1059:
;main.c: 82: write_data(tens);
	movff	(c:_tens),(c:?_write_data)
	call	_write_data	;wreg free
	line	83
	
l1061:
;main.c: 83: write_data(units);
	movff	(c:_units),(c:?_write_data)
	call	_write_data	;wreg free
	line	84
	
l1063:
;main.c: 84: write_data('.');
	movwf	(??_display+0+0)&0ffh,c
	movlw	low(02Eh)
	movwf	((c:?_write_data)),c
	movf	(??_display+0+0)&0ffh,c,w
	call	_write_data	;wreg free
	line	85
	
l1065:
;main.c: 85: write_data(tenths);
	movff	(c:_tenths),(c:?_write_data)
	call	_write_data	;wreg free
	line	86
	
l1067:
;main.c: 86: set_address_line2(6);
	movwf	(??_display+0+0)&0ffh,c
	movlw	low(06h)
	movwf	((c:?_set_address_line2)),c
	movf	(??_display+0+0)&0ffh,c,w
	call	_set_address_line2	;wreg free
	line	87
	
l1069:
;main.c: 87: send_msg("ml/h ");
	movlw	high(STR_2)
	movwf	((c:?_send_msg+1)),c
	movlw	low(STR_2)
	movwf	((c:?_send_msg)),c
	call	_send_msg	;wreg free
	line	88
	
l137:
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
	signat	_display,88
	global	_send_msg

;; *************** function _send_msg *****************
;; Defined at:
;;		line 82 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  text            2   19[COMRAM] PTR const unsigned char 
;;		 -> STR_2(6), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_write_data
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	82
	global	__size_of_send_msg
	__size_of_send_msg	equ	__end_of_send_msg-_send_msg
	
_send_msg:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	83
	
l1003:
;LCD.c: 83: while(*text)
	goto	l1009
	
l42:
	line	84
	
l1005:
;LCD.c: 84: write_data(*text++);
	movff	(c:send_msg@text),tblptrl
	movff	(c:send_msg@text+1),tblptrh
	tblrd	*
	
	movff	tablat,(c:?_write_data)
	call	_write_data	;wreg free
	
l1007:
	infsnz	((c:send_msg@text)),c
	incf	((c:send_msg@text+1)),c
	goto	l1009
	
l41:
	line	83
	
l1009:
	movff	(c:send_msg@text),tblptrl
	movff	(c:send_msg@text+1),tblptrh
	tblrd	*
	
	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1005
u10:
	goto	l44
	
l43:
	line	85
	
l44:
	return
	opt stack 0
GLOBAL	__end_of_send_msg
	__end_of_send_msg:
	signat	_send_msg,4216
	global	_write_data

;; *************** function _write_data *****************
;; Defined at:
;;		line 53 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  data_to_writ    1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_write_4bit_data
;; This function is called by:
;;		_send_msg
;;		_display
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	53
	global	__size_of_write_data
	__size_of_write_data	equ	__end_of_write_data-_write_data
	
_write_data:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	54
	
l977:
;LCD.c: 54: LATB2=1;
	bsf	c:(31826/8),(31826)&7	;volatile
	line	55
	
l979:
;LCD.c: 55: write_4bit_data(data_to_write);
	movff	(c:write_data@data_to_write),(c:?_write_4bit_data)
	call	_write_4bit_data	;wreg free
	line	56
	
l981:
;LCD.c: 56: LATB2=0;
	bcf	c:(31826/8),(31826)&7	;volatile
	line	57
	
l26:
	return
	opt stack 0
GLOBAL	__end_of_write_data
	__end_of_write_data:
	signat	_write_data,4216
	global	_set_address_line2

;; *************** function _set_address_line2 *****************
;; Defined at:
;;		line 71 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  position        1   20[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_write_command
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	71
	global	__size_of_set_address_line2
	__size_of_set_address_line2	equ	__end_of_set_address_line2-_set_address_line2
	
_set_address_line2:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	72
	
l995:
;LCD.c: 72: write_command(0xBF + position);
	movf	((c:set_address_line2@position)),c,w
	addlw	low(0BFh)
	movwf	((c:?_write_command)),c
	call	_write_command	;wreg free
	line	73
	
l997:
;LCD.c: 73: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u767:
	nop
decfsz	wreg,f
	goto	u767

	line	74
	
l35:
	return
	opt stack 0
GLOBAL	__end_of_set_address_line2
	__end_of_set_address_line2:
	signat	_set_address_line2,4216
	global	_set_address_line1

;; *************** function _set_address_line1 *****************
;; Defined at:
;;		line 66 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  position        1   20[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_write_command
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	66
	global	__size_of_set_address_line1
	__size_of_set_address_line1	equ	__end_of_set_address_line1-_set_address_line1
	
_set_address_line1:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	67
	
l991:
;LCD.c: 67: write_command(0x7F + position);
	movf	((c:set_address_line1@position)),c,w
	addlw	low(07Fh)
	movwf	((c:?_write_command)),c
	call	_write_command	;wreg free
	line	68
	
l993:
;LCD.c: 68: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u777:
	nop
decfsz	wreg,f
	goto	u777

	line	69
	
l32:
	return
	opt stack 0
GLOBAL	__end_of_set_address_line1
	__end_of_set_address_line1:
	signat	_set_address_line1,4216
	global	_write_command

;; *************** function _write_command *****************
;; Defined at:
;;		line 59 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  command_to_w    1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_write_4bit_data
;; This function is called by:
;;		_set_address_line1
;;		_set_address_line2
;;		_clear_display
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	59
	global	__size_of_write_command
	__size_of_write_command	equ	__end_of_write_command-_write_command
	
_write_command:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	60
	
l983:
;LCD.c: 60: LATB2=0;
	bcf	c:(31826/8),(31826)&7	;volatile
	line	61
	
l985:
;LCD.c: 61: write_4bit_data(command_to_write);
	movff	(c:write_command@command_to_write),(c:?_write_4bit_data)
	call	_write_4bit_data	;wreg free
	line	62
	
l987:
;LCD.c: 62: _delay((unsigned long)((2)*(4000000/4000.0)));
	movlw	3
movwf	(??_write_command+0+0)&0ffh,c,f
	movlw	151
u787:
	decfsz	wreg,f
	goto	u787
	decfsz	(??_write_command+0+0)&0ffh,c,f
	goto	u787
	nop2

	line	63
	
l989:
;LCD.c: 63: LATB2=1;
	bsf	c:(31826/8),(31826)&7	;volatile
	line	64
	
l29:
	return
	opt stack 0
GLOBAL	__end_of_write_command
	__end_of_write_command:
	signat	_write_command,4216
	global	_dec_ASCII

;; *************** function _dec_ASCII *****************
;; Defined at:
;;		line 71 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	71
	global	__size_of_dec_ASCII
	__size_of_dec_ASCII	equ	__end_of_dec_ASCII-_dec_ASCII
	
_dec_ASCII:
;incstack = 0
	opt	stack 28
;incstack = 0
	line	72
	
l1051:
;main.c: 72: tens=(TENS1/1)+0x30;
	movf	((c:_TENS1)),c,w
	addlw	low(030h)
	movwf	((c:_tens)),c
	line	73
;main.c: 73: units=(UNITS1/1)+0x30;
	movf	((c:_UNITS1)),c,w
	addlw	low(030h)
	movwf	((c:_units)),c
	line	74
;main.c: 74: tenths=(TENTHS1/1)+0x30;
	movf	((c:_TENTHS1)),c,w
	addlw	low(030h)
	movwf	((c:_tenths)),c
	line	75
	
l134:
	return
	opt stack 0
GLOBAL	__end_of_dec_ASCII
	__end_of_dec_ASCII:
	signat	_dec_ASCII,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 53 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	53
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:
;incstack = 0
	opt	stack 28
;incstack = 0
	line	55
	
l1041:
;main.c: 55: OSCCON=0b01010010;
	movlw	low(052h)
	movwf	((c:4051)),c	;volatile
	line	56
;main.c: 56: ANSELC=0x00;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3898))&0ffh	;volatile
	line	57
;main.c: 57: TRISC=0xF0;
	movlw	low(0F0h)
	movwf	((c:3988)),c	;volatile
	line	58
;main.c: 58: PORTC=0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	59
;main.c: 59: ANSELB=0x00;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3897))&0ffh	;volatile
	line	60
;main.c: 60: TRISB=0x01;
	movlw	low(01h)
	movwf	((c:3987)),c	;volatile
	line	61
;main.c: 61: PORTB=0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	62
;main.c: 62: TRISA=0x0F;
	movlw	low(0Fh)
	movwf	((c:3986)),c	;volatile
	line	63
;main.c: 63: ANSELA=0x00;
	movlw	low(0)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3896))&0ffh	;volatile
	line	64
;main.c: 64: PORTA=0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	65
	
l1043:; BSR set to: 15

;main.c: 65: TRISBbits.TRISB0=1;
	bsf	((c:3987)),c,0	;volatile
	line	66
	
l1045:; BSR set to: 15

;main.c: 66: INTCONbits.INT0IF=0;
	bcf	((c:4082)),c,1	;volatile
	line	67
	
l1047:; BSR set to: 15

;main.c: 67: INTCONbits.INT0IE=1;
	bsf	((c:4082)),c,4	;volatile
	line	68
	
l1049:; BSR set to: 15

;main.c: 68: INTCONbits.GIE=1;
	bsf	((c:4082)),c,7	;volatile
	line	69
	
l131:; BSR set to: 15

	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_Flow_Rate

;; *************** function _Flow_Rate *****************
;; Defined at:
;;		line 38 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   15[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	38
	global	__size_of_Flow_Rate
	__size_of_Flow_Rate	equ	__end_of_Flow_Rate-_Flow_Rate
	
_Flow_Rate:; BSR set to: 15

;incstack = 0
	opt	stack 28
;incstack = 0
	line	39
	
l1035:
;main.c: 39: for(unsigned int i=0;i<rate;i++){
	movlw	high(0)
	movwf	((c:Flow_Rate@i+1)),c
	movlw	low(0)
	movwf	((c:Flow_Rate@i)),c
	goto	l122
	
l123:
	line	40
	
l1037:
;main.c: 40: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u797:
	nop
decfsz	wreg,f
	goto	u797

	line	39
	
l1039:
	infsnz	((c:Flow_Rate@i)),c
	incf	((c:Flow_Rate@i+1)),c
	
l122:
	movf	((c:_rate)),c,w
	subwf	((c:Flow_Rate@i)),c,w
	movf	((c:_rate+1)),c,w
	subwfb	((c:Flow_Rate@i+1)),c,w
	btfss	status,0
	goto	u21
	goto	u20
u21:
	goto	l1037
u20:
	goto	l125
	
l124:
	line	42
	
l125:
	return
	opt stack 0
GLOBAL	__end_of_Flow_Rate
	__end_of_Flow_Rate:
	signat	_Flow_Rate,88
	global	_caluclation

;; *************** function _caluclation *****************
;; Defined at:
;;		line 24 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___asftmul
;;		___ftmul
;;		___awtoft
;;		___fttol
;;		___lbtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	24
	global	__size_of_caluclation
	__size_of_caluclation	equ	__end_of_caluclation-_caluclation
	
_caluclation:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	25
	
l1017:
;main.c: 25: N=TENTHS1;
	movff	(c:_TENTHS1),(c:?___lbtoft)
	call	___lbtoft	;wreg free
	
	movff	2+?___lbtoft,(c:_N+2)
	movff	1+?___lbtoft,(c:_N+1)
	movff	0+?___lbtoft,(c:_N)
	
	line	26
;main.c: 26: N=N/10;
	movff	(c:_N),(c:?___ftdiv)
	movff	(c:_N+1),(c:?___ftdiv+1)
	movff	(c:_N+2),(c:?___ftdiv+2)
	movlw	low(float24(10.000000000000000))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(10.000000000000000))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	(2+((c:?___ftdiv)+03h)),c

	call	___ftdiv	;wreg free
	
	movff	2+?___ftdiv,(c:_N+2)
	movff	1+?___ftdiv,(c:_N+1)
	movff	0+?___ftdiv,(c:_N)
	
	line	27
;main.c: 27: value=(TENS1*10)+UNITS1+N;
	movf	((c:_TENS1)),c,w
	mullw	0Ah
	movf	((c:_UNITS1)),c,w
	addwf	(prodl),c,w
	
	movwf	((c:?___awtoft)),c
	movlw	0
	addwfc	(prodh),c,w
	movwf	1+((c:?___awtoft)),c
	call	___awtoft	;wreg free
	
	movff	2+?___awtoft,(c:?___ftadd+2)
	movff	1+?___awtoft,(c:?___ftadd+1)
	movff	0+?___awtoft,(c:?___ftadd)
	
	movff	(c:_N),0+((c:?___ftadd)+03h)
	movff	(c:_N+1),1+((c:?___ftadd)+03h)
	movff	(c:_N+2),2+((c:?___ftadd)+03h)
	call	___ftadd	;wreg free
	
	movff	2+?___ftadd,(c:_value+2)
	movff	1+?___ftadd,(c:_value+1)
	movff	0+?___ftadd,(c:_value)
	
	line	28
	
l1019:
;main.c: 28: Step_Number=48*64;
	movlw	low(float24(3072.0000000000000))
	movwf	((c:_Step_Number)),c
	movlw	high(float24(3072.0000000000000))
	movwf	((c:_Step_Number+1)),c
	movlw	low highword(float24(3072.0000000000000))
	movwf	((c:_Step_Number+2)),c

	line	29
	
l1021:
;main.c: 29: Syringe_Calibration=Step_Number*1.8;
	movff	(c:_Step_Number),(c:?___ftmul)
	movff	(c:_Step_Number+1),(c:?___ftmul+1)
	movff	(c:_Step_Number+2),(c:?___ftmul+2)
	movlw	low(float24(1.8000000000000000))
	movwf	(0+((c:?___ftmul)+03h)),c
	movlw	high(float24(1.8000000000000000))
	movwf	(1+((c:?___ftmul)+03h)),c
	movlw	low highword(float24(1.8000000000000000))
	movwf	(2+((c:?___ftmul)+03h)),c

	call	___ftmul	;wreg free
	
	movff	2+?___ftmul,(c:_Syringe_Calibration+2)
	movff	1+?___ftmul,(c:_Syringe_Calibration+1)
	movff	0+?___ftmul,(c:_Syringe_Calibration)
	
	line	30
	
l1023:
;main.c: 30: Syringe_Calibration= Syringe_Calibration/3600;
	movff	(c:_Syringe_Calibration),(c:?___ftdiv)
	movff	(c:_Syringe_Calibration+1),(c:?___ftdiv+1)
	movff	(c:_Syringe_Calibration+2),(c:?___ftdiv+2)
	movlw	low(float24(3600.0000000000000))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(3600.0000000000000))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(3600.0000000000000))
	movwf	(2+((c:?___ftdiv)+03h)),c

	call	___ftdiv	;wreg free
	
	movff	2+?___ftdiv,(c:_Syringe_Calibration+2)
	movff	1+?___ftdiv,(c:_Syringe_Calibration+1)
	movff	0+?___ftdiv,(c:_Syringe_Calibration)
	
	line	31
	
l1025:
;main.c: 31: value*=Syringe_Calibration;
	movlw	high((c:_value))
	movwf	((c:?___asftmul+1)),c
	movlw	low((c:_value))
	movwf	((c:?___asftmul)),c
	movff	(c:_Syringe_Calibration),0+((c:?___asftmul)+02h)
	movff	(c:_Syringe_Calibration+1),1+((c:?___asftmul)+02h)
	movff	(c:_Syringe_Calibration+2),2+((c:?___asftmul)+02h)
	call	___asftmul	;wreg free
	line	32
	
l1027:
;main.c: 32: t=1000/value;
	movlw	low(float24(1000.0000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(1000.0000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(1000.0000000000000))
	movwf	((c:?___ftdiv+2)),c

	movff	(c:_value),0+((c:?___ftdiv)+03h)
	movff	(c:_value+1),1+((c:?___ftdiv)+03h)
	movff	(c:_value+2),2+((c:?___ftdiv)+03h)
	call	___ftdiv	;wreg free
	
	movff	2+?___ftdiv,(c:_t+2)
	movff	1+?___ftdiv,(c:_t+1)
	movff	0+?___ftdiv,(c:_t)
	
	line	33
	
l1029:
;main.c: 33: t=t+0.5;
	movff	(c:_t),(c:?___ftadd)
	movff	(c:_t+1),(c:?___ftadd+1)
	movff	(c:_t+2),(c:?___ftadd+2)
	movlw	low(float24(0.50000000000000000))
	movwf	(0+((c:?___ftadd)+03h)),c
	movlw	high(float24(0.50000000000000000))
	movwf	(1+((c:?___ftadd)+03h)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	(2+((c:?___ftadd)+03h)),c

	call	___ftadd	;wreg free
	
	movff	2+?___ftadd,(c:_t+2)
	movff	1+?___ftadd,(c:_t+1)
	movff	0+?___ftadd,(c:_t)
	
	line	34
	
l1031:
;main.c: 34: rate=t;
	movff	(c:_t),(c:?___fttol)
	movff	(c:_t+1),(c:?___fttol+1)
	movff	(c:_t+2),(c:?___fttol+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_rate)
	movff	1+?___fttol,(c:_rate+1)
	line	35
	
l1033:
;main.c: 35: control=1;
	movwf	(??_caluclation+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_control)),c
	movf	(??_caluclation+0+0)&0ffh,c,w
	line	36
	
l119:
	return
	opt stack 0
GLOBAL	__end_of_caluclation
	__end_of_caluclation:
	signat	_caluclation,88
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	29
	
l1429:
	movf	((c:___lbtoft@c)),c,w
	movwf	((c:?___ftpack)),c
	clrf	((c:?___ftpack+1)),c
	clrf	((c:?___ftpack+2)),c
	movwf	(??___lbtoft+0+0)&0ffh,c
	movlw	low(08Eh)
	movwf	(0+((c:?___ftpack)+03h)),c
	movf	(??___lbtoft+0+0)&0ffh,c,w
	movwf	(??___lbtoft+1+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?___ftpack)+04h)),c
	movf	(??___lbtoft+1+0)&0ffh,c,w
	call	___ftpack	;wreg free
	
	movff	2+?___ftpack,(c:?___lbtoft+2)
	movff	1+?___ftpack,(c:?___lbtoft+1)
	movff	0+?___ftpack,(c:?___lbtoft)
	
	goto	l597
	
l1431:
	line	30
	
l597:
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   25[COMRAM] unsigned long 
;;  exp1            1   29[COMRAM] unsigned char 
;;  sign1           1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   15[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 27
;incstack = 0
	line	49
	
l1383:
	movlw	(0Fh)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u620
u625:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u620:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u625
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@exp1)),c
	tstfsz	((c:___fttol@exp1))&0ffh
	goto	u631
	goto	u630
u631:
	goto	l1389
u630:
	line	50
	
l1385:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l561
	
l1387:
	goto	l561
	
l560:
	line	51
	
l1389:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u640
u645:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u640:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u645
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l1391:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l1393:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l1395:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l1397:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l1399:
	btfss	((c:___fttol@exp1)),c,7
	goto	u651
	goto	u650
u651:
	goto	l1411
u650:
	line	57
	
l1401:
	movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	addlw	-((-15)^80h)
	btfsc	status,0
	goto	u661
	goto	u660
u661:
	goto	l1407
u660:
	line	58
	
l1403:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l561
	
l1405:
	goto	l561
	
l563:
	goto	l1407
	line	59
	
l564:
	line	60
	
l1407:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l1409:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l1407
	goto	l1421
	
l565:
	line	62
	goto	l1421
	
l562:
	line	63
	
l1411:
	movlw	(018h-1)
	cpfsgt	((c:___fttol@exp1)),c
	goto	u671
	goto	u670
u671:
	goto	l1419
u670:
	line	64
	
l1413:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l561
	
l1415:
	goto	l561
	
l567:
	line	65
	goto	l1419
	
l569:
	line	66
	
l1417:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l1419
	line	68
	
l568:
	line	65
	
l1419:
	tstfsz	((c:___fttol@exp1)),c
	goto	u681
	goto	u680
u681:
	goto	l1417
u680:
	goto	l1421
	
l570:
	goto	l1421
	line	69
	
l566:
	line	70
	
l1421:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u691
	goto	u690
u691:
	goto	l1425
u690:
	line	71
	
l1423:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l1425
	
l571:
	line	72
	
l1425:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l561
	
l1427:
	line	73
	
l561:
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   23[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	36
	
l1371:
	movwf	(??___awtoft+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	movf	(??___awtoft+0+0)&0ffh,c,w
	line	37
	
l1373:
	btfss	((c:___awtoft@c+1)),c,7
	goto	u611
	goto	u610
u611:
	goto	l1379
u610:
	line	38
	
l1375:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l1377:
	movwf	(??___awtoft+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	movf	(??___awtoft+0+0)&0ffh,c,w
	goto	l1379
	line	40
	
l362:
	line	41
	
l1379:
	movff	(c:___awtoft@c),(c:?___ftpack)
	movff	(c:___awtoft@c+1),(c:?___ftpack+1)
	clrf	((c:?___ftpack+2)),c
	movwf	(??___awtoft+0+0)&0ffh,c
	movlw	low(08Eh)
	movwf	(0+((c:?___ftpack)+03h)),c
	movf	(??___awtoft+0+0)&0ffh,c,w
	movff	(c:___awtoft@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	
	movff	2+?___ftpack,(c:?___awtoft+2)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	0+?___ftpack,(c:?___awtoft)
	
	goto	l363
	
l1381:
	line	42
	
l363:
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___asftmul

;; *************** function ___asftmul *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\pic18\asftmul.c"
;; Parameters:    Size  Location     Type
;;  f1p             2   40[COMRAM] PTR float 
;;		 -> value(3), 
;;  f2              3   42[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   40[COMRAM] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftmul
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\pic18\asftmul.c"
	line	5
	global	__size_of___asftmul
	__size_of___asftmul	equ	__end_of___asftmul-___asftmul
	
___asftmul:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	6
	
l1319:
;	Return value of ___asftmul is never used
	movff	(c:___asftmul@f1p),fsr2l
	movff	(c:___asftmul@f1p+1),fsr2h
	movff	postinc2,(c:?___ftmul)
	movff	postinc2,(c:?___ftmul+1)
	movff	postdec2,(c:?___ftmul+2)
	movff	(c:___asftmul@f2),0+((c:?___ftmul)+03h)
	movff	(c:___asftmul@f2+1),1+((c:?___ftmul)+03h)
	movff	(c:___asftmul@f2+2),2+((c:?___ftmul)+03h)
	call	___ftmul	;wreg free
	movff	(c:___asftmul@f1p),fsr2l
	movff	(c:___asftmul@f1p+1),fsr2h
	movff	0+?___ftmul,postinc2
	movff	1+?___ftmul,postinc2
	movff	2+?___ftmul,postdec2
	movf	postdec2
	goto	l277
	
l1321:
	line	7
	
l277:
	return
	opt stack 0
GLOBAL	__end_of___asftmul
	__end_of___asftmul:
	signat	___asftmul,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;;  f2              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   34[COMRAM] unsigned um
;;  sign            1   39[COMRAM] unsigned char 
;;  cntr            1   38[COMRAM] unsigned char 
;;  exp             1   37[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_caluclation
;;		___asftmul
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	56
	
l1323:
	movlw	(0Fh)&0ffh
	movwf	(??___ftmul+0+0)&0ffh,c
	movff	(c:___ftmul@f1),??___ftmul+1+0
	movff	(c:___ftmul@f1+1),??___ftmul+1+0+1
	movff	(c:___ftmul@f1+2),??___ftmul+1+0+2
	incf	((??___ftmul+0+0)),c,w
	movwf	(??___ftmul+4+0)&0ffh,c
	goto	u550
u555:
	bcf	status,0
	rrcf	(??___ftmul+1+2),c
	rrcf	(??___ftmul+1+1),c
	rrcf	(??___ftmul+1+0),c
u550:
	decfsz	(??___ftmul+4+0)&0ffh,c
	goto	u555
	movf	(??___ftmul+1+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u561
	goto	u560
u561:
	goto	l1329
u560:
	line	57
	
l1325:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l541
	
l1327:
	goto	l541
	
l540:
	line	58
	
l1329:
	movlw	(0Fh)&0ffh
	movwf	(??___ftmul+0+0)&0ffh,c
	movff	(c:___ftmul@f2),??___ftmul+1+0
	movff	(c:___ftmul@f2+1),??___ftmul+1+0+1
	movff	(c:___ftmul@f2+2),??___ftmul+1+0+2
	incf	((??___ftmul+0+0)),c,w
	movwf	(??___ftmul+4+0)&0ffh,c
	goto	u570
u575:
	bcf	status,0
	rrcf	(??___ftmul+1+2),c
	rrcf	(??___ftmul+1+1),c
	rrcf	(??___ftmul+1+0),c
u570:
	decfsz	(??___ftmul+4+0)&0ffh,c
	goto	u575
	movf	(??___ftmul+1+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u581
	goto	u580
u581:
	goto	l1335
u580:
	line	59
	
l1331:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l541
	
l1333:
	goto	l541
	
l542:
	line	60
	
l1335:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	61
	
l1337:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	62
	movf	(0+2+(c:___ftmul@f2))&0ffh,w
	xorwf	((c:___ftmul@sign)),c
	line	63
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	64
	
l1339:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	66
	
l1341:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	67
	
l1343:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	68
	
l1345:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	69
	
l1347:
	movwf	(??___ftmul+0+0)&0ffh,c
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	movf	(??___ftmul+0+0)&0ffh,c,w
	goto	l1349
	line	70
	
l543:
	line	71
	
l1349:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u591
	goto	u590
u591:
	goto	l1353
u590:
	line	72
	
l1351:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1353
	
l544:
	line	73
	
l1353:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	74
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	75
	
l1355:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1349
	goto	l1357
	
l545:
	line	76
	
l1357:
	movwf	(??___ftmul+0+0)&0ffh,c
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	movf	(??___ftmul+0+0)&0ffh,c,w
	goto	l1359
	line	77
	
l546:
	line	78
	
l1359:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u601
	goto	u600
u601:
	goto	l1363
u600:
	line	79
	
l1361:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1363
	
l547:
	line	80
	
l1363:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	81
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	82
	
l1365:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1359
	goto	l1367
	
l548:
	line	83
	
l1367:
	movff	(c:___ftmul@f3_as_product),(c:?___ftpack)
	movff	(c:___ftmul@f3_as_product+1),(c:?___ftpack+1)
	movff	(c:___ftmul@f3_as_product+2),(c:?___ftpack+2)
	movff	(c:___ftmul@exp),0+((c:?___ftpack)+03h)
	movff	(c:___ftmul@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	
	movff	2+?___ftpack,(c:?___ftmul+2)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	0+?___ftpack,(c:?___ftmul)
	
	goto	l541
	
l1369:
	line	84
	
l541:
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;;  f2              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   34[COMRAM] float 
;;  sign            1   39[COMRAM] unsigned char 
;;  exp             1   38[COMRAM] unsigned char 
;;  cntr            1   37[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	55
	
l1275:
	movlw	(0Fh)&0ffh
	movwf	(??___ftdiv+0+0)&0ffh,c
	movff	(c:___ftdiv@f1),??___ftdiv+1+0
	movff	(c:___ftdiv@f1+1),??___ftdiv+1+0+1
	movff	(c:___ftdiv@f1+2),??___ftdiv+1+0+2
	incf	((??___ftdiv+0+0)),c,w
	movwf	(??___ftdiv+4+0)&0ffh,c
	goto	u500
u505:
	bcf	status,0
	rrcf	(??___ftdiv+1+2),c
	rrcf	(??___ftdiv+1+1),c
	rrcf	(??___ftdiv+1+0),c
u500:
	decfsz	(??___ftdiv+4+0)&0ffh,c
	goto	u505
	movf	(??___ftdiv+1+0),c,w
	movwf	((c:___ftdiv@exp)),c
	tstfsz	((c:___ftdiv@exp))&0ffh
	goto	u511
	goto	u510
u511:
	goto	l1281
u510:
	line	56
	
l1277:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l526
	
l1279:
	goto	l526
	
l525:
	line	57
	
l1281:
	movlw	(0Fh)&0ffh
	movwf	(??___ftdiv+0+0)&0ffh,c
	movff	(c:___ftdiv@f2),??___ftdiv+1+0
	movff	(c:___ftdiv@f2+1),??___ftdiv+1+0+1
	movff	(c:___ftdiv@f2+2),??___ftdiv+1+0+2
	incf	((??___ftdiv+0+0)),c,w
	movwf	(??___ftdiv+4+0)&0ffh,c
	goto	u520
u525:
	bcf	status,0
	rrcf	(??___ftdiv+1+2),c
	rrcf	(??___ftdiv+1+1),c
	rrcf	(??___ftdiv+1+0),c
u520:
	decfsz	(??___ftdiv+4+0)&0ffh,c
	goto	u525
	movf	(??___ftdiv+1+0),c,w
	movwf	((c:___ftdiv@sign)),c
	tstfsz	((c:___ftdiv@sign))&0ffh
	goto	u531
	goto	u530
u531:
	goto	l1287
u530:
	line	58
	
l1283:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l526
	
l1285:
	goto	l526
	
l527:
	line	59
	
l1287:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	60
	
l1289:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	61
	
l1291:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	62
	
l1293:
	movf	(0+2+(c:___ftdiv@f2))&0ffh,w
	xorwf	((c:___ftdiv@sign)),c
	line	63
	
l1295:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	64
	
l1297:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	65
	
l1299:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	66
	
l1301:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	67
	
l1303:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	68
	
l1305:
	movwf	(??___ftdiv+0+0)&0ffh,c
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	movf	(??___ftdiv+0+0)&0ffh,c,w
	line	69
	
l528:
	line	70
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	71
	
l1307:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u541
	goto	u540
u541:
	goto	l529
u540:
	line	72
	
l1309:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	73
	
l1311:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	74
	
l529:
	line	75
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	76
	
l1313:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l528
	goto	l1315
	
l530:
	line	77
	
l1315:
	movff	(c:___ftdiv@f3),(c:?___ftpack)
	movff	(c:___ftdiv@f3+1),(c:?___ftpack+1)
	movff	(c:___ftdiv@f3+2),(c:?___ftpack+2)
	movff	(c:___ftdiv@exp),0+((c:?___ftpack)+03h)
	movff	(c:___ftdiv@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	
	movff	2+?___ftpack,(c:?___ftdiv+2)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	0+?___ftpack,(c:?___ftdiv)
	
	goto	l526
	
l1317:
	line	78
	
l526:
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[COMRAM] float 
;;  f2              3   31[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   41[COMRAM] unsigned char 
;;  exp2            1   40[COMRAM] unsigned char 
;;  sign            1   39[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_caluclation
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	90
	
l1205:
	movlw	(0Fh)&0ffh
	movwf	(??___ftadd+0+0)&0ffh,c
	movff	(c:___ftadd@f1),??___ftadd+1+0
	movff	(c:___ftadd@f1+1),??___ftadd+1+0+1
	movff	(c:___ftadd@f1+2),??___ftadd+1+0+2
	incf	((??___ftadd+0+0)),c,w
	movwf	(??___ftadd+4+0)&0ffh,c
	goto	u290
u295:
	bcf	status,0
	rrcf	(??___ftadd+1+2),c
	rrcf	(??___ftadd+1+1),c
	rrcf	(??___ftadd+1+0),c
u290:
	decfsz	(??___ftadd+4+0)&0ffh,c
	goto	u295
	movf	(??___ftadd+1+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movlw	(0Fh)&0ffh
	movwf	(??___ftadd+0+0)&0ffh,c
	movff	(c:___ftadd@f2),??___ftadd+1+0
	movff	(c:___ftadd@f2+1),??___ftadd+1+0+1
	movff	(c:___ftadd@f2+2),??___ftadd+1+0+2
	incf	((??___ftadd+0+0)),c,w
	movwf	(??___ftadd+4+0)&0ffh,c
	goto	u300
u305:
	bcf	status,0
	rrcf	(??___ftadd+1+2),c
	rrcf	(??___ftadd+1+1),c
	rrcf	(??___ftadd+1+0),c
u300:
	decfsz	(??___ftadd+4+0)&0ffh,c
	goto	u305
	movf	(??___ftadd+1+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l1207:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u311
	goto	u310
u311:
	goto	l494
u310:
	
l1209:
	movf	((c:___ftadd@exp2)),c,w
	cpfslt	((c:___ftadd@exp1)),c
	goto	u321
	goto	u320
u321:
	goto	l1213
u320:
	
l1211:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u331
	goto	u330
u331:
	goto	l1213
u330:
	
l494:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l495
	
l492:
	line	94
	
l1213:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u341
	goto	u340
u341:
	goto	l498
u340:
	
l1215:
	movf	((c:___ftadd@exp1)),c,w
	cpfslt	((c:___ftadd@exp2)),c
	goto	u351
	goto	u350
u351:
	goto	l1219
u350:
	
l1217:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u361
	goto	u360
u361:
	goto	l1219
u360:
	
l498:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l495
	
l496:
	line	96
	
l1219:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	line	97
	
l1221:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u371
	goto	u370
u371:
	goto	l1225
u370:
	line	98
	
l1223:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l1225
	
l499:
	line	99
	
l1225:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u381
	goto	u380
u381:
	goto	l500
u380:
	line	100
	
l1227:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l500:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l1229:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l1231:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l1233:
	movf	((c:___ftadd@exp2)),c,w
	cpfslt	((c:___ftadd@exp1)),c
	goto	u391
	goto	u390
u391:
	goto	l1245
u390:
	goto	l1235
	line	109
	
l502:
	line	110
	
l1235:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l1237:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u401
	goto	u400
u401:
	goto	l1243
u400:
	
l1239:
	decf	((c:___ftadd@sign)),c
	movf	((c:___ftadd@sign))&0ffh,w
	andlw	low(07h)
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l1235
u410:
	goto	l1243
	
l504:
	goto	l1243
	
l505:
	line	113
	goto	l1243
	
l507:
	line	114
	
l1241:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l1243
	line	116
	
l506:
	line	113
	
l1243:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u421
	goto	u420
u421:
	goto	l1241
u420:
	goto	l509
	
l508:
	line	117
	goto	l509
	
l501:
	
l1245:
	movf	((c:___ftadd@exp1)),c,w
	cpfslt	((c:___ftadd@exp2)),c
	goto	u431
	goto	u430
u431:
	goto	l509
u430:
	goto	l1247
	line	120
	
l511:
	line	121
	
l1247:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l1249:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u441
	goto	u440
u441:
	goto	l1255
u440:
	
l1251:
	decf	((c:___ftadd@sign)),c
	movf	((c:___ftadd@sign))&0ffh,w
	andlw	low(07h)
	btfss	status,2
	goto	u451
	goto	u450
u451:
	goto	l1247
u450:
	goto	l1255
	
l513:
	goto	l1255
	
l514:
	line	124
	goto	l1255
	
l516:
	line	125
	
l1253:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l1255
	line	127
	
l515:
	line	124
	
l1255:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u461
	goto	u460
u461:
	goto	l1253
u460:
	goto	l509
	
l517:
	goto	l509
	line	128
	
l510:
	line	129
	
l509:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u471
	goto	u470
u471:
	goto	l518
u470:
	line	131
	
l1257:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l518:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u481
	goto	u480
u481:
	goto	l1261
u480:
	line	136
	
l1259:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l1261
	line	138
	
l519:
	line	139
	
l1261:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	line	140
	
l1263:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l1265:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u491
	goto	u490
u491:
	goto	l1271
u490:
	line	142
	
l1267:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l1269:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	goto	l1271
	line	145
	
l520:
	line	146
	
l1271:
	movff	(c:___ftadd@f2),(c:?___ftpack)
	movff	(c:___ftadd@f2+1),(c:?___ftpack+1)
	movff	(c:___ftadd@f2+2),(c:?___ftpack+2)
	movff	(c:___ftadd@exp1),0+((c:?___ftpack)+03h)
	movff	(c:___ftadd@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	
	movff	2+?___ftpack,(c:?___ftadd+2)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	0+?___ftpack,(c:?___ftadd)
	
	goto	l495
	
l1273:
	line	148
	
l495:
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   15[COMRAM] unsigned um
;;  exp             1   18[COMRAM] unsigned char 
;;  sign            1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   15[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.21\sources\common\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
;incstack = 0
	line	64
	
l1171:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u221
	goto	u220
u221:
	goto	l1175
u220:
	
l1173:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l1181
u230:
	goto	l1175
	
l456:
	line	65
	
l1175:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l457
	
l1177:
	goto	l457
	
l454:
	line	66
	goto	l1181
	
l459:
	line	67
	
l1179:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l1181
	line	69
	
l458:
	line	66
	
l1181:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l1179
u240:
	goto	l1187
	
l460:
	line	70
	goto	l1187
	
l462:
	line	71
	
l1183:
	incf	((c:___ftpack@exp)),c
	line	72
	
l1185:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l1187
	line	74
	
l461:
	line	70
	
l1187:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l1183
u250:
	goto	l1191
	
l463:
	line	75
	goto	l1191
	
l465:
	line	76
	
l1189:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l1191
	line	78
	
l464:
	line	75
	
l1191:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u261
	goto	u260
u261:
	goto	l1189
u260:
	
l466:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u271
	goto	u270
u271:
	goto	l1195
u270:
	line	80
	
l1193:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l1195
	
l467:
	line	81
	
l1195:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	movwf	(??___ftpack+0+0+2)&0ffh,c
	clrf	(??___ftpack+0+0+1)&0ffh,c
	clrf	(??___ftpack+0+0)&0ffh,c
	movf	(??___ftpack+0+0),c,w
	iorwf	((c:___ftpack@arg)),c
	movf	(??___ftpack+0+1),c,w
	iorwf	((c:___ftpack@arg+1)),c
	movf	(??___ftpack+0+2),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l1197:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u281
	goto	u280
u281:
	goto	l1201
u280:
	line	84
	
l1199:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l1201
	
l468:
	line	85
	
l1201:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l457
	
l1203:
	line	86
	
l457:
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_init_display

;; *************** function _init_display *****************
;; Defined at:
;;		line 4 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_write_8bit_data
;;		_write_4bit_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
global __ptext19
__ptext19:
psect	text19
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	4
	global	__size_of_init_display
	__size_of_init_display	equ	__end_of_init_display-_init_display
	
_init_display:
;incstack = 0
	opt	stack 27
;incstack = 0
	line	5
	
l907:
;LCD.c: 5: TRISB=0x01;
	movlw	low(01h)
	movwf	((c:3987)),c	;volatile
	line	6
;LCD.c: 6: PORTB=0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	7
	
l909:
;LCD.c: 7: _delay((unsigned long)((20)*(4000000/4000.0)));
	movlw	26
movwf	(??_init_display+0+0)&0ffh,c,f
	movlw	248
u807:
	decfsz	wreg,f
	goto	u807
	decfsz	(??_init_display+0+0)&0ffh,c,f
	goto	u807
	nop

	line	8
	
l911:
;LCD.c: 8: write_8bit_data(0x30) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_write_8bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_8bit_data	;wreg free
	line	9
	
l913:
;LCD.c: 9: _delay((unsigned long)((6)*(4000000/4000.0))) ;
	movlw	8
movwf	(??_init_display+0+0)&0ffh,c,f
	movlw	201
u817:
	decfsz	wreg,f
	goto	u817
	decfsz	(??_init_display+0+0)&0ffh,c,f
	goto	u817
	nop2

	line	10
	
l915:
;LCD.c: 10: write_8bit_data(0x30) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_write_8bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_8bit_data	;wreg free
	line	11
	
l917:
;LCD.c: 11: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u827:
	nop
decfsz	wreg,f
	goto	u827

	line	12
	
l919:
;LCD.c: 12: write_8bit_data(0x30) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(030h)
	movwf	((c:?_write_8bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_8bit_data	;wreg free
	line	13
	
l921:
;LCD.c: 13: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u837:
	nop
decfsz	wreg,f
	goto	u837

	line	14
	
l923:
;LCD.c: 14: write_8bit_data(0x20) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(020h)
	movwf	((c:?_write_8bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_8bit_data	;wreg free
	line	15
	
l925:
;LCD.c: 15: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u847:
	nop
decfsz	wreg,f
	goto	u847

	line	16
	
l927:
;LCD.c: 16: write_4bit_data(0x28) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(028h)
	movwf	((c:?_write_4bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_4bit_data	;wreg free
	line	17
	
l929:
;LCD.c: 17: write_4bit_data(0x08) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(08h)
	movwf	((c:?_write_4bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_4bit_data	;wreg free
	line	18
	
l931:
;LCD.c: 18: write_4bit_data(0x01) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_write_4bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_4bit_data	;wreg free
	line	19
	
l933:
;LCD.c: 19: _delay((unsigned long)((2)*(4000000/4000.0)));
	movlw	3
movwf	(??_init_display+0+0)&0ffh,c,f
	movlw	151
u857:
	decfsz	wreg,f
	goto	u857
	decfsz	(??_init_display+0+0)&0ffh,c,f
	goto	u857
	nop2

	line	20
	
l935:
;LCD.c: 20: write_4bit_data(0x06) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(06h)
	movwf	((c:?_write_4bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_4bit_data	;wreg free
	line	21
	
l937:
;LCD.c: 21: write_4bit_data(0x0C) ;
	movwf	(??_init_display+0+0)&0ffh,c
	movlw	low(0Ch)
	movwf	((c:?_write_4bit_data)),c
	movf	(??_init_display+0+0)&0ffh,c,w
	call	_write_4bit_data	;wreg free
	line	22
	
l939:
;LCD.c: 22: LATB2 = 1 ;
	bsf	c:(31826/8),(31826)&7	;volatile
	line	23
	
l17:
	return
	opt stack 0
GLOBAL	__end_of_init_display
	__end_of_init_display:
	signat	_init_display,88
	global	_write_4bit_data

;; *************** function _write_4bit_data *****************
;; Defined at:
;;		line 35 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  data_to_send    1   15[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_display
;;		_write_data
;;		_write_command
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
global __ptext20
__ptext20:
psect	text20
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	35
	global	__size_of_write_4bit_data
	__size_of_write_4bit_data	equ	__end_of_write_4bit_data-_write_4bit_data
	
_write_4bit_data:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	36
	
l947:
;LCD.c: 36: unsigned char temp=0;
	movwf	(??_write_4bit_data+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:write_4bit_data@temp)),c
	movf	(??_write_4bit_data+0+0)&0ffh,c,w
	line	37
	
l949:
;LCD.c: 37: PORTB=PORTB &0x0F;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	38
	
l951:
;LCD.c: 38: temp=data_to_send &0xF0;
	movf	((c:write_4bit_data@data_to_send)),c,w
	andlw	low(0F0h)
	movwf	((c:write_4bit_data@temp)),c
	line	39
	
l953:
;LCD.c: 39: PORTB=PORTB|temp;
	movf	((c:3969)),c,w	;volatile
	iorwf	((c:write_4bit_data@temp)),c,w
	movwf	((c:3969)),c	;volatile
	line	40
	
l955:
;LCD.c: 40: LATB1=1;
	bsf	c:(31825/8),(31825)&7	;volatile
	line	41
	
l957:
;LCD.c: 41: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u867:
	nop
decfsz	wreg,f
	goto	u867

	line	42
	
l959:
;LCD.c: 42: LATB1=0;
	bcf	c:(31825/8),(31825)&7	;volatile
	line	43
	
l961:
;LCD.c: 43: data_to_send=data_to_send<<4;
	swapf	((c:write_4bit_data@data_to_send)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:write_4bit_data@data_to_send)),c
	line	44
	
l963:
;LCD.c: 44: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u877:
	nop
decfsz	wreg,f
	goto	u877

	line	45
	
l965:
;LCD.c: 45: PORTB=PORTB&0x0F;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	46
	
l967:
;LCD.c: 46: temp=data_to_send &0xF0;
	movf	((c:write_4bit_data@data_to_send)),c,w
	andlw	low(0F0h)
	movwf	((c:write_4bit_data@temp)),c
	line	47
	
l969:
;LCD.c: 47: PORTB=PORTB|temp;
	movf	((c:3969)),c,w	;volatile
	iorwf	((c:write_4bit_data@temp)),c,w
	movwf	((c:3969)),c	;volatile
	line	48
	
l971:
;LCD.c: 48: LATB1=1;
	bsf	c:(31825/8),(31825)&7	;volatile
	line	49
	
l973:
;LCD.c: 49: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u887:
	nop
decfsz	wreg,f
	goto	u887

	line	50
	
l975:
;LCD.c: 50: LATB1=0;
	bcf	c:(31825/8),(31825)&7	;volatile
	line	51
	
l23:
	return
	opt stack 0
GLOBAL	__end_of_write_4bit_data
	__end_of_write_4bit_data:
	signat	_write_4bit_data,4216
	global	_write_8bit_data

;; *************** function _write_8bit_data *****************
;; Defined at:
;;		line 26 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
;; Parameters:    Size  Location     Type
;;  data_to_send    1   15[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_display
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
global __ptext21
__ptext21:
psect	text21
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\LCD.c"
	line	26
	global	__size_of_write_8bit_data
	__size_of_write_8bit_data	equ	__end_of_write_8bit_data-_write_8bit_data
	
_write_8bit_data:
;incstack = 0
	opt	stack 27
;incstack = 0
	line	27
	
l941:
;LCD.c: 27: PORTB= data_to_send;
	movff	(c:write_8bit_data@data_to_send),(c:3969)	;volatile
	line	28
;LCD.c: 28: LATB1 = 1 ;
	bsf	c:(31825/8),(31825)&7	;volatile
	line	29
	
l943:
;LCD.c: 29: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u897:
	nop
decfsz	wreg,f
	goto	u897

	line	30
	
l945:
;LCD.c: 30: LATB1 = 0 ;
	bcf	c:(31825/8),(31825)&7	;volatile
	line	31
	
l20:
	return
	opt stack 0
GLOBAL	__end_of_write_8bit_data
	__end_of_write_8bit_data:
	signat	_write_8bit_data,4216
	global	_chk_isr

;; *************** function _chk_isr *****************
;; Defined at:
;;		line 18 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_INT0_isr
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	18
	global	__size_of_chk_isr
	__size_of_chk_isr	equ	__end_of_chk_isr-_chk_isr
	
_chk_isr:
;incstack = 0
	opt	stack 25
	movff	pclat+0,??_chk_isr+0
	movff	pclat+1,??_chk_isr+1
	movff	fsr0l+0,??_chk_isr+2
	movff	fsr0h+0,??_chk_isr+3
	movff	fsr1l+0,??_chk_isr+4
	movff	fsr1h+0,??_chk_isr+5
	movff	fsr2l+0,??_chk_isr+6
	movff	fsr2h+0,??_chk_isr+7
	movff	prodl+0,??_chk_isr+8
	movff	prodh+0,??_chk_isr+9
	movff	tblptrl+0,??_chk_isr+10
	movff	tblptrh+0,??_chk_isr+11
	movff	tblptru+0,??_chk_isr+12
	movff	tablat+0,??_chk_isr+13
;incstack = 0
	line	19
	
i2l1433:
;main.c: 19: if(INTCONbits.INT0IF==1)
	
	btfss	((c:4082)),c,1	;volatile
	goto	i2u70_41
	goto	i2u70_40
i2u70_41:
	goto	i2l116
i2u70_40:
	line	20
	
i2l1435:
;main.c: 20: INT0_isr();
	call	_INT0_isr	;wreg free
	goto	i2l116
	
i2l115:
	line	21
	
i2l116:
	movff	??_chk_isr+13,tablat+0
	movff	??_chk_isr+12,tblptru+0
	movff	??_chk_isr+11,tblptrh+0
	movff	??_chk_isr+10,tblptrl+0
	movff	??_chk_isr+9,prodh+0
	movff	??_chk_isr+8,prodl+0
	movff	??_chk_isr+7,fsr2h+0
	movff	??_chk_isr+6,fsr2l+0
	movff	??_chk_isr+5,fsr1h+0
	movff	??_chk_isr+4,fsr1l+0
	movff	??_chk_isr+3,fsr0h+0
	movff	??_chk_isr+2,fsr0l+0
	movff	??_chk_isr+1,pclat+1
	movff	??_chk_isr+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_chk_isr
	__end_of_chk_isr:
	signat	_chk_isr,88
	global	_INT0_isr

;; *************** function _INT0_isr *****************
;; Defined at:
;;		line 45 in file "D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chk_isr
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
global __ptext23
__ptext23:
psect	text23
	file	"D:\WALEED\live_person\Tahani\bandar\B_stepper\STEPPER\main.c"
	line	45
	global	__size_of_INT0_isr
	__size_of_INT0_isr	equ	__end_of_INT0_isr-_INT0_isr
	
_INT0_isr:
;incstack = 0
	opt	stack 25
;incstack = 0
	line	47
	
i2l1011:
;main.c: 47: PORTC=0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	48
	
i2l1013:
;main.c: 48: control=0;
	movwf	(??_INT0_isr+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_control)),c
	movf	(??_INT0_isr+0+0)&0ffh,c,w
	line	49
	
i2l1015:
;main.c: 49: INTCONbits.INT0IF=0;
	bcf	((c:4082)),c,1	;volatile
	line	50
	
i2l128:
	return
	opt stack 0
GLOBAL	__end_of_INT0_isr
	__end_of_INT0_isr:
	signat	_INT0_isr,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
