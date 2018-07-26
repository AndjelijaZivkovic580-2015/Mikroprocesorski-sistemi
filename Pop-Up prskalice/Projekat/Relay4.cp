#line 1 "C:/Users/Zivkovic/Desktop/relej/Relay4.c"
void interrupt(){
if(INT0IF_bit && INT0IE_bit){
INT0IF_bit=0;
Delay_ms(1000);
RD0_bit=1;
RD1_bit=1;
Delay_ms(5000);
RD0_bit=0;
RD1_bit=0;
Delay_ms(3000);
RC0_bit=1;
Delay_ms(1000);
INT0IE_bit=0;
INT1IE_bit=1;
 }

if(INT1IF_bit && INT1IE_bit){
INT1IF_bit=0;
Delay_ms(1000);
RC0_bit=0;
Delay_ms(5000);
RD2_bit=1;
RD3_bit=1;
Delay_ms(5000);
RD2_bit=0;
RD3_bit=0;
Delay_ms(1000);
INT0IE_bit=1;
INT1IE_bit=0;
 }
}

void main(){
ADCON1=0x0F;
GIE_bit=1;
TRISB = 0xFF;

INT0IF_bit=0;
INT0IE_bit=1;
INTEDG0_bit=1;

INT1IF_bit=0;
INT1IE_bit=0;
INTEDG1_bit=1;

TRISC = 0;
RC0_bit=0;
RC1_bit=1;
RC2_bit=0;
RC3_bit=0;
RC4_bit=0;
RC5_bit=0;
RC6_bit=0;
RC7_bit=0;

TRISD = 0;
RD0_bit=0;
RD1_bit=0;
RD2_bit=0;
RD3_bit=0;
RD4_bit=0;
RD5_bit=0;
RD6_bit=0;
RD7_bit=0;
}
