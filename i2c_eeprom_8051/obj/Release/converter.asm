;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module converter
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
_strtohex_l_65536_43:
	.ds 3
_strtohex_f_65536_44:
	.ds 4
_strtohex_i_65537_46:
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
;l                         Allocated with name '_strtohex_l_65536_43'
;length                    Allocated with name '_strtohex_length_65536_44'
;f                         Allocated with name '_strtohex_f_65536_44'
;i                         Allocated with name '_strtohex_i_65537_46'
;k                         Allocated with name '_strtohex_k_131073_47'
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
	mov	dptr,#_strtohex_l_65536_43
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	converter.c:6: int length=strlen(l);
	mov	dptr,#_strtohex_l_65536_43
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
	cjne	r6,#0x01,00426$
	cjne	r7,#0x00,00426$
	sjmp	00101$
00426$:
	cjne	r6,#0x02,00427$
	cjne	r7,#0x00,00427$
	sjmp	00102$
00427$:
	cjne	r6,#0x03,00428$
	cjne	r7,#0x00,00428$
	sjmp	00103$
00428$:
	ljmp	00104$
;	converter.c:10: case 1:
00101$:
;	converter.c:13: f[0]='0';f[1]='0';f[2]=l[0];
	mov	dptr,#_strtohex_f_65536_44
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_strtohex_l_65536_43
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
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
	movx	@dptr,a
;	converter.c:14: break;
;	converter.c:15: case 2:
	sjmp	00104$
00102$:
;	converter.c:16: f[0]='0';f[1]=l[0];f[2]=l[1];break;
	mov	dptr,#_strtohex_f_65536_44
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#_strtohex_l_65536_43
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
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x00,00429$
	inc	r6
00429$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
	movx	@dptr,a
;	converter.c:17: case 3:
	sjmp	00104$
00103$:
;	converter.c:18: f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
	mov	dptr,#_strtohex_l_65536_43
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
	lcall	__gptrget
	mov	dptr,#_strtohex_f_65536_44
	movx	@dptr,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
	movx	@dptr,a
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
	movx	@dptr,a
;	converter.c:19: }
00104$:
;	converter.c:21: uint16_t i=0;
	mov	dptr,#_strtohex_i_65537_46
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	converter.c:23: for(int k=0; k<3; k++)
	mov	r6,#0x00
	mov	r7,#0x00
00213$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00430$
	ljmp	00211$
00430$:
;	converter.c:26: switch(toupper(f[k]))
	mov	a,r6
	add	a,#_strtohex_f_65536_44
	mov	dpl,a
	mov	a,r7
	addc	a,#(_strtohex_f_65536_44 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	_toupper
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r4
	subb	a,#0x31
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00431$
	ljmp	00214$
00431$:
	clr	c
	mov	a,#0x46
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00432$
	ljmp	00214$
00432$:
	mov	a,r4
	add	a,#0xcf
	mov	r4,a
	add	a,#(00433$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(00434$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00433$:
	.db	00105$
	.db	00112$
	.db	00119$
	.db	00126$
	.db	00133$
	.db	00140$
	.db	00147$
	.db	00154$
	.db	00161$
	.db	00214$
	.db	00214$
	.db	00214$
	.db	00214$
	.db	00214$
	.db	00214$
	.db	00214$
	.db	00168$
	.db	00175$
	.db	00182$
	.db	00189$
	.db	00196$
	.db	00203$
00434$:
	.db	00105$>>8
	.db	00112$>>8
	.db	00119$>>8
	.db	00126$>>8
	.db	00133$>>8
	.db	00140$>>8
	.db	00147$>>8
	.db	00154$>>8
	.db	00161$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00214$>>8
	.db	00168$>>8
	.db	00175$>>8
	.db	00182$>>8
	.db	00189$>>8
	.db	00196$>>8
	.db	00203$>>8
;	converter.c:29: case '1'://1
00105$:
;	converter.c:30: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	converter.c:31: i+=0x100;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x01
	add	a,r5
	inc	dptr
	movx	@dptr,a
00107$:
;	converter.c:32: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00109$
	cjne	r7,#0x00,00109$
;	converter.c:33: i+=0x010;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x10
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00109$:
;	converter.c:34: if(k==2)
	cjne	r4,#0x02,00438$
	cjne	r5,#0x00,00438$
	sjmp	00439$
00438$:
	ljmp	00214$
00439$:
;	converter.c:35: i+=0x001;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:36: break;
	ljmp	00214$
;	converter.c:37: case 50://2
00112$:
;	converter.c:38: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00114$
;	converter.c:39: i+=0x200;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x02
	add	a,r5
	inc	dptr
	movx	@dptr,a
00114$:
;	converter.c:40: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00116$
	cjne	r7,#0x00,00116$
;	converter.c:41: i+=0x020;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x20
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00116$:
;	converter.c:42: if(k==2)
	cjne	r4,#0x02,00443$
	cjne	r5,#0x00,00443$
	sjmp	00444$
00443$:
	ljmp	00214$
00444$:
;	converter.c:43: i+=0x002;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x02
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:44: break;
	ljmp	00214$
;	converter.c:45: case 51://3
00119$:
;	converter.c:46: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00121$
;	converter.c:47: i+=0x300;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x03
	add	a,r5
	inc	dptr
	movx	@dptr,a
00121$:
;	converter.c:48: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00123$
	cjne	r7,#0x00,00123$
;	converter.c:49: i+=0x030;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x30
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00123$:
;	converter.c:50: if(k==2)
	cjne	r4,#0x02,00448$
	cjne	r5,#0x00,00448$
	sjmp	00449$
00448$:
	ljmp	00214$
00449$:
;	converter.c:51: i+=0x003;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x03
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:52: break;
	ljmp	00214$
;	converter.c:53: case 52://4
00126$:
;	converter.c:54: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00128$
;	converter.c:55: i+=0x400;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x04
	add	a,r5
	inc	dptr
	movx	@dptr,a
00128$:
;	converter.c:56: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00130$
	cjne	r7,#0x00,00130$
;	converter.c:57: i+=0x040;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x40
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00130$:
;	converter.c:58: if(k==2)
	cjne	r4,#0x02,00453$
	cjne	r5,#0x00,00453$
	sjmp	00454$
00453$:
	ljmp	00214$
00454$:
;	converter.c:59: i+=0x004;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x04
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:60: break;
	ljmp	00214$
;	converter.c:61: case 53://5
00133$:
;	converter.c:62: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00135$
;	converter.c:63: i+=0x500;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x05
	add	a,r5
	inc	dptr
	movx	@dptr,a
00135$:
;	converter.c:64: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00137$
	cjne	r7,#0x00,00137$
;	converter.c:65: i+=0x050;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x50
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00137$:
;	converter.c:66: if(k==2)
	cjne	r4,#0x02,00458$
	cjne	r5,#0x00,00458$
	sjmp	00459$
00458$:
	ljmp	00214$
00459$:
;	converter.c:67: i+=0x005;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x05
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:68: break;
	ljmp	00214$
;	converter.c:69: case 54://6
00140$:
;	converter.c:70: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00142$
;	converter.c:71: i+=0x600;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x06
	add	a,r5
	inc	dptr
	movx	@dptr,a
00142$:
;	converter.c:72: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00144$
	cjne	r7,#0x00,00144$
;	converter.c:73: i+=0x060;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x60
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00144$:
;	converter.c:74: if(k==2)
	cjne	r4,#0x02,00463$
	cjne	r5,#0x00,00463$
	sjmp	00464$
00463$:
	ljmp	00214$
00464$:
;	converter.c:75: i+=0x006;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x06
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:76: break;
	ljmp	00214$
;	converter.c:77: case 55://7
00147$:
;	converter.c:78: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00149$
;	converter.c:79: i+=0x700;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x07
	add	a,r5
	inc	dptr
	movx	@dptr,a
00149$:
;	converter.c:80: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00151$
	cjne	r7,#0x00,00151$
;	converter.c:81: i+=0x070;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x70
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00151$:
;	converter.c:82: if(k==2)
	cjne	r4,#0x02,00468$
	cjne	r5,#0x00,00468$
	sjmp	00469$
00468$:
	ljmp	00214$
00469$:
;	converter.c:83: i+=0x007;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x07
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:84: break;
	ljmp	00214$
;	converter.c:85: case 56://8
00154$:
;	converter.c:86: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00156$
;	converter.c:87: i+=0x800;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x08
	add	a,r5
	inc	dptr
	movx	@dptr,a
00156$:
;	converter.c:88: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00158$
	cjne	r7,#0x00,00158$
;	converter.c:89: i+=0x080;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x80
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00158$:
;	converter.c:90: if(k==2)
	cjne	r4,#0x02,00473$
	cjne	r5,#0x00,00473$
	sjmp	00474$
00473$:
	ljmp	00214$
00474$:
;	converter.c:91: i+=0x008;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x08
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:92: break;
	ljmp	00214$
;	converter.c:93: case 57://9
00161$:
;	converter.c:94: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00163$
;	converter.c:95: i+=0x900;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x09
	add	a,r5
	inc	dptr
	movx	@dptr,a
00163$:
;	converter.c:96: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00165$
	cjne	r7,#0x00,00165$
;	converter.c:97: i+=0x090;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x90
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00165$:
;	converter.c:98: if(k==2)
	cjne	r4,#0x02,00478$
	cjne	r5,#0x00,00478$
	sjmp	00479$
00478$:
	ljmp	00214$
00479$:
;	converter.c:99: i+=0x009;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x09
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:100: break;
	ljmp	00214$
;	converter.c:101: case 65://A
00168$:
;	converter.c:102: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00170$
;	converter.c:103: i+=0xA00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0a
	add	a,r5
	inc	dptr
	movx	@dptr,a
00170$:
;	converter.c:104: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00172$
	cjne	r7,#0x00,00172$
;	converter.c:105: i+=0x0A0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xa0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00172$:
;	converter.c:106: if(k==2)
	cjne	r4,#0x02,00483$
	cjne	r5,#0x00,00483$
	sjmp	00484$
00483$:
	ljmp	00214$
00484$:
;	converter.c:107: i+=0x00A;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0a
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:108: break;
	ljmp	00214$
;	converter.c:109: case 66://B
00175$:
;	converter.c:110: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00177$
;	converter.c:111: i+=0xB00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0b
	add	a,r5
	inc	dptr
	movx	@dptr,a
00177$:
;	converter.c:112: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00179$
	cjne	r7,#0x00,00179$
;	converter.c:113: i+=0x0B0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xb0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00179$:
;	converter.c:114: if(k==2)
	cjne	r4,#0x02,00488$
	cjne	r5,#0x00,00488$
	sjmp	00489$
00488$:
	ljmp	00214$
00489$:
;	converter.c:115: i+=0x00B;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0b
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:116: break;
	ljmp	00214$
;	converter.c:117: case 67://C
00182$:
;	converter.c:118: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00184$
;	converter.c:119: i+=0xC00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0c
	add	a,r5
	inc	dptr
	movx	@dptr,a
00184$:
;	converter.c:120: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00186$
	cjne	r7,#0x00,00186$
;	converter.c:121: i+=0x0C0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xc0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00186$:
;	converter.c:122: if(k==2)
	cjne	r4,#0x02,00493$
	cjne	r5,#0x00,00493$
	sjmp	00494$
00493$:
	ljmp	00214$
00494$:
;	converter.c:123: i+=0x00C;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0c
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:124: break;
	ljmp	00214$
;	converter.c:125: case 68://D
00189$:
;	converter.c:126: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00191$
;	converter.c:127: i+=0xD00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0d
	add	a,r5
	inc	dptr
	movx	@dptr,a
00191$:
;	converter.c:128: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00193$
	cjne	r7,#0x00,00193$
;	converter.c:129: i+=0x0D0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xd0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00193$:
;	converter.c:130: if(k==2)
	cjne	r4,#0x02,00498$
	cjne	r5,#0x00,00498$
	sjmp	00499$
00498$:
	ljmp	00214$
00499$:
;	converter.c:131: i+=0x00D;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0d
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:132: break;
	ljmp	00214$
;	converter.c:133: case 69://E
00196$:
;	converter.c:134: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00198$
;	converter.c:135: i+=0xE00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0e
	add	a,r5
	inc	dptr
	movx	@dptr,a
00198$:
;	converter.c:136: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00200$
	cjne	r7,#0x00,00200$
;	converter.c:137: i+=0x0E0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xe0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00200$:
;	converter.c:138: if(k==2)
	cjne	r4,#0x02,00214$
	cjne	r5,#0x00,00214$
;	converter.c:139: i+=0x00E;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0e
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:140: break;
;	converter.c:141: case 70://F
	sjmp	00214$
00203$:
;	converter.c:142: if(k==0)
	mov	a,r6
	orl	a,r7
	jnz	00205$
;	converter.c:143: i+=0xF00;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,r4
	movx	@dptr,a
	mov	a,#0x0f
	add	a,r5
	inc	dptr
	movx	@dptr,a
00205$:
;	converter.c:144: if(k==1)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r6,#0x01,00207$
	cjne	r7,#0x00,00207$
;	converter.c:145: i+=0x0F0;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0xf0
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00207$:
;	converter.c:146: if(k==2)
	cjne	r4,#0x02,00214$
	cjne	r5,#0x00,00214$
;	converter.c:147: i+=0x00F;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtohex_i_65537_46
	mov	a,#0x0f
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
;	converter.c:151: }
00214$:
;	converter.c:23: for(int k=0; k<3; k++)
	inc	r6
	cjne	r6,#0x00,00510$
	inc	r7
00510$:
	ljmp	00213$
00211$:
;	converter.c:154: return i;
	mov	dptr,#_strtohex_i_65537_46
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	converter.c:155: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
