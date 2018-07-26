void interrupt(){
if(INT0IF_bit && INT0IE_bit){
INT0IF_bit=0;                 //INT0 flag postavimo na 0
Delay_ms(1000);
RD0_bit=1;                    //Ukljucivanje motora pomocu RD0 I RD1
RD1_bit=1;
Delay_ms(5000);
RD0_bit=0;                    //Gasenje motora
RD1_bit=0;
Delay_ms(3000);
RC0_bit=1;                    //Pokretanje ventila za pustanje vode
Delay_ms(1000);
INT0IE_bit=0;                 //Onemogucuje se ukljucivanje INT0
INT1IE_bit=1;                 //Omogucuje se ukljucivanje INT1
          }

if(INT1IF_bit && INT1IE_bit){
INT1IF_bit=0;               //INT1 flag postavljamo na 0
Delay_ms(1000);
RC0_bit=0;                  //Pokretanje ventila za gasenje vode
Delay_ms(5000);
RD2_bit=1;                  //Ukljucuje se motor(suprotan smer) pomocu RD2 i RD3
RD3_bit=1;
Delay_ms(5000);
RD2_bit=0;                  //Gasenje motora
RD3_bit=0;
Delay_ms(1000);
INT0IE_bit=1;               //Omogucuje se ukljucivanje INT0
INT1IE_bit=0;               //Onemogucuje se ukljucivanje INT1
          }
}

void main(){
ADCON1=0x0F;                //svi pinovi su digitalni
GIE_bit=1;                  //omoguceni prekidi
TRISB = 0xFF;

INT0IF_bit=0;
INT0IE_bit=1;               //Omoguceno ukljucivanje sistema
INTEDG0_bit=1;

INT1IF_bit=0;
INT1IE_bit=0;              //Onemoguceno gasenje sistema
INTEDG1_bit=1;

TRISC = 0;
PORTC =0;

TRISD = 0;
PORTD= 0;
}