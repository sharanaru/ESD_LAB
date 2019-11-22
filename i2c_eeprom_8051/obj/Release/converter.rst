                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module converter
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _toupper
                                     12 	.globl _strlen
                                     13 	.globl _strtohex
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 ;--------------------------------------------------------
                                     37 ; indirectly addressable internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area ISEG    (DATA)
                                     40 ;--------------------------------------------------------
                                     41 ; absolute internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area IABS    (ABS,DATA)
                                     44 	.area IABS    (ABS,DATA)
                                     45 ;--------------------------------------------------------
                                     46 ; bit data
                                     47 ;--------------------------------------------------------
                                     48 	.area BSEG    (BIT)
                                     49 ;--------------------------------------------------------
                                     50 ; paged external ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area PSEG    (PAG,XDATA)
                                     53 ;--------------------------------------------------------
                                     54 ; external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area XSEG    (XDATA)
      000001                         57 _strtohex_l_65536_43:
      000001                         58 	.ds 3
      000004                         59 _strtohex_f_65536_44:
      000004                         60 	.ds 4
      000008                         61 _strtohex_i_65537_46:
      000008                         62 	.ds 2
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XABS    (ABS,XDATA)
                                     67 ;--------------------------------------------------------
                                     68 ; external initialized ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area XISEG   (XDATA)
                                     71 	.area HOME    (CODE)
                                     72 	.area GSINIT0 (CODE)
                                     73 	.area GSINIT1 (CODE)
                                     74 	.area GSINIT2 (CODE)
                                     75 	.area GSINIT3 (CODE)
                                     76 	.area GSINIT4 (CODE)
                                     77 	.area GSINIT5 (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area CSEG    (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; global & static initialisations
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area GSINIT  (CODE)
                                     86 	.area GSFINAL (CODE)
                                     87 	.area GSINIT  (CODE)
                                     88 ;--------------------------------------------------------
                                     89 ; Home
                                     90 ;--------------------------------------------------------
                                     91 	.area HOME    (CODE)
                                     92 	.area HOME    (CODE)
                                     93 ;--------------------------------------------------------
                                     94 ; code
                                     95 ;--------------------------------------------------------
                                     96 	.area CSEG    (CODE)
                                     97 ;------------------------------------------------------------
                                     98 ;Allocation info for local variables in function 'strtohex'
                                     99 ;------------------------------------------------------------
                                    100 ;l                         Allocated with name '_strtohex_l_65536_43'
                                    101 ;length                    Allocated with name '_strtohex_length_65536_44'
                                    102 ;f                         Allocated with name '_strtohex_f_65536_44'
                                    103 ;i                         Allocated with name '_strtohex_i_65537_46'
                                    104 ;k                         Allocated with name '_strtohex_k_131073_47'
                                    105 ;------------------------------------------------------------
                                    106 ;	converter.c:2: uint16_t strtohex(char *l)
                                    107 ;	-----------------------------------------
                                    108 ;	 function strtohex
                                    109 ;	-----------------------------------------
      0025C6                        110 _strtohex:
                           000007   111 	ar7 = 0x07
                           000006   112 	ar6 = 0x06
                           000005   113 	ar5 = 0x05
                           000004   114 	ar4 = 0x04
                           000003   115 	ar3 = 0x03
                           000002   116 	ar2 = 0x02
                           000001   117 	ar1 = 0x01
                           000000   118 	ar0 = 0x00
      0025C6 AF F0            [24]  119 	mov	r7,b
      0025C8 AE 83            [24]  120 	mov	r6,dph
      0025CA E5 82            [12]  121 	mov	a,dpl
      0025CC 90 00 01         [24]  122 	mov	dptr,#_strtohex_l_65536_43
      0025CF F0               [24]  123 	movx	@dptr,a
      0025D0 EE               [12]  124 	mov	a,r6
      0025D1 A3               [24]  125 	inc	dptr
      0025D2 F0               [24]  126 	movx	@dptr,a
      0025D3 EF               [12]  127 	mov	a,r7
      0025D4 A3               [24]  128 	inc	dptr
      0025D5 F0               [24]  129 	movx	@dptr,a
                                    130 ;	converter.c:6: int length=strlen(l);
      0025D6 90 00 01         [24]  131 	mov	dptr,#_strtohex_l_65536_43
      0025D9 E0               [24]  132 	movx	a,@dptr
      0025DA FD               [12]  133 	mov	r5,a
      0025DB A3               [24]  134 	inc	dptr
      0025DC E0               [24]  135 	movx	a,@dptr
      0025DD FE               [12]  136 	mov	r6,a
      0025DE A3               [24]  137 	inc	dptr
      0025DF E0               [24]  138 	movx	a,@dptr
      0025E0 FF               [12]  139 	mov	r7,a
      0025E1 8D 82            [24]  140 	mov	dpl,r5
      0025E3 8E 83            [24]  141 	mov	dph,r6
      0025E5 8F F0            [24]  142 	mov	b,r7
      0025E7 12 43 44         [24]  143 	lcall	_strlen
      0025EA AE 82            [24]  144 	mov	r6,dpl
      0025EC AF 83            [24]  145 	mov	r7,dph
                                    146 ;	converter.c:9: switch(length){
      0025EE BE 01 05         [24]  147 	cjne	r6,#0x01,00426$
      0025F1 BF 00 02         [24]  148 	cjne	r7,#0x00,00426$
      0025F4 80 13            [24]  149 	sjmp	00101$
      0025F6                        150 00426$:
      0025F6 BE 02 05         [24]  151 	cjne	r6,#0x02,00427$
      0025F9 BF 00 02         [24]  152 	cjne	r7,#0x00,00427$
      0025FC 80 30            [24]  153 	sjmp	00102$
      0025FE                        154 00427$:
      0025FE BE 03 05         [24]  155 	cjne	r6,#0x03,00428$
      002601 BF 00 02         [24]  156 	cjne	r7,#0x00,00428$
      002604 80 5C            [24]  157 	sjmp	00103$
      002606                        158 00428$:
      002606 02 26 A6         [24]  159 	ljmp	00104$
                                    160 ;	converter.c:10: case 1:
      002609                        161 00101$:
                                    162 ;	converter.c:13: f[0]='0';f[1]='0';f[2]=l[0];
      002609 90 00 04         [24]  163 	mov	dptr,#_strtohex_f_65536_44
      00260C 74 30            [12]  164 	mov	a,#0x30
      00260E F0               [24]  165 	movx	@dptr,a
      00260F 90 00 05         [24]  166 	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
      002612 F0               [24]  167 	movx	@dptr,a
      002613 90 00 01         [24]  168 	mov	dptr,#_strtohex_l_65536_43
      002616 E0               [24]  169 	movx	a,@dptr
      002617 FD               [12]  170 	mov	r5,a
      002618 A3               [24]  171 	inc	dptr
      002619 E0               [24]  172 	movx	a,@dptr
      00261A FE               [12]  173 	mov	r6,a
      00261B A3               [24]  174 	inc	dptr
      00261C E0               [24]  175 	movx	a,@dptr
      00261D FF               [12]  176 	mov	r7,a
      00261E 8D 82            [24]  177 	mov	dpl,r5
      002620 8E 83            [24]  178 	mov	dph,r6
      002622 8F F0            [24]  179 	mov	b,r7
      002624 12 43 5C         [24]  180 	lcall	__gptrget
      002627 FD               [12]  181 	mov	r5,a
      002628 90 00 06         [24]  182 	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
      00262B F0               [24]  183 	movx	@dptr,a
                                    184 ;	converter.c:14: break;
                                    185 ;	converter.c:15: case 2:
      00262C 80 78            [24]  186 	sjmp	00104$
      00262E                        187 00102$:
                                    188 ;	converter.c:16: f[0]='0';f[1]=l[0];f[2]=l[1];break;
      00262E 90 00 04         [24]  189 	mov	dptr,#_strtohex_f_65536_44
      002631 74 30            [12]  190 	mov	a,#0x30
      002633 F0               [24]  191 	movx	@dptr,a
      002634 90 00 01         [24]  192 	mov	dptr,#_strtohex_l_65536_43
      002637 E0               [24]  193 	movx	a,@dptr
      002638 FD               [12]  194 	mov	r5,a
      002639 A3               [24]  195 	inc	dptr
      00263A E0               [24]  196 	movx	a,@dptr
      00263B FE               [12]  197 	mov	r6,a
      00263C A3               [24]  198 	inc	dptr
      00263D E0               [24]  199 	movx	a,@dptr
      00263E FF               [12]  200 	mov	r7,a
      00263F 8D 82            [24]  201 	mov	dpl,r5
      002641 8E 83            [24]  202 	mov	dph,r6
      002643 8F F0            [24]  203 	mov	b,r7
      002645 12 43 5C         [24]  204 	lcall	__gptrget
      002648 FC               [12]  205 	mov	r4,a
      002649 90 00 05         [24]  206 	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
      00264C F0               [24]  207 	movx	@dptr,a
      00264D 0D               [12]  208 	inc	r5
      00264E BD 00 01         [24]  209 	cjne	r5,#0x00,00429$
      002651 0E               [12]  210 	inc	r6
      002652                        211 00429$:
      002652 8D 82            [24]  212 	mov	dpl,r5
      002654 8E 83            [24]  213 	mov	dph,r6
      002656 8F F0            [24]  214 	mov	b,r7
      002658 12 43 5C         [24]  215 	lcall	__gptrget
      00265B FD               [12]  216 	mov	r5,a
      00265C 90 00 06         [24]  217 	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
      00265F F0               [24]  218 	movx	@dptr,a
                                    219 ;	converter.c:17: case 3:
      002660 80 44            [24]  220 	sjmp	00104$
      002662                        221 00103$:
                                    222 ;	converter.c:18: f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
      002662 90 00 01         [24]  223 	mov	dptr,#_strtohex_l_65536_43
      002665 E0               [24]  224 	movx	a,@dptr
      002666 FD               [12]  225 	mov	r5,a
      002667 A3               [24]  226 	inc	dptr
      002668 E0               [24]  227 	movx	a,@dptr
      002669 FE               [12]  228 	mov	r6,a
      00266A A3               [24]  229 	inc	dptr
      00266B E0               [24]  230 	movx	a,@dptr
      00266C FF               [12]  231 	mov	r7,a
      00266D 8D 82            [24]  232 	mov	dpl,r5
      00266F 8E 83            [24]  233 	mov	dph,r6
      002671 8F F0            [24]  234 	mov	b,r7
      002673 12 43 5C         [24]  235 	lcall	__gptrget
      002676 90 00 04         [24]  236 	mov	dptr,#_strtohex_f_65536_44
      002679 F0               [24]  237 	movx	@dptr,a
      00267A 74 01            [12]  238 	mov	a,#0x01
      00267C 2D               [12]  239 	add	a,r5
      00267D FA               [12]  240 	mov	r2,a
      00267E E4               [12]  241 	clr	a
      00267F 3E               [12]  242 	addc	a,r6
      002680 FB               [12]  243 	mov	r3,a
      002681 8F 04            [24]  244 	mov	ar4,r7
      002683 8A 82            [24]  245 	mov	dpl,r2
      002685 8B 83            [24]  246 	mov	dph,r3
      002687 8C F0            [24]  247 	mov	b,r4
      002689 12 43 5C         [24]  248 	lcall	__gptrget
      00268C FA               [12]  249 	mov	r2,a
      00268D 90 00 05         [24]  250 	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
      002690 F0               [24]  251 	movx	@dptr,a
      002691 74 02            [12]  252 	mov	a,#0x02
      002693 2D               [12]  253 	add	a,r5
      002694 FD               [12]  254 	mov	r5,a
      002695 E4               [12]  255 	clr	a
      002696 3E               [12]  256 	addc	a,r6
      002697 FE               [12]  257 	mov	r6,a
      002698 8D 82            [24]  258 	mov	dpl,r5
      00269A 8E 83            [24]  259 	mov	dph,r6
      00269C 8F F0            [24]  260 	mov	b,r7
      00269E 12 43 5C         [24]  261 	lcall	__gptrget
      0026A1 FD               [12]  262 	mov	r5,a
      0026A2 90 00 06         [24]  263 	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
      0026A5 F0               [24]  264 	movx	@dptr,a
                                    265 ;	converter.c:19: }
      0026A6                        266 00104$:
                                    267 ;	converter.c:21: uint16_t i=0;
      0026A6 90 00 08         [24]  268 	mov	dptr,#_strtohex_i_65537_46
      0026A9 E4               [12]  269 	clr	a
      0026AA F0               [24]  270 	movx	@dptr,a
      0026AB A3               [24]  271 	inc	dptr
      0026AC F0               [24]  272 	movx	@dptr,a
                                    273 ;	converter.c:23: for(int k=0; k<3; k++)
      0026AD 7E 00            [12]  274 	mov	r6,#0x00
      0026AF 7F 00            [12]  275 	mov	r7,#0x00
      0026B1                        276 00213$:
      0026B1 C3               [12]  277 	clr	c
      0026B2 EE               [12]  278 	mov	a,r6
      0026B3 94 03            [12]  279 	subb	a,#0x03
      0026B5 EF               [12]  280 	mov	a,r7
      0026B6 64 80            [12]  281 	xrl	a,#0x80
      0026B8 94 80            [12]  282 	subb	a,#0x80
      0026BA 40 03            [24]  283 	jc	00430$
      0026BC 02 2C 23         [24]  284 	ljmp	00211$
      0026BF                        285 00430$:
                                    286 ;	converter.c:26: switch(toupper(f[k]))
      0026BF EE               [12]  287 	mov	a,r6
      0026C0 24 04            [12]  288 	add	a,#_strtohex_f_65536_44
      0026C2 F5 82            [12]  289 	mov	dpl,a
      0026C4 EF               [12]  290 	mov	a,r7
      0026C5 34 00            [12]  291 	addc	a,#(_strtohex_f_65536_44 >> 8)
      0026C7 F5 83            [12]  292 	mov	dph,a
      0026C9 E0               [24]  293 	movx	a,@dptr
      0026CA FD               [12]  294 	mov	r5,a
      0026CB 7C 00            [12]  295 	mov	r4,#0x00
      0026CD 8D 82            [24]  296 	mov	dpl,r5
      0026CF 8C 83            [24]  297 	mov	dph,r4
      0026D1 C0 07            [24]  298 	push	ar7
      0026D3 C0 06            [24]  299 	push	ar6
      0026D5 12 38 B1         [24]  300 	lcall	_toupper
      0026D8 AC 82            [24]  301 	mov	r4,dpl
      0026DA AD 83            [24]  302 	mov	r5,dph
      0026DC D0 06            [24]  303 	pop	ar6
      0026DE D0 07            [24]  304 	pop	ar7
      0026E0 C3               [12]  305 	clr	c
      0026E1 EC               [12]  306 	mov	a,r4
      0026E2 94 31            [12]  307 	subb	a,#0x31
      0026E4 ED               [12]  308 	mov	a,r5
      0026E5 64 80            [12]  309 	xrl	a,#0x80
      0026E7 94 80            [12]  310 	subb	a,#0x80
      0026E9 50 03            [24]  311 	jnc	00431$
      0026EB 02 2C 1B         [24]  312 	ljmp	00214$
      0026EE                        313 00431$:
      0026EE C3               [12]  314 	clr	c
      0026EF 74 46            [12]  315 	mov	a,#0x46
      0026F1 9C               [12]  316 	subb	a,r4
      0026F2 74 80            [12]  317 	mov	a,#(0x00 ^ 0x80)
      0026F4 8D F0            [24]  318 	mov	b,r5
      0026F6 63 F0 80         [24]  319 	xrl	b,#0x80
      0026F9 95 F0            [12]  320 	subb	a,b
      0026FB 50 03            [24]  321 	jnc	00432$
      0026FD 02 2C 1B         [24]  322 	ljmp	00214$
      002700                        323 00432$:
      002700 EC               [12]  324 	mov	a,r4
      002701 24 CF            [12]  325 	add	a,#0xcf
      002703 FC               [12]  326 	mov	r4,a
      002704 24 0A            [12]  327 	add	a,#(00433$-3-.)
      002706 83               [24]  328 	movc	a,@a+pc
      002707 F5 82            [12]  329 	mov	dpl,a
      002709 EC               [12]  330 	mov	a,r4
      00270A 24 1A            [12]  331 	add	a,#(00434$-3-.)
      00270C 83               [24]  332 	movc	a,@a+pc
      00270D F5 83            [12]  333 	mov	dph,a
      00270F E4               [12]  334 	clr	a
      002710 73               [24]  335 	jmp	@a+dptr
      002711                        336 00433$:
      002711 3D                     337 	.db	00105$
      002712 91                     338 	.db	00112$
      002713 E5                     339 	.db	00119$
      002714 39                     340 	.db	00126$
      002715 8D                     341 	.db	00133$
      002716 E1                     342 	.db	00140$
      002717 35                     343 	.db	00147$
      002718 89                     344 	.db	00154$
      002719 DD                     345 	.db	00161$
      00271A 1B                     346 	.db	00214$
      00271B 1B                     347 	.db	00214$
      00271C 1B                     348 	.db	00214$
      00271D 1B                     349 	.db	00214$
      00271E 1B                     350 	.db	00214$
      00271F 1B                     351 	.db	00214$
      002720 1B                     352 	.db	00214$
      002721 31                     353 	.db	00168$
      002722 85                     354 	.db	00175$
      002723 D9                     355 	.db	00182$
      002724 2D                     356 	.db	00189$
      002725 81                     357 	.db	00196$
      002726 CF                     358 	.db	00203$
      002727                        359 00434$:
      002727 27                     360 	.db	00105$>>8
      002728 27                     361 	.db	00112$>>8
      002729 27                     362 	.db	00119$>>8
      00272A 28                     363 	.db	00126$>>8
      00272B 28                     364 	.db	00133$>>8
      00272C 28                     365 	.db	00140$>>8
      00272D 29                     366 	.db	00147$>>8
      00272E 29                     367 	.db	00154$>>8
      00272F 29                     368 	.db	00161$>>8
      002730 2C                     369 	.db	00214$>>8
      002731 2C                     370 	.db	00214$>>8
      002732 2C                     371 	.db	00214$>>8
      002733 2C                     372 	.db	00214$>>8
      002734 2C                     373 	.db	00214$>>8
      002735 2C                     374 	.db	00214$>>8
      002736 2C                     375 	.db	00214$>>8
      002737 2A                     376 	.db	00168$>>8
      002738 2A                     377 	.db	00175$>>8
      002739 2A                     378 	.db	00182$>>8
      00273A 2B                     379 	.db	00189$>>8
      00273B 2B                     380 	.db	00196$>>8
      00273C 2B                     381 	.db	00203$>>8
                                    382 ;	converter.c:29: case '1'://1
      00273D                        383 00105$:
                                    384 ;	converter.c:30: if(k==0)
      00273D EE               [12]  385 	mov	a,r6
      00273E 4F               [12]  386 	orl	a,r7
      00273F 70 12            [24]  387 	jnz	00107$
                                    388 ;	converter.c:31: i+=0x100;
      002741 90 00 08         [24]  389 	mov	dptr,#_strtohex_i_65537_46
      002744 E0               [24]  390 	movx	a,@dptr
      002745 FC               [12]  391 	mov	r4,a
      002746 A3               [24]  392 	inc	dptr
      002747 E0               [24]  393 	movx	a,@dptr
      002748 FD               [12]  394 	mov	r5,a
      002749 90 00 08         [24]  395 	mov	dptr,#_strtohex_i_65537_46
      00274C EC               [12]  396 	mov	a,r4
      00274D F0               [24]  397 	movx	@dptr,a
      00274E 74 01            [12]  398 	mov	a,#0x01
      002750 2D               [12]  399 	add	a,r5
      002751 A3               [24]  400 	inc	dptr
      002752 F0               [24]  401 	movx	@dptr,a
      002753                        402 00107$:
                                    403 ;	converter.c:32: if(k==1)
      002753 8E 04            [24]  404 	mov	ar4,r6
      002755 8F 05            [24]  405 	mov	ar5,r7
      002757 BE 01 16         [24]  406 	cjne	r6,#0x01,00109$
      00275A BF 00 13         [24]  407 	cjne	r7,#0x00,00109$
                                    408 ;	converter.c:33: i+=0x010;
      00275D 90 00 08         [24]  409 	mov	dptr,#_strtohex_i_65537_46
      002760 E0               [24]  410 	movx	a,@dptr
      002761 FA               [12]  411 	mov	r2,a
      002762 A3               [24]  412 	inc	dptr
      002763 E0               [24]  413 	movx	a,@dptr
      002764 FB               [12]  414 	mov	r3,a
      002765 90 00 08         [24]  415 	mov	dptr,#_strtohex_i_65537_46
      002768 74 10            [12]  416 	mov	a,#0x10
      00276A 2A               [12]  417 	add	a,r2
      00276B F0               [24]  418 	movx	@dptr,a
      00276C E4               [12]  419 	clr	a
      00276D 3B               [12]  420 	addc	a,r3
      00276E A3               [24]  421 	inc	dptr
      00276F F0               [24]  422 	movx	@dptr,a
      002770                        423 00109$:
                                    424 ;	converter.c:34: if(k==2)
      002770 BC 02 05         [24]  425 	cjne	r4,#0x02,00438$
      002773 BD 00 02         [24]  426 	cjne	r5,#0x00,00438$
      002776 80 03            [24]  427 	sjmp	00439$
      002778                        428 00438$:
      002778 02 2C 1B         [24]  429 	ljmp	00214$
      00277B                        430 00439$:
                                    431 ;	converter.c:35: i+=0x001;
      00277B 90 00 08         [24]  432 	mov	dptr,#_strtohex_i_65537_46
      00277E E0               [24]  433 	movx	a,@dptr
      00277F FC               [12]  434 	mov	r4,a
      002780 A3               [24]  435 	inc	dptr
      002781 E0               [24]  436 	movx	a,@dptr
      002782 FD               [12]  437 	mov	r5,a
      002783 90 00 08         [24]  438 	mov	dptr,#_strtohex_i_65537_46
      002786 74 01            [12]  439 	mov	a,#0x01
      002788 2C               [12]  440 	add	a,r4
      002789 F0               [24]  441 	movx	@dptr,a
      00278A E4               [12]  442 	clr	a
      00278B 3D               [12]  443 	addc	a,r5
      00278C A3               [24]  444 	inc	dptr
      00278D F0               [24]  445 	movx	@dptr,a
                                    446 ;	converter.c:36: break;
      00278E 02 2C 1B         [24]  447 	ljmp	00214$
                                    448 ;	converter.c:37: case 50://2
      002791                        449 00112$:
                                    450 ;	converter.c:38: if(k==0)
      002791 EE               [12]  451 	mov	a,r6
      002792 4F               [12]  452 	orl	a,r7
      002793 70 12            [24]  453 	jnz	00114$
                                    454 ;	converter.c:39: i+=0x200;
      002795 90 00 08         [24]  455 	mov	dptr,#_strtohex_i_65537_46
      002798 E0               [24]  456 	movx	a,@dptr
      002799 FC               [12]  457 	mov	r4,a
      00279A A3               [24]  458 	inc	dptr
      00279B E0               [24]  459 	movx	a,@dptr
      00279C FD               [12]  460 	mov	r5,a
      00279D 90 00 08         [24]  461 	mov	dptr,#_strtohex_i_65537_46
      0027A0 EC               [12]  462 	mov	a,r4
      0027A1 F0               [24]  463 	movx	@dptr,a
      0027A2 74 02            [12]  464 	mov	a,#0x02
      0027A4 2D               [12]  465 	add	a,r5
      0027A5 A3               [24]  466 	inc	dptr
      0027A6 F0               [24]  467 	movx	@dptr,a
      0027A7                        468 00114$:
                                    469 ;	converter.c:40: if(k==1)
      0027A7 8E 04            [24]  470 	mov	ar4,r6
      0027A9 8F 05            [24]  471 	mov	ar5,r7
      0027AB BE 01 16         [24]  472 	cjne	r6,#0x01,00116$
      0027AE BF 00 13         [24]  473 	cjne	r7,#0x00,00116$
                                    474 ;	converter.c:41: i+=0x020;
      0027B1 90 00 08         [24]  475 	mov	dptr,#_strtohex_i_65537_46
      0027B4 E0               [24]  476 	movx	a,@dptr
      0027B5 FA               [12]  477 	mov	r2,a
      0027B6 A3               [24]  478 	inc	dptr
      0027B7 E0               [24]  479 	movx	a,@dptr
      0027B8 FB               [12]  480 	mov	r3,a
      0027B9 90 00 08         [24]  481 	mov	dptr,#_strtohex_i_65537_46
      0027BC 74 20            [12]  482 	mov	a,#0x20
      0027BE 2A               [12]  483 	add	a,r2
      0027BF F0               [24]  484 	movx	@dptr,a
      0027C0 E4               [12]  485 	clr	a
      0027C1 3B               [12]  486 	addc	a,r3
      0027C2 A3               [24]  487 	inc	dptr
      0027C3 F0               [24]  488 	movx	@dptr,a
      0027C4                        489 00116$:
                                    490 ;	converter.c:42: if(k==2)
      0027C4 BC 02 05         [24]  491 	cjne	r4,#0x02,00443$
      0027C7 BD 00 02         [24]  492 	cjne	r5,#0x00,00443$
      0027CA 80 03            [24]  493 	sjmp	00444$
      0027CC                        494 00443$:
      0027CC 02 2C 1B         [24]  495 	ljmp	00214$
      0027CF                        496 00444$:
                                    497 ;	converter.c:43: i+=0x002;
      0027CF 90 00 08         [24]  498 	mov	dptr,#_strtohex_i_65537_46
      0027D2 E0               [24]  499 	movx	a,@dptr
      0027D3 FC               [12]  500 	mov	r4,a
      0027D4 A3               [24]  501 	inc	dptr
      0027D5 E0               [24]  502 	movx	a,@dptr
      0027D6 FD               [12]  503 	mov	r5,a
      0027D7 90 00 08         [24]  504 	mov	dptr,#_strtohex_i_65537_46
      0027DA 74 02            [12]  505 	mov	a,#0x02
      0027DC 2C               [12]  506 	add	a,r4
      0027DD F0               [24]  507 	movx	@dptr,a
      0027DE E4               [12]  508 	clr	a
      0027DF 3D               [12]  509 	addc	a,r5
      0027E0 A3               [24]  510 	inc	dptr
      0027E1 F0               [24]  511 	movx	@dptr,a
                                    512 ;	converter.c:44: break;
      0027E2 02 2C 1B         [24]  513 	ljmp	00214$
                                    514 ;	converter.c:45: case 51://3
      0027E5                        515 00119$:
                                    516 ;	converter.c:46: if(k==0)
      0027E5 EE               [12]  517 	mov	a,r6
      0027E6 4F               [12]  518 	orl	a,r7
      0027E7 70 12            [24]  519 	jnz	00121$
                                    520 ;	converter.c:47: i+=0x300;
      0027E9 90 00 08         [24]  521 	mov	dptr,#_strtohex_i_65537_46
      0027EC E0               [24]  522 	movx	a,@dptr
      0027ED FC               [12]  523 	mov	r4,a
      0027EE A3               [24]  524 	inc	dptr
      0027EF E0               [24]  525 	movx	a,@dptr
      0027F0 FD               [12]  526 	mov	r5,a
      0027F1 90 00 08         [24]  527 	mov	dptr,#_strtohex_i_65537_46
      0027F4 EC               [12]  528 	mov	a,r4
      0027F5 F0               [24]  529 	movx	@dptr,a
      0027F6 74 03            [12]  530 	mov	a,#0x03
      0027F8 2D               [12]  531 	add	a,r5
      0027F9 A3               [24]  532 	inc	dptr
      0027FA F0               [24]  533 	movx	@dptr,a
      0027FB                        534 00121$:
                                    535 ;	converter.c:48: if(k==1)
      0027FB 8E 04            [24]  536 	mov	ar4,r6
      0027FD 8F 05            [24]  537 	mov	ar5,r7
      0027FF BE 01 16         [24]  538 	cjne	r6,#0x01,00123$
      002802 BF 00 13         [24]  539 	cjne	r7,#0x00,00123$
                                    540 ;	converter.c:49: i+=0x030;
      002805 90 00 08         [24]  541 	mov	dptr,#_strtohex_i_65537_46
      002808 E0               [24]  542 	movx	a,@dptr
      002809 FA               [12]  543 	mov	r2,a
      00280A A3               [24]  544 	inc	dptr
      00280B E0               [24]  545 	movx	a,@dptr
      00280C FB               [12]  546 	mov	r3,a
      00280D 90 00 08         [24]  547 	mov	dptr,#_strtohex_i_65537_46
      002810 74 30            [12]  548 	mov	a,#0x30
      002812 2A               [12]  549 	add	a,r2
      002813 F0               [24]  550 	movx	@dptr,a
      002814 E4               [12]  551 	clr	a
      002815 3B               [12]  552 	addc	a,r3
      002816 A3               [24]  553 	inc	dptr
      002817 F0               [24]  554 	movx	@dptr,a
      002818                        555 00123$:
                                    556 ;	converter.c:50: if(k==2)
      002818 BC 02 05         [24]  557 	cjne	r4,#0x02,00448$
      00281B BD 00 02         [24]  558 	cjne	r5,#0x00,00448$
      00281E 80 03            [24]  559 	sjmp	00449$
      002820                        560 00448$:
      002820 02 2C 1B         [24]  561 	ljmp	00214$
      002823                        562 00449$:
                                    563 ;	converter.c:51: i+=0x003;
      002823 90 00 08         [24]  564 	mov	dptr,#_strtohex_i_65537_46
      002826 E0               [24]  565 	movx	a,@dptr
      002827 FC               [12]  566 	mov	r4,a
      002828 A3               [24]  567 	inc	dptr
      002829 E0               [24]  568 	movx	a,@dptr
      00282A FD               [12]  569 	mov	r5,a
      00282B 90 00 08         [24]  570 	mov	dptr,#_strtohex_i_65537_46
      00282E 74 03            [12]  571 	mov	a,#0x03
      002830 2C               [12]  572 	add	a,r4
      002831 F0               [24]  573 	movx	@dptr,a
      002832 E4               [12]  574 	clr	a
      002833 3D               [12]  575 	addc	a,r5
      002834 A3               [24]  576 	inc	dptr
      002835 F0               [24]  577 	movx	@dptr,a
                                    578 ;	converter.c:52: break;
      002836 02 2C 1B         [24]  579 	ljmp	00214$
                                    580 ;	converter.c:53: case 52://4
      002839                        581 00126$:
                                    582 ;	converter.c:54: if(k==0)
      002839 EE               [12]  583 	mov	a,r6
      00283A 4F               [12]  584 	orl	a,r7
      00283B 70 12            [24]  585 	jnz	00128$
                                    586 ;	converter.c:55: i+=0x400;
      00283D 90 00 08         [24]  587 	mov	dptr,#_strtohex_i_65537_46
      002840 E0               [24]  588 	movx	a,@dptr
      002841 FC               [12]  589 	mov	r4,a
      002842 A3               [24]  590 	inc	dptr
      002843 E0               [24]  591 	movx	a,@dptr
      002844 FD               [12]  592 	mov	r5,a
      002845 90 00 08         [24]  593 	mov	dptr,#_strtohex_i_65537_46
      002848 EC               [12]  594 	mov	a,r4
      002849 F0               [24]  595 	movx	@dptr,a
      00284A 74 04            [12]  596 	mov	a,#0x04
      00284C 2D               [12]  597 	add	a,r5
      00284D A3               [24]  598 	inc	dptr
      00284E F0               [24]  599 	movx	@dptr,a
      00284F                        600 00128$:
                                    601 ;	converter.c:56: if(k==1)
      00284F 8E 04            [24]  602 	mov	ar4,r6
      002851 8F 05            [24]  603 	mov	ar5,r7
      002853 BE 01 16         [24]  604 	cjne	r6,#0x01,00130$
      002856 BF 00 13         [24]  605 	cjne	r7,#0x00,00130$
                                    606 ;	converter.c:57: i+=0x040;
      002859 90 00 08         [24]  607 	mov	dptr,#_strtohex_i_65537_46
      00285C E0               [24]  608 	movx	a,@dptr
      00285D FA               [12]  609 	mov	r2,a
      00285E A3               [24]  610 	inc	dptr
      00285F E0               [24]  611 	movx	a,@dptr
      002860 FB               [12]  612 	mov	r3,a
      002861 90 00 08         [24]  613 	mov	dptr,#_strtohex_i_65537_46
      002864 74 40            [12]  614 	mov	a,#0x40
      002866 2A               [12]  615 	add	a,r2
      002867 F0               [24]  616 	movx	@dptr,a
      002868 E4               [12]  617 	clr	a
      002869 3B               [12]  618 	addc	a,r3
      00286A A3               [24]  619 	inc	dptr
      00286B F0               [24]  620 	movx	@dptr,a
      00286C                        621 00130$:
                                    622 ;	converter.c:58: if(k==2)
      00286C BC 02 05         [24]  623 	cjne	r4,#0x02,00453$
      00286F BD 00 02         [24]  624 	cjne	r5,#0x00,00453$
      002872 80 03            [24]  625 	sjmp	00454$
      002874                        626 00453$:
      002874 02 2C 1B         [24]  627 	ljmp	00214$
      002877                        628 00454$:
                                    629 ;	converter.c:59: i+=0x004;
      002877 90 00 08         [24]  630 	mov	dptr,#_strtohex_i_65537_46
      00287A E0               [24]  631 	movx	a,@dptr
      00287B FC               [12]  632 	mov	r4,a
      00287C A3               [24]  633 	inc	dptr
      00287D E0               [24]  634 	movx	a,@dptr
      00287E FD               [12]  635 	mov	r5,a
      00287F 90 00 08         [24]  636 	mov	dptr,#_strtohex_i_65537_46
      002882 74 04            [12]  637 	mov	a,#0x04
      002884 2C               [12]  638 	add	a,r4
      002885 F0               [24]  639 	movx	@dptr,a
      002886 E4               [12]  640 	clr	a
      002887 3D               [12]  641 	addc	a,r5
      002888 A3               [24]  642 	inc	dptr
      002889 F0               [24]  643 	movx	@dptr,a
                                    644 ;	converter.c:60: break;
      00288A 02 2C 1B         [24]  645 	ljmp	00214$
                                    646 ;	converter.c:61: case 53://5
      00288D                        647 00133$:
                                    648 ;	converter.c:62: if(k==0)
      00288D EE               [12]  649 	mov	a,r6
      00288E 4F               [12]  650 	orl	a,r7
      00288F 70 12            [24]  651 	jnz	00135$
                                    652 ;	converter.c:63: i+=0x500;
      002891 90 00 08         [24]  653 	mov	dptr,#_strtohex_i_65537_46
      002894 E0               [24]  654 	movx	a,@dptr
      002895 FC               [12]  655 	mov	r4,a
      002896 A3               [24]  656 	inc	dptr
      002897 E0               [24]  657 	movx	a,@dptr
      002898 FD               [12]  658 	mov	r5,a
      002899 90 00 08         [24]  659 	mov	dptr,#_strtohex_i_65537_46
      00289C EC               [12]  660 	mov	a,r4
      00289D F0               [24]  661 	movx	@dptr,a
      00289E 74 05            [12]  662 	mov	a,#0x05
      0028A0 2D               [12]  663 	add	a,r5
      0028A1 A3               [24]  664 	inc	dptr
      0028A2 F0               [24]  665 	movx	@dptr,a
      0028A3                        666 00135$:
                                    667 ;	converter.c:64: if(k==1)
      0028A3 8E 04            [24]  668 	mov	ar4,r6
      0028A5 8F 05            [24]  669 	mov	ar5,r7
      0028A7 BE 01 16         [24]  670 	cjne	r6,#0x01,00137$
      0028AA BF 00 13         [24]  671 	cjne	r7,#0x00,00137$
                                    672 ;	converter.c:65: i+=0x050;
      0028AD 90 00 08         [24]  673 	mov	dptr,#_strtohex_i_65537_46
      0028B0 E0               [24]  674 	movx	a,@dptr
      0028B1 FA               [12]  675 	mov	r2,a
      0028B2 A3               [24]  676 	inc	dptr
      0028B3 E0               [24]  677 	movx	a,@dptr
      0028B4 FB               [12]  678 	mov	r3,a
      0028B5 90 00 08         [24]  679 	mov	dptr,#_strtohex_i_65537_46
      0028B8 74 50            [12]  680 	mov	a,#0x50
      0028BA 2A               [12]  681 	add	a,r2
      0028BB F0               [24]  682 	movx	@dptr,a
      0028BC E4               [12]  683 	clr	a
      0028BD 3B               [12]  684 	addc	a,r3
      0028BE A3               [24]  685 	inc	dptr
      0028BF F0               [24]  686 	movx	@dptr,a
      0028C0                        687 00137$:
                                    688 ;	converter.c:66: if(k==2)
      0028C0 BC 02 05         [24]  689 	cjne	r4,#0x02,00458$
      0028C3 BD 00 02         [24]  690 	cjne	r5,#0x00,00458$
      0028C6 80 03            [24]  691 	sjmp	00459$
      0028C8                        692 00458$:
      0028C8 02 2C 1B         [24]  693 	ljmp	00214$
      0028CB                        694 00459$:
                                    695 ;	converter.c:67: i+=0x005;
      0028CB 90 00 08         [24]  696 	mov	dptr,#_strtohex_i_65537_46
      0028CE E0               [24]  697 	movx	a,@dptr
      0028CF FC               [12]  698 	mov	r4,a
      0028D0 A3               [24]  699 	inc	dptr
      0028D1 E0               [24]  700 	movx	a,@dptr
      0028D2 FD               [12]  701 	mov	r5,a
      0028D3 90 00 08         [24]  702 	mov	dptr,#_strtohex_i_65537_46
      0028D6 74 05            [12]  703 	mov	a,#0x05
      0028D8 2C               [12]  704 	add	a,r4
      0028D9 F0               [24]  705 	movx	@dptr,a
      0028DA E4               [12]  706 	clr	a
      0028DB 3D               [12]  707 	addc	a,r5
      0028DC A3               [24]  708 	inc	dptr
      0028DD F0               [24]  709 	movx	@dptr,a
                                    710 ;	converter.c:68: break;
      0028DE 02 2C 1B         [24]  711 	ljmp	00214$
                                    712 ;	converter.c:69: case 54://6
      0028E1                        713 00140$:
                                    714 ;	converter.c:70: if(k==0)
      0028E1 EE               [12]  715 	mov	a,r6
      0028E2 4F               [12]  716 	orl	a,r7
      0028E3 70 12            [24]  717 	jnz	00142$
                                    718 ;	converter.c:71: i+=0x600;
      0028E5 90 00 08         [24]  719 	mov	dptr,#_strtohex_i_65537_46
      0028E8 E0               [24]  720 	movx	a,@dptr
      0028E9 FC               [12]  721 	mov	r4,a
      0028EA A3               [24]  722 	inc	dptr
      0028EB E0               [24]  723 	movx	a,@dptr
      0028EC FD               [12]  724 	mov	r5,a
      0028ED 90 00 08         [24]  725 	mov	dptr,#_strtohex_i_65537_46
      0028F0 EC               [12]  726 	mov	a,r4
      0028F1 F0               [24]  727 	movx	@dptr,a
      0028F2 74 06            [12]  728 	mov	a,#0x06
      0028F4 2D               [12]  729 	add	a,r5
      0028F5 A3               [24]  730 	inc	dptr
      0028F6 F0               [24]  731 	movx	@dptr,a
      0028F7                        732 00142$:
                                    733 ;	converter.c:72: if(k==1)
      0028F7 8E 04            [24]  734 	mov	ar4,r6
      0028F9 8F 05            [24]  735 	mov	ar5,r7
      0028FB BE 01 16         [24]  736 	cjne	r6,#0x01,00144$
      0028FE BF 00 13         [24]  737 	cjne	r7,#0x00,00144$
                                    738 ;	converter.c:73: i+=0x060;
      002901 90 00 08         [24]  739 	mov	dptr,#_strtohex_i_65537_46
      002904 E0               [24]  740 	movx	a,@dptr
      002905 FA               [12]  741 	mov	r2,a
      002906 A3               [24]  742 	inc	dptr
      002907 E0               [24]  743 	movx	a,@dptr
      002908 FB               [12]  744 	mov	r3,a
      002909 90 00 08         [24]  745 	mov	dptr,#_strtohex_i_65537_46
      00290C 74 60            [12]  746 	mov	a,#0x60
      00290E 2A               [12]  747 	add	a,r2
      00290F F0               [24]  748 	movx	@dptr,a
      002910 E4               [12]  749 	clr	a
      002911 3B               [12]  750 	addc	a,r3
      002912 A3               [24]  751 	inc	dptr
      002913 F0               [24]  752 	movx	@dptr,a
      002914                        753 00144$:
                                    754 ;	converter.c:74: if(k==2)
      002914 BC 02 05         [24]  755 	cjne	r4,#0x02,00463$
      002917 BD 00 02         [24]  756 	cjne	r5,#0x00,00463$
      00291A 80 03            [24]  757 	sjmp	00464$
      00291C                        758 00463$:
      00291C 02 2C 1B         [24]  759 	ljmp	00214$
      00291F                        760 00464$:
                                    761 ;	converter.c:75: i+=0x006;
      00291F 90 00 08         [24]  762 	mov	dptr,#_strtohex_i_65537_46
      002922 E0               [24]  763 	movx	a,@dptr
      002923 FC               [12]  764 	mov	r4,a
      002924 A3               [24]  765 	inc	dptr
      002925 E0               [24]  766 	movx	a,@dptr
      002926 FD               [12]  767 	mov	r5,a
      002927 90 00 08         [24]  768 	mov	dptr,#_strtohex_i_65537_46
      00292A 74 06            [12]  769 	mov	a,#0x06
      00292C 2C               [12]  770 	add	a,r4
      00292D F0               [24]  771 	movx	@dptr,a
      00292E E4               [12]  772 	clr	a
      00292F 3D               [12]  773 	addc	a,r5
      002930 A3               [24]  774 	inc	dptr
      002931 F0               [24]  775 	movx	@dptr,a
                                    776 ;	converter.c:76: break;
      002932 02 2C 1B         [24]  777 	ljmp	00214$
                                    778 ;	converter.c:77: case 55://7
      002935                        779 00147$:
                                    780 ;	converter.c:78: if(k==0)
      002935 EE               [12]  781 	mov	a,r6
      002936 4F               [12]  782 	orl	a,r7
      002937 70 12            [24]  783 	jnz	00149$
                                    784 ;	converter.c:79: i+=0x700;
      002939 90 00 08         [24]  785 	mov	dptr,#_strtohex_i_65537_46
      00293C E0               [24]  786 	movx	a,@dptr
      00293D FC               [12]  787 	mov	r4,a
      00293E A3               [24]  788 	inc	dptr
      00293F E0               [24]  789 	movx	a,@dptr
      002940 FD               [12]  790 	mov	r5,a
      002941 90 00 08         [24]  791 	mov	dptr,#_strtohex_i_65537_46
      002944 EC               [12]  792 	mov	a,r4
      002945 F0               [24]  793 	movx	@dptr,a
      002946 74 07            [12]  794 	mov	a,#0x07
      002948 2D               [12]  795 	add	a,r5
      002949 A3               [24]  796 	inc	dptr
      00294A F0               [24]  797 	movx	@dptr,a
      00294B                        798 00149$:
                                    799 ;	converter.c:80: if(k==1)
      00294B 8E 04            [24]  800 	mov	ar4,r6
      00294D 8F 05            [24]  801 	mov	ar5,r7
      00294F BE 01 16         [24]  802 	cjne	r6,#0x01,00151$
      002952 BF 00 13         [24]  803 	cjne	r7,#0x00,00151$
                                    804 ;	converter.c:81: i+=0x070;
      002955 90 00 08         [24]  805 	mov	dptr,#_strtohex_i_65537_46
      002958 E0               [24]  806 	movx	a,@dptr
      002959 FA               [12]  807 	mov	r2,a
      00295A A3               [24]  808 	inc	dptr
      00295B E0               [24]  809 	movx	a,@dptr
      00295C FB               [12]  810 	mov	r3,a
      00295D 90 00 08         [24]  811 	mov	dptr,#_strtohex_i_65537_46
      002960 74 70            [12]  812 	mov	a,#0x70
      002962 2A               [12]  813 	add	a,r2
      002963 F0               [24]  814 	movx	@dptr,a
      002964 E4               [12]  815 	clr	a
      002965 3B               [12]  816 	addc	a,r3
      002966 A3               [24]  817 	inc	dptr
      002967 F0               [24]  818 	movx	@dptr,a
      002968                        819 00151$:
                                    820 ;	converter.c:82: if(k==2)
      002968 BC 02 05         [24]  821 	cjne	r4,#0x02,00468$
      00296B BD 00 02         [24]  822 	cjne	r5,#0x00,00468$
      00296E 80 03            [24]  823 	sjmp	00469$
      002970                        824 00468$:
      002970 02 2C 1B         [24]  825 	ljmp	00214$
      002973                        826 00469$:
                                    827 ;	converter.c:83: i+=0x007;
      002973 90 00 08         [24]  828 	mov	dptr,#_strtohex_i_65537_46
      002976 E0               [24]  829 	movx	a,@dptr
      002977 FC               [12]  830 	mov	r4,a
      002978 A3               [24]  831 	inc	dptr
      002979 E0               [24]  832 	movx	a,@dptr
      00297A FD               [12]  833 	mov	r5,a
      00297B 90 00 08         [24]  834 	mov	dptr,#_strtohex_i_65537_46
      00297E 74 07            [12]  835 	mov	a,#0x07
      002980 2C               [12]  836 	add	a,r4
      002981 F0               [24]  837 	movx	@dptr,a
      002982 E4               [12]  838 	clr	a
      002983 3D               [12]  839 	addc	a,r5
      002984 A3               [24]  840 	inc	dptr
      002985 F0               [24]  841 	movx	@dptr,a
                                    842 ;	converter.c:84: break;
      002986 02 2C 1B         [24]  843 	ljmp	00214$
                                    844 ;	converter.c:85: case 56://8
      002989                        845 00154$:
                                    846 ;	converter.c:86: if(k==0)
      002989 EE               [12]  847 	mov	a,r6
      00298A 4F               [12]  848 	orl	a,r7
      00298B 70 12            [24]  849 	jnz	00156$
                                    850 ;	converter.c:87: i+=0x800;
      00298D 90 00 08         [24]  851 	mov	dptr,#_strtohex_i_65537_46
      002990 E0               [24]  852 	movx	a,@dptr
      002991 FC               [12]  853 	mov	r4,a
      002992 A3               [24]  854 	inc	dptr
      002993 E0               [24]  855 	movx	a,@dptr
      002994 FD               [12]  856 	mov	r5,a
      002995 90 00 08         [24]  857 	mov	dptr,#_strtohex_i_65537_46
      002998 EC               [12]  858 	mov	a,r4
      002999 F0               [24]  859 	movx	@dptr,a
      00299A 74 08            [12]  860 	mov	a,#0x08
      00299C 2D               [12]  861 	add	a,r5
      00299D A3               [24]  862 	inc	dptr
      00299E F0               [24]  863 	movx	@dptr,a
      00299F                        864 00156$:
                                    865 ;	converter.c:88: if(k==1)
      00299F 8E 04            [24]  866 	mov	ar4,r6
      0029A1 8F 05            [24]  867 	mov	ar5,r7
      0029A3 BE 01 16         [24]  868 	cjne	r6,#0x01,00158$
      0029A6 BF 00 13         [24]  869 	cjne	r7,#0x00,00158$
                                    870 ;	converter.c:89: i+=0x080;
      0029A9 90 00 08         [24]  871 	mov	dptr,#_strtohex_i_65537_46
      0029AC E0               [24]  872 	movx	a,@dptr
      0029AD FA               [12]  873 	mov	r2,a
      0029AE A3               [24]  874 	inc	dptr
      0029AF E0               [24]  875 	movx	a,@dptr
      0029B0 FB               [12]  876 	mov	r3,a
      0029B1 90 00 08         [24]  877 	mov	dptr,#_strtohex_i_65537_46
      0029B4 74 80            [12]  878 	mov	a,#0x80
      0029B6 2A               [12]  879 	add	a,r2
      0029B7 F0               [24]  880 	movx	@dptr,a
      0029B8 E4               [12]  881 	clr	a
      0029B9 3B               [12]  882 	addc	a,r3
      0029BA A3               [24]  883 	inc	dptr
      0029BB F0               [24]  884 	movx	@dptr,a
      0029BC                        885 00158$:
                                    886 ;	converter.c:90: if(k==2)
      0029BC BC 02 05         [24]  887 	cjne	r4,#0x02,00473$
      0029BF BD 00 02         [24]  888 	cjne	r5,#0x00,00473$
      0029C2 80 03            [24]  889 	sjmp	00474$
      0029C4                        890 00473$:
      0029C4 02 2C 1B         [24]  891 	ljmp	00214$
      0029C7                        892 00474$:
                                    893 ;	converter.c:91: i+=0x008;
      0029C7 90 00 08         [24]  894 	mov	dptr,#_strtohex_i_65537_46
      0029CA E0               [24]  895 	movx	a,@dptr
      0029CB FC               [12]  896 	mov	r4,a
      0029CC A3               [24]  897 	inc	dptr
      0029CD E0               [24]  898 	movx	a,@dptr
      0029CE FD               [12]  899 	mov	r5,a
      0029CF 90 00 08         [24]  900 	mov	dptr,#_strtohex_i_65537_46
      0029D2 74 08            [12]  901 	mov	a,#0x08
      0029D4 2C               [12]  902 	add	a,r4
      0029D5 F0               [24]  903 	movx	@dptr,a
      0029D6 E4               [12]  904 	clr	a
      0029D7 3D               [12]  905 	addc	a,r5
      0029D8 A3               [24]  906 	inc	dptr
      0029D9 F0               [24]  907 	movx	@dptr,a
                                    908 ;	converter.c:92: break;
      0029DA 02 2C 1B         [24]  909 	ljmp	00214$
                                    910 ;	converter.c:93: case 57://9
      0029DD                        911 00161$:
                                    912 ;	converter.c:94: if(k==0)
      0029DD EE               [12]  913 	mov	a,r6
      0029DE 4F               [12]  914 	orl	a,r7
      0029DF 70 12            [24]  915 	jnz	00163$
                                    916 ;	converter.c:95: i+=0x900;
      0029E1 90 00 08         [24]  917 	mov	dptr,#_strtohex_i_65537_46
      0029E4 E0               [24]  918 	movx	a,@dptr
      0029E5 FC               [12]  919 	mov	r4,a
      0029E6 A3               [24]  920 	inc	dptr
      0029E7 E0               [24]  921 	movx	a,@dptr
      0029E8 FD               [12]  922 	mov	r5,a
      0029E9 90 00 08         [24]  923 	mov	dptr,#_strtohex_i_65537_46
      0029EC EC               [12]  924 	mov	a,r4
      0029ED F0               [24]  925 	movx	@dptr,a
      0029EE 74 09            [12]  926 	mov	a,#0x09
      0029F0 2D               [12]  927 	add	a,r5
      0029F1 A3               [24]  928 	inc	dptr
      0029F2 F0               [24]  929 	movx	@dptr,a
      0029F3                        930 00163$:
                                    931 ;	converter.c:96: if(k==1)
      0029F3 8E 04            [24]  932 	mov	ar4,r6
      0029F5 8F 05            [24]  933 	mov	ar5,r7
      0029F7 BE 01 16         [24]  934 	cjne	r6,#0x01,00165$
      0029FA BF 00 13         [24]  935 	cjne	r7,#0x00,00165$
                                    936 ;	converter.c:97: i+=0x090;
      0029FD 90 00 08         [24]  937 	mov	dptr,#_strtohex_i_65537_46
      002A00 E0               [24]  938 	movx	a,@dptr
      002A01 FA               [12]  939 	mov	r2,a
      002A02 A3               [24]  940 	inc	dptr
      002A03 E0               [24]  941 	movx	a,@dptr
      002A04 FB               [12]  942 	mov	r3,a
      002A05 90 00 08         [24]  943 	mov	dptr,#_strtohex_i_65537_46
      002A08 74 90            [12]  944 	mov	a,#0x90
      002A0A 2A               [12]  945 	add	a,r2
      002A0B F0               [24]  946 	movx	@dptr,a
      002A0C E4               [12]  947 	clr	a
      002A0D 3B               [12]  948 	addc	a,r3
      002A0E A3               [24]  949 	inc	dptr
      002A0F F0               [24]  950 	movx	@dptr,a
      002A10                        951 00165$:
                                    952 ;	converter.c:98: if(k==2)
      002A10 BC 02 05         [24]  953 	cjne	r4,#0x02,00478$
      002A13 BD 00 02         [24]  954 	cjne	r5,#0x00,00478$
      002A16 80 03            [24]  955 	sjmp	00479$
      002A18                        956 00478$:
      002A18 02 2C 1B         [24]  957 	ljmp	00214$
      002A1B                        958 00479$:
                                    959 ;	converter.c:99: i+=0x009;
      002A1B 90 00 08         [24]  960 	mov	dptr,#_strtohex_i_65537_46
      002A1E E0               [24]  961 	movx	a,@dptr
      002A1F FC               [12]  962 	mov	r4,a
      002A20 A3               [24]  963 	inc	dptr
      002A21 E0               [24]  964 	movx	a,@dptr
      002A22 FD               [12]  965 	mov	r5,a
      002A23 90 00 08         [24]  966 	mov	dptr,#_strtohex_i_65537_46
      002A26 74 09            [12]  967 	mov	a,#0x09
      002A28 2C               [12]  968 	add	a,r4
      002A29 F0               [24]  969 	movx	@dptr,a
      002A2A E4               [12]  970 	clr	a
      002A2B 3D               [12]  971 	addc	a,r5
      002A2C A3               [24]  972 	inc	dptr
      002A2D F0               [24]  973 	movx	@dptr,a
                                    974 ;	converter.c:100: break;
      002A2E 02 2C 1B         [24]  975 	ljmp	00214$
                                    976 ;	converter.c:101: case 65://A
      002A31                        977 00168$:
                                    978 ;	converter.c:102: if(k==0)
      002A31 EE               [12]  979 	mov	a,r6
      002A32 4F               [12]  980 	orl	a,r7
      002A33 70 12            [24]  981 	jnz	00170$
                                    982 ;	converter.c:103: i+=0xA00;
      002A35 90 00 08         [24]  983 	mov	dptr,#_strtohex_i_65537_46
      002A38 E0               [24]  984 	movx	a,@dptr
      002A39 FC               [12]  985 	mov	r4,a
      002A3A A3               [24]  986 	inc	dptr
      002A3B E0               [24]  987 	movx	a,@dptr
      002A3C FD               [12]  988 	mov	r5,a
      002A3D 90 00 08         [24]  989 	mov	dptr,#_strtohex_i_65537_46
      002A40 EC               [12]  990 	mov	a,r4
      002A41 F0               [24]  991 	movx	@dptr,a
      002A42 74 0A            [12]  992 	mov	a,#0x0a
      002A44 2D               [12]  993 	add	a,r5
      002A45 A3               [24]  994 	inc	dptr
      002A46 F0               [24]  995 	movx	@dptr,a
      002A47                        996 00170$:
                                    997 ;	converter.c:104: if(k==1)
      002A47 8E 04            [24]  998 	mov	ar4,r6
      002A49 8F 05            [24]  999 	mov	ar5,r7
      002A4B BE 01 16         [24] 1000 	cjne	r6,#0x01,00172$
      002A4E BF 00 13         [24] 1001 	cjne	r7,#0x00,00172$
                                   1002 ;	converter.c:105: i+=0x0A0;
      002A51 90 00 08         [24] 1003 	mov	dptr,#_strtohex_i_65537_46
      002A54 E0               [24] 1004 	movx	a,@dptr
      002A55 FA               [12] 1005 	mov	r2,a
      002A56 A3               [24] 1006 	inc	dptr
      002A57 E0               [24] 1007 	movx	a,@dptr
      002A58 FB               [12] 1008 	mov	r3,a
      002A59 90 00 08         [24] 1009 	mov	dptr,#_strtohex_i_65537_46
      002A5C 74 A0            [12] 1010 	mov	a,#0xa0
      002A5E 2A               [12] 1011 	add	a,r2
      002A5F F0               [24] 1012 	movx	@dptr,a
      002A60 E4               [12] 1013 	clr	a
      002A61 3B               [12] 1014 	addc	a,r3
      002A62 A3               [24] 1015 	inc	dptr
      002A63 F0               [24] 1016 	movx	@dptr,a
      002A64                       1017 00172$:
                                   1018 ;	converter.c:106: if(k==2)
      002A64 BC 02 05         [24] 1019 	cjne	r4,#0x02,00483$
      002A67 BD 00 02         [24] 1020 	cjne	r5,#0x00,00483$
      002A6A 80 03            [24] 1021 	sjmp	00484$
      002A6C                       1022 00483$:
      002A6C 02 2C 1B         [24] 1023 	ljmp	00214$
      002A6F                       1024 00484$:
                                   1025 ;	converter.c:107: i+=0x00A;
      002A6F 90 00 08         [24] 1026 	mov	dptr,#_strtohex_i_65537_46
      002A72 E0               [24] 1027 	movx	a,@dptr
      002A73 FC               [12] 1028 	mov	r4,a
      002A74 A3               [24] 1029 	inc	dptr
      002A75 E0               [24] 1030 	movx	a,@dptr
      002A76 FD               [12] 1031 	mov	r5,a
      002A77 90 00 08         [24] 1032 	mov	dptr,#_strtohex_i_65537_46
      002A7A 74 0A            [12] 1033 	mov	a,#0x0a
      002A7C 2C               [12] 1034 	add	a,r4
      002A7D F0               [24] 1035 	movx	@dptr,a
      002A7E E4               [12] 1036 	clr	a
      002A7F 3D               [12] 1037 	addc	a,r5
      002A80 A3               [24] 1038 	inc	dptr
      002A81 F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	converter.c:108: break;
      002A82 02 2C 1B         [24] 1041 	ljmp	00214$
                                   1042 ;	converter.c:109: case 66://B
      002A85                       1043 00175$:
                                   1044 ;	converter.c:110: if(k==0)
      002A85 EE               [12] 1045 	mov	a,r6
      002A86 4F               [12] 1046 	orl	a,r7
      002A87 70 12            [24] 1047 	jnz	00177$
                                   1048 ;	converter.c:111: i+=0xB00;
      002A89 90 00 08         [24] 1049 	mov	dptr,#_strtohex_i_65537_46
      002A8C E0               [24] 1050 	movx	a,@dptr
      002A8D FC               [12] 1051 	mov	r4,a
      002A8E A3               [24] 1052 	inc	dptr
      002A8F E0               [24] 1053 	movx	a,@dptr
      002A90 FD               [12] 1054 	mov	r5,a
      002A91 90 00 08         [24] 1055 	mov	dptr,#_strtohex_i_65537_46
      002A94 EC               [12] 1056 	mov	a,r4
      002A95 F0               [24] 1057 	movx	@dptr,a
      002A96 74 0B            [12] 1058 	mov	a,#0x0b
      002A98 2D               [12] 1059 	add	a,r5
      002A99 A3               [24] 1060 	inc	dptr
      002A9A F0               [24] 1061 	movx	@dptr,a
      002A9B                       1062 00177$:
                                   1063 ;	converter.c:112: if(k==1)
      002A9B 8E 04            [24] 1064 	mov	ar4,r6
      002A9D 8F 05            [24] 1065 	mov	ar5,r7
      002A9F BE 01 16         [24] 1066 	cjne	r6,#0x01,00179$
      002AA2 BF 00 13         [24] 1067 	cjne	r7,#0x00,00179$
                                   1068 ;	converter.c:113: i+=0x0B0;
      002AA5 90 00 08         [24] 1069 	mov	dptr,#_strtohex_i_65537_46
      002AA8 E0               [24] 1070 	movx	a,@dptr
      002AA9 FA               [12] 1071 	mov	r2,a
      002AAA A3               [24] 1072 	inc	dptr
      002AAB E0               [24] 1073 	movx	a,@dptr
      002AAC FB               [12] 1074 	mov	r3,a
      002AAD 90 00 08         [24] 1075 	mov	dptr,#_strtohex_i_65537_46
      002AB0 74 B0            [12] 1076 	mov	a,#0xb0
      002AB2 2A               [12] 1077 	add	a,r2
      002AB3 F0               [24] 1078 	movx	@dptr,a
      002AB4 E4               [12] 1079 	clr	a
      002AB5 3B               [12] 1080 	addc	a,r3
      002AB6 A3               [24] 1081 	inc	dptr
      002AB7 F0               [24] 1082 	movx	@dptr,a
      002AB8                       1083 00179$:
                                   1084 ;	converter.c:114: if(k==2)
      002AB8 BC 02 05         [24] 1085 	cjne	r4,#0x02,00488$
      002ABB BD 00 02         [24] 1086 	cjne	r5,#0x00,00488$
      002ABE 80 03            [24] 1087 	sjmp	00489$
      002AC0                       1088 00488$:
      002AC0 02 2C 1B         [24] 1089 	ljmp	00214$
      002AC3                       1090 00489$:
                                   1091 ;	converter.c:115: i+=0x00B;
      002AC3 90 00 08         [24] 1092 	mov	dptr,#_strtohex_i_65537_46
      002AC6 E0               [24] 1093 	movx	a,@dptr
      002AC7 FC               [12] 1094 	mov	r4,a
      002AC8 A3               [24] 1095 	inc	dptr
      002AC9 E0               [24] 1096 	movx	a,@dptr
      002ACA FD               [12] 1097 	mov	r5,a
      002ACB 90 00 08         [24] 1098 	mov	dptr,#_strtohex_i_65537_46
      002ACE 74 0B            [12] 1099 	mov	a,#0x0b
      002AD0 2C               [12] 1100 	add	a,r4
      002AD1 F0               [24] 1101 	movx	@dptr,a
      002AD2 E4               [12] 1102 	clr	a
      002AD3 3D               [12] 1103 	addc	a,r5
      002AD4 A3               [24] 1104 	inc	dptr
      002AD5 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	converter.c:116: break;
      002AD6 02 2C 1B         [24] 1107 	ljmp	00214$
                                   1108 ;	converter.c:117: case 67://C
      002AD9                       1109 00182$:
                                   1110 ;	converter.c:118: if(k==0)
      002AD9 EE               [12] 1111 	mov	a,r6
      002ADA 4F               [12] 1112 	orl	a,r7
      002ADB 70 12            [24] 1113 	jnz	00184$
                                   1114 ;	converter.c:119: i+=0xC00;
      002ADD 90 00 08         [24] 1115 	mov	dptr,#_strtohex_i_65537_46
      002AE0 E0               [24] 1116 	movx	a,@dptr
      002AE1 FC               [12] 1117 	mov	r4,a
      002AE2 A3               [24] 1118 	inc	dptr
      002AE3 E0               [24] 1119 	movx	a,@dptr
      002AE4 FD               [12] 1120 	mov	r5,a
      002AE5 90 00 08         [24] 1121 	mov	dptr,#_strtohex_i_65537_46
      002AE8 EC               [12] 1122 	mov	a,r4
      002AE9 F0               [24] 1123 	movx	@dptr,a
      002AEA 74 0C            [12] 1124 	mov	a,#0x0c
      002AEC 2D               [12] 1125 	add	a,r5
      002AED A3               [24] 1126 	inc	dptr
      002AEE F0               [24] 1127 	movx	@dptr,a
      002AEF                       1128 00184$:
                                   1129 ;	converter.c:120: if(k==1)
      002AEF 8E 04            [24] 1130 	mov	ar4,r6
      002AF1 8F 05            [24] 1131 	mov	ar5,r7
      002AF3 BE 01 16         [24] 1132 	cjne	r6,#0x01,00186$
      002AF6 BF 00 13         [24] 1133 	cjne	r7,#0x00,00186$
                                   1134 ;	converter.c:121: i+=0x0C0;
      002AF9 90 00 08         [24] 1135 	mov	dptr,#_strtohex_i_65537_46
      002AFC E0               [24] 1136 	movx	a,@dptr
      002AFD FA               [12] 1137 	mov	r2,a
      002AFE A3               [24] 1138 	inc	dptr
      002AFF E0               [24] 1139 	movx	a,@dptr
      002B00 FB               [12] 1140 	mov	r3,a
      002B01 90 00 08         [24] 1141 	mov	dptr,#_strtohex_i_65537_46
      002B04 74 C0            [12] 1142 	mov	a,#0xc0
      002B06 2A               [12] 1143 	add	a,r2
      002B07 F0               [24] 1144 	movx	@dptr,a
      002B08 E4               [12] 1145 	clr	a
      002B09 3B               [12] 1146 	addc	a,r3
      002B0A A3               [24] 1147 	inc	dptr
      002B0B F0               [24] 1148 	movx	@dptr,a
      002B0C                       1149 00186$:
                                   1150 ;	converter.c:122: if(k==2)
      002B0C BC 02 05         [24] 1151 	cjne	r4,#0x02,00493$
      002B0F BD 00 02         [24] 1152 	cjne	r5,#0x00,00493$
      002B12 80 03            [24] 1153 	sjmp	00494$
      002B14                       1154 00493$:
      002B14 02 2C 1B         [24] 1155 	ljmp	00214$
      002B17                       1156 00494$:
                                   1157 ;	converter.c:123: i+=0x00C;
      002B17 90 00 08         [24] 1158 	mov	dptr,#_strtohex_i_65537_46
      002B1A E0               [24] 1159 	movx	a,@dptr
      002B1B FC               [12] 1160 	mov	r4,a
      002B1C A3               [24] 1161 	inc	dptr
      002B1D E0               [24] 1162 	movx	a,@dptr
      002B1E FD               [12] 1163 	mov	r5,a
      002B1F 90 00 08         [24] 1164 	mov	dptr,#_strtohex_i_65537_46
      002B22 74 0C            [12] 1165 	mov	a,#0x0c
      002B24 2C               [12] 1166 	add	a,r4
      002B25 F0               [24] 1167 	movx	@dptr,a
      002B26 E4               [12] 1168 	clr	a
      002B27 3D               [12] 1169 	addc	a,r5
      002B28 A3               [24] 1170 	inc	dptr
      002B29 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	converter.c:124: break;
      002B2A 02 2C 1B         [24] 1173 	ljmp	00214$
                                   1174 ;	converter.c:125: case 68://D
      002B2D                       1175 00189$:
                                   1176 ;	converter.c:126: if(k==0)
      002B2D EE               [12] 1177 	mov	a,r6
      002B2E 4F               [12] 1178 	orl	a,r7
      002B2F 70 12            [24] 1179 	jnz	00191$
                                   1180 ;	converter.c:127: i+=0xD00;
      002B31 90 00 08         [24] 1181 	mov	dptr,#_strtohex_i_65537_46
      002B34 E0               [24] 1182 	movx	a,@dptr
      002B35 FC               [12] 1183 	mov	r4,a
      002B36 A3               [24] 1184 	inc	dptr
      002B37 E0               [24] 1185 	movx	a,@dptr
      002B38 FD               [12] 1186 	mov	r5,a
      002B39 90 00 08         [24] 1187 	mov	dptr,#_strtohex_i_65537_46
      002B3C EC               [12] 1188 	mov	a,r4
      002B3D F0               [24] 1189 	movx	@dptr,a
      002B3E 74 0D            [12] 1190 	mov	a,#0x0d
      002B40 2D               [12] 1191 	add	a,r5
      002B41 A3               [24] 1192 	inc	dptr
      002B42 F0               [24] 1193 	movx	@dptr,a
      002B43                       1194 00191$:
                                   1195 ;	converter.c:128: if(k==1)
      002B43 8E 04            [24] 1196 	mov	ar4,r6
      002B45 8F 05            [24] 1197 	mov	ar5,r7
      002B47 BE 01 16         [24] 1198 	cjne	r6,#0x01,00193$
      002B4A BF 00 13         [24] 1199 	cjne	r7,#0x00,00193$
                                   1200 ;	converter.c:129: i+=0x0D0;
      002B4D 90 00 08         [24] 1201 	mov	dptr,#_strtohex_i_65537_46
      002B50 E0               [24] 1202 	movx	a,@dptr
      002B51 FA               [12] 1203 	mov	r2,a
      002B52 A3               [24] 1204 	inc	dptr
      002B53 E0               [24] 1205 	movx	a,@dptr
      002B54 FB               [12] 1206 	mov	r3,a
      002B55 90 00 08         [24] 1207 	mov	dptr,#_strtohex_i_65537_46
      002B58 74 D0            [12] 1208 	mov	a,#0xd0
      002B5A 2A               [12] 1209 	add	a,r2
      002B5B F0               [24] 1210 	movx	@dptr,a
      002B5C E4               [12] 1211 	clr	a
      002B5D 3B               [12] 1212 	addc	a,r3
      002B5E A3               [24] 1213 	inc	dptr
      002B5F F0               [24] 1214 	movx	@dptr,a
      002B60                       1215 00193$:
                                   1216 ;	converter.c:130: if(k==2)
      002B60 BC 02 05         [24] 1217 	cjne	r4,#0x02,00498$
      002B63 BD 00 02         [24] 1218 	cjne	r5,#0x00,00498$
      002B66 80 03            [24] 1219 	sjmp	00499$
      002B68                       1220 00498$:
      002B68 02 2C 1B         [24] 1221 	ljmp	00214$
      002B6B                       1222 00499$:
                                   1223 ;	converter.c:131: i+=0x00D;
      002B6B 90 00 08         [24] 1224 	mov	dptr,#_strtohex_i_65537_46
      002B6E E0               [24] 1225 	movx	a,@dptr
      002B6F FC               [12] 1226 	mov	r4,a
      002B70 A3               [24] 1227 	inc	dptr
      002B71 E0               [24] 1228 	movx	a,@dptr
      002B72 FD               [12] 1229 	mov	r5,a
      002B73 90 00 08         [24] 1230 	mov	dptr,#_strtohex_i_65537_46
      002B76 74 0D            [12] 1231 	mov	a,#0x0d
      002B78 2C               [12] 1232 	add	a,r4
      002B79 F0               [24] 1233 	movx	@dptr,a
      002B7A E4               [12] 1234 	clr	a
      002B7B 3D               [12] 1235 	addc	a,r5
      002B7C A3               [24] 1236 	inc	dptr
      002B7D F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	converter.c:132: break;
      002B7E 02 2C 1B         [24] 1239 	ljmp	00214$
                                   1240 ;	converter.c:133: case 69://E
      002B81                       1241 00196$:
                                   1242 ;	converter.c:134: if(k==0)
      002B81 EE               [12] 1243 	mov	a,r6
      002B82 4F               [12] 1244 	orl	a,r7
      002B83 70 12            [24] 1245 	jnz	00198$
                                   1246 ;	converter.c:135: i+=0xE00;
      002B85 90 00 08         [24] 1247 	mov	dptr,#_strtohex_i_65537_46
      002B88 E0               [24] 1248 	movx	a,@dptr
      002B89 FC               [12] 1249 	mov	r4,a
      002B8A A3               [24] 1250 	inc	dptr
      002B8B E0               [24] 1251 	movx	a,@dptr
      002B8C FD               [12] 1252 	mov	r5,a
      002B8D 90 00 08         [24] 1253 	mov	dptr,#_strtohex_i_65537_46
      002B90 EC               [12] 1254 	mov	a,r4
      002B91 F0               [24] 1255 	movx	@dptr,a
      002B92 74 0E            [12] 1256 	mov	a,#0x0e
      002B94 2D               [12] 1257 	add	a,r5
      002B95 A3               [24] 1258 	inc	dptr
      002B96 F0               [24] 1259 	movx	@dptr,a
      002B97                       1260 00198$:
                                   1261 ;	converter.c:136: if(k==1)
      002B97 8E 04            [24] 1262 	mov	ar4,r6
      002B99 8F 05            [24] 1263 	mov	ar5,r7
      002B9B BE 01 16         [24] 1264 	cjne	r6,#0x01,00200$
      002B9E BF 00 13         [24] 1265 	cjne	r7,#0x00,00200$
                                   1266 ;	converter.c:137: i+=0x0E0;
      002BA1 90 00 08         [24] 1267 	mov	dptr,#_strtohex_i_65537_46
      002BA4 E0               [24] 1268 	movx	a,@dptr
      002BA5 FA               [12] 1269 	mov	r2,a
      002BA6 A3               [24] 1270 	inc	dptr
      002BA7 E0               [24] 1271 	movx	a,@dptr
      002BA8 FB               [12] 1272 	mov	r3,a
      002BA9 90 00 08         [24] 1273 	mov	dptr,#_strtohex_i_65537_46
      002BAC 74 E0            [12] 1274 	mov	a,#0xe0
      002BAE 2A               [12] 1275 	add	a,r2
      002BAF F0               [24] 1276 	movx	@dptr,a
      002BB0 E4               [12] 1277 	clr	a
      002BB1 3B               [12] 1278 	addc	a,r3
      002BB2 A3               [24] 1279 	inc	dptr
      002BB3 F0               [24] 1280 	movx	@dptr,a
      002BB4                       1281 00200$:
                                   1282 ;	converter.c:138: if(k==2)
      002BB4 BC 02 64         [24] 1283 	cjne	r4,#0x02,00214$
      002BB7 BD 00 61         [24] 1284 	cjne	r5,#0x00,00214$
                                   1285 ;	converter.c:139: i+=0x00E;
      002BBA 90 00 08         [24] 1286 	mov	dptr,#_strtohex_i_65537_46
      002BBD E0               [24] 1287 	movx	a,@dptr
      002BBE FC               [12] 1288 	mov	r4,a
      002BBF A3               [24] 1289 	inc	dptr
      002BC0 E0               [24] 1290 	movx	a,@dptr
      002BC1 FD               [12] 1291 	mov	r5,a
      002BC2 90 00 08         [24] 1292 	mov	dptr,#_strtohex_i_65537_46
      002BC5 74 0E            [12] 1293 	mov	a,#0x0e
      002BC7 2C               [12] 1294 	add	a,r4
      002BC8 F0               [24] 1295 	movx	@dptr,a
      002BC9 E4               [12] 1296 	clr	a
      002BCA 3D               [12] 1297 	addc	a,r5
      002BCB A3               [24] 1298 	inc	dptr
      002BCC F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	converter.c:140: break;
                                   1301 ;	converter.c:141: case 70://F
      002BCD 80 4C            [24] 1302 	sjmp	00214$
      002BCF                       1303 00203$:
                                   1304 ;	converter.c:142: if(k==0)
      002BCF EE               [12] 1305 	mov	a,r6
      002BD0 4F               [12] 1306 	orl	a,r7
      002BD1 70 12            [24] 1307 	jnz	00205$
                                   1308 ;	converter.c:143: i+=0xF00;
      002BD3 90 00 08         [24] 1309 	mov	dptr,#_strtohex_i_65537_46
      002BD6 E0               [24] 1310 	movx	a,@dptr
      002BD7 FC               [12] 1311 	mov	r4,a
      002BD8 A3               [24] 1312 	inc	dptr
      002BD9 E0               [24] 1313 	movx	a,@dptr
      002BDA FD               [12] 1314 	mov	r5,a
      002BDB 90 00 08         [24] 1315 	mov	dptr,#_strtohex_i_65537_46
      002BDE EC               [12] 1316 	mov	a,r4
      002BDF F0               [24] 1317 	movx	@dptr,a
      002BE0 74 0F            [12] 1318 	mov	a,#0x0f
      002BE2 2D               [12] 1319 	add	a,r5
      002BE3 A3               [24] 1320 	inc	dptr
      002BE4 F0               [24] 1321 	movx	@dptr,a
      002BE5                       1322 00205$:
                                   1323 ;	converter.c:144: if(k==1)
      002BE5 8E 04            [24] 1324 	mov	ar4,r6
      002BE7 8F 05            [24] 1325 	mov	ar5,r7
      002BE9 BE 01 16         [24] 1326 	cjne	r6,#0x01,00207$
      002BEC BF 00 13         [24] 1327 	cjne	r7,#0x00,00207$
                                   1328 ;	converter.c:145: i+=0x0F0;
      002BEF 90 00 08         [24] 1329 	mov	dptr,#_strtohex_i_65537_46
      002BF2 E0               [24] 1330 	movx	a,@dptr
      002BF3 FA               [12] 1331 	mov	r2,a
      002BF4 A3               [24] 1332 	inc	dptr
      002BF5 E0               [24] 1333 	movx	a,@dptr
      002BF6 FB               [12] 1334 	mov	r3,a
      002BF7 90 00 08         [24] 1335 	mov	dptr,#_strtohex_i_65537_46
      002BFA 74 F0            [12] 1336 	mov	a,#0xf0
      002BFC 2A               [12] 1337 	add	a,r2
      002BFD F0               [24] 1338 	movx	@dptr,a
      002BFE E4               [12] 1339 	clr	a
      002BFF 3B               [12] 1340 	addc	a,r3
      002C00 A3               [24] 1341 	inc	dptr
      002C01 F0               [24] 1342 	movx	@dptr,a
      002C02                       1343 00207$:
                                   1344 ;	converter.c:146: if(k==2)
      002C02 BC 02 16         [24] 1345 	cjne	r4,#0x02,00214$
      002C05 BD 00 13         [24] 1346 	cjne	r5,#0x00,00214$
                                   1347 ;	converter.c:147: i+=0x00F;
      002C08 90 00 08         [24] 1348 	mov	dptr,#_strtohex_i_65537_46
      002C0B E0               [24] 1349 	movx	a,@dptr
      002C0C FC               [12] 1350 	mov	r4,a
      002C0D A3               [24] 1351 	inc	dptr
      002C0E E0               [24] 1352 	movx	a,@dptr
      002C0F FD               [12] 1353 	mov	r5,a
      002C10 90 00 08         [24] 1354 	mov	dptr,#_strtohex_i_65537_46
      002C13 74 0F            [12] 1355 	mov	a,#0x0f
      002C15 2C               [12] 1356 	add	a,r4
      002C16 F0               [24] 1357 	movx	@dptr,a
      002C17 E4               [12] 1358 	clr	a
      002C18 3D               [12] 1359 	addc	a,r5
      002C19 A3               [24] 1360 	inc	dptr
      002C1A F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	converter.c:151: }
      002C1B                       1363 00214$:
                                   1364 ;	converter.c:23: for(int k=0; k<3; k++)
      002C1B 0E               [12] 1365 	inc	r6
      002C1C BE 00 01         [24] 1366 	cjne	r6,#0x00,00510$
      002C1F 0F               [12] 1367 	inc	r7
      002C20                       1368 00510$:
      002C20 02 26 B1         [24] 1369 	ljmp	00213$
      002C23                       1370 00211$:
                                   1371 ;	converter.c:154: return i;
      002C23 90 00 08         [24] 1372 	mov	dptr,#_strtohex_i_65537_46
      002C26 E0               [24] 1373 	movx	a,@dptr
      002C27 FE               [12] 1374 	mov	r6,a
      002C28 A3               [24] 1375 	inc	dptr
      002C29 E0               [24] 1376 	movx	a,@dptr
                                   1377 ;	converter.c:155: }
      002C2A 8E 82            [24] 1378 	mov	dpl,r6
      002C2C F5 83            [12] 1379 	mov	dph,a
      002C2E 22               [24] 1380 	ret
                                   1381 	.area CSEG    (CODE)
                                   1382 	.area CONST   (CODE)
                                   1383 	.area XINIT   (CODE)
                                   1384 	.area CABS    (ABS,CODE)
