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
	.globl _random_read
	.globl _byte_write
	.globl _i2c_read
	.globl _i2c_nack
	.globl _i2c_ack
	.globl _i2c_write
	.globl _restart_i2c
	.globl _long_delay
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_reset
	.globl _delay
	.globl _readint
	.globl _putstr
	.globl _gets
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
	.globl _random_read_PARM_2
	.globl _byte_write_PARM_3
	.globl _byte_write_PARM_2
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
_putchar_c_65536_63:
	.ds 2
_putstr_s_65536_67:
	.ds 3
_i2c_write_k_65536_80:
	.ds 2
_i2c_read_reader_65536_89:
	.ds 2
_byte_write_PARM_2:
	.ds 1
_byte_write_PARM_3:
	.ds 1
_byte_write_controlcode_65536_92:
	.ds 1
_byte_write_t_65537_94:
	.ds 2
_random_read_PARM_2:
	.ds 1
_random_read_controlcode_65536_96:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_63'
;------------------------------------------------------------
;	main.c:15: int putchar (int c)//serial outps char value
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_63
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:17: while (!TI);				// compare asm code generated for these three lines
00101$:
	jnb	_TI,00101$
;	main.c:18: while (TI == 0);
00104$:
	jnb	_TI,00104$
;	main.c:19: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
00107$:
	mov	a,_SCON
	jnb	acc.1,00107$
;	main.c:20: SBUF = c;  	// load serial port with transmit value
	mov	dptr,#_putchar_c_65536_63
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:21: TI = 0;  	// clear TI flag
;	assignBit
	clr	_TI
;	main.c:22: return 0;
	mov	dptr,#0x0000
;	main.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:26: int getchar(void)//reads char value from serial
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:29: while (!RI);                // compare asm code generated for these three lines
00101$:
	jnb	_RI,00101$
;	main.c:30: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
00104$:
	mov	a,_SCON
	jnb	acc.0,00104$
;	main.c:31: while (RI == 0);
00107$:
;	main.c:32: RI = 0;			// clear RI flag
;	assignBit
	jbc	_RI,00130$
	sjmp	00107$
00130$:
;	main.c:33: return SBUF;  	// return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putstr'
;------------------------------------------------------------
;s                         Allocated with name '_putstr_s_65536_67'
;i                         Allocated with name '_putstr_i_65536_68'
;------------------------------------------------------------
;	main.c:35: int putstr (char *s)//outputs string to serial
;	-----------------------------------------
;	 function putstr
;	-----------------------------------------
_putstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_putstr_s_65536_67
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:38: while (*s) 			// output characters until NULL found
	mov	dptr,#_putstr_s_65536_67
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
;	main.c:40: putchar(*s++);
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	mov	dptr,#_putstr_s_65536_67
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
;	main.c:41: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00108$:
	mov	dptr,#_putstr_s_65536_67
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:44: return i+1;
	inc	r3
	cjne	r3,#0x00,00118$
	inc	r4
00118$:
	mov	dpl,r3
	mov	dph,r4
;	main.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readint'
;------------------------------------------------------------
;reader                    Allocated with name '_readint_reader_65536_70'
;number                    Allocated with name '_readint_number_65537_71'
;------------------------------------------------------------
;	main.c:50: int readint()//reads  char string as integer
;	-----------------------------------------
;	 function readint
;	-----------------------------------------
_readint:
;	main.c:53: gets(reader);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_gets
;	main.c:54: int number=atoi(reader);
	mov	dptr,#0x0000
	mov	b,#0x00
;	main.c:55: return number;
;	main.c:56: }
	ljmp	_atoi
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;	main.c:58: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:65: __endasm;
	mov	a,#3
	    l1:
	dec	a
	cjne	a,#0,l1
;	main.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_reset'
;------------------------------------------------------------
;	main.c:67: void i2c_reset() //setting both lines to high to go into normal condition
;	-----------------------------------------
;	 function i2c_reset
;	-----------------------------------------
_i2c_reset:
;	main.c:69: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:70: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:72: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:73: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:74: delay();
;	main.c:75: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	main.c:76: void i2c_start()
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	main.c:78: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:79: delay();
	lcall	_delay
;	main.c:80: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:81: delay();
;	main.c:83: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	main.c:84: void i2c_stop()
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	main.c:86: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:87: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:88: delay();
	lcall	_delay
;	main.c:89: setSDA; //low to high transition of sda marks stop
;	assignBit
	setb	_P1_5
;	main.c:90: delay();
;	main.c:92: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'long_delay'
;------------------------------------------------------------
;i                         Allocated with name '_long_delay_i_131072_77'
;------------------------------------------------------------
;	main.c:93: void long_delay()
;	-----------------------------------------
;	 function long_delay
;	-----------------------------------------
_long_delay:
;	main.c:95: for(uint16_t i=800;i!=0;i--)
	mov	r6,#0x20
	mov	r7,#0x03
00103$:
	mov	a,r6
	orl	a,r7
	jz	00105$
;	main.c:97: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:95: for(uint16_t i=800;i!=0;i--)
	dec	r6
	cjne	r6,#0xff,00117$
	dec	r7
00117$:
	sjmp	00103$
00105$:
;	main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_i2c'
;------------------------------------------------------------
;	main.c:100: void restart_i2c()
;	-----------------------------------------
;	 function restart_i2c
;	-----------------------------------------
_restart_i2c:
;	main.c:102: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:103: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:104: delay();
	lcall	_delay
;	main.c:105: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;k                         Allocated with name '_i2c_write_k_65536_80'
;i                         Allocated with name '_i2c_write_i_131072_82'
;ack_check                 Allocated with name '_i2c_write_ack_check_65537_86'
;------------------------------------------------------------
;	main.c:108: int i2c_write(int k)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_write_k_65536_80
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:112: for(int i=0; i<8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	main.c:115: if(k & 128)
	mov	dptr,#_i2c_write_k_65536_80
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r4
	jnb	acc.7,00102$
;	main.c:117: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:118: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:119: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:120: clearSCL;
;	assignBit
	clr	_P1_4
	sjmp	00103$
00102$:
;	main.c:127: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:128: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:129: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:130: clearSCL;
;	assignBit
	clr	_P1_4
00103$:
;	main.c:138: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:139: k<<=1;
	mov	dptr,#_i2c_write_k_65536_80
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_i2c_write_k_65536_80
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:112: for(int i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	main.c:142: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:145: __endasm;
	nop
;	main.c:146: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:148: ack_check |=P1_5;
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
;	main.c:150: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:151: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:152: return ack_check;
	mov	dpl,r6
	mov	dph,r7
;	main.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_ack'
;------------------------------------------------------------
;	main.c:154: void i2c_ack()
;	-----------------------------------------
;	 function i2c_ack
;	-----------------------------------------
_i2c_ack:
;	main.c:156: clearSDA;
;	assignBit
	clr	_P1_5
;	main.c:157: delay();
	lcall	_delay
;	main.c:158: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:159: delay();
	lcall	_delay
;	main.c:160: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:161: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_nack'
;------------------------------------------------------------
;	main.c:163: void i2c_nack()
;	-----------------------------------------
;	 function i2c_nack
;	-----------------------------------------
_i2c_nack:
;	main.c:165: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:166: delay();
	lcall	_delay
;	main.c:167: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:168: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:169: delay();
;	main.c:170: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;reader                    Allocated with name '_i2c_read_reader_65536_89'
;i                         Allocated with name '_i2c_read_i_131072_90'
;------------------------------------------------------------
;	main.c:171: int i2c_read()
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	main.c:173: int reader=0;
	mov	dptr,#_i2c_read_reader_65536_89
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:174: setSDA;
;	assignBit
	setb	_P1_5
;	main.c:176: for (int i=0; i<8; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	main.c:178: reader<<=1;
	mov	dptr,#_i2c_read_reader_65536_89
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_i2c_read_reader_65536_89
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:179: setSCL;
;	assignBit
	setb	_P1_4
;	main.c:180: delay();
	push	ar7
	push	ar6
	lcall	_delay
;	main.c:181: reader |=P1_5;
	mov	dptr,#_i2c_read_reader_65536_89
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_i2c_read_reader_65536_89
	mov	a,r2
	orl	a,r4
	movx	@dptr,a
	mov	a,r3
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:182: clearSCL;
;	assignBit
	clr	_P1_4
;	main.c:183: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:176: for (int i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	main.c:189: return reader;
	mov	dptr,#_i2c_read_reader_65536_89
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:191: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'byte_write'
;------------------------------------------------------------
;byte_address              Allocated with name '_byte_write_PARM_2'
;writedata                 Allocated with name '_byte_write_PARM_3'
;controlcode               Allocated with name '_byte_write_controlcode_65536_92'
;t                         Allocated with name '_byte_write_t_65537_94'
;------------------------------------------------------------
;	main.c:192: void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
;	-----------------------------------------
;	 function byte_write
;	-----------------------------------------
_byte_write:
	mov	a,dpl
	mov	dptr,#_byte_write_controlcode_65536_92
	movx	@dptr,a
;	main.c:194: restart_i2c();
	lcall	_restart_i2c
;	main.c:195: i2c_write(controlcode);
	mov	dptr,#_byte_write_controlcode_65536_92
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
;	main.c:196: delay();
	lcall	_delay
;	main.c:197: i2c_write(byte_address);
	mov	dptr,#_byte_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
;	main.c:198: delay();
	lcall	_delay
;	main.c:199: i2c_write(writedata);
	mov	dptr,#_byte_write_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
;	main.c:200: delay();
	lcall	_delay
;	main.c:201: i2c_stop();
	lcall	_i2c_stop
;	main.c:202: long_delay();
	lcall	_long_delay
	pop	ar6
	pop	ar7
;	main.c:204: int t=1;
	mov	dptr,#_byte_write_t_65537_94
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:205: while(t) //ack polling
00101$:
	mov	dptr,#_byte_write_t_65537_94
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	main.c:208: restart_i2c();
	push	ar7
	push	ar6
	lcall	_restart_i2c
	pop	ar6
	pop	ar7
;	main.c:209: t=i2c_write(controlcode);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_byte_write_t_65537_94
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:210: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	main.c:212: i2c_stop();
;	main.c:213: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'random_read'
;------------------------------------------------------------
;byte_address              Allocated with name '_random_read_PARM_2'
;controlcode               Allocated with name '_random_read_controlcode_65536_96'
;s                         Allocated with name '_random_read_s_65537_98'
;------------------------------------------------------------
;	main.c:216: void random_read(uint8_t controlcode,uint8_t byte_address)
;	-----------------------------------------
;	 function random_read
;	-----------------------------------------
_random_read:
	mov	a,dpl
	mov	dptr,#_random_read_controlcode_65536_96
	movx	@dptr,a
;	main.c:218: restart_i2c();
	lcall	_restart_i2c
;	main.c:219: i2c_write(controlcode);delay();
	mov	dptr,#_random_read_controlcode_65536_96
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	_i2c_write
	lcall	_delay
;	main.c:220: i2c_write(byte_address);delay();
	mov	dptr,#_random_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
	lcall	_delay
;	main.c:221: restart_i2c();
	lcall	_restart_i2c
	pop	ar6
	pop	ar7
;	main.c:222: i2c_write((controlcode+1)); //change to read operation
	inc	r7
	cjne	r7,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r7
	mov	dph,r6
	lcall	_i2c_write
;	main.c:224: s=i2c_read();
	lcall	_i2c_read
	mov	r6,dpl
	mov	r7,dph
;	main.c:225: i2c_nack();
	push	ar7
	push	ar6
	lcall	_i2c_nack
	pop	ar6
	pop	ar7
;	main.c:226: putchar(s);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:227: i2c_stop();
	lcall	_i2c_stop
;	main.c:228: putchar('\n');
	mov	dptr,#0x000a
	lcall	_putchar
;	main.c:229: putchar('\r'); long_delay();
	mov	dptr,#0x000d
	lcall	_putchar
;	main.c:231: }
	ljmp	_long_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;s                         Allocated with name '_main_s_131073_102'
;------------------------------------------------------------
;	main.c:232: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:234: while(1)
00102$:
;	main.c:236: i2c_reset();
	lcall	_i2c_reset
;	main.c:237: byte_write(0xA0,0x01,'b');
	mov	dptr,#_byte_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_byte_write_PARM_3
	mov	a,#0x62
	movx	@dptr,a
	mov	dpl,#0xa0
	lcall	_byte_write
;	main.c:238: byte_write(0xA0,0x02,'c');
	mov	dptr,#_byte_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_byte_write_PARM_3
	mov	a,#0x63
	movx	@dptr,a
	mov	dpl,#0xa0
	lcall	_byte_write
;	main.c:239: restart_i2c();
	lcall	_restart_i2c
;	main.c:240: i2c_write(0xA0);delay();
	mov	dptr,#0x00a0
	lcall	_i2c_write
	lcall	_delay
;	main.c:241: i2c_write(0x01);delay();
	mov	dptr,#0x0001
	lcall	_i2c_write
	lcall	_delay
;	main.c:242: restart_i2c();
	lcall	_restart_i2c
;	main.c:243: i2c_write((0xA1)); //change to read operation
	mov	dptr,#0x00a1
	lcall	_i2c_write
;	main.c:245: s=i2c_read();
	lcall	_i2c_read
	mov	r6,dpl
	mov	r7,dph
;	main.c:246: i2c_ack();
	push	ar7
	push	ar6
	lcall	_i2c_ack
	pop	ar6
	pop	ar7
;	main.c:247: putchar(s);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:248: s=i2c_read();
	lcall	_i2c_read
	mov	r6,dpl
	mov	r7,dph
;	main.c:249: i2c_nack();
	push	ar7
	push	ar6
	lcall	_i2c_nack
	pop	ar6
	pop	ar7
;	main.c:250: putchar(s);
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:251: i2c_stop();
	lcall	_i2c_stop
;	main.c:263: }
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
