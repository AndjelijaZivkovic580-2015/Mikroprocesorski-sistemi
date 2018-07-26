
_interrupt:

;Relay4.c,1 :: 		void interrupt(){
;Relay4.c,2 :: 		if(INT0IF_bit && INT0IE_bit){
	BTFSS       INT0IF_bit+0, BitPos(INT0IF_bit+0) 
	GOTO        L_interrupt2
	BTFSS       INT0IE_bit+0, BitPos(INT0IE_bit+0) 
	GOTO        L_interrupt2
L__interrupt15:
;Relay4.c,3 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;Relay4.c,4 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_interrupt3:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt3
	DECFSZ      R12, 1, 1
	BRA         L_interrupt3
	DECFSZ      R11, 1, 1
	BRA         L_interrupt3
	NOP
	NOP
;Relay4.c,5 :: 		RD0_bit=1;
	BSF         RD0_bit+0, BitPos(RD0_bit+0) 
;Relay4.c,6 :: 		RD1_bit=1;
	BSF         RD1_bit+0, BitPos(RD1_bit+0) 
;Relay4.c,7 :: 		Delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_interrupt4:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt4
	DECFSZ      R12, 1, 1
	BRA         L_interrupt4
	DECFSZ      R11, 1, 1
	BRA         L_interrupt4
	NOP
	NOP
;Relay4.c,8 :: 		RD0_bit=0;
	BCF         RD0_bit+0, BitPos(RD0_bit+0) 
;Relay4.c,9 :: 		RD1_bit=0;
	BCF         RD1_bit+0, BitPos(RD1_bit+0) 
;Relay4.c,10 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_interrupt5:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt5
	DECFSZ      R12, 1, 1
	BRA         L_interrupt5
	DECFSZ      R11, 1, 1
	BRA         L_interrupt5
	NOP
;Relay4.c,11 :: 		RC0_bit=1; //VODAAAAAAAA
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
;Relay4.c,12 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_interrupt6:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt6
	DECFSZ      R12, 1, 1
	BRA         L_interrupt6
	DECFSZ      R11, 1, 1
	BRA         L_interrupt6
	NOP
	NOP
;Relay4.c,13 :: 		INT0IE_bit=0;
	BCF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;Relay4.c,14 :: 		INT1IE_bit=1;
	BSF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;Relay4.c,15 :: 		}
L_interrupt2:
;Relay4.c,17 :: 		if(INT1IF_bit && INT1IE_bit){
	BTFSS       INT1IF_bit+0, BitPos(INT1IF_bit+0) 
	GOTO        L_interrupt9
	BTFSS       INT1IE_bit+0, BitPos(INT1IE_bit+0) 
	GOTO        L_interrupt9
L__interrupt14:
;Relay4.c,18 :: 		INT1IF_bit=0;
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;Relay4.c,19 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_interrupt10:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt10
	DECFSZ      R12, 1, 1
	BRA         L_interrupt10
	DECFSZ      R11, 1, 1
	BRA         L_interrupt10
	NOP
	NOP
;Relay4.c,20 :: 		RC0_bit=0; //VODAAAAAAA
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;Relay4.c,21 :: 		Delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_interrupt11:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt11
	DECFSZ      R12, 1, 1
	BRA         L_interrupt11
	DECFSZ      R11, 1, 1
	BRA         L_interrupt11
	NOP
	NOP
;Relay4.c,22 :: 		RD2_bit=1;
	BSF         RD2_bit+0, BitPos(RD2_bit+0) 
;Relay4.c,23 :: 		RD3_bit=1;
	BSF         RD3_bit+0, BitPos(RD3_bit+0) 
;Relay4.c,24 :: 		Delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_interrupt12:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt12
	DECFSZ      R12, 1, 1
	BRA         L_interrupt12
	DECFSZ      R11, 1, 1
	BRA         L_interrupt12
	NOP
	NOP
;Relay4.c,25 :: 		RD2_bit=0;
	BCF         RD2_bit+0, BitPos(RD2_bit+0) 
;Relay4.c,26 :: 		RD3_bit=0;
	BCF         RD3_bit+0, BitPos(RD3_bit+0) 
;Relay4.c,27 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_interrupt13:
	DECFSZ      R13, 1, 1
	BRA         L_interrupt13
	DECFSZ      R12, 1, 1
	BRA         L_interrupt13
	DECFSZ      R11, 1, 1
	BRA         L_interrupt13
	NOP
	NOP
;Relay4.c,28 :: 		INT0IE_bit=1;
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;Relay4.c,29 :: 		INT1IE_bit=0;
	BCF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;Relay4.c,30 :: 		}
L_interrupt9:
;Relay4.c,31 :: 		}
L_end_interrupt:
L__interrupt17:
	RETFIE      1
; end of _interrupt

_main:

;Relay4.c,33 :: 		void main(){
;Relay4.c,34 :: 		ADCON1=0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Relay4.c,35 :: 		GIE_bit=1;
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;Relay4.c,36 :: 		TRISB = 0xFF;
	MOVLW       255
	MOVWF       TRISB+0 
;Relay4.c,38 :: 		INT0IF_bit=0;
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;Relay4.c,39 :: 		INT0IE_bit=1;
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;Relay4.c,40 :: 		INTEDG0_bit=1;
	BSF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;Relay4.c,42 :: 		INT1IF_bit=0;
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;Relay4.c,43 :: 		INT1IE_bit=0;
	BCF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;Relay4.c,44 :: 		INTEDG1_bit=1;
	BSF         INTEDG1_bit+0, BitPos(INTEDG1_bit+0) 
;Relay4.c,46 :: 		TRISC = 0;
	CLRF        TRISC+0 
;Relay4.c,47 :: 		RC0_bit=0;
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
;Relay4.c,48 :: 		RC1_bit=1;
	BSF         RC1_bit+0, BitPos(RC1_bit+0) 
;Relay4.c,49 :: 		RC2_bit=0;
	BCF         RC2_bit+0, BitPos(RC2_bit+0) 
;Relay4.c,50 :: 		RC3_bit=0;
	BCF         RC3_bit+0, BitPos(RC3_bit+0) 
;Relay4.c,51 :: 		RC4_bit=0;
	BCF         RC4_bit+0, BitPos(RC4_bit+0) 
;Relay4.c,52 :: 		RC5_bit=0;
	BCF         RC5_bit+0, BitPos(RC5_bit+0) 
;Relay4.c,53 :: 		RC6_bit=0;
	BCF         RC6_bit+0, BitPos(RC6_bit+0) 
;Relay4.c,54 :: 		RC7_bit=0;
	BCF         RC7_bit+0, BitPos(RC7_bit+0) 
;Relay4.c,56 :: 		TRISD = 0;
	CLRF        TRISD+0 
;Relay4.c,57 :: 		RD0_bit=0;
	BCF         RD0_bit+0, BitPos(RD0_bit+0) 
;Relay4.c,58 :: 		RD1_bit=0;
	BCF         RD1_bit+0, BitPos(RD1_bit+0) 
;Relay4.c,59 :: 		RD2_bit=0;
	BCF         RD2_bit+0, BitPos(RD2_bit+0) 
;Relay4.c,60 :: 		RD3_bit=0;
	BCF         RD3_bit+0, BitPos(RD3_bit+0) 
;Relay4.c,61 :: 		RD4_bit=0;
	BCF         RD4_bit+0, BitPos(RD4_bit+0) 
;Relay4.c,62 :: 		RD5_bit=0;
	BCF         RD5_bit+0, BitPos(RD5_bit+0) 
;Relay4.c,63 :: 		RD6_bit=0;
	BCF         RD6_bit+0, BitPos(RD6_bit+0) 
;Relay4.c,64 :: 		RD7_bit=0;
	BCF         RD7_bit+0, BitPos(RD7_bit+0) 
;Relay4.c,65 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
