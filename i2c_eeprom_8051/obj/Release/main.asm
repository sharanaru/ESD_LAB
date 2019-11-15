;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _randomread_handler
	.globl _writebytehandler
	.globl _readint
	.globl _putstr
	.globl _inputchecker
	.globl _strtohex
	.globl _seq_read
	.globl _random_read
	.globl _byte_write
	.globl _i2c_nack
	.globl _i2c_write
	.globl _restart_i2c
	.globl _i2c_stop
	.globl _i2c_reset
	.globl _toupper
	.globl _printf_tiny
	.globl _gets
	.globl _printf
	.globl _atoi
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _errorflag
	.globl _control
	.globl _flag_inputcheck
	.globl _output
	.globl _menuselect
	.globl _addressreceiver
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_inputchecker_sloc0_1_0:
	.ds 3
_inputchecker_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_inputchecker_r_65536_90:
	.ds 3
_addressreceiver::
	.ds 4
_putchar_c_65536_94:
	.ds 2
_putstr_s_65536_98:
	.ds 3
_menuselect::
	.ds 2
_writebytehandler_receiver_65536_103:
	.ds 3
_randomread_handler_receiver_65536_110:
	.ds 3
_output::
	.ds 1
_main_addressreceiver1_196609_120:
	.ds 4
_main_addressreceiver2_196610_122:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_flag_inputcheck::
	.ds 2
_control::
	.ds 1
_errorflag::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'inputchecker'
;------------------------------------------------------------
;sloc0                     Allocated with name '_inputchecker_sloc0_1_0'
;sloc1                     Allocated with name '_inputchecker_sloc1_1_0'
;r                         Allocated with name '_inputchecker_r_65536_90'
;i                         Allocated with name '_inputchecker_i_65536_91'
;------------------------------------------------------------
;	main.c:14: void inputchecker(char *r)
;	-----------------------------------------
;	 function inputchecker
;	-----------------------------------------
_inputchecker:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_inputchecker_r_65536_90
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:17: flag_inputcheck=0;
	mov	dptr,#_flag_inputcheck
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:18: while(r[i]!='\0')
	mov	dptr,#_inputchecker_r_65536_90
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	_inputchecker_sloc0_1_0,r5
	mov	(_inputchecker_sloc0_1_0 + 1),r6
	mov	(_inputchecker_sloc0_1_0 + 2),r7
	mov	r0,#0x00
	mov	r1,#0x00
00109$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a,_inputchecker_sloc0_1_0
	mov	r2,a
	mov	a,r1
	addc	a,(_inputchecker_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_inputchecker_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_inputchecker_sloc1_1_0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_inputchecker_sloc1_1_0
	jnz	00134$
	ret
00134$:
;	main.c:20: if(((r[i]>='0')&&(r[i]<='9'))||((r[i]>='a')&&(r[i]<='f'))||((r[i]>='A')&&(r[i]<='F')))
	mov	a,#0x100 - 0x30
	add	a,_inputchecker_sloc1_1_0
	jnc	00106$
	mov	a,_inputchecker_sloc1_1_0
	add	a,#0xff - 0x39
	jnc	00101$
00106$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a,r5
	mov	r2,a
	mov	a,r1
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_inputchecker_sloc1_1_0,a
	clr	c
	subb	a,#0x61
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00108$
	mov	a,_inputchecker_sloc1_1_0
	add	a,#0xff - 0x66
	jnc	00101$
00108$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,r0
	add	a,r2
	mov	r5,a
	mov	a,r1
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_inputchecker_sloc1_1_0,a
	clr	c
	subb	a,#0x41
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00102$
	mov	a,_inputchecker_sloc1_1_0
	add	a,#0xff - 0x46
	jc	00102$
00101$:
;	main.c:21: i++;
	inc	r0
	cjne	r0,#0x00,00141$
	inc	r1
00141$:
	ljmp	00109$
00102$:
;	main.c:26: printf_tiny("Invalid character entered Please retry\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:27: flag_inputcheck=1;
	mov	dptr,#_flag_inputcheck
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:28: return;
;	main.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_94'
;------------------------------------------------------------
;	main.c:37: int putchar (int c)//serial outps char value
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_94
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:39: while (!TI);				// compare asm code generated for these three lines
00101$:
	jnb	_TI,00101$
;	main.c:40: while (TI == 0);
00104$:
	jnb	_TI,00104$
;	main.c:41: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
00107$:
	mov	a,_SCON
	jnb	acc.1,00107$
;	main.c:42: SBUF = c;  	// load serial port with transmit value
	mov	dptr,#_putchar_c_65536_94
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:43: TI = 0;  	// clear TI flag
;	assignBit
	clr	_TI
;	main.c:44: return 0;
	mov	dptr,#0x0000
;	main.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:48: int getchar(void)//reads char value from serial
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:51: while (!RI);                // compare asm code generated for these three lines
00101$:
	jnb	_RI,00101$
;	main.c:52: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
00104$:
	mov	a,_SCON
	jnb	acc.0,00104$
;	main.c:53: while (RI == 0);
00107$:
;	main.c:54: RI = 0;			// clear RI flag
;	assignBit
	jbc	_RI,00130$
	sjmp	00107$
00130$:
;	main.c:55: return SBUF;  	// return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putstr'
;------------------------------------------------------------
;s                         Allocated with name '_putstr_s_65536_98'
;i                         Allocated with name '_putstr_i_65536_99'
;------------------------------------------------------------
;	main.c:57: int putstr (char *s)//outputs string to serial
;	-----------------------------------------
;	 function putstr
;	-----------------------------------------
_putstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_putstr_s_65536_98
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:60: while (*s) 			// output characters until NULL found
	mov	dptr,#_putstr_s_65536_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jz	00108$
;	main.c:62: putchar(*s++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_putstr_s_65536_98
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	dpl,r1
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:63: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00108$:
	mov	dptr,#_putstr_s_65536_98
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:66: return i+1;
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
00118$:
	mov	dpl,r3
	mov	dph,r4
;	main.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readint'
;------------------------------------------------------------
;reader                    Allocated with name '_readint_reader_65536_101'
;number                    Allocated with name '_readint_number_65537_102'
;------------------------------------------------------------
;	main.c:69: int readint()//reads  char string as integer
;	-----------------------------------------
;	 function readint
;	-----------------------------------------
_readint:
;	main.c:72: gets(reader);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_gets
;	main.c:73: int number=atoi(reader);
	mov	dptr,#0x0000
	mov	b,#0x00
;	main.c:74: return number;
;	main.c:75: }
	ljmp	_atoi
;------------------------------------------------------------
;Allocation info for local variables in function 'writebytehandler'
;------------------------------------------------------------
;receiver                  Allocated with name '_writebytehandler_receiver_65536_103'
;t                         Allocated with name '_writebytehandler_t_65536_104'
;blockno                   Allocated with name '_writebytehandler_blockno_65536_104'
;address                   Allocated with name '_writebytehandler_address_65537_107'
;data                      Allocated with name '_writebytehandler_data_65538_108'
;------------------------------------------------------------
;	main.c:84: void writebytehandler(char *receiver)
;	-----------------------------------------
;	 function writebytehandler
;	-----------------------------------------
_writebytehandler:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_writebytehandler_receiver_65536_103
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:86: uint16_t t=strtohex(receiver);
	mov	dptr,#_writebytehandler_receiver_65536_103
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strtohex
	mov	r6,dpl
	mov	r7,dph
;	main.c:87: uint8_t blockno=(t & 0xE00)>>8;
	mov	r4,#0x00
	mov	a,#0x0e
	anl	a,r7
	mov	r5,a
;	main.c:89: if(blockno<8)
	cjne	r5,#0x08,00116$
00116$:
	jnc	00102$
;	main.c:92: control |=blockno;
	mov	dptr,#_control
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
	sjmp	00103$
00102$:
;	main.c:99: putstr("\n\rInvalid block no.\n\r");
	mov	dptr,#___str_1
	mov	b,#0x80
;	main.c:100: return;
	ljmp	_putstr
00103$:
;	main.c:103: uint8_t address=(t&0x0FF);
;	main.c:106: putstr("Enter data to be written\n\r");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar6
	lcall	_putstr
;	main.c:108: gets(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_gets
;	main.c:109: inputchecker(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_inputchecker
	pop	ar6
;	main.c:110: if(!flag_inputcheck)
	mov	dptr,#_flag_inputcheck
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00106$
;	main.c:112: putstr("data is ");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar6
	lcall	_putstr
;	main.c:113: putstr(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_putstr
;	main.c:114: putstr(newl);
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_putstr
;	main.c:115: data=strtohex(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_strtohex
	mov	r5,dpl
	pop	ar6
;	main.c:116: byte_write(control,address,data);
	mov	dptr,#_control
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_byte_write_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_byte_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
;	main.c:119: }
	ljmp	_byte_write
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'randomread_handler'
;------------------------------------------------------------
;receiver                  Allocated with name '_randomread_handler_receiver_65536_110'
;t                         Allocated with name '_randomread_handler_t_65536_111'
;blockno                   Allocated with name '_randomread_handler_blockno_65536_111'
;address                   Allocated with name '_randomread_handler_address_131072_114'
;result                    Allocated with name '_randomread_handler_result_131072_114'
;------------------------------------------------------------
;	main.c:121: int randomread_handler(char *receiver)
;	-----------------------------------------
;	 function randomread_handler
;	-----------------------------------------
_randomread_handler:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_randomread_handler_receiver_65536_110
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:123: uint16_t t=strtohex(receiver);
	mov	dptr,#_randomread_handler_receiver_65536_110
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strtohex
	mov	r6,dpl
	mov	r7,dph
;	main.c:124: uint8_t blockno=(t & 0xE00)>>8;
	mov	a,#0x0e
	anl	a,r7
	mov	r5,a
;	main.c:125: if(blockno<7)
	cjne	r5,#0x07,00117$
00117$:
	jnc	00102$
;	main.c:128: control |=blockno;
	mov	dptr,#_control
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
	sjmp	00103$
00102$:
;	main.c:133: errorflag=1;
	mov	dptr,#_errorflag
	mov	a,#0x01
	movx	@dptr,a
00103$:
;	main.c:134: if(errorflag)
	mov	dptr,#_errorflag
	movx	a,@dptr
	jz	00105$
;	main.c:136: putstr("Wrong block number. \n\r");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_putstr
;	main.c:137: return -1;
	mov	dptr,#0xffff
	ret
00105$:
;	main.c:142: uint8_t address=(t&0x0FF);
;	main.c:143: int result =random_read(control,address);
	mov	dptr,#_control
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_random_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	lcall	_random_read
	mov	r6,dpl
	mov	r7,dph
;	main.c:144: errorflag=0;
	mov	dptr,#_errorflag
	clr	a
	movx	@dptr,a
;	main.c:145: return result;
	mov	dpl,r6
	mov	dph,r7
;	main.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;addressreceiver1          Allocated with name '_main_addressreceiver1_196609_120'
;address1                  Allocated with name '_main_address1_196610_122'
;block1                    Allocated with name '_main_block1_196610_122'
;startaddress              Allocated with name '_main_startaddress_196610_122'
;addressreceiver2          Allocated with name '_main_addressreceiver2_196610_122'
;address2                  Allocated with name '_main_address2_196611_124'
;block2                    Allocated with name '_main_block2_196611_124'
;endaddress                Allocated with name '_main_endaddress_196611_124'
;------------------------------------------------------------
;	main.c:150: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:152: i2c_reset();
	lcall	_i2c_reset
;	main.c:153: while(1)
00123$:
;	main.c:157: errorflag=0;
	mov	dptr,#_errorflag
	clr	a
	movx	@dptr,a
;	main.c:158: putstr("*****************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\r\n\rPRESS X FOR EEPROM RESET\n\r");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_putstr
;	main.c:159: menuselect=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_menuselect
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:161: putchar(menuselect);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:162: putstr("\n\r");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_putstr
;	main.c:164: switch(toupper(menuselect))
	mov	dptr,#_menuselect
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x52,00175$
	cjne	r7,#0x00,00175$
	sjmp	00104$
00175$:
	cjne	r6,#0x53,00176$
	cjne	r7,#0x00,00176$
	ljmp	00109$
00176$:
	cjne	r6,#0x57,00177$
	cjne	r7,#0x00,00177$
	sjmp	00101$
00177$:
	cjne	r6,#0x58,00178$
	cjne	r7,#0x00,00178$
	ljmp	00119$
00178$:
	ljmp	00120$
;	main.c:167: case 'W':
00101$:
;	main.c:168: putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER IN HEX\n\r");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_putstr
;	main.c:170: gets(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_gets
;	main.c:171: inputchecker(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_inputchecker
;	main.c:172: if(!flag_inputcheck)
	mov	dptr,#_flag_inputcheck
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
;	main.c:173: writebytehandler(addressreceiver);
	jnz	00103$
	mov	dptr,#_addressreceiver
	mov	b,a
	lcall	_writebytehandler
00103$:
;	main.c:174: control=0xA0;
	mov	dptr,#_control
	mov	a,#0xa0
	movx	@dptr,a
;	main.c:175: break;
	ljmp	00123$
;	main.c:177: case 'R':
00104$:
;	main.c:178: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED  in HEX\n\r");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_putstr
;	main.c:179: gets(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_gets
;	main.c:180: inputchecker(addressreceiver);
	mov	dptr,#_addressreceiver
	mov	b,#0x00
	lcall	_inputchecker
;	main.c:181: if(!flag_inputcheck)
	mov	dptr,#_flag_inputcheck
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
;	main.c:184: output=randomread_handler(addressreceiver);
	jnz	00108$
	mov	dptr,#_addressreceiver
	mov	b,a
	lcall	_randomread_handler
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_output
	mov	a,r6
	movx	@dptr,a
;	main.c:185: if(errorflag==0)
	mov	dptr,#_errorflag
	movx	a,@dptr
	jnz	00108$
;	main.c:186: printf("Read value is 0x%X\n\r",output);
	mov	dptr,#_output
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00108$:
;	main.c:188: control=0xA0;
	mov	dptr,#_control
	mov	a,#0xa0
	movx	@dptr,a
;	main.c:190: break;
	ljmp	00123$
;	main.c:191: case 'S':
00109$:
;	main.c:192: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_putstr
;	main.c:195: putstr("Enter first address\n\r");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_putstr
;	main.c:196: gets(addressreceiver1);
	mov	dptr,#_main_addressreceiver1_196609_120
	mov	b,#0x00
	lcall	_gets
;	main.c:197: inputchecker(addressreceiver1);
	mov	dptr,#_main_addressreceiver1_196609_120
	mov	b,#0x00
	lcall	_inputchecker
;	main.c:198: if(flag_inputcheck)
	mov	dptr,#_flag_inputcheck
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00111$
;	main.c:200: putstr("Error in input");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_putstr
;	main.c:201: putstr(newl);
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_putstr
;	main.c:202: break;
	ljmp	00123$
00111$:
;	main.c:206: uint16_t address1=strtohex(addressreceiver1);
	mov	dptr,#_main_addressreceiver1_196609_120
	mov	b,#0x00
	lcall	_strtohex
	mov	r6,dpl
	mov	r7,dph
;	main.c:208: uint8_t block1=(address1 & 0xE00)>>8;
	mov	a,#0x0e
	anl	a,r7
	mov	r5,a
;	main.c:209: uint8_t startaddress=(address1&0x0FF);
	mov	ar4,r6
;	main.c:214: putstr("Enter second address\n\r");
	mov	dptr,#___str_13
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_putstr
;	main.c:215: gets(addressreceiver2);
	mov	dptr,#_main_addressreceiver2_196610_122
	mov	b,#0x00
	lcall	_gets
;	main.c:216: inputchecker(addressreceiver2);
	mov	dptr,#_main_addressreceiver2_196610_122
	mov	b,#0x00
	lcall	_inputchecker
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:217: if(flag_inputcheck)
	mov	dptr,#_flag_inputcheck
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00113$
;	main.c:219: putstr("Error in input");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_putstr
;	main.c:220: putstr(newl);
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_putstr
;	main.c:221: break;
	ljmp	00123$
00113$:
;	main.c:225: uint16_t address2=strtohex(addressreceiver2);
	mov	dptr,#_main_addressreceiver2_196610_122
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_strtohex
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:226: uint8_t block2=(address2 & 0xE00)>>8;
	mov	a,#0x0e
	anl	a,r3
	mov	r1,a
;	main.c:227: uint8_t endaddress=(address2&0x0FF);
	mov	ar0,r2
;	main.c:229: if(block1>7 || block2>7)
	mov	a,r5
	add	a,#0xff - 0x07
	jc	00114$
	mov	a,r1
	add	a,#0xff - 0x07
	jnc	00115$
00114$:
;	main.c:232: putstr("Block numbers are invalid\n\r");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_putstr
;	main.c:233: break;
	ljmp	00123$
00115$:
;	main.c:235: if(address1>address2)
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00118$
;	main.c:237: printf("Initial address is greater than Second address\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:238: break;
	ljmp	00123$
00118$:
;	main.c:244: seq_read(control,startaddress,endaddress,block1,block2);
	mov	dptr,#_control
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_seq_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_seq_read_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#_seq_read_PARM_4
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_seq_read_PARM_5
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r7
	lcall	_seq_read
;	main.c:250: control=0xA0;
	mov	dptr,#_control
	mov	a,#0xa0
	movx	@dptr,a
;	main.c:252: break;
	ljmp	00123$
;	main.c:253: case 'X':
00119$:
;	main.c:254: restart_i2c();
	lcall	_restart_i2c
;	main.c:255: i2c_write(0xFF);
	mov	dptr,#0x00ff
	lcall	_i2c_write
;	main.c:256: i2c_nack();
	lcall	_i2c_nack
;	main.c:257: restart_i2c();
	lcall	_restart_i2c
;	main.c:258: i2c_stop();
	lcall	_i2c_stop
;	main.c:259: break;
	ljmp	00123$
;	main.c:260: default:
00120$:
;	main.c:261: printf("No function attached to input\r\n");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:274: }
;	main.c:278: }
	ljmp	00123$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Invalid character entered Please retry"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid block no."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Enter data to be written"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "data is "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Wrong block number. "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "*****************"
	.db 0x0a
	.db 0x0d
	.ascii "MENU FOR TESTING I2C FUNCTIONS"
	.db 0x0a
	.db 0x0d
	.ascii "PRESS W FOR WRITE BYTE"
	.db 0x0a
	.db 0x0d
	.ascii "PRESS R FOR RANDOM READ"
	.db 0x0a
	.db 0x0d
	.ascii "PRESS S FOR HEX DUMP"
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.ascii "PRESS X FOR EEPROM RESET"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER A"
	.ascii "ND WORD ADRRESS TOGETHER IN HEX"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
	.ascii "ORD ADRRESS TOGETHER SEPERATED  in HEX"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Read value is 0x%X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
	.ascii "ORD ADRRESS TOGETHER SEPERATED BY 0 in HEX"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Enter first address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Error in input"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Enter second address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Block numbers are invalid"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Initial address is greater than Second address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "No function attached to input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__flag_inputcheck:
	.byte #0x00, #0x00	;  0
__xinit__control:
	.db #0xa0	; 160
__xinit__errorflag:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
