;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtohex
	.globl _i2c_read
	.globl _i2c_nack
	.globl _i2c_ack
	.globl _i2c_write
	.globl _restart_i2c
	.globl _long_delay
	.globl _i2c_stop
	.globl _delay
	.globl _gets
	.globl _printf
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
	.globl _byte_write
	.globl _random_read
	.globl _seq_read
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
_byte_write_PARM_2:
	.ds 1
_byte_write_PARM_3:
	.ds 1
_byte_write_controlcode_65536_89:
	.ds 1
_byte_write_t_65537_91:
	.ds 2
_random_read_PARM_2:
	.ds 1
_random_read_controlcode_65536_93:
	.ds 1
_seq_read_controlcode_65536_96:
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
;Allocation info for local variables in function 'byte_write'
;------------------------------------------------------------
;byte_address              Allocated with name '_byte_write_PARM_2'
;writedata                 Allocated with name '_byte_write_PARM_3'
;controlcode               Allocated with name '_byte_write_controlcode_65536_89'
;t                         Allocated with name '_byte_write_t_65537_91'
;------------------------------------------------------------
;	eeprom.c:4: void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
;	-----------------------------------------
;	 function byte_write
;	-----------------------------------------
_byte_write:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_byte_write_controlcode_65536_89
	movx	@dptr,a
;	eeprom.c:6: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:7: i2c_write(controlcode);
	mov	dptr,#_byte_write_controlcode_65536_89
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
;	eeprom.c:8: delay();
	lcall	_delay
;	eeprom.c:9: i2c_write(byte_address);
	mov	dptr,#_byte_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
;	eeprom.c:10: delay();
	lcall	_delay
;	eeprom.c:11: i2c_write(writedata);
	mov	dptr,#_byte_write_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
;	eeprom.c:12: delay();
	lcall	_delay
;	eeprom.c:13: i2c_stop();
	lcall	_i2c_stop
;	eeprom.c:14: long_delay();
	lcall	_long_delay
	pop	ar6
	pop	ar7
;	eeprom.c:16: int t=1;
	mov	dptr,#_byte_write_t_65537_91
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	eeprom.c:17: while(t) //ack polling
00101$:
	mov	dptr,#_byte_write_t_65537_91
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	eeprom.c:20: restart_i2c();
	push	ar7
	push	ar6
	lcall	_restart_i2c
	pop	ar6
	pop	ar7
;	eeprom.c:21: t=i2c_write(controlcode);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_i2c_write
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_byte_write_t_65537_91
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	eeprom.c:22: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	eeprom.c:25: i2c_stop();
;	eeprom.c:26: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'random_read'
;------------------------------------------------------------
;byte_address              Allocated with name '_random_read_PARM_2'
;controlcode               Allocated with name '_random_read_controlcode_65536_93'
;s                         Allocated with name '_random_read_s_65537_95'
;------------------------------------------------------------
;	eeprom.c:29: int random_read(uint8_t controlcode,uint8_t byte_address)
;	-----------------------------------------
;	 function random_read
;	-----------------------------------------
_random_read:
	mov	a,dpl
	mov	dptr,#_random_read_controlcode_65536_93
	movx	@dptr,a
;	eeprom.c:31: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:32: i2c_write(controlcode);
	mov	dptr,#_random_read_controlcode_65536_93
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	_i2c_write
;	eeprom.c:33: delay();
	lcall	_delay
;	eeprom.c:34: i2c_write(byte_address);
	mov	dptr,#_random_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_i2c_write
;	eeprom.c:35: delay();
	lcall	_delay
;	eeprom.c:36: restart_i2c();
	lcall	_restart_i2c
	pop	ar6
	pop	ar7
;	eeprom.c:37: i2c_write((controlcode+1)); //change to read operation
	inc	r7
	cjne	r7,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r7
	mov	dph,r6
	lcall	_i2c_write
;	eeprom.c:39: s=i2c_read();
	lcall	_i2c_read
	mov	r6,dpl
	mov	r7,dph
;	eeprom.c:40: i2c_nack();
	push	ar7
	push	ar6
	lcall	_i2c_nack
;	eeprom.c:42: i2c_stop();
	lcall	_i2c_stop
;	eeprom.c:45: long_delay();
	lcall	_long_delay
	pop	ar6
	pop	ar7
;	eeprom.c:46: return s;
	mov	dpl,r6
	mov	dph,r7
;	eeprom.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seq_read'
;------------------------------------------------------------
;controlcode               Allocated with name '_seq_read_controlcode_65536_96'
;addressreceiver1          Allocated with name '_seq_read_addressreceiver1_65536_97'
;address1                  Allocated with name '_seq_read_address1_65537_98'
;address2                  Allocated with name '_seq_read_address2_65538_99'
;s                         Allocated with name '_seq_read_s_65539_100'
;k                         Allocated with name '_seq_read_k_65539_100'
;t                         Allocated with name '_seq_read_t_65540_101'
;------------------------------------------------------------
;	eeprom.c:49: void seq_read(uint8_t controlcode)
;	-----------------------------------------
;	 function seq_read
;	-----------------------------------------
_seq_read:
	mov	a,dpl
	mov	dptr,#_seq_read_controlcode_65536_96
	movx	@dptr,a
;	eeprom.c:53: printf("Enter first address\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:54: gets(addressreceiver1);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_gets
;	eeprom.c:55: uint16_t address1=strtohex(addressreceiver1);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_strtohex
	mov	r6,dpl
	mov	r7,dph
;	eeprom.c:56: printf("%address 1d\n\r",address1);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:57: printf("Enter second address\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:58: gets(addressreceiver1);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_gets
;	eeprom.c:59: uint16_t address2=strtohex(addressreceiver1);
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_strtohex
	mov	r4,dpl
	mov	r5,dph
;	eeprom.c:60: printf("%address 1d\n\r",address2);
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:61: printf("%d %d\n\r",address1,address2);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:62: printf("Starter: %d Ender %d\n\r",address1,address2);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:63: printf("difference is %d\n\r",address2-address1);
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r5
	subb	a,r7
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:67: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:68: i2c_write(0xFF);
	mov	dptr,#0x00ff
	lcall	_i2c_write
;	eeprom.c:69: i2c_nack();
	lcall	_i2c_nack
;	eeprom.c:70: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:71: i2c_stop();
	lcall	_i2c_stop
;	eeprom.c:72: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:73: i2c_write(controlcode);
	mov	dptr,#_seq_read_controlcode_65536_96
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	push	ar3
	push	ar2
	lcall	_i2c_write
;	eeprom.c:74: delay();
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:75: i2c_write(address1);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_write
;	eeprom.c:76: delay();
	lcall	_delay
;	eeprom.c:77: restart_i2c();
	lcall	_restart_i2c
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:80: i2c_write((controlcode+1));//change to read operation
	inc	r3
	cjne	r3,#0x00,00127$
	inc	r2
00127$:
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:87: while(t<(address2))
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jc	00128$
	ljmp	00105$
00128$:
;	eeprom.c:89: if(k%16==0)
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00102$
;	eeprom.c:91: printf("\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:92: printf("%3X:",t);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	eeprom.c:94: s=i2c_read();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read
	mov	r0,dpl
	mov	r1,dph
;	eeprom.c:95: i2c_ack();
	push	ar1
	push	ar0
	lcall	_i2c_ack
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:96: k++;
	inc	r2
	cjne	r2,#0x00,00130$
	inc	r3
00130$:
;	eeprom.c:97: printf(" %X ",s);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:98: t++;
	inc	r6
	cjne	r6,#0x00,00131$
	inc	r7
00131$:
	ljmp	00103$
00105$:
;	eeprom.c:101: s=i2c_read();
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_i2c_read
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
;	eeprom.c:102: i2c_nack();
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_nack
;	eeprom.c:103: i2c_stop();
	lcall	_i2c_stop
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:104: k++;
	inc	r2
	cjne	r2,#0x00,00132$
	inc	r3
00132$:
;	eeprom.c:105: if(k%16==0)
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00107$
;	eeprom.c:107: printf("\n\r");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:108: printf("%X:",t);
	push	ar5
	push	ar4
	push	ar6
	push	ar7
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
	pop	ar4
	pop	ar5
00107$:
;	eeprom.c:110: printf(" %X ",s);
	push	ar4
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	eeprom.c:111: printf(newl);
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	eeprom.c:112: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:113: i2c_write(0xFF);
	mov	dptr,#0x00ff
	lcall	_i2c_write
;	eeprom.c:114: i2c_nack();
	lcall	_i2c_nack
;	eeprom.c:115: restart_i2c();
	lcall	_restart_i2c
;	eeprom.c:116: i2c_stop();
;	eeprom.c:119: }
	ljmp	_i2c_stop
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Enter first address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%address 1d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Enter second address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "%d %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Starter: %d Ender %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "difference is %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "%3X:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii " %X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "%X:"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
