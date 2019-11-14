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
      0025E7 12 41 7A         [24]  143 	lcall	_strlen
      0025EA AE 82            [24]  144 	mov	r6,dpl
      0025EC AF 83            [24]  145 	mov	r7,dph
                                    146 ;	converter.c:9: switch(length){
      0025EE BE 01 05         [24]  147 	cjne	r6,#0x01,00433$
      0025F1 BF 00 02         [24]  148 	cjne	r7,#0x00,00433$
      0025F4 80 13            [24]  149 	sjmp	00101$
      0025F6                        150 00433$:
      0025F6 BE 02 05         [24]  151 	cjne	r6,#0x02,00434$
      0025F9 BF 00 02         [24]  152 	cjne	r7,#0x00,00434$
      0025FC 80 30            [24]  153 	sjmp	00102$
      0025FE                        154 00434$:
      0025FE BE 03 05         [24]  155 	cjne	r6,#0x03,00435$
      002601 BF 00 02         [24]  156 	cjne	r7,#0x00,00435$
      002604 80 5C            [24]  157 	sjmp	00103$
      002606                        158 00435$:
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
      002617 FB               [12]  170 	mov	r3,a
      002618 A3               [24]  171 	inc	dptr
      002619 E0               [24]  172 	movx	a,@dptr
      00261A FC               [12]  173 	mov	r4,a
      00261B A3               [24]  174 	inc	dptr
      00261C E0               [24]  175 	movx	a,@dptr
      00261D FD               [12]  176 	mov	r5,a
      00261E 8B 82            [24]  177 	mov	dpl,r3
      002620 8C 83            [24]  178 	mov	dph,r4
      002622 8D F0            [24]  179 	mov	b,r5
      002624 12 41 92         [24]  180 	lcall	__gptrget
      002627 FB               [12]  181 	mov	r3,a
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
      002638 FB               [12]  194 	mov	r3,a
      002639 A3               [24]  195 	inc	dptr
      00263A E0               [24]  196 	movx	a,@dptr
      00263B FC               [12]  197 	mov	r4,a
      00263C A3               [24]  198 	inc	dptr
      00263D E0               [24]  199 	movx	a,@dptr
      00263E FD               [12]  200 	mov	r5,a
      00263F 8B 82            [24]  201 	mov	dpl,r3
      002641 8C 83            [24]  202 	mov	dph,r4
      002643 8D F0            [24]  203 	mov	b,r5
      002645 12 41 92         [24]  204 	lcall	__gptrget
      002648 FA               [12]  205 	mov	r2,a
      002649 90 00 05         [24]  206 	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
      00264C F0               [24]  207 	movx	@dptr,a
      00264D 0B               [12]  208 	inc	r3
      00264E BB 00 01         [24]  209 	cjne	r3,#0x00,00436$
      002651 0C               [12]  210 	inc	r4
      002652                        211 00436$:
      002652 8B 82            [24]  212 	mov	dpl,r3
      002654 8C 83            [24]  213 	mov	dph,r4
      002656 8D F0            [24]  214 	mov	b,r5
      002658 12 41 92         [24]  215 	lcall	__gptrget
      00265B FB               [12]  216 	mov	r3,a
      00265C 90 00 06         [24]  217 	mov	dptr,#(_strtohex_f_65536_44 + 0x0002)
      00265F F0               [24]  218 	movx	@dptr,a
                                    219 ;	converter.c:17: case 3:
      002660 80 44            [24]  220 	sjmp	00104$
      002662                        221 00103$:
                                    222 ;	converter.c:18: f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
      002662 90 00 01         [24]  223 	mov	dptr,#_strtohex_l_65536_43
      002665 E0               [24]  224 	movx	a,@dptr
      002666 FB               [12]  225 	mov	r3,a
      002667 A3               [24]  226 	inc	dptr
      002668 E0               [24]  227 	movx	a,@dptr
      002669 FC               [12]  228 	mov	r4,a
      00266A A3               [24]  229 	inc	dptr
      00266B E0               [24]  230 	movx	a,@dptr
      00266C FD               [12]  231 	mov	r5,a
      00266D 8B 82            [24]  232 	mov	dpl,r3
      00266F 8C 83            [24]  233 	mov	dph,r4
      002671 8D F0            [24]  234 	mov	b,r5
      002673 12 41 92         [24]  235 	lcall	__gptrget
      002676 90 00 04         [24]  236 	mov	dptr,#_strtohex_f_65536_44
      002679 F0               [24]  237 	movx	@dptr,a
      00267A 74 01            [12]  238 	mov	a,#0x01
      00267C 2B               [12]  239 	add	a,r3
      00267D F8               [12]  240 	mov	r0,a
      00267E E4               [12]  241 	clr	a
      00267F 3C               [12]  242 	addc	a,r4
      002680 F9               [12]  243 	mov	r1,a
      002681 8D 02            [24]  244 	mov	ar2,r5
      002683 88 82            [24]  245 	mov	dpl,r0
      002685 89 83            [24]  246 	mov	dph,r1
      002687 8A F0            [24]  247 	mov	b,r2
      002689 12 41 92         [24]  248 	lcall	__gptrget
      00268C F8               [12]  249 	mov	r0,a
      00268D 90 00 05         [24]  250 	mov	dptr,#(_strtohex_f_65536_44 + 0x0001)
      002690 F0               [24]  251 	movx	@dptr,a
      002691 74 02            [12]  252 	mov	a,#0x02
      002693 2B               [12]  253 	add	a,r3
      002694 FB               [12]  254 	mov	r3,a
      002695 E4               [12]  255 	clr	a
      002696 3C               [12]  256 	addc	a,r4
      002697 FC               [12]  257 	mov	r4,a
      002698 8B 82            [24]  258 	mov	dpl,r3
      00269A 8C 83            [24]  259 	mov	dph,r4
      00269C 8D F0            [24]  260 	mov	b,r5
      00269E 12 41 92         [24]  261 	lcall	__gptrget
      0026A1 FB               [12]  262 	mov	r3,a
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
      0026AD 7C 00            [12]  274 	mov	r4,#0x00
      0026AF 7D 00            [12]  275 	mov	r5,#0x00
      0026B1                        276 00216$:
      0026B1 C3               [12]  277 	clr	c
      0026B2 EC               [12]  278 	mov	a,r4
      0026B3 94 03            [12]  279 	subb	a,#0x03
      0026B5 ED               [12]  280 	mov	a,r5
      0026B6 64 80            [12]  281 	xrl	a,#0x80
      0026B8 94 80            [12]  282 	subb	a,#0x80
      0026BA 40 03            [24]  283 	jc	00437$
      0026BC 02 2C 2B         [24]  284 	ljmp	00211$
      0026BF                        285 00437$:
                                    286 ;	converter.c:26: switch(toupper(f[k]))
      0026BF EC               [12]  287 	mov	a,r4
      0026C0 24 04            [12]  288 	add	a,#_strtohex_f_65536_44
      0026C2 F5 82            [12]  289 	mov	dpl,a
      0026C4 ED               [12]  290 	mov	a,r5
      0026C5 34 00            [12]  291 	addc	a,#(_strtohex_f_65536_44 >> 8)
      0026C7 F5 83            [12]  292 	mov	dph,a
      0026C9 E0               [24]  293 	movx	a,@dptr
      0026CA FB               [12]  294 	mov	r3,a
      0026CB 7A 00            [12]  295 	mov	r2,#0x00
      0026CD 8B 82            [24]  296 	mov	dpl,r3
      0026CF 8A 83            [24]  297 	mov	dph,r2
      0026D1 C0 07            [24]  298 	push	ar7
      0026D3 C0 06            [24]  299 	push	ar6
      0026D5 C0 05            [24]  300 	push	ar5
      0026D7 C0 04            [24]  301 	push	ar4
      0026D9 12 36 E7         [24]  302 	lcall	_toupper
      0026DC AA 82            [24]  303 	mov	r2,dpl
      0026DE AB 83            [24]  304 	mov	r3,dph
      0026E0 D0 04            [24]  305 	pop	ar4
      0026E2 D0 05            [24]  306 	pop	ar5
      0026E4 D0 06            [24]  307 	pop	ar6
      0026E6 D0 07            [24]  308 	pop	ar7
      0026E8 C3               [12]  309 	clr	c
      0026E9 EA               [12]  310 	mov	a,r2
      0026EA 94 31            [12]  311 	subb	a,#0x31
      0026EC EB               [12]  312 	mov	a,r3
      0026ED 64 80            [12]  313 	xrl	a,#0x80
      0026EF 94 80            [12]  314 	subb	a,#0x80
      0026F1 50 03            [24]  315 	jnc	00438$
      0026F3 02 2C 23         [24]  316 	ljmp	00217$
      0026F6                        317 00438$:
      0026F6 C3               [12]  318 	clr	c
      0026F7 74 46            [12]  319 	mov	a,#0x46
      0026F9 9A               [12]  320 	subb	a,r2
      0026FA 74 80            [12]  321 	mov	a,#(0x00 ^ 0x80)
      0026FC 8B F0            [24]  322 	mov	b,r3
      0026FE 63 F0 80         [24]  323 	xrl	b,#0x80
      002701 95 F0            [12]  324 	subb	a,b
      002703 50 03            [24]  325 	jnc	00439$
      002705 02 2C 23         [24]  326 	ljmp	00217$
      002708                        327 00439$:
      002708 EA               [12]  328 	mov	a,r2
      002709 24 CF            [12]  329 	add	a,#0xcf
      00270B FA               [12]  330 	mov	r2,a
      00270C 24 0A            [12]  331 	add	a,#(00440$-3-.)
      00270E 83               [24]  332 	movc	a,@a+pc
      00270F F5 82            [12]  333 	mov	dpl,a
      002711 EA               [12]  334 	mov	a,r2
      002712 24 1A            [12]  335 	add	a,#(00441$-3-.)
      002714 83               [24]  336 	movc	a,@a+pc
      002715 F5 83            [12]  337 	mov	dph,a
      002717 E4               [12]  338 	clr	a
      002718 73               [24]  339 	jmp	@a+dptr
      002719                        340 00440$:
      002719 45                     341 	.db	00105$
      00271A 99                     342 	.db	00112$
      00271B ED                     343 	.db	00119$
      00271C 41                     344 	.db	00126$
      00271D 95                     345 	.db	00133$
      00271E E9                     346 	.db	00140$
      00271F 3D                     347 	.db	00147$
      002720 91                     348 	.db	00154$
      002721 E5                     349 	.db	00161$
      002722 23                     350 	.db	00217$
      002723 23                     351 	.db	00217$
      002724 23                     352 	.db	00217$
      002725 23                     353 	.db	00217$
      002726 23                     354 	.db	00217$
      002727 23                     355 	.db	00217$
      002728 23                     356 	.db	00217$
      002729 39                     357 	.db	00168$
      00272A 8D                     358 	.db	00175$
      00272B E1                     359 	.db	00182$
      00272C 35                     360 	.db	00189$
      00272D 89                     361 	.db	00196$
      00272E D7                     362 	.db	00203$
      00272F                        363 00441$:
      00272F 27                     364 	.db	00105$>>8
      002730 27                     365 	.db	00112$>>8
      002731 27                     366 	.db	00119$>>8
      002732 28                     367 	.db	00126$>>8
      002733 28                     368 	.db	00133$>>8
      002734 28                     369 	.db	00140$>>8
      002735 29                     370 	.db	00147$>>8
      002736 29                     371 	.db	00154$>>8
      002737 29                     372 	.db	00161$>>8
      002738 2C                     373 	.db	00217$>>8
      002739 2C                     374 	.db	00217$>>8
      00273A 2C                     375 	.db	00217$>>8
      00273B 2C                     376 	.db	00217$>>8
      00273C 2C                     377 	.db	00217$>>8
      00273D 2C                     378 	.db	00217$>>8
      00273E 2C                     379 	.db	00217$>>8
      00273F 2A                     380 	.db	00168$>>8
      002740 2A                     381 	.db	00175$>>8
      002741 2A                     382 	.db	00182$>>8
      002742 2B                     383 	.db	00189$>>8
      002743 2B                     384 	.db	00196$>>8
      002744 2B                     385 	.db	00203$>>8
                                    386 ;	converter.c:29: case '1'://1
      002745                        387 00105$:
                                    388 ;	converter.c:30: if(k==0)
      002745 EC               [12]  389 	mov	a,r4
      002746 4D               [12]  390 	orl	a,r5
      002747 70 12            [24]  391 	jnz	00107$
                                    392 ;	converter.c:31: i+=0x100;
      002749 90 00 08         [24]  393 	mov	dptr,#_strtohex_i_65537_46
      00274C E0               [24]  394 	movx	a,@dptr
      00274D FA               [12]  395 	mov	r2,a
      00274E A3               [24]  396 	inc	dptr
      00274F E0               [24]  397 	movx	a,@dptr
      002750 FB               [12]  398 	mov	r3,a
      002751 90 00 08         [24]  399 	mov	dptr,#_strtohex_i_65537_46
      002754 EA               [12]  400 	mov	a,r2
      002755 F0               [24]  401 	movx	@dptr,a
      002756 74 01            [12]  402 	mov	a,#0x01
      002758 2B               [12]  403 	add	a,r3
      002759 A3               [24]  404 	inc	dptr
      00275A F0               [24]  405 	movx	@dptr,a
      00275B                        406 00107$:
                                    407 ;	converter.c:32: if(k==1)
      00275B 8C 02            [24]  408 	mov	ar2,r4
      00275D 8D 03            [24]  409 	mov	ar3,r5
      00275F BC 01 16         [24]  410 	cjne	r4,#0x01,00109$
      002762 BD 00 13         [24]  411 	cjne	r5,#0x00,00109$
                                    412 ;	converter.c:33: i+=0x010;
      002765 90 00 08         [24]  413 	mov	dptr,#_strtohex_i_65537_46
      002768 E0               [24]  414 	movx	a,@dptr
      002769 F8               [12]  415 	mov	r0,a
      00276A A3               [24]  416 	inc	dptr
      00276B E0               [24]  417 	movx	a,@dptr
      00276C F9               [12]  418 	mov	r1,a
      00276D 90 00 08         [24]  419 	mov	dptr,#_strtohex_i_65537_46
      002770 74 10            [12]  420 	mov	a,#0x10
      002772 28               [12]  421 	add	a,r0
      002773 F0               [24]  422 	movx	@dptr,a
      002774 E4               [12]  423 	clr	a
      002775 39               [12]  424 	addc	a,r1
      002776 A3               [24]  425 	inc	dptr
      002777 F0               [24]  426 	movx	@dptr,a
      002778                        427 00109$:
                                    428 ;	converter.c:34: if(k==2)
      002778 BA 02 05         [24]  429 	cjne	r2,#0x02,00445$
      00277B BB 00 02         [24]  430 	cjne	r3,#0x00,00445$
      00277E 80 03            [24]  431 	sjmp	00446$
      002780                        432 00445$:
      002780 02 2C 23         [24]  433 	ljmp	00217$
      002783                        434 00446$:
                                    435 ;	converter.c:35: i+=0x001;
      002783 90 00 08         [24]  436 	mov	dptr,#_strtohex_i_65537_46
      002786 E0               [24]  437 	movx	a,@dptr
      002787 FA               [12]  438 	mov	r2,a
      002788 A3               [24]  439 	inc	dptr
      002789 E0               [24]  440 	movx	a,@dptr
      00278A FB               [12]  441 	mov	r3,a
      00278B 90 00 08         [24]  442 	mov	dptr,#_strtohex_i_65537_46
      00278E 74 01            [12]  443 	mov	a,#0x01
      002790 2A               [12]  444 	add	a,r2
      002791 F0               [24]  445 	movx	@dptr,a
      002792 E4               [12]  446 	clr	a
      002793 3B               [12]  447 	addc	a,r3
      002794 A3               [24]  448 	inc	dptr
      002795 F0               [24]  449 	movx	@dptr,a
                                    450 ;	converter.c:36: break;
      002796 02 2C 23         [24]  451 	ljmp	00217$
                                    452 ;	converter.c:37: case 50://2
      002799                        453 00112$:
                                    454 ;	converter.c:38: if(k==0)
      002799 EC               [12]  455 	mov	a,r4
      00279A 4D               [12]  456 	orl	a,r5
      00279B 70 12            [24]  457 	jnz	00114$
                                    458 ;	converter.c:39: i+=0x200;
      00279D 90 00 08         [24]  459 	mov	dptr,#_strtohex_i_65537_46
      0027A0 E0               [24]  460 	movx	a,@dptr
      0027A1 FA               [12]  461 	mov	r2,a
      0027A2 A3               [24]  462 	inc	dptr
      0027A3 E0               [24]  463 	movx	a,@dptr
      0027A4 FB               [12]  464 	mov	r3,a
      0027A5 90 00 08         [24]  465 	mov	dptr,#_strtohex_i_65537_46
      0027A8 EA               [12]  466 	mov	a,r2
      0027A9 F0               [24]  467 	movx	@dptr,a
      0027AA 74 02            [12]  468 	mov	a,#0x02
      0027AC 2B               [12]  469 	add	a,r3
      0027AD A3               [24]  470 	inc	dptr
      0027AE F0               [24]  471 	movx	@dptr,a
      0027AF                        472 00114$:
                                    473 ;	converter.c:40: if(k==1)
      0027AF 8C 02            [24]  474 	mov	ar2,r4
      0027B1 8D 03            [24]  475 	mov	ar3,r5
      0027B3 BC 01 16         [24]  476 	cjne	r4,#0x01,00116$
      0027B6 BD 00 13         [24]  477 	cjne	r5,#0x00,00116$
                                    478 ;	converter.c:41: i+=0x020;
      0027B9 90 00 08         [24]  479 	mov	dptr,#_strtohex_i_65537_46
      0027BC E0               [24]  480 	movx	a,@dptr
      0027BD F8               [12]  481 	mov	r0,a
      0027BE A3               [24]  482 	inc	dptr
      0027BF E0               [24]  483 	movx	a,@dptr
      0027C0 F9               [12]  484 	mov	r1,a
      0027C1 90 00 08         [24]  485 	mov	dptr,#_strtohex_i_65537_46
      0027C4 74 20            [12]  486 	mov	a,#0x20
      0027C6 28               [12]  487 	add	a,r0
      0027C7 F0               [24]  488 	movx	@dptr,a
      0027C8 E4               [12]  489 	clr	a
      0027C9 39               [12]  490 	addc	a,r1
      0027CA A3               [24]  491 	inc	dptr
      0027CB F0               [24]  492 	movx	@dptr,a
      0027CC                        493 00116$:
                                    494 ;	converter.c:42: if(k==2)
      0027CC BA 02 05         [24]  495 	cjne	r2,#0x02,00450$
      0027CF BB 00 02         [24]  496 	cjne	r3,#0x00,00450$
      0027D2 80 03            [24]  497 	sjmp	00451$
      0027D4                        498 00450$:
      0027D4 02 2C 23         [24]  499 	ljmp	00217$
      0027D7                        500 00451$:
                                    501 ;	converter.c:43: i+=0x002;
      0027D7 90 00 08         [24]  502 	mov	dptr,#_strtohex_i_65537_46
      0027DA E0               [24]  503 	movx	a,@dptr
      0027DB FA               [12]  504 	mov	r2,a
      0027DC A3               [24]  505 	inc	dptr
      0027DD E0               [24]  506 	movx	a,@dptr
      0027DE FB               [12]  507 	mov	r3,a
      0027DF 90 00 08         [24]  508 	mov	dptr,#_strtohex_i_65537_46
      0027E2 74 02            [12]  509 	mov	a,#0x02
      0027E4 2A               [12]  510 	add	a,r2
      0027E5 F0               [24]  511 	movx	@dptr,a
      0027E6 E4               [12]  512 	clr	a
      0027E7 3B               [12]  513 	addc	a,r3
      0027E8 A3               [24]  514 	inc	dptr
      0027E9 F0               [24]  515 	movx	@dptr,a
                                    516 ;	converter.c:44: break;
      0027EA 02 2C 23         [24]  517 	ljmp	00217$
                                    518 ;	converter.c:45: case 51://3
      0027ED                        519 00119$:
                                    520 ;	converter.c:46: if(k==0)
      0027ED EC               [12]  521 	mov	a,r4
      0027EE 4D               [12]  522 	orl	a,r5
      0027EF 70 12            [24]  523 	jnz	00121$
                                    524 ;	converter.c:47: i+=0x300;
      0027F1 90 00 08         [24]  525 	mov	dptr,#_strtohex_i_65537_46
      0027F4 E0               [24]  526 	movx	a,@dptr
      0027F5 FA               [12]  527 	mov	r2,a
      0027F6 A3               [24]  528 	inc	dptr
      0027F7 E0               [24]  529 	movx	a,@dptr
      0027F8 FB               [12]  530 	mov	r3,a
      0027F9 90 00 08         [24]  531 	mov	dptr,#_strtohex_i_65537_46
      0027FC EA               [12]  532 	mov	a,r2
      0027FD F0               [24]  533 	movx	@dptr,a
      0027FE 74 03            [12]  534 	mov	a,#0x03
      002800 2B               [12]  535 	add	a,r3
      002801 A3               [24]  536 	inc	dptr
      002802 F0               [24]  537 	movx	@dptr,a
      002803                        538 00121$:
                                    539 ;	converter.c:48: if(k==1)
      002803 8C 02            [24]  540 	mov	ar2,r4
      002805 8D 03            [24]  541 	mov	ar3,r5
      002807 BC 01 16         [24]  542 	cjne	r4,#0x01,00123$
      00280A BD 00 13         [24]  543 	cjne	r5,#0x00,00123$
                                    544 ;	converter.c:49: i+=0x030;
      00280D 90 00 08         [24]  545 	mov	dptr,#_strtohex_i_65537_46
      002810 E0               [24]  546 	movx	a,@dptr
      002811 F8               [12]  547 	mov	r0,a
      002812 A3               [24]  548 	inc	dptr
      002813 E0               [24]  549 	movx	a,@dptr
      002814 F9               [12]  550 	mov	r1,a
      002815 90 00 08         [24]  551 	mov	dptr,#_strtohex_i_65537_46
      002818 74 30            [12]  552 	mov	a,#0x30
      00281A 28               [12]  553 	add	a,r0
      00281B F0               [24]  554 	movx	@dptr,a
      00281C E4               [12]  555 	clr	a
      00281D 39               [12]  556 	addc	a,r1
      00281E A3               [24]  557 	inc	dptr
      00281F F0               [24]  558 	movx	@dptr,a
      002820                        559 00123$:
                                    560 ;	converter.c:50: if(k==2)
      002820 BA 02 05         [24]  561 	cjne	r2,#0x02,00455$
      002823 BB 00 02         [24]  562 	cjne	r3,#0x00,00455$
      002826 80 03            [24]  563 	sjmp	00456$
      002828                        564 00455$:
      002828 02 2C 23         [24]  565 	ljmp	00217$
      00282B                        566 00456$:
                                    567 ;	converter.c:51: i+=0x003;
      00282B 90 00 08         [24]  568 	mov	dptr,#_strtohex_i_65537_46
      00282E E0               [24]  569 	movx	a,@dptr
      00282F FA               [12]  570 	mov	r2,a
      002830 A3               [24]  571 	inc	dptr
      002831 E0               [24]  572 	movx	a,@dptr
      002832 FB               [12]  573 	mov	r3,a
      002833 90 00 08         [24]  574 	mov	dptr,#_strtohex_i_65537_46
      002836 74 03            [12]  575 	mov	a,#0x03
      002838 2A               [12]  576 	add	a,r2
      002839 F0               [24]  577 	movx	@dptr,a
      00283A E4               [12]  578 	clr	a
      00283B 3B               [12]  579 	addc	a,r3
      00283C A3               [24]  580 	inc	dptr
      00283D F0               [24]  581 	movx	@dptr,a
                                    582 ;	converter.c:52: break;
      00283E 02 2C 23         [24]  583 	ljmp	00217$
                                    584 ;	converter.c:53: case 52://4
      002841                        585 00126$:
                                    586 ;	converter.c:54: if(k==0)
      002841 EC               [12]  587 	mov	a,r4
      002842 4D               [12]  588 	orl	a,r5
      002843 70 12            [24]  589 	jnz	00128$
                                    590 ;	converter.c:55: i+=0x400;
      002845 90 00 08         [24]  591 	mov	dptr,#_strtohex_i_65537_46
      002848 E0               [24]  592 	movx	a,@dptr
      002849 FA               [12]  593 	mov	r2,a
      00284A A3               [24]  594 	inc	dptr
      00284B E0               [24]  595 	movx	a,@dptr
      00284C FB               [12]  596 	mov	r3,a
      00284D 90 00 08         [24]  597 	mov	dptr,#_strtohex_i_65537_46
      002850 EA               [12]  598 	mov	a,r2
      002851 F0               [24]  599 	movx	@dptr,a
      002852 74 04            [12]  600 	mov	a,#0x04
      002854 2B               [12]  601 	add	a,r3
      002855 A3               [24]  602 	inc	dptr
      002856 F0               [24]  603 	movx	@dptr,a
      002857                        604 00128$:
                                    605 ;	converter.c:56: if(k==1)
      002857 8C 02            [24]  606 	mov	ar2,r4
      002859 8D 03            [24]  607 	mov	ar3,r5
      00285B BC 01 16         [24]  608 	cjne	r4,#0x01,00130$
      00285E BD 00 13         [24]  609 	cjne	r5,#0x00,00130$
                                    610 ;	converter.c:57: i+=0x040;
      002861 90 00 08         [24]  611 	mov	dptr,#_strtohex_i_65537_46
      002864 E0               [24]  612 	movx	a,@dptr
      002865 F8               [12]  613 	mov	r0,a
      002866 A3               [24]  614 	inc	dptr
      002867 E0               [24]  615 	movx	a,@dptr
      002868 F9               [12]  616 	mov	r1,a
      002869 90 00 08         [24]  617 	mov	dptr,#_strtohex_i_65537_46
      00286C 74 40            [12]  618 	mov	a,#0x40
      00286E 28               [12]  619 	add	a,r0
      00286F F0               [24]  620 	movx	@dptr,a
      002870 E4               [12]  621 	clr	a
      002871 39               [12]  622 	addc	a,r1
      002872 A3               [24]  623 	inc	dptr
      002873 F0               [24]  624 	movx	@dptr,a
      002874                        625 00130$:
                                    626 ;	converter.c:58: if(k==2)
      002874 BA 02 05         [24]  627 	cjne	r2,#0x02,00460$
      002877 BB 00 02         [24]  628 	cjne	r3,#0x00,00460$
      00287A 80 03            [24]  629 	sjmp	00461$
      00287C                        630 00460$:
      00287C 02 2C 23         [24]  631 	ljmp	00217$
      00287F                        632 00461$:
                                    633 ;	converter.c:59: i+=0x004;
      00287F 90 00 08         [24]  634 	mov	dptr,#_strtohex_i_65537_46
      002882 E0               [24]  635 	movx	a,@dptr
      002883 FA               [12]  636 	mov	r2,a
      002884 A3               [24]  637 	inc	dptr
      002885 E0               [24]  638 	movx	a,@dptr
      002886 FB               [12]  639 	mov	r3,a
      002887 90 00 08         [24]  640 	mov	dptr,#_strtohex_i_65537_46
      00288A 74 04            [12]  641 	mov	a,#0x04
      00288C 2A               [12]  642 	add	a,r2
      00288D F0               [24]  643 	movx	@dptr,a
      00288E E4               [12]  644 	clr	a
      00288F 3B               [12]  645 	addc	a,r3
      002890 A3               [24]  646 	inc	dptr
      002891 F0               [24]  647 	movx	@dptr,a
                                    648 ;	converter.c:60: break;
      002892 02 2C 23         [24]  649 	ljmp	00217$
                                    650 ;	converter.c:61: case 53://5
      002895                        651 00133$:
                                    652 ;	converter.c:62: if(k==0)
      002895 EC               [12]  653 	mov	a,r4
      002896 4D               [12]  654 	orl	a,r5
      002897 70 12            [24]  655 	jnz	00135$
                                    656 ;	converter.c:63: i+=0x500;
      002899 90 00 08         [24]  657 	mov	dptr,#_strtohex_i_65537_46
      00289C E0               [24]  658 	movx	a,@dptr
      00289D FA               [12]  659 	mov	r2,a
      00289E A3               [24]  660 	inc	dptr
      00289F E0               [24]  661 	movx	a,@dptr
      0028A0 FB               [12]  662 	mov	r3,a
      0028A1 90 00 08         [24]  663 	mov	dptr,#_strtohex_i_65537_46
      0028A4 EA               [12]  664 	mov	a,r2
      0028A5 F0               [24]  665 	movx	@dptr,a
      0028A6 74 05            [12]  666 	mov	a,#0x05
      0028A8 2B               [12]  667 	add	a,r3
      0028A9 A3               [24]  668 	inc	dptr
      0028AA F0               [24]  669 	movx	@dptr,a
      0028AB                        670 00135$:
                                    671 ;	converter.c:64: if(k==1)
      0028AB 8C 02            [24]  672 	mov	ar2,r4
      0028AD 8D 03            [24]  673 	mov	ar3,r5
      0028AF BC 01 16         [24]  674 	cjne	r4,#0x01,00137$
      0028B2 BD 00 13         [24]  675 	cjne	r5,#0x00,00137$
                                    676 ;	converter.c:65: i+=0x050;
      0028B5 90 00 08         [24]  677 	mov	dptr,#_strtohex_i_65537_46
      0028B8 E0               [24]  678 	movx	a,@dptr
      0028B9 F8               [12]  679 	mov	r0,a
      0028BA A3               [24]  680 	inc	dptr
      0028BB E0               [24]  681 	movx	a,@dptr
      0028BC F9               [12]  682 	mov	r1,a
      0028BD 90 00 08         [24]  683 	mov	dptr,#_strtohex_i_65537_46
      0028C0 74 50            [12]  684 	mov	a,#0x50
      0028C2 28               [12]  685 	add	a,r0
      0028C3 F0               [24]  686 	movx	@dptr,a
      0028C4 E4               [12]  687 	clr	a
      0028C5 39               [12]  688 	addc	a,r1
      0028C6 A3               [24]  689 	inc	dptr
      0028C7 F0               [24]  690 	movx	@dptr,a
      0028C8                        691 00137$:
                                    692 ;	converter.c:66: if(k==2)
      0028C8 BA 02 05         [24]  693 	cjne	r2,#0x02,00465$
      0028CB BB 00 02         [24]  694 	cjne	r3,#0x00,00465$
      0028CE 80 03            [24]  695 	sjmp	00466$
      0028D0                        696 00465$:
      0028D0 02 2C 23         [24]  697 	ljmp	00217$
      0028D3                        698 00466$:
                                    699 ;	converter.c:67: i+=0x005;
      0028D3 90 00 08         [24]  700 	mov	dptr,#_strtohex_i_65537_46
      0028D6 E0               [24]  701 	movx	a,@dptr
      0028D7 FA               [12]  702 	mov	r2,a
      0028D8 A3               [24]  703 	inc	dptr
      0028D9 E0               [24]  704 	movx	a,@dptr
      0028DA FB               [12]  705 	mov	r3,a
      0028DB 90 00 08         [24]  706 	mov	dptr,#_strtohex_i_65537_46
      0028DE 74 05            [12]  707 	mov	a,#0x05
      0028E0 2A               [12]  708 	add	a,r2
      0028E1 F0               [24]  709 	movx	@dptr,a
      0028E2 E4               [12]  710 	clr	a
      0028E3 3B               [12]  711 	addc	a,r3
      0028E4 A3               [24]  712 	inc	dptr
      0028E5 F0               [24]  713 	movx	@dptr,a
                                    714 ;	converter.c:68: break;
      0028E6 02 2C 23         [24]  715 	ljmp	00217$
                                    716 ;	converter.c:69: case 54://6
      0028E9                        717 00140$:
                                    718 ;	converter.c:70: if(k==0)
      0028E9 EC               [12]  719 	mov	a,r4
      0028EA 4D               [12]  720 	orl	a,r5
      0028EB 70 12            [24]  721 	jnz	00142$
                                    722 ;	converter.c:71: i+=0x600;
      0028ED 90 00 08         [24]  723 	mov	dptr,#_strtohex_i_65537_46
      0028F0 E0               [24]  724 	movx	a,@dptr
      0028F1 FA               [12]  725 	mov	r2,a
      0028F2 A3               [24]  726 	inc	dptr
      0028F3 E0               [24]  727 	movx	a,@dptr
      0028F4 FB               [12]  728 	mov	r3,a
      0028F5 90 00 08         [24]  729 	mov	dptr,#_strtohex_i_65537_46
      0028F8 EA               [12]  730 	mov	a,r2
      0028F9 F0               [24]  731 	movx	@dptr,a
      0028FA 74 06            [12]  732 	mov	a,#0x06
      0028FC 2B               [12]  733 	add	a,r3
      0028FD A3               [24]  734 	inc	dptr
      0028FE F0               [24]  735 	movx	@dptr,a
      0028FF                        736 00142$:
                                    737 ;	converter.c:72: if(k==1)
      0028FF 8C 02            [24]  738 	mov	ar2,r4
      002901 8D 03            [24]  739 	mov	ar3,r5
      002903 BC 01 16         [24]  740 	cjne	r4,#0x01,00144$
      002906 BD 00 13         [24]  741 	cjne	r5,#0x00,00144$
                                    742 ;	converter.c:73: i+=0x060;
      002909 90 00 08         [24]  743 	mov	dptr,#_strtohex_i_65537_46
      00290C E0               [24]  744 	movx	a,@dptr
      00290D F8               [12]  745 	mov	r0,a
      00290E A3               [24]  746 	inc	dptr
      00290F E0               [24]  747 	movx	a,@dptr
      002910 F9               [12]  748 	mov	r1,a
      002911 90 00 08         [24]  749 	mov	dptr,#_strtohex_i_65537_46
      002914 74 60            [12]  750 	mov	a,#0x60
      002916 28               [12]  751 	add	a,r0
      002917 F0               [24]  752 	movx	@dptr,a
      002918 E4               [12]  753 	clr	a
      002919 39               [12]  754 	addc	a,r1
      00291A A3               [24]  755 	inc	dptr
      00291B F0               [24]  756 	movx	@dptr,a
      00291C                        757 00144$:
                                    758 ;	converter.c:74: if(k==2)
      00291C BA 02 05         [24]  759 	cjne	r2,#0x02,00470$
      00291F BB 00 02         [24]  760 	cjne	r3,#0x00,00470$
      002922 80 03            [24]  761 	sjmp	00471$
      002924                        762 00470$:
      002924 02 2C 23         [24]  763 	ljmp	00217$
      002927                        764 00471$:
                                    765 ;	converter.c:75: i+=0x006;
      002927 90 00 08         [24]  766 	mov	dptr,#_strtohex_i_65537_46
      00292A E0               [24]  767 	movx	a,@dptr
      00292B FA               [12]  768 	mov	r2,a
      00292C A3               [24]  769 	inc	dptr
      00292D E0               [24]  770 	movx	a,@dptr
      00292E FB               [12]  771 	mov	r3,a
      00292F 90 00 08         [24]  772 	mov	dptr,#_strtohex_i_65537_46
      002932 74 06            [12]  773 	mov	a,#0x06
      002934 2A               [12]  774 	add	a,r2
      002935 F0               [24]  775 	movx	@dptr,a
      002936 E4               [12]  776 	clr	a
      002937 3B               [12]  777 	addc	a,r3
      002938 A3               [24]  778 	inc	dptr
      002939 F0               [24]  779 	movx	@dptr,a
                                    780 ;	converter.c:76: break;
      00293A 02 2C 23         [24]  781 	ljmp	00217$
                                    782 ;	converter.c:77: case 55://7
      00293D                        783 00147$:
                                    784 ;	converter.c:78: if(k==0)
      00293D EC               [12]  785 	mov	a,r4
      00293E 4D               [12]  786 	orl	a,r5
      00293F 70 12            [24]  787 	jnz	00149$
                                    788 ;	converter.c:79: i+=0x700;
      002941 90 00 08         [24]  789 	mov	dptr,#_strtohex_i_65537_46
      002944 E0               [24]  790 	movx	a,@dptr
      002945 FA               [12]  791 	mov	r2,a
      002946 A3               [24]  792 	inc	dptr
      002947 E0               [24]  793 	movx	a,@dptr
      002948 FB               [12]  794 	mov	r3,a
      002949 90 00 08         [24]  795 	mov	dptr,#_strtohex_i_65537_46
      00294C EA               [12]  796 	mov	a,r2
      00294D F0               [24]  797 	movx	@dptr,a
      00294E 74 07            [12]  798 	mov	a,#0x07
      002950 2B               [12]  799 	add	a,r3
      002951 A3               [24]  800 	inc	dptr
      002952 F0               [24]  801 	movx	@dptr,a
      002953                        802 00149$:
                                    803 ;	converter.c:80: if(k==1)
      002953 8C 02            [24]  804 	mov	ar2,r4
      002955 8D 03            [24]  805 	mov	ar3,r5
      002957 BC 01 16         [24]  806 	cjne	r4,#0x01,00151$
      00295A BD 00 13         [24]  807 	cjne	r5,#0x00,00151$
                                    808 ;	converter.c:81: i+=0x070;
      00295D 90 00 08         [24]  809 	mov	dptr,#_strtohex_i_65537_46
      002960 E0               [24]  810 	movx	a,@dptr
      002961 F8               [12]  811 	mov	r0,a
      002962 A3               [24]  812 	inc	dptr
      002963 E0               [24]  813 	movx	a,@dptr
      002964 F9               [12]  814 	mov	r1,a
      002965 90 00 08         [24]  815 	mov	dptr,#_strtohex_i_65537_46
      002968 74 70            [12]  816 	mov	a,#0x70
      00296A 28               [12]  817 	add	a,r0
      00296B F0               [24]  818 	movx	@dptr,a
      00296C E4               [12]  819 	clr	a
      00296D 39               [12]  820 	addc	a,r1
      00296E A3               [24]  821 	inc	dptr
      00296F F0               [24]  822 	movx	@dptr,a
      002970                        823 00151$:
                                    824 ;	converter.c:82: if(k==2)
      002970 BA 02 05         [24]  825 	cjne	r2,#0x02,00475$
      002973 BB 00 02         [24]  826 	cjne	r3,#0x00,00475$
      002976 80 03            [24]  827 	sjmp	00476$
      002978                        828 00475$:
      002978 02 2C 23         [24]  829 	ljmp	00217$
      00297B                        830 00476$:
                                    831 ;	converter.c:83: i+=0x007;
      00297B 90 00 08         [24]  832 	mov	dptr,#_strtohex_i_65537_46
      00297E E0               [24]  833 	movx	a,@dptr
      00297F FA               [12]  834 	mov	r2,a
      002980 A3               [24]  835 	inc	dptr
      002981 E0               [24]  836 	movx	a,@dptr
      002982 FB               [12]  837 	mov	r3,a
      002983 90 00 08         [24]  838 	mov	dptr,#_strtohex_i_65537_46
      002986 74 07            [12]  839 	mov	a,#0x07
      002988 2A               [12]  840 	add	a,r2
      002989 F0               [24]  841 	movx	@dptr,a
      00298A E4               [12]  842 	clr	a
      00298B 3B               [12]  843 	addc	a,r3
      00298C A3               [24]  844 	inc	dptr
      00298D F0               [24]  845 	movx	@dptr,a
                                    846 ;	converter.c:84: break;
      00298E 02 2C 23         [24]  847 	ljmp	00217$
                                    848 ;	converter.c:85: case 56://8
      002991                        849 00154$:
                                    850 ;	converter.c:86: if(k==0)
      002991 EC               [12]  851 	mov	a,r4
      002992 4D               [12]  852 	orl	a,r5
      002993 70 12            [24]  853 	jnz	00156$
                                    854 ;	converter.c:87: i+=0x800;
      002995 90 00 08         [24]  855 	mov	dptr,#_strtohex_i_65537_46
      002998 E0               [24]  856 	movx	a,@dptr
      002999 FA               [12]  857 	mov	r2,a
      00299A A3               [24]  858 	inc	dptr
      00299B E0               [24]  859 	movx	a,@dptr
      00299C FB               [12]  860 	mov	r3,a
      00299D 90 00 08         [24]  861 	mov	dptr,#_strtohex_i_65537_46
      0029A0 EA               [12]  862 	mov	a,r2
      0029A1 F0               [24]  863 	movx	@dptr,a
      0029A2 74 08            [12]  864 	mov	a,#0x08
      0029A4 2B               [12]  865 	add	a,r3
      0029A5 A3               [24]  866 	inc	dptr
      0029A6 F0               [24]  867 	movx	@dptr,a
      0029A7                        868 00156$:
                                    869 ;	converter.c:88: if(k==1)
      0029A7 8C 02            [24]  870 	mov	ar2,r4
      0029A9 8D 03            [24]  871 	mov	ar3,r5
      0029AB BC 01 16         [24]  872 	cjne	r4,#0x01,00158$
      0029AE BD 00 13         [24]  873 	cjne	r5,#0x00,00158$
                                    874 ;	converter.c:89: i+=0x080;
      0029B1 90 00 08         [24]  875 	mov	dptr,#_strtohex_i_65537_46
      0029B4 E0               [24]  876 	movx	a,@dptr
      0029B5 F8               [12]  877 	mov	r0,a
      0029B6 A3               [24]  878 	inc	dptr
      0029B7 E0               [24]  879 	movx	a,@dptr
      0029B8 F9               [12]  880 	mov	r1,a
      0029B9 90 00 08         [24]  881 	mov	dptr,#_strtohex_i_65537_46
      0029BC 74 80            [12]  882 	mov	a,#0x80
      0029BE 28               [12]  883 	add	a,r0
      0029BF F0               [24]  884 	movx	@dptr,a
      0029C0 E4               [12]  885 	clr	a
      0029C1 39               [12]  886 	addc	a,r1
      0029C2 A3               [24]  887 	inc	dptr
      0029C3 F0               [24]  888 	movx	@dptr,a
      0029C4                        889 00158$:
                                    890 ;	converter.c:90: if(k==2)
      0029C4 BA 02 05         [24]  891 	cjne	r2,#0x02,00480$
      0029C7 BB 00 02         [24]  892 	cjne	r3,#0x00,00480$
      0029CA 80 03            [24]  893 	sjmp	00481$
      0029CC                        894 00480$:
      0029CC 02 2C 23         [24]  895 	ljmp	00217$
      0029CF                        896 00481$:
                                    897 ;	converter.c:91: i+=0x008;
      0029CF 90 00 08         [24]  898 	mov	dptr,#_strtohex_i_65537_46
      0029D2 E0               [24]  899 	movx	a,@dptr
      0029D3 FA               [12]  900 	mov	r2,a
      0029D4 A3               [24]  901 	inc	dptr
      0029D5 E0               [24]  902 	movx	a,@dptr
      0029D6 FB               [12]  903 	mov	r3,a
      0029D7 90 00 08         [24]  904 	mov	dptr,#_strtohex_i_65537_46
      0029DA 74 08            [12]  905 	mov	a,#0x08
      0029DC 2A               [12]  906 	add	a,r2
      0029DD F0               [24]  907 	movx	@dptr,a
      0029DE E4               [12]  908 	clr	a
      0029DF 3B               [12]  909 	addc	a,r3
      0029E0 A3               [24]  910 	inc	dptr
      0029E1 F0               [24]  911 	movx	@dptr,a
                                    912 ;	converter.c:92: break;
      0029E2 02 2C 23         [24]  913 	ljmp	00217$
                                    914 ;	converter.c:93: case 57://9
      0029E5                        915 00161$:
                                    916 ;	converter.c:94: if(k==0)
      0029E5 EC               [12]  917 	mov	a,r4
      0029E6 4D               [12]  918 	orl	a,r5
      0029E7 70 12            [24]  919 	jnz	00163$
                                    920 ;	converter.c:95: i+=0x900;
      0029E9 90 00 08         [24]  921 	mov	dptr,#_strtohex_i_65537_46
      0029EC E0               [24]  922 	movx	a,@dptr
      0029ED FA               [12]  923 	mov	r2,a
      0029EE A3               [24]  924 	inc	dptr
      0029EF E0               [24]  925 	movx	a,@dptr
      0029F0 FB               [12]  926 	mov	r3,a
      0029F1 90 00 08         [24]  927 	mov	dptr,#_strtohex_i_65537_46
      0029F4 EA               [12]  928 	mov	a,r2
      0029F5 F0               [24]  929 	movx	@dptr,a
      0029F6 74 09            [12]  930 	mov	a,#0x09
      0029F8 2B               [12]  931 	add	a,r3
      0029F9 A3               [24]  932 	inc	dptr
      0029FA F0               [24]  933 	movx	@dptr,a
      0029FB                        934 00163$:
                                    935 ;	converter.c:96: if(k==1)
      0029FB 8C 02            [24]  936 	mov	ar2,r4
      0029FD 8D 03            [24]  937 	mov	ar3,r5
      0029FF BC 01 16         [24]  938 	cjne	r4,#0x01,00165$
      002A02 BD 00 13         [24]  939 	cjne	r5,#0x00,00165$
                                    940 ;	converter.c:97: i+=0x090;
      002A05 90 00 08         [24]  941 	mov	dptr,#_strtohex_i_65537_46
      002A08 E0               [24]  942 	movx	a,@dptr
      002A09 F8               [12]  943 	mov	r0,a
      002A0A A3               [24]  944 	inc	dptr
      002A0B E0               [24]  945 	movx	a,@dptr
      002A0C F9               [12]  946 	mov	r1,a
      002A0D 90 00 08         [24]  947 	mov	dptr,#_strtohex_i_65537_46
      002A10 74 90            [12]  948 	mov	a,#0x90
      002A12 28               [12]  949 	add	a,r0
      002A13 F0               [24]  950 	movx	@dptr,a
      002A14 E4               [12]  951 	clr	a
      002A15 39               [12]  952 	addc	a,r1
      002A16 A3               [24]  953 	inc	dptr
      002A17 F0               [24]  954 	movx	@dptr,a
      002A18                        955 00165$:
                                    956 ;	converter.c:98: if(k==2)
      002A18 BA 02 05         [24]  957 	cjne	r2,#0x02,00485$
      002A1B BB 00 02         [24]  958 	cjne	r3,#0x00,00485$
      002A1E 80 03            [24]  959 	sjmp	00486$
      002A20                        960 00485$:
      002A20 02 2C 23         [24]  961 	ljmp	00217$
      002A23                        962 00486$:
                                    963 ;	converter.c:99: i+=0x009;
      002A23 90 00 08         [24]  964 	mov	dptr,#_strtohex_i_65537_46
      002A26 E0               [24]  965 	movx	a,@dptr
      002A27 FA               [12]  966 	mov	r2,a
      002A28 A3               [24]  967 	inc	dptr
      002A29 E0               [24]  968 	movx	a,@dptr
      002A2A FB               [12]  969 	mov	r3,a
      002A2B 90 00 08         [24]  970 	mov	dptr,#_strtohex_i_65537_46
      002A2E 74 09            [12]  971 	mov	a,#0x09
      002A30 2A               [12]  972 	add	a,r2
      002A31 F0               [24]  973 	movx	@dptr,a
      002A32 E4               [12]  974 	clr	a
      002A33 3B               [12]  975 	addc	a,r3
      002A34 A3               [24]  976 	inc	dptr
      002A35 F0               [24]  977 	movx	@dptr,a
                                    978 ;	converter.c:100: break;
      002A36 02 2C 23         [24]  979 	ljmp	00217$
                                    980 ;	converter.c:101: case 65://A
      002A39                        981 00168$:
                                    982 ;	converter.c:102: if(k==0)
      002A39 EC               [12]  983 	mov	a,r4
      002A3A 4D               [12]  984 	orl	a,r5
      002A3B 70 12            [24]  985 	jnz	00170$
                                    986 ;	converter.c:103: i+=0xA00;
      002A3D 90 00 08         [24]  987 	mov	dptr,#_strtohex_i_65537_46
      002A40 E0               [24]  988 	movx	a,@dptr
      002A41 FA               [12]  989 	mov	r2,a
      002A42 A3               [24]  990 	inc	dptr
      002A43 E0               [24]  991 	movx	a,@dptr
      002A44 FB               [12]  992 	mov	r3,a
      002A45 90 00 08         [24]  993 	mov	dptr,#_strtohex_i_65537_46
      002A48 EA               [12]  994 	mov	a,r2
      002A49 F0               [24]  995 	movx	@dptr,a
      002A4A 74 0A            [12]  996 	mov	a,#0x0a
      002A4C 2B               [12]  997 	add	a,r3
      002A4D A3               [24]  998 	inc	dptr
      002A4E F0               [24]  999 	movx	@dptr,a
      002A4F                       1000 00170$:
                                   1001 ;	converter.c:104: if(k==1)
      002A4F 8C 02            [24] 1002 	mov	ar2,r4
      002A51 8D 03            [24] 1003 	mov	ar3,r5
      002A53 BC 01 16         [24] 1004 	cjne	r4,#0x01,00172$
      002A56 BD 00 13         [24] 1005 	cjne	r5,#0x00,00172$
                                   1006 ;	converter.c:105: i+=0x0A0;
      002A59 90 00 08         [24] 1007 	mov	dptr,#_strtohex_i_65537_46
      002A5C E0               [24] 1008 	movx	a,@dptr
      002A5D F8               [12] 1009 	mov	r0,a
      002A5E A3               [24] 1010 	inc	dptr
      002A5F E0               [24] 1011 	movx	a,@dptr
      002A60 F9               [12] 1012 	mov	r1,a
      002A61 90 00 08         [24] 1013 	mov	dptr,#_strtohex_i_65537_46
      002A64 74 A0            [12] 1014 	mov	a,#0xa0
      002A66 28               [12] 1015 	add	a,r0
      002A67 F0               [24] 1016 	movx	@dptr,a
      002A68 E4               [12] 1017 	clr	a
      002A69 39               [12] 1018 	addc	a,r1
      002A6A A3               [24] 1019 	inc	dptr
      002A6B F0               [24] 1020 	movx	@dptr,a
      002A6C                       1021 00172$:
                                   1022 ;	converter.c:106: if(k==2)
      002A6C BA 02 05         [24] 1023 	cjne	r2,#0x02,00490$
      002A6F BB 00 02         [24] 1024 	cjne	r3,#0x00,00490$
      002A72 80 03            [24] 1025 	sjmp	00491$
      002A74                       1026 00490$:
      002A74 02 2C 23         [24] 1027 	ljmp	00217$
      002A77                       1028 00491$:
                                   1029 ;	converter.c:107: i+=0x00A;
      002A77 90 00 08         [24] 1030 	mov	dptr,#_strtohex_i_65537_46
      002A7A E0               [24] 1031 	movx	a,@dptr
      002A7B FA               [12] 1032 	mov	r2,a
      002A7C A3               [24] 1033 	inc	dptr
      002A7D E0               [24] 1034 	movx	a,@dptr
      002A7E FB               [12] 1035 	mov	r3,a
      002A7F 90 00 08         [24] 1036 	mov	dptr,#_strtohex_i_65537_46
      002A82 74 0A            [12] 1037 	mov	a,#0x0a
      002A84 2A               [12] 1038 	add	a,r2
      002A85 F0               [24] 1039 	movx	@dptr,a
      002A86 E4               [12] 1040 	clr	a
      002A87 3B               [12] 1041 	addc	a,r3
      002A88 A3               [24] 1042 	inc	dptr
      002A89 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	converter.c:108: break;
      002A8A 02 2C 23         [24] 1045 	ljmp	00217$
                                   1046 ;	converter.c:109: case 66://B
      002A8D                       1047 00175$:
                                   1048 ;	converter.c:110: if(k==0)
      002A8D EC               [12] 1049 	mov	a,r4
      002A8E 4D               [12] 1050 	orl	a,r5
      002A8F 70 12            [24] 1051 	jnz	00177$
                                   1052 ;	converter.c:111: i+=0xB00;
      002A91 90 00 08         [24] 1053 	mov	dptr,#_strtohex_i_65537_46
      002A94 E0               [24] 1054 	movx	a,@dptr
      002A95 FA               [12] 1055 	mov	r2,a
      002A96 A3               [24] 1056 	inc	dptr
      002A97 E0               [24] 1057 	movx	a,@dptr
      002A98 FB               [12] 1058 	mov	r3,a
      002A99 90 00 08         [24] 1059 	mov	dptr,#_strtohex_i_65537_46
      002A9C EA               [12] 1060 	mov	a,r2
      002A9D F0               [24] 1061 	movx	@dptr,a
      002A9E 74 0B            [12] 1062 	mov	a,#0x0b
      002AA0 2B               [12] 1063 	add	a,r3
      002AA1 A3               [24] 1064 	inc	dptr
      002AA2 F0               [24] 1065 	movx	@dptr,a
      002AA3                       1066 00177$:
                                   1067 ;	converter.c:112: if(k==1)
      002AA3 8C 02            [24] 1068 	mov	ar2,r4
      002AA5 8D 03            [24] 1069 	mov	ar3,r5
      002AA7 BC 01 16         [24] 1070 	cjne	r4,#0x01,00179$
      002AAA BD 00 13         [24] 1071 	cjne	r5,#0x00,00179$
                                   1072 ;	converter.c:113: i+=0x0B0;
      002AAD 90 00 08         [24] 1073 	mov	dptr,#_strtohex_i_65537_46
      002AB0 E0               [24] 1074 	movx	a,@dptr
      002AB1 F8               [12] 1075 	mov	r0,a
      002AB2 A3               [24] 1076 	inc	dptr
      002AB3 E0               [24] 1077 	movx	a,@dptr
      002AB4 F9               [12] 1078 	mov	r1,a
      002AB5 90 00 08         [24] 1079 	mov	dptr,#_strtohex_i_65537_46
      002AB8 74 B0            [12] 1080 	mov	a,#0xb0
      002ABA 28               [12] 1081 	add	a,r0
      002ABB F0               [24] 1082 	movx	@dptr,a
      002ABC E4               [12] 1083 	clr	a
      002ABD 39               [12] 1084 	addc	a,r1
      002ABE A3               [24] 1085 	inc	dptr
      002ABF F0               [24] 1086 	movx	@dptr,a
      002AC0                       1087 00179$:
                                   1088 ;	converter.c:114: if(k==2)
      002AC0 BA 02 05         [24] 1089 	cjne	r2,#0x02,00495$
      002AC3 BB 00 02         [24] 1090 	cjne	r3,#0x00,00495$
      002AC6 80 03            [24] 1091 	sjmp	00496$
      002AC8                       1092 00495$:
      002AC8 02 2C 23         [24] 1093 	ljmp	00217$
      002ACB                       1094 00496$:
                                   1095 ;	converter.c:115: i+=0x00B;
      002ACB 90 00 08         [24] 1096 	mov	dptr,#_strtohex_i_65537_46
      002ACE E0               [24] 1097 	movx	a,@dptr
      002ACF FA               [12] 1098 	mov	r2,a
      002AD0 A3               [24] 1099 	inc	dptr
      002AD1 E0               [24] 1100 	movx	a,@dptr
      002AD2 FB               [12] 1101 	mov	r3,a
      002AD3 90 00 08         [24] 1102 	mov	dptr,#_strtohex_i_65537_46
      002AD6 74 0B            [12] 1103 	mov	a,#0x0b
      002AD8 2A               [12] 1104 	add	a,r2
      002AD9 F0               [24] 1105 	movx	@dptr,a
      002ADA E4               [12] 1106 	clr	a
      002ADB 3B               [12] 1107 	addc	a,r3
      002ADC A3               [24] 1108 	inc	dptr
      002ADD F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	converter.c:116: break;
      002ADE 02 2C 23         [24] 1111 	ljmp	00217$
                                   1112 ;	converter.c:117: case 67://C
      002AE1                       1113 00182$:
                                   1114 ;	converter.c:118: if(k==0)
      002AE1 EC               [12] 1115 	mov	a,r4
      002AE2 4D               [12] 1116 	orl	a,r5
      002AE3 70 12            [24] 1117 	jnz	00184$
                                   1118 ;	converter.c:119: i+=0xC00;
      002AE5 90 00 08         [24] 1119 	mov	dptr,#_strtohex_i_65537_46
      002AE8 E0               [24] 1120 	movx	a,@dptr
      002AE9 FA               [12] 1121 	mov	r2,a
      002AEA A3               [24] 1122 	inc	dptr
      002AEB E0               [24] 1123 	movx	a,@dptr
      002AEC FB               [12] 1124 	mov	r3,a
      002AED 90 00 08         [24] 1125 	mov	dptr,#_strtohex_i_65537_46
      002AF0 EA               [12] 1126 	mov	a,r2
      002AF1 F0               [24] 1127 	movx	@dptr,a
      002AF2 74 0C            [12] 1128 	mov	a,#0x0c
      002AF4 2B               [12] 1129 	add	a,r3
      002AF5 A3               [24] 1130 	inc	dptr
      002AF6 F0               [24] 1131 	movx	@dptr,a
      002AF7                       1132 00184$:
                                   1133 ;	converter.c:120: if(k==1)
      002AF7 8C 02            [24] 1134 	mov	ar2,r4
      002AF9 8D 03            [24] 1135 	mov	ar3,r5
      002AFB BC 01 16         [24] 1136 	cjne	r4,#0x01,00186$
      002AFE BD 00 13         [24] 1137 	cjne	r5,#0x00,00186$
                                   1138 ;	converter.c:121: i+=0x0C0;
      002B01 90 00 08         [24] 1139 	mov	dptr,#_strtohex_i_65537_46
      002B04 E0               [24] 1140 	movx	a,@dptr
      002B05 F8               [12] 1141 	mov	r0,a
      002B06 A3               [24] 1142 	inc	dptr
      002B07 E0               [24] 1143 	movx	a,@dptr
      002B08 F9               [12] 1144 	mov	r1,a
      002B09 90 00 08         [24] 1145 	mov	dptr,#_strtohex_i_65537_46
      002B0C 74 C0            [12] 1146 	mov	a,#0xc0
      002B0E 28               [12] 1147 	add	a,r0
      002B0F F0               [24] 1148 	movx	@dptr,a
      002B10 E4               [12] 1149 	clr	a
      002B11 39               [12] 1150 	addc	a,r1
      002B12 A3               [24] 1151 	inc	dptr
      002B13 F0               [24] 1152 	movx	@dptr,a
      002B14                       1153 00186$:
                                   1154 ;	converter.c:122: if(k==2)
      002B14 BA 02 05         [24] 1155 	cjne	r2,#0x02,00500$
      002B17 BB 00 02         [24] 1156 	cjne	r3,#0x00,00500$
      002B1A 80 03            [24] 1157 	sjmp	00501$
      002B1C                       1158 00500$:
      002B1C 02 2C 23         [24] 1159 	ljmp	00217$
      002B1F                       1160 00501$:
                                   1161 ;	converter.c:123: i+=0x00C;
      002B1F 90 00 08         [24] 1162 	mov	dptr,#_strtohex_i_65537_46
      002B22 E0               [24] 1163 	movx	a,@dptr
      002B23 FA               [12] 1164 	mov	r2,a
      002B24 A3               [24] 1165 	inc	dptr
      002B25 E0               [24] 1166 	movx	a,@dptr
      002B26 FB               [12] 1167 	mov	r3,a
      002B27 90 00 08         [24] 1168 	mov	dptr,#_strtohex_i_65537_46
      002B2A 74 0C            [12] 1169 	mov	a,#0x0c
      002B2C 2A               [12] 1170 	add	a,r2
      002B2D F0               [24] 1171 	movx	@dptr,a
      002B2E E4               [12] 1172 	clr	a
      002B2F 3B               [12] 1173 	addc	a,r3
      002B30 A3               [24] 1174 	inc	dptr
      002B31 F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	converter.c:124: break;
      002B32 02 2C 23         [24] 1177 	ljmp	00217$
                                   1178 ;	converter.c:125: case 68://D
      002B35                       1179 00189$:
                                   1180 ;	converter.c:126: if(k==0)
      002B35 EC               [12] 1181 	mov	a,r4
      002B36 4D               [12] 1182 	orl	a,r5
      002B37 70 12            [24] 1183 	jnz	00191$
                                   1184 ;	converter.c:127: i+=0xD00;
      002B39 90 00 08         [24] 1185 	mov	dptr,#_strtohex_i_65537_46
      002B3C E0               [24] 1186 	movx	a,@dptr
      002B3D FA               [12] 1187 	mov	r2,a
      002B3E A3               [24] 1188 	inc	dptr
      002B3F E0               [24] 1189 	movx	a,@dptr
      002B40 FB               [12] 1190 	mov	r3,a
      002B41 90 00 08         [24] 1191 	mov	dptr,#_strtohex_i_65537_46
      002B44 EA               [12] 1192 	mov	a,r2
      002B45 F0               [24] 1193 	movx	@dptr,a
      002B46 74 0D            [12] 1194 	mov	a,#0x0d
      002B48 2B               [12] 1195 	add	a,r3
      002B49 A3               [24] 1196 	inc	dptr
      002B4A F0               [24] 1197 	movx	@dptr,a
      002B4B                       1198 00191$:
                                   1199 ;	converter.c:128: if(k==1)
      002B4B 8C 02            [24] 1200 	mov	ar2,r4
      002B4D 8D 03            [24] 1201 	mov	ar3,r5
      002B4F BC 01 16         [24] 1202 	cjne	r4,#0x01,00193$
      002B52 BD 00 13         [24] 1203 	cjne	r5,#0x00,00193$
                                   1204 ;	converter.c:129: i+=0x0D0;
      002B55 90 00 08         [24] 1205 	mov	dptr,#_strtohex_i_65537_46
      002B58 E0               [24] 1206 	movx	a,@dptr
      002B59 F8               [12] 1207 	mov	r0,a
      002B5A A3               [24] 1208 	inc	dptr
      002B5B E0               [24] 1209 	movx	a,@dptr
      002B5C F9               [12] 1210 	mov	r1,a
      002B5D 90 00 08         [24] 1211 	mov	dptr,#_strtohex_i_65537_46
      002B60 74 D0            [12] 1212 	mov	a,#0xd0
      002B62 28               [12] 1213 	add	a,r0
      002B63 F0               [24] 1214 	movx	@dptr,a
      002B64 E4               [12] 1215 	clr	a
      002B65 39               [12] 1216 	addc	a,r1
      002B66 A3               [24] 1217 	inc	dptr
      002B67 F0               [24] 1218 	movx	@dptr,a
      002B68                       1219 00193$:
                                   1220 ;	converter.c:130: if(k==2)
      002B68 BA 02 05         [24] 1221 	cjne	r2,#0x02,00505$
      002B6B BB 00 02         [24] 1222 	cjne	r3,#0x00,00505$
      002B6E 80 03            [24] 1223 	sjmp	00506$
      002B70                       1224 00505$:
      002B70 02 2C 23         [24] 1225 	ljmp	00217$
      002B73                       1226 00506$:
                                   1227 ;	converter.c:131: i+=0x00D;
      002B73 90 00 08         [24] 1228 	mov	dptr,#_strtohex_i_65537_46
      002B76 E0               [24] 1229 	movx	a,@dptr
      002B77 FA               [12] 1230 	mov	r2,a
      002B78 A3               [24] 1231 	inc	dptr
      002B79 E0               [24] 1232 	movx	a,@dptr
      002B7A FB               [12] 1233 	mov	r3,a
      002B7B 90 00 08         [24] 1234 	mov	dptr,#_strtohex_i_65537_46
      002B7E 74 0D            [12] 1235 	mov	a,#0x0d
      002B80 2A               [12] 1236 	add	a,r2
      002B81 F0               [24] 1237 	movx	@dptr,a
      002B82 E4               [12] 1238 	clr	a
      002B83 3B               [12] 1239 	addc	a,r3
      002B84 A3               [24] 1240 	inc	dptr
      002B85 F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	converter.c:132: break;
      002B86 02 2C 23         [24] 1243 	ljmp	00217$
                                   1244 ;	converter.c:133: case 69://E
      002B89                       1245 00196$:
                                   1246 ;	converter.c:134: if(k==0)
      002B89 EC               [12] 1247 	mov	a,r4
      002B8A 4D               [12] 1248 	orl	a,r5
      002B8B 70 12            [24] 1249 	jnz	00198$
                                   1250 ;	converter.c:135: i+=0xE00;
      002B8D 90 00 08         [24] 1251 	mov	dptr,#_strtohex_i_65537_46
      002B90 E0               [24] 1252 	movx	a,@dptr
      002B91 FA               [12] 1253 	mov	r2,a
      002B92 A3               [24] 1254 	inc	dptr
      002B93 E0               [24] 1255 	movx	a,@dptr
      002B94 FB               [12] 1256 	mov	r3,a
      002B95 90 00 08         [24] 1257 	mov	dptr,#_strtohex_i_65537_46
      002B98 EA               [12] 1258 	mov	a,r2
      002B99 F0               [24] 1259 	movx	@dptr,a
      002B9A 74 0E            [12] 1260 	mov	a,#0x0e
      002B9C 2B               [12] 1261 	add	a,r3
      002B9D A3               [24] 1262 	inc	dptr
      002B9E F0               [24] 1263 	movx	@dptr,a
      002B9F                       1264 00198$:
                                   1265 ;	converter.c:136: if(k==1)
      002B9F 8C 02            [24] 1266 	mov	ar2,r4
      002BA1 8D 03            [24] 1267 	mov	ar3,r5
      002BA3 BC 01 16         [24] 1268 	cjne	r4,#0x01,00200$
      002BA6 BD 00 13         [24] 1269 	cjne	r5,#0x00,00200$
                                   1270 ;	converter.c:137: i+=0x0E0;
      002BA9 90 00 08         [24] 1271 	mov	dptr,#_strtohex_i_65537_46
      002BAC E0               [24] 1272 	movx	a,@dptr
      002BAD F8               [12] 1273 	mov	r0,a
      002BAE A3               [24] 1274 	inc	dptr
      002BAF E0               [24] 1275 	movx	a,@dptr
      002BB0 F9               [12] 1276 	mov	r1,a
      002BB1 90 00 08         [24] 1277 	mov	dptr,#_strtohex_i_65537_46
      002BB4 74 E0            [12] 1278 	mov	a,#0xe0
      002BB6 28               [12] 1279 	add	a,r0
      002BB7 F0               [24] 1280 	movx	@dptr,a
      002BB8 E4               [12] 1281 	clr	a
      002BB9 39               [12] 1282 	addc	a,r1
      002BBA A3               [24] 1283 	inc	dptr
      002BBB F0               [24] 1284 	movx	@dptr,a
      002BBC                       1285 00200$:
                                   1286 ;	converter.c:138: if(k==2)
      002BBC BA 02 64         [24] 1287 	cjne	r2,#0x02,00217$
      002BBF BB 00 61         [24] 1288 	cjne	r3,#0x00,00217$
                                   1289 ;	converter.c:139: i+=0x00E;
      002BC2 90 00 08         [24] 1290 	mov	dptr,#_strtohex_i_65537_46
      002BC5 E0               [24] 1291 	movx	a,@dptr
      002BC6 FA               [12] 1292 	mov	r2,a
      002BC7 A3               [24] 1293 	inc	dptr
      002BC8 E0               [24] 1294 	movx	a,@dptr
      002BC9 FB               [12] 1295 	mov	r3,a
      002BCA 90 00 08         [24] 1296 	mov	dptr,#_strtohex_i_65537_46
      002BCD 74 0E            [12] 1297 	mov	a,#0x0e
      002BCF 2A               [12] 1298 	add	a,r2
      002BD0 F0               [24] 1299 	movx	@dptr,a
      002BD1 E4               [12] 1300 	clr	a
      002BD2 3B               [12] 1301 	addc	a,r3
      002BD3 A3               [24] 1302 	inc	dptr
      002BD4 F0               [24] 1303 	movx	@dptr,a
                                   1304 ;	converter.c:140: break;
                                   1305 ;	converter.c:141: case 70://F
      002BD5 80 4C            [24] 1306 	sjmp	00217$
      002BD7                       1307 00203$:
                                   1308 ;	converter.c:142: if(k==0)
      002BD7 EC               [12] 1309 	mov	a,r4
      002BD8 4D               [12] 1310 	orl	a,r5
      002BD9 70 12            [24] 1311 	jnz	00205$
                                   1312 ;	converter.c:143: i+=0xF00;
      002BDB 90 00 08         [24] 1313 	mov	dptr,#_strtohex_i_65537_46
      002BDE E0               [24] 1314 	movx	a,@dptr
      002BDF FA               [12] 1315 	mov	r2,a
      002BE0 A3               [24] 1316 	inc	dptr
      002BE1 E0               [24] 1317 	movx	a,@dptr
      002BE2 FB               [12] 1318 	mov	r3,a
      002BE3 90 00 08         [24] 1319 	mov	dptr,#_strtohex_i_65537_46
      002BE6 EA               [12] 1320 	mov	a,r2
      002BE7 F0               [24] 1321 	movx	@dptr,a
      002BE8 74 0F            [12] 1322 	mov	a,#0x0f
      002BEA 2B               [12] 1323 	add	a,r3
      002BEB A3               [24] 1324 	inc	dptr
      002BEC F0               [24] 1325 	movx	@dptr,a
      002BED                       1326 00205$:
                                   1327 ;	converter.c:144: if(k==1)
      002BED 8C 02            [24] 1328 	mov	ar2,r4
      002BEF 8D 03            [24] 1329 	mov	ar3,r5
      002BF1 BC 01 16         [24] 1330 	cjne	r4,#0x01,00207$
      002BF4 BD 00 13         [24] 1331 	cjne	r5,#0x00,00207$
                                   1332 ;	converter.c:145: i+=0x0F0;
      002BF7 90 00 08         [24] 1333 	mov	dptr,#_strtohex_i_65537_46
      002BFA E0               [24] 1334 	movx	a,@dptr
      002BFB F8               [12] 1335 	mov	r0,a
      002BFC A3               [24] 1336 	inc	dptr
      002BFD E0               [24] 1337 	movx	a,@dptr
      002BFE F9               [12] 1338 	mov	r1,a
      002BFF 90 00 08         [24] 1339 	mov	dptr,#_strtohex_i_65537_46
      002C02 74 F0            [12] 1340 	mov	a,#0xf0
      002C04 28               [12] 1341 	add	a,r0
      002C05 F0               [24] 1342 	movx	@dptr,a
      002C06 E4               [12] 1343 	clr	a
      002C07 39               [12] 1344 	addc	a,r1
      002C08 A3               [24] 1345 	inc	dptr
      002C09 F0               [24] 1346 	movx	@dptr,a
      002C0A                       1347 00207$:
                                   1348 ;	converter.c:146: if(k==2)
      002C0A BA 02 16         [24] 1349 	cjne	r2,#0x02,00217$
      002C0D BB 00 13         [24] 1350 	cjne	r3,#0x00,00217$
                                   1351 ;	converter.c:147: i+=0x00F;
      002C10 90 00 08         [24] 1352 	mov	dptr,#_strtohex_i_65537_46
      002C13 E0               [24] 1353 	movx	a,@dptr
      002C14 FA               [12] 1354 	mov	r2,a
      002C15 A3               [24] 1355 	inc	dptr
      002C16 E0               [24] 1356 	movx	a,@dptr
      002C17 FB               [12] 1357 	mov	r3,a
      002C18 90 00 08         [24] 1358 	mov	dptr,#_strtohex_i_65537_46
      002C1B 74 0F            [12] 1359 	mov	a,#0x0f
      002C1D 2A               [12] 1360 	add	a,r2
      002C1E F0               [24] 1361 	movx	@dptr,a
      002C1F E4               [12] 1362 	clr	a
      002C20 3B               [12] 1363 	addc	a,r3
      002C21 A3               [24] 1364 	inc	dptr
      002C22 F0               [24] 1365 	movx	@dptr,a
                                   1366 ;	converter.c:151: }
      002C23                       1367 00217$:
                                   1368 ;	converter.c:23: for(int k=0; k<3; k++)
      002C23 0C               [12] 1369 	inc	r4
      002C24 BC 00 01         [24] 1370 	cjne	r4,#0x00,00517$
      002C27 0D               [12] 1371 	inc	r5
      002C28                       1372 00517$:
      002C28 02 26 B1         [24] 1373 	ljmp	00216$
      002C2B                       1374 00211$:
                                   1375 ;	converter.c:153: if(length!=3)
      002C2B BE 03 05         [24] 1376 	cjne	r6,#0x03,00518$
      002C2E BF 00 02         [24] 1377 	cjne	r7,#0x00,00518$
      002C31 80 0E            [24] 1378 	sjmp	00213$
      002C33                       1379 00518$:
                                   1380 ;	converter.c:154: return (uint8_t)i;
      002C33 90 00 08         [24] 1381 	mov	dptr,#_strtohex_i_65537_46
      002C36 E0               [24] 1382 	movx	a,@dptr
      002C37 FE               [12] 1383 	mov	r6,a
      002C38 A3               [24] 1384 	inc	dptr
      002C39 E0               [24] 1385 	movx	a,@dptr
      002C3A 7F 00            [12] 1386 	mov	r7,#0x00
      002C3C 8E 82            [24] 1387 	mov	dpl,r6
      002C3E 8F 83            [24] 1388 	mov	dph,r7
      002C40 22               [24] 1389 	ret
      002C41                       1390 00213$:
                                   1391 ;	converter.c:156: return i;
      002C41 90 00 08         [24] 1392 	mov	dptr,#_strtohex_i_65537_46
      002C44 E0               [24] 1393 	movx	a,@dptr
      002C45 FE               [12] 1394 	mov	r6,a
      002C46 A3               [24] 1395 	inc	dptr
      002C47 E0               [24] 1396 	movx	a,@dptr
                                   1397 ;	converter.c:157: }
      002C48 8E 82            [24] 1398 	mov	dpl,r6
      002C4A F5 83            [12] 1399 	mov	dph,a
      002C4C 22               [24] 1400 	ret
                                   1401 	.area CSEG    (CODE)
                                   1402 	.area CONST   (CODE)
                                   1403 	.area XINIT   (CODE)
                                   1404 	.area CABS    (ABS,CODE)
