;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module converter
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf
	.globl _toupper
	.globl _strlen
	.globl _strtohex
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_strtohex_l_65536_57:
	.ds 3
_strtohex_f_65536_58:
	.ds 4
_strtohex_i_65537_60:
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
;Allocation info for local variables in function 'strtohex'
;------------------------------------------------------------
;l                         Allocated with name '_strtohex_l_65536_57'
;length                    Allocated with name '_strtohex_length_65536_58'
;f                         Allocated with name '_strtohex_f_65536_58'
;i                         Allocated with name '_strtohex_i_65537_60'
;k                         Allocated with name '_strtohex_k_131073_61'
;------------------------------------------------------------
;	converter.c:2: uint16_t strtohex(char *l)
;	-----------------------------------------
;	 function strtohex
;	-----------------------------------------
_strtohex:
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
	mov	dptr,#_strtohex_l_65536_57
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	converter.c:6: int length=strlen(l);
	mov	dptr,#_strtohex_l_65536_57
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
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
;	converter.c:9: switch(length){
	cjne	r6,#0x01,00435$
	cjne	r7,#0x00,00435$
	sjmp	00101$
00435$:
	cjne	r6,#0x02,00436$
	cjne	r7,#0x00,00436$
	sjmp	00102$
00436$:
	cjne	r6,#0x03,00437$
	cjne	r7,#0x00,00437$
	sjmp	00103$
00437$:
	ljmp	00104$
;	converter.c:10: case 1:
00101$:
;	converter.c:13: f[0]='0';f[1]='0';f[2]=l[0];
	mov	dptr,#_strtohex_f_65536_58
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_strtohex_l_65536_57
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
	movx	@dptr,a
;	converter.c:14: break;
	ljmp	00104$
;	converter.c:15: case 2:
00102$:
;	converter.c:16: printf("Two digits detected");f[0]='0';f[1]=l[0];f[2]=l[1];break;
	push	ar7
	push	ar6
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
	pop	ar6
	pop	ar7
	mov	dptr,#_strtohex_f_65536_58
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#_strtohex_l_65536_57
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
	movx	@dptr,a
	inc	r3
	cjne	r3,#0x00,00438$
	inc	r4
00438$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
	movx	@dptr,a
;	converter.c:17: case 3:
	sjmp	00104$
00103$:
;	converter.c:18: f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
	mov	dptr,#_strtohex_l_65536_57
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dptr,#_strtohex_f_65536_58
	movx	@dptr,a
	mov	a,#0x01
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
	movx	@dptr,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
	movx	@dptr,a
;	converter.c:19: }
00104$:
;	converter.c:21: uint16_t i=0;
	mov	dptr,#_strtohex_i_65537_60
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	converter.c:23: for(int k=0; k<3; k++)
	mov	r4,#0x00
	mov	r5,#0x00
00218$:
	clr	c
	mov	a,r4
	subb	a,#0x03
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00439$
	ljmp	00213$
00439$:
;	converter.c:26: switch(toupper(f[k]))
	mov	a,r4
	add	a,#_strtohex_f_65536_58
	mov	dpl,a
	mov	a,r5
	addc	a,#(_strtohex_f_65536_58 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_toupper
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r2
	subb	a,#0x30
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00440$
	ljmp	00219$
00440$:
	clr	c
	mov	a,#0x46
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00441$
	ljmp	00219$
00441$:
	mov	a,r2
	add	a,#0xd0
	mov	r2,a
	add	a,#(00442$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r2
	add	a,#(00443$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00442$:
	.db	00105$
	.db	00106$
	.db	00113$
	.db	00120$
	.db	00127$
	.db	00134$
	.db	00141$
	.db	00148$
	.db	00155$
	.db	00162$
	.db	00219$
	.db	00219$
	.db	00219$
	.db	00219$
	.db	00219$
	.db	00219$
	.db	00219$
	.db	00169$
	.db	00176$
	.db	00183$
	.db	00190$
	.db	00197$
	.db	00204$
00443$:
	.db	00105$>>8
	.db	00106$>>8
	.db	00113$>>8
	.db	00120$>>8
	.db	00127$>>8
	.db	00134$>>8
	.db	00141$>>8
	.db	00148$>>8
	.db	00155$>>8
	.db	00162$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00219$>>8
	.db	00169$>>8
	.db	00176$>>8
	.db	00183$>>8
	.db	00190$>>8
	.db	00197$>>8
	.db	00204$>>8
;	converter.c:29: case '0':
00105$:
;	converter.c:30: i+=0;
;	converter.c:31: break;
	ljmp	00219$
;	converter.c:32: case '1'://1
00106$:
;	converter.c:33: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00108$
;	converter.c:34: i+=0x100;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x01
	add	a,r3
	inc	dptr
	movx	@dptr,a
00108$:
;	converter.c:35: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00110$
	cjne	r5,#0x00,00110$
;	converter.c:36: i+=0x010;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x10
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00110$:
;	converter.c:37: if(k==2)
	cjne	r2,#0x02,00447$
	cjne	r3,#0x00,00447$
	sjmp	00448$
00447$:
	ljmp	00219$
00448$:
;	converter.c:38: i+=0x001;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:39: break;
	ljmp	00219$
;	converter.c:40: case 50://2
00113$:
;	converter.c:41: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00115$
;	converter.c:42: i+=0x200;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x02
	add	a,r3
	inc	dptr
	movx	@dptr,a
00115$:
;	converter.c:43: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00117$
	cjne	r5,#0x00,00117$
;	converter.c:44: i+=0x020;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x20
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00117$:
;	converter.c:45: if(k==2)
	cjne	r2,#0x02,00452$
	cjne	r3,#0x00,00452$
	sjmp	00453$
00452$:
	ljmp	00219$
00453$:
;	converter.c:46: i+=0x002;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x02
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:47: break;
	ljmp	00219$
;	converter.c:48: case 51://3
00120$:
;	converter.c:49: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00122$
;	converter.c:50: i+=0x300;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x03
	add	a,r3
	inc	dptr
	movx	@dptr,a
00122$:
;	converter.c:51: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00124$
	cjne	r5,#0x00,00124$
;	converter.c:52: i+=0x030;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x30
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00124$:
;	converter.c:53: if(k==2)
	cjne	r2,#0x02,00457$
	cjne	r3,#0x00,00457$
	sjmp	00458$
00457$:
	ljmp	00219$
00458$:
;	converter.c:54: i+=0x003;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x03
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:55: break;
	ljmp	00219$
;	converter.c:56: case 52://4
00127$:
;	converter.c:57: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00129$
;	converter.c:58: i+=0x400;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x04
	add	a,r3
	inc	dptr
	movx	@dptr,a
00129$:
;	converter.c:59: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00131$
	cjne	r5,#0x00,00131$
;	converter.c:60: i+=0x040;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x40
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00131$:
;	converter.c:61: if(k==2)
	cjne	r2,#0x02,00462$
	cjne	r3,#0x00,00462$
	sjmp	00463$
00462$:
	ljmp	00219$
00463$:
;	converter.c:62: i+=0x004;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:63: break;
	ljmp	00219$
;	converter.c:64: case 53://5
00134$:
;	converter.c:65: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00136$
;	converter.c:66: i+=0x500;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x05
	add	a,r3
	inc	dptr
	movx	@dptr,a
00136$:
;	converter.c:67: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00138$
	cjne	r5,#0x00,00138$
;	converter.c:68: i+=0x050;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x50
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00138$:
;	converter.c:69: if(k==2)
	cjne	r2,#0x02,00467$
	cjne	r3,#0x00,00467$
	sjmp	00468$
00467$:
	ljmp	00219$
00468$:
;	converter.c:70: i+=0x005;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x05
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:71: break;
	ljmp	00219$
;	converter.c:72: case 54://6
00141$:
;	converter.c:73: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00143$
;	converter.c:74: i+=0x600;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x06
	add	a,r3
	inc	dptr
	movx	@dptr,a
00143$:
;	converter.c:75: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00145$
	cjne	r5,#0x00,00145$
;	converter.c:76: i+=0x060;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x60
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00145$:
;	converter.c:77: if(k==2)
	cjne	r2,#0x02,00472$
	cjne	r3,#0x00,00472$
	sjmp	00473$
00472$:
	ljmp	00219$
00473$:
;	converter.c:78: i+=0x006;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x06
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:79: break;
	ljmp	00219$
;	converter.c:80: case 55://7
00148$:
;	converter.c:81: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00150$
;	converter.c:82: i+=0x700;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x07
	add	a,r3
	inc	dptr
	movx	@dptr,a
00150$:
;	converter.c:83: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00152$
	cjne	r5,#0x00,00152$
;	converter.c:84: i+=0x070;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x70
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00152$:
;	converter.c:85: if(k==2)
	cjne	r2,#0x02,00477$
	cjne	r3,#0x00,00477$
	sjmp	00478$
00477$:
	ljmp	00219$
00478$:
;	converter.c:86: i+=0x007;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x07
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:87: break;
	ljmp	00219$
;	converter.c:88: case 56://8
00155$:
;	converter.c:89: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00157$
;	converter.c:90: i+=0x800;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x08
	add	a,r3
	inc	dptr
	movx	@dptr,a
00157$:
;	converter.c:91: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00159$
	cjne	r5,#0x00,00159$
;	converter.c:92: i+=0x080;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x80
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00159$:
;	converter.c:93: if(k==2)
	cjne	r2,#0x02,00482$
	cjne	r3,#0x00,00482$
	sjmp	00483$
00482$:
	ljmp	00219$
00483$:
;	converter.c:94: i+=0x008;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x08
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:95: break;
	ljmp	00219$
;	converter.c:96: case 57://9
00162$:
;	converter.c:97: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00164$
;	converter.c:98: i+=0x900;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x09
	add	a,r3
	inc	dptr
	movx	@dptr,a
00164$:
;	converter.c:99: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00166$
	cjne	r5,#0x00,00166$
;	converter.c:100: i+=0x090;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x90
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00166$:
;	converter.c:101: if(k==2)
	cjne	r2,#0x02,00487$
	cjne	r3,#0x00,00487$
	sjmp	00488$
00487$:
	ljmp	00219$
00488$:
;	converter.c:102: i+=0x009;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x09
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:103: break;
	ljmp	00219$
;	converter.c:104: case 65://A
00169$:
;	converter.c:105: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00171$
;	converter.c:106: i+=0xA00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0a
	add	a,r3
	inc	dptr
	movx	@dptr,a
00171$:
;	converter.c:107: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00173$
	cjne	r5,#0x00,00173$
;	converter.c:108: i+=0x0A0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xa0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00173$:
;	converter.c:109: if(k==2)
	cjne	r2,#0x02,00492$
	cjne	r3,#0x00,00492$
	sjmp	00493$
00492$:
	ljmp	00219$
00493$:
;	converter.c:110: i+=0x00A;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0a
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:111: break;
	ljmp	00219$
;	converter.c:112: case 66://B
00176$:
;	converter.c:113: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00178$
;	converter.c:114: i+=0xB00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0b
	add	a,r3
	inc	dptr
	movx	@dptr,a
00178$:
;	converter.c:115: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00180$
	cjne	r5,#0x00,00180$
;	converter.c:116: i+=0x0B0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xb0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00180$:
;	converter.c:117: if(k==2)
	cjne	r2,#0x02,00497$
	cjne	r3,#0x00,00497$
	sjmp	00498$
00497$:
	ljmp	00219$
00498$:
;	converter.c:118: i+=0x00B;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0b
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:119: break;
	ljmp	00219$
;	converter.c:120: case 67://C
00183$:
;	converter.c:121: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00185$
;	converter.c:122: i+=0xC00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0c
	add	a,r3
	inc	dptr
	movx	@dptr,a
00185$:
;	converter.c:123: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00187$
	cjne	r5,#0x00,00187$
;	converter.c:124: i+=0x0C0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xc0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00187$:
;	converter.c:125: if(k==2)
	cjne	r2,#0x02,00502$
	cjne	r3,#0x00,00502$
	sjmp	00503$
00502$:
	ljmp	00219$
00503$:
;	converter.c:126: i+=0x00C;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0c
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:127: break;
	ljmp	00219$
;	converter.c:128: case 68://D
00190$:
;	converter.c:129: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00192$
;	converter.c:130: i+=0xD00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0d
	add	a,r3
	inc	dptr
	movx	@dptr,a
00192$:
;	converter.c:131: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00194$
	cjne	r5,#0x00,00194$
;	converter.c:132: i+=0x0D0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xd0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00194$:
;	converter.c:133: if(k==2)
	cjne	r2,#0x02,00507$
	cjne	r3,#0x00,00507$
	sjmp	00508$
00507$:
	ljmp	00219$
00508$:
;	converter.c:134: i+=0x00D;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0d
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:135: break;
	ljmp	00219$
;	converter.c:136: case 69://E
00197$:
;	converter.c:137: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00199$
;	converter.c:138: i+=0xE00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0e
	add	a,r3
	inc	dptr
	movx	@dptr,a
00199$:
;	converter.c:139: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00201$
	cjne	r5,#0x00,00201$
;	converter.c:140: i+=0x0E0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xe0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00201$:
;	converter.c:141: if(k==2)
	cjne	r2,#0x02,00219$
	cjne	r3,#0x00,00219$
;	converter.c:142: i+=0x00E;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0e
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:143: break;
;	converter.c:144: case 70://F
	sjmp	00219$
00204$:
;	converter.c:145: if(k==0)
	mov	a,r4
	orl	a,r5
	jnz	00206$
;	converter.c:146: i+=0xF00;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x0f
	add	a,r3
	inc	dptr
	movx	@dptr,a
00206$:
;	converter.c:147: if(k==1)
	mov	ar2,r4
	mov	ar3,r5
	cjne	r4,#0x01,00208$
	cjne	r5,#0x00,00208$
;	converter.c:148: i+=0x0F0;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0xf0
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
00208$:
;	converter.c:149: if(k==2)
	cjne	r2,#0x02,00219$
	cjne	r3,#0x00,00219$
;	converter.c:150: i+=0x00F;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_60
	mov	a,#0x0f
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
;	converter.c:159: }
00219$:
;	converter.c:23: for(int k=0; k<3; k++)
	inc	r4
	cjne	r4,#0x00,00519$
	inc	r5
00519$:
	ljmp	00218$
00213$:
;	converter.c:161: if(length<3)
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00215$
;	converter.c:162: return (uint8_t)i;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	ret
00215$:
;	converter.c:164: return i;
	mov	dptr,#_strtohex_i_65537_60
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	converter.c:165: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Two digits detected"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
