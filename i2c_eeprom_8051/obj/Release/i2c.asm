;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _delay
	.globl _i2c_reset
	.globl _i2c_start
	.globl _i2c_stop
	.globl _long_delay
	.globl _restart_i2c
	.globl _i2c_write
	.globl _i2c_ack
	.globl _i2c_nack
	.globl _i2c_read
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
_i2c_write_k_65536_72:
	.ds 2
_i2c_read_reader_65536_81:
	.ds 2
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;	i2c.c:3: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:10: __endasm;
	mov	a,#3
	    l1:
	dec	a
	cjne	a,#0,l1
;	i2c.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_reset'
;------------------------------------------------------------
;	i2c.c:12: void i2c_reset() //setting both lines to high to go into normal condition
;	-----------------------------------------
;	 function i2c_reset
;	-----------------------------------------
_i2c_reset:
;	i2c.c:14: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:15: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:17: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:18: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:19: delay();
;	i2c.c:20: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:21: void i2c_start()
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c.c:23: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:24: delay();
	lcall	_delay
;	i2c.c:25: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:26: delay();
;	i2c.c:28: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:29: void i2c_stop()
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:31: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:32: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:33: delay();
	lcall	_delay
;	i2c.c:34: setSDA; //low to high transition of sda marks stop
;	assignBit
	setb	_P1_5
;	i2c.c:35: delay();
;	i2c.c:37: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'long_delay'
;------------------------------------------------------------
;i                         Allocated with name '_long_delay_i_131072_69'
;------------------------------------------------------------
;	i2c.c:38: void long_delay()
;	-----------------------------------------
;	 function long_delay
;	-----------------------------------------
_long_delay:
;	i2c.c:40: for(uint16_t i=800;i!=0;i--)
	mov	r6,#0x20
	mov	r7,#0x03
00103$:
	mov	a,r6
	orl	a,r7
	jz	00105$
;	i2c.c:42: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:40: for(uint16_t i=800;i!=0;i--)
	dec	r6
	cjne	r6,#0xff,00117$
	dec	r7
00117$:
	sjmp	00103$
00105$:
;	i2c.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_i2c'
;------------------------------------------------------------
;	i2c.c:45: void restart_i2c()
;	-----------------------------------------
;	 function restart_i2c
;	-----------------------------------------
_restart_i2c:
;	i2c.c:47: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:48: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:49: delay();
	lcall	_delay
;	i2c.c:50: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;k                         Allocated with name '_i2c_write_k_65536_72'
;i                         Allocated with name '_i2c_write_i_131072_74'
;ack_check                 Allocated with name '_i2c_write_ack_check_65537_78'
;------------------------------------------------------------
;	i2c.c:53: int i2c_write(int k)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_write_k_65536_72
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	i2c.c:57: for(int i=0; i<8; i++)
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
;	i2c.c:60: if(k & 128)
	mov	dptr,#_i2c_write_k_65536_72
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	a,r4
	jnb	acc.7,00102$
;	i2c.c:62: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:63: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:64: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:65: clearSCL;
;	assignBit
	clr	_P1_4
	sjmp	00103$
00102$:
;	i2c.c:72: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:73: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:74: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:75: clearSCL;
;	assignBit
	clr	_P1_4
00103$:
;	i2c.c:83: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:84: k<<=1;
	mov	dptr,#_i2c_write_k_65536_72
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
	mov	dptr,#_i2c_write_k_65536_72
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	i2c.c:57: for(int i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	i2c.c:87: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:90: __endasm;
	nop
;	i2c.c:91: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:93: ack_check |=P1_5;
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
;	i2c.c:95: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:96: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:97: return ack_check;
	mov	dpl,r6
	mov	dph,r7
;	i2c.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_ack'
;------------------------------------------------------------
;	i2c.c:99: void i2c_ack()
;	-----------------------------------------
;	 function i2c_ack
;	-----------------------------------------
_i2c_ack:
;	i2c.c:101: clearSDA;
;	assignBit
	clr	_P1_5
;	i2c.c:102: delay();
	lcall	_delay
;	i2c.c:103: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:104: delay();
	lcall	_delay
;	i2c.c:105: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:106: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_nack'
;------------------------------------------------------------
;	i2c.c:108: void i2c_nack()
;	-----------------------------------------
;	 function i2c_nack
;	-----------------------------------------
_i2c_nack:
;	i2c.c:110: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:111: delay();
	lcall	_delay
;	i2c.c:112: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:113: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:114: delay();
;	i2c.c:115: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;reader                    Allocated with name '_i2c_read_reader_65536_81'
;i                         Allocated with name '_i2c_read_i_131072_82'
;------------------------------------------------------------
;	i2c.c:116: int i2c_read()
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	i2c.c:118: int reader=0;
	mov	dptr,#_i2c_read_reader_65536_81
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	i2c.c:119: setSDA;
;	assignBit
	setb	_P1_5
;	i2c.c:121: for (int i=0; i<8; i++)
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
;	i2c.c:123: reader<<=1;
	mov	dptr,#_i2c_read_reader_65536_81
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
	mov	dptr,#_i2c_read_reader_65536_81
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	i2c.c:124: setSCL;
;	assignBit
	setb	_P1_4
;	i2c.c:125: delay();
	push	ar7
	push	ar6
	lcall	_delay
;	i2c.c:126: reader |=P1_5;
	mov	dptr,#_i2c_read_reader_65536_81
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
	mov	dptr,#_i2c_read_reader_65536_81
	mov	a,r2
	orl	a,r4
	movx	@dptr,a
	mov	a,r3
	orl	a,r5
	inc	dptr
	movx	@dptr,a
;	i2c.c:127: clearSCL;
;	assignBit
	clr	_P1_4
;	i2c.c:128: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c.c:121: for (int i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	i2c.c:134: return reader;
	mov	dptr,#_i2c_read_reader_65536_81
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	i2c.c:136: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
