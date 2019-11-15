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
                                     11 	.globl _printf
                                     12 	.globl _toupper
                                     13 	.globl _strlen
                                     14 	.globl _strtohex
                                     15 ;--------------------------------------------------------
                                     16 ; special function registers
                                     17 ;--------------------------------------------------------
                                     18 	.area RSEG    (ABS,DATA)
      000000                         19 	.org 0x0000
                                     20 ;--------------------------------------------------------
                                     21 ; special function bits
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; overlayable register banks
                                     27 ;--------------------------------------------------------
                                     28 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         29 	.ds 8
                                     30 ;--------------------------------------------------------
                                     31 ; internal ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DSEG    (DATA)
                                     34 ;--------------------------------------------------------
                                     35 ; overlayable items in internal ram 
                                     36 ;--------------------------------------------------------
                                     37 ;--------------------------------------------------------
                                     38 ; indirectly addressable internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area ISEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; absolute internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area IABS    (ABS,DATA)
                                     45 	.area IABS    (ABS,DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; bit data
                                     48 ;--------------------------------------------------------
                                     49 	.area BSEG    (BIT)
                                     50 ;--------------------------------------------------------
                                     51 ; paged external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area PSEG    (PAG,XDATA)
                                     54 ;--------------------------------------------------------
                                     55 ; external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area XSEG    (XDATA)
      000001                         58 _strtohex_l_65536_57:
      000001                         59 	.ds 3
      000004                         60 _strtohex_f_65536_58:
      000004                         61 	.ds 4
      000008                         62 _strtohex_i_65537_60:
      000008                         63 	.ds 2
                                     64 ;--------------------------------------------------------
                                     65 ; absolute external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XABS    (ABS,XDATA)
                                     68 ;--------------------------------------------------------
                                     69 ; external initialized ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XISEG   (XDATA)
                                     72 	.area HOME    (CODE)
                                     73 	.area GSINIT0 (CODE)
                                     74 	.area GSINIT1 (CODE)
                                     75 	.area GSINIT2 (CODE)
                                     76 	.area GSINIT3 (CODE)
                                     77 	.area GSINIT4 (CODE)
                                     78 	.area GSINIT5 (CODE)
                                     79 	.area GSINIT  (CODE)
                                     80 	.area GSFINAL (CODE)
                                     81 	.area CSEG    (CODE)
                                     82 ;--------------------------------------------------------
                                     83 ; global & static initialisations
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME    (CODE)
                                     86 	.area GSINIT  (CODE)
                                     87 	.area GSFINAL (CODE)
                                     88 	.area GSINIT  (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; Home
                                     91 ;--------------------------------------------------------
                                     92 	.area HOME    (CODE)
                                     93 	.area HOME    (CODE)
                                     94 ;--------------------------------------------------------
                                     95 ; code
                                     96 ;--------------------------------------------------------
                                     97 	.area CSEG    (CODE)
                                     98 ;------------------------------------------------------------
                                     99 ;Allocation info for local variables in function 'strtohex'
                                    100 ;------------------------------------------------------------
                                    101 ;l                         Allocated with name '_strtohex_l_65536_57'
                                    102 ;length                    Allocated with name '_strtohex_length_65536_58'
                                    103 ;f                         Allocated with name '_strtohex_f_65536_58'
                                    104 ;i                         Allocated with name '_strtohex_i_65537_60'
                                    105 ;k                         Allocated with name '_strtohex_k_131073_61'
                                    106 ;------------------------------------------------------------
                                    107 ;	converter.c:2: uint16_t strtohex(char *l)
                                    108 ;	-----------------------------------------
                                    109 ;	 function strtohex
                                    110 ;	-----------------------------------------
      0025C6                        111 _strtohex:
                           000007   112 	ar7 = 0x07
                           000006   113 	ar6 = 0x06
                           000005   114 	ar5 = 0x05
                           000004   115 	ar4 = 0x04
                           000003   116 	ar3 = 0x03
                           000002   117 	ar2 = 0x02
                           000001   118 	ar1 = 0x01
                           000000   119 	ar0 = 0x00
      0025C6 AF F0            [24]  120 	mov	r7,b
      0025C8 AE 83            [24]  121 	mov	r6,dph
      0025CA E5 82            [12]  122 	mov	a,dpl
      0025CC 90 00 01         [24]  123 	mov	dptr,#_strtohex_l_65536_57
      0025CF F0               [24]  124 	movx	@dptr,a
      0025D0 EE               [12]  125 	mov	a,r6
      0025D1 A3               [24]  126 	inc	dptr
      0025D2 F0               [24]  127 	movx	@dptr,a
      0025D3 EF               [12]  128 	mov	a,r7
      0025D4 A3               [24]  129 	inc	dptr
      0025D5 F0               [24]  130 	movx	@dptr,a
                                    131 ;	converter.c:6: int length=strlen(l);
      0025D6 90 00 01         [24]  132 	mov	dptr,#_strtohex_l_65536_57
      0025D9 E0               [24]  133 	movx	a,@dptr
      0025DA FD               [12]  134 	mov	r5,a
      0025DB A3               [24]  135 	inc	dptr
      0025DC E0               [24]  136 	movx	a,@dptr
      0025DD FE               [12]  137 	mov	r6,a
      0025DE A3               [24]  138 	inc	dptr
      0025DF E0               [24]  139 	movx	a,@dptr
      0025E0 FF               [12]  140 	mov	r7,a
      0025E1 8D 82            [24]  141 	mov	dpl,r5
      0025E3 8E 83            [24]  142 	mov	dph,r6
      0025E5 8F F0            [24]  143 	mov	b,r7
      0025E7 12 43 BB         [24]  144 	lcall	_strlen
      0025EA AE 82            [24]  145 	mov	r6,dpl
      0025EC AF 83            [24]  146 	mov	r7,dph
                                    147 ;	converter.c:9: switch(length){
      0025EE BE 01 05         [24]  148 	cjne	r6,#0x01,00435$
      0025F1 BF 00 02         [24]  149 	cjne	r7,#0x00,00435$
      0025F4 80 13            [24]  150 	sjmp	00101$
      0025F6                        151 00435$:
      0025F6 BE 02 05         [24]  152 	cjne	r6,#0x02,00436$
      0025F9 BF 00 02         [24]  153 	cjne	r7,#0x00,00436$
      0025FC 80 31            [24]  154 	sjmp	00102$
      0025FE                        155 00436$:
      0025FE BE 03 05         [24]  156 	cjne	r6,#0x03,00437$
      002601 BF 00 02         [24]  157 	cjne	r7,#0x00,00437$
      002604 80 7A            [24]  158 	sjmp	00103$
      002606                        159 00437$:
      002606 02 26 C4         [24]  160 	ljmp	00104$
                                    161 ;	converter.c:10: case 1:
      002609                        162 00101$:
                                    163 ;	converter.c:13: f[0]='0';f[1]='0';f[2]=l[0];
      002609 90 00 04         [24]  164 	mov	dptr,#_strtohex_f_65536_58
      00260C 74 30            [12]  165 	mov	a,#0x30
      00260E F0               [24]  166 	movx	@dptr,a
      00260F 90 00 05         [24]  167 	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
      002612 F0               [24]  168 	movx	@dptr,a
      002613 90 00 01         [24]  169 	mov	dptr,#_strtohex_l_65536_57
      002616 E0               [24]  170 	movx	a,@dptr
      002617 FB               [12]  171 	mov	r3,a
      002618 A3               [24]  172 	inc	dptr
      002619 E0               [24]  173 	movx	a,@dptr
      00261A FC               [12]  174 	mov	r4,a
      00261B A3               [24]  175 	inc	dptr
      00261C E0               [24]  176 	movx	a,@dptr
      00261D FD               [12]  177 	mov	r5,a
      00261E 8B 82            [24]  178 	mov	dpl,r3
      002620 8C 83            [24]  179 	mov	dph,r4
      002622 8D F0            [24]  180 	mov	b,r5
      002624 12 43 D3         [24]  181 	lcall	__gptrget
      002627 FB               [12]  182 	mov	r3,a
      002628 90 00 06         [24]  183 	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
      00262B F0               [24]  184 	movx	@dptr,a
                                    185 ;	converter.c:14: break;
      00262C 02 26 C4         [24]  186 	ljmp	00104$
                                    187 ;	converter.c:15: case 2:
      00262F                        188 00102$:
                                    189 ;	converter.c:16: printf("");f[0]='0';f[1]=l[0];f[2]=l[1];break;
      00262F C0 07            [24]  190 	push	ar7
      002631 C0 06            [24]  191 	push	ar6
      002633 74 F3            [12]  192 	mov	a,#___str_0
      002635 C0 E0            [24]  193 	push	acc
      002637 74 43            [12]  194 	mov	a,#(___str_0 >> 8)
      002639 C0 E0            [24]  195 	push	acc
      00263B 74 80            [12]  196 	mov	a,#0x80
      00263D C0 E0            [24]  197 	push	acc
      00263F 12 39 B1         [24]  198 	lcall	_printf
      002642 15 81            [12]  199 	dec	sp
      002644 15 81            [12]  200 	dec	sp
      002646 15 81            [12]  201 	dec	sp
      002648 D0 06            [24]  202 	pop	ar6
      00264A D0 07            [24]  203 	pop	ar7
      00264C 90 00 04         [24]  204 	mov	dptr,#_strtohex_f_65536_58
      00264F 74 30            [12]  205 	mov	a,#0x30
      002651 F0               [24]  206 	movx	@dptr,a
      002652 90 00 01         [24]  207 	mov	dptr,#_strtohex_l_65536_57
      002655 E0               [24]  208 	movx	a,@dptr
      002656 FB               [12]  209 	mov	r3,a
      002657 A3               [24]  210 	inc	dptr
      002658 E0               [24]  211 	movx	a,@dptr
      002659 FC               [12]  212 	mov	r4,a
      00265A A3               [24]  213 	inc	dptr
      00265B E0               [24]  214 	movx	a,@dptr
      00265C FD               [12]  215 	mov	r5,a
      00265D 8B 82            [24]  216 	mov	dpl,r3
      00265F 8C 83            [24]  217 	mov	dph,r4
      002661 8D F0            [24]  218 	mov	b,r5
      002663 12 43 D3         [24]  219 	lcall	__gptrget
      002666 FA               [12]  220 	mov	r2,a
      002667 90 00 05         [24]  221 	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
      00266A F0               [24]  222 	movx	@dptr,a
      00266B 0B               [12]  223 	inc	r3
      00266C BB 00 01         [24]  224 	cjne	r3,#0x00,00438$
      00266F 0C               [12]  225 	inc	r4
      002670                        226 00438$:
      002670 8B 82            [24]  227 	mov	dpl,r3
      002672 8C 83            [24]  228 	mov	dph,r4
      002674 8D F0            [24]  229 	mov	b,r5
      002676 12 43 D3         [24]  230 	lcall	__gptrget
      002679 FB               [12]  231 	mov	r3,a
      00267A 90 00 06         [24]  232 	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
      00267D F0               [24]  233 	movx	@dptr,a
                                    234 ;	converter.c:17: case 3:
      00267E 80 44            [24]  235 	sjmp	00104$
      002680                        236 00103$:
                                    237 ;	converter.c:18: f[0]=l[0];f[1]=l[1];f[2]=l[2];break;
      002680 90 00 01         [24]  238 	mov	dptr,#_strtohex_l_65536_57
      002683 E0               [24]  239 	movx	a,@dptr
      002684 FB               [12]  240 	mov	r3,a
      002685 A3               [24]  241 	inc	dptr
      002686 E0               [24]  242 	movx	a,@dptr
      002687 FC               [12]  243 	mov	r4,a
      002688 A3               [24]  244 	inc	dptr
      002689 E0               [24]  245 	movx	a,@dptr
      00268A FD               [12]  246 	mov	r5,a
      00268B 8B 82            [24]  247 	mov	dpl,r3
      00268D 8C 83            [24]  248 	mov	dph,r4
      00268F 8D F0            [24]  249 	mov	b,r5
      002691 12 43 D3         [24]  250 	lcall	__gptrget
      002694 90 00 04         [24]  251 	mov	dptr,#_strtohex_f_65536_58
      002697 F0               [24]  252 	movx	@dptr,a
      002698 74 01            [12]  253 	mov	a,#0x01
      00269A 2B               [12]  254 	add	a,r3
      00269B F8               [12]  255 	mov	r0,a
      00269C E4               [12]  256 	clr	a
      00269D 3C               [12]  257 	addc	a,r4
      00269E F9               [12]  258 	mov	r1,a
      00269F 8D 02            [24]  259 	mov	ar2,r5
      0026A1 88 82            [24]  260 	mov	dpl,r0
      0026A3 89 83            [24]  261 	mov	dph,r1
      0026A5 8A F0            [24]  262 	mov	b,r2
      0026A7 12 43 D3         [24]  263 	lcall	__gptrget
      0026AA F8               [12]  264 	mov	r0,a
      0026AB 90 00 05         [24]  265 	mov	dptr,#(_strtohex_f_65536_58 + 0x0001)
      0026AE F0               [24]  266 	movx	@dptr,a
      0026AF 74 02            [12]  267 	mov	a,#0x02
      0026B1 2B               [12]  268 	add	a,r3
      0026B2 FB               [12]  269 	mov	r3,a
      0026B3 E4               [12]  270 	clr	a
      0026B4 3C               [12]  271 	addc	a,r4
      0026B5 FC               [12]  272 	mov	r4,a
      0026B6 8B 82            [24]  273 	mov	dpl,r3
      0026B8 8C 83            [24]  274 	mov	dph,r4
      0026BA 8D F0            [24]  275 	mov	b,r5
      0026BC 12 43 D3         [24]  276 	lcall	__gptrget
      0026BF FB               [12]  277 	mov	r3,a
      0026C0 90 00 06         [24]  278 	mov	dptr,#(_strtohex_f_65536_58 + 0x0002)
      0026C3 F0               [24]  279 	movx	@dptr,a
                                    280 ;	converter.c:19: }
      0026C4                        281 00104$:
                                    282 ;	converter.c:21: uint16_t i=0;
      0026C4 90 00 08         [24]  283 	mov	dptr,#_strtohex_i_65537_60
      0026C7 E4               [12]  284 	clr	a
      0026C8 F0               [24]  285 	movx	@dptr,a
      0026C9 A3               [24]  286 	inc	dptr
      0026CA F0               [24]  287 	movx	@dptr,a
                                    288 ;	converter.c:23: for(int k=0; k<3; k++)
      0026CB 7C 00            [12]  289 	mov	r4,#0x00
      0026CD 7D 00            [12]  290 	mov	r5,#0x00
      0026CF                        291 00218$:
      0026CF C3               [12]  292 	clr	c
      0026D0 EC               [12]  293 	mov	a,r4
      0026D1 94 03            [12]  294 	subb	a,#0x03
      0026D3 ED               [12]  295 	mov	a,r5
      0026D4 64 80            [12]  296 	xrl	a,#0x80
      0026D6 94 80            [12]  297 	subb	a,#0x80
      0026D8 40 03            [24]  298 	jc	00439$
      0026DA 02 2C 4E         [24]  299 	ljmp	00213$
      0026DD                        300 00439$:
                                    301 ;	converter.c:26: switch(toupper(f[k]))
      0026DD EC               [12]  302 	mov	a,r4
      0026DE 24 04            [12]  303 	add	a,#_strtohex_f_65536_58
      0026E0 F5 82            [12]  304 	mov	dpl,a
      0026E2 ED               [12]  305 	mov	a,r5
      0026E3 34 00            [12]  306 	addc	a,#(_strtohex_f_65536_58 >> 8)
      0026E5 F5 83            [12]  307 	mov	dph,a
      0026E7 E0               [24]  308 	movx	a,@dptr
      0026E8 FB               [12]  309 	mov	r3,a
      0026E9 7A 00            [12]  310 	mov	r2,#0x00
      0026EB 8B 82            [24]  311 	mov	dpl,r3
      0026ED 8A 83            [24]  312 	mov	dph,r2
      0026EF C0 07            [24]  313 	push	ar7
      0026F1 C0 06            [24]  314 	push	ar6
      0026F3 C0 05            [24]  315 	push	ar5
      0026F5 C0 04            [24]  316 	push	ar4
      0026F7 12 39 28         [24]  317 	lcall	_toupper
      0026FA AA 82            [24]  318 	mov	r2,dpl
      0026FC AB 83            [24]  319 	mov	r3,dph
      0026FE D0 04            [24]  320 	pop	ar4
      002700 D0 05            [24]  321 	pop	ar5
      002702 D0 06            [24]  322 	pop	ar6
      002704 D0 07            [24]  323 	pop	ar7
      002706 C3               [12]  324 	clr	c
      002707 EA               [12]  325 	mov	a,r2
      002708 94 30            [12]  326 	subb	a,#0x30
      00270A EB               [12]  327 	mov	a,r3
      00270B 64 80            [12]  328 	xrl	a,#0x80
      00270D 94 80            [12]  329 	subb	a,#0x80
      00270F 50 03            [24]  330 	jnc	00440$
      002711 02 2C 46         [24]  331 	ljmp	00219$
      002714                        332 00440$:
      002714 C3               [12]  333 	clr	c
      002715 74 46            [12]  334 	mov	a,#0x46
      002717 9A               [12]  335 	subb	a,r2
      002718 74 80            [12]  336 	mov	a,#(0x00 ^ 0x80)
      00271A 8B F0            [24]  337 	mov	b,r3
      00271C 63 F0 80         [24]  338 	xrl	b,#0x80
      00271F 95 F0            [12]  339 	subb	a,b
      002721 50 03            [24]  340 	jnc	00441$
      002723 02 2C 46         [24]  341 	ljmp	00219$
      002726                        342 00441$:
      002726 EA               [12]  343 	mov	a,r2
      002727 24 D0            [12]  344 	add	a,#0xd0
      002729 FA               [12]  345 	mov	r2,a
      00272A 24 0A            [12]  346 	add	a,#(00442$-3-.)
      00272C 83               [24]  347 	movc	a,@a+pc
      00272D F5 82            [12]  348 	mov	dpl,a
      00272F EA               [12]  349 	mov	a,r2
      002730 24 1B            [12]  350 	add	a,#(00443$-3-.)
      002732 83               [24]  351 	movc	a,@a+pc
      002733 F5 83            [12]  352 	mov	dph,a
      002735 E4               [12]  353 	clr	a
      002736 73               [24]  354 	jmp	@a+dptr
      002737                        355 00442$:
      002737 65                     356 	.db	00105$
      002738 68                     357 	.db	00106$
      002739 BC                     358 	.db	00113$
      00273A 10                     359 	.db	00120$
      00273B 64                     360 	.db	00127$
      00273C B8                     361 	.db	00134$
      00273D 0C                     362 	.db	00141$
      00273E 60                     363 	.db	00148$
      00273F B4                     364 	.db	00155$
      002740 08                     365 	.db	00162$
      002741 46                     366 	.db	00219$
      002742 46                     367 	.db	00219$
      002743 46                     368 	.db	00219$
      002744 46                     369 	.db	00219$
      002745 46                     370 	.db	00219$
      002746 46                     371 	.db	00219$
      002747 46                     372 	.db	00219$
      002748 5C                     373 	.db	00169$
      002749 B0                     374 	.db	00176$
      00274A 04                     375 	.db	00183$
      00274B 58                     376 	.db	00190$
      00274C AC                     377 	.db	00197$
      00274D FA                     378 	.db	00204$
      00274E                        379 00443$:
      00274E 27                     380 	.db	00105$>>8
      00274F 27                     381 	.db	00106$>>8
      002750 27                     382 	.db	00113$>>8
      002751 28                     383 	.db	00120$>>8
      002752 28                     384 	.db	00127$>>8
      002753 28                     385 	.db	00134$>>8
      002754 29                     386 	.db	00141$>>8
      002755 29                     387 	.db	00148$>>8
      002756 29                     388 	.db	00155$>>8
      002757 2A                     389 	.db	00162$>>8
      002758 2C                     390 	.db	00219$>>8
      002759 2C                     391 	.db	00219$>>8
      00275A 2C                     392 	.db	00219$>>8
      00275B 2C                     393 	.db	00219$>>8
      00275C 2C                     394 	.db	00219$>>8
      00275D 2C                     395 	.db	00219$>>8
      00275E 2C                     396 	.db	00219$>>8
      00275F 2A                     397 	.db	00169$>>8
      002760 2A                     398 	.db	00176$>>8
      002761 2B                     399 	.db	00183$>>8
      002762 2B                     400 	.db	00190$>>8
      002763 2B                     401 	.db	00197$>>8
      002764 2B                     402 	.db	00204$>>8
                                    403 ;	converter.c:29: case '0':
      002765                        404 00105$:
                                    405 ;	converter.c:30: i+=0;
                                    406 ;	converter.c:31: break;
      002765 02 2C 46         [24]  407 	ljmp	00219$
                                    408 ;	converter.c:32: case '1'://1
      002768                        409 00106$:
                                    410 ;	converter.c:33: if(k==0)
      002768 EC               [12]  411 	mov	a,r4
      002769 4D               [12]  412 	orl	a,r5
      00276A 70 12            [24]  413 	jnz	00108$
                                    414 ;	converter.c:34: i+=0x100;
      00276C 90 00 08         [24]  415 	mov	dptr,#_strtohex_i_65537_60
      00276F E0               [24]  416 	movx	a,@dptr
      002770 FA               [12]  417 	mov	r2,a
      002771 A3               [24]  418 	inc	dptr
      002772 E0               [24]  419 	movx	a,@dptr
      002773 FB               [12]  420 	mov	r3,a
      002774 90 00 08         [24]  421 	mov	dptr,#_strtohex_i_65537_60
      002777 EA               [12]  422 	mov	a,r2
      002778 F0               [24]  423 	movx	@dptr,a
      002779 74 01            [12]  424 	mov	a,#0x01
      00277B 2B               [12]  425 	add	a,r3
      00277C A3               [24]  426 	inc	dptr
      00277D F0               [24]  427 	movx	@dptr,a
      00277E                        428 00108$:
                                    429 ;	converter.c:35: if(k==1)
      00277E 8C 02            [24]  430 	mov	ar2,r4
      002780 8D 03            [24]  431 	mov	ar3,r5
      002782 BC 01 16         [24]  432 	cjne	r4,#0x01,00110$
      002785 BD 00 13         [24]  433 	cjne	r5,#0x00,00110$
                                    434 ;	converter.c:36: i+=0x010;
      002788 90 00 08         [24]  435 	mov	dptr,#_strtohex_i_65537_60
      00278B E0               [24]  436 	movx	a,@dptr
      00278C F8               [12]  437 	mov	r0,a
      00278D A3               [24]  438 	inc	dptr
      00278E E0               [24]  439 	movx	a,@dptr
      00278F F9               [12]  440 	mov	r1,a
      002790 90 00 08         [24]  441 	mov	dptr,#_strtohex_i_65537_60
      002793 74 10            [12]  442 	mov	a,#0x10
      002795 28               [12]  443 	add	a,r0
      002796 F0               [24]  444 	movx	@dptr,a
      002797 E4               [12]  445 	clr	a
      002798 39               [12]  446 	addc	a,r1
      002799 A3               [24]  447 	inc	dptr
      00279A F0               [24]  448 	movx	@dptr,a
      00279B                        449 00110$:
                                    450 ;	converter.c:37: if(k==2)
      00279B BA 02 05         [24]  451 	cjne	r2,#0x02,00447$
      00279E BB 00 02         [24]  452 	cjne	r3,#0x00,00447$
      0027A1 80 03            [24]  453 	sjmp	00448$
      0027A3                        454 00447$:
      0027A3 02 2C 46         [24]  455 	ljmp	00219$
      0027A6                        456 00448$:
                                    457 ;	converter.c:38: i+=0x001;
      0027A6 90 00 08         [24]  458 	mov	dptr,#_strtohex_i_65537_60
      0027A9 E0               [24]  459 	movx	a,@dptr
      0027AA FA               [12]  460 	mov	r2,a
      0027AB A3               [24]  461 	inc	dptr
      0027AC E0               [24]  462 	movx	a,@dptr
      0027AD FB               [12]  463 	mov	r3,a
      0027AE 90 00 08         [24]  464 	mov	dptr,#_strtohex_i_65537_60
      0027B1 74 01            [12]  465 	mov	a,#0x01
      0027B3 2A               [12]  466 	add	a,r2
      0027B4 F0               [24]  467 	movx	@dptr,a
      0027B5 E4               [12]  468 	clr	a
      0027B6 3B               [12]  469 	addc	a,r3
      0027B7 A3               [24]  470 	inc	dptr
      0027B8 F0               [24]  471 	movx	@dptr,a
                                    472 ;	converter.c:39: break;
      0027B9 02 2C 46         [24]  473 	ljmp	00219$
                                    474 ;	converter.c:40: case 50://2
      0027BC                        475 00113$:
                                    476 ;	converter.c:41: if(k==0)
      0027BC EC               [12]  477 	mov	a,r4
      0027BD 4D               [12]  478 	orl	a,r5
      0027BE 70 12            [24]  479 	jnz	00115$
                                    480 ;	converter.c:42: i+=0x200;
      0027C0 90 00 08         [24]  481 	mov	dptr,#_strtohex_i_65537_60
      0027C3 E0               [24]  482 	movx	a,@dptr
      0027C4 FA               [12]  483 	mov	r2,a
      0027C5 A3               [24]  484 	inc	dptr
      0027C6 E0               [24]  485 	movx	a,@dptr
      0027C7 FB               [12]  486 	mov	r3,a
      0027C8 90 00 08         [24]  487 	mov	dptr,#_strtohex_i_65537_60
      0027CB EA               [12]  488 	mov	a,r2
      0027CC F0               [24]  489 	movx	@dptr,a
      0027CD 74 02            [12]  490 	mov	a,#0x02
      0027CF 2B               [12]  491 	add	a,r3
      0027D0 A3               [24]  492 	inc	dptr
      0027D1 F0               [24]  493 	movx	@dptr,a
      0027D2                        494 00115$:
                                    495 ;	converter.c:43: if(k==1)
      0027D2 8C 02            [24]  496 	mov	ar2,r4
      0027D4 8D 03            [24]  497 	mov	ar3,r5
      0027D6 BC 01 16         [24]  498 	cjne	r4,#0x01,00117$
      0027D9 BD 00 13         [24]  499 	cjne	r5,#0x00,00117$
                                    500 ;	converter.c:44: i+=0x020;
      0027DC 90 00 08         [24]  501 	mov	dptr,#_strtohex_i_65537_60
      0027DF E0               [24]  502 	movx	a,@dptr
      0027E0 F8               [12]  503 	mov	r0,a
      0027E1 A3               [24]  504 	inc	dptr
      0027E2 E0               [24]  505 	movx	a,@dptr
      0027E3 F9               [12]  506 	mov	r1,a
      0027E4 90 00 08         [24]  507 	mov	dptr,#_strtohex_i_65537_60
      0027E7 74 20            [12]  508 	mov	a,#0x20
      0027E9 28               [12]  509 	add	a,r0
      0027EA F0               [24]  510 	movx	@dptr,a
      0027EB E4               [12]  511 	clr	a
      0027EC 39               [12]  512 	addc	a,r1
      0027ED A3               [24]  513 	inc	dptr
      0027EE F0               [24]  514 	movx	@dptr,a
      0027EF                        515 00117$:
                                    516 ;	converter.c:45: if(k==2)
      0027EF BA 02 05         [24]  517 	cjne	r2,#0x02,00452$
      0027F2 BB 00 02         [24]  518 	cjne	r3,#0x00,00452$
      0027F5 80 03            [24]  519 	sjmp	00453$
      0027F7                        520 00452$:
      0027F7 02 2C 46         [24]  521 	ljmp	00219$
      0027FA                        522 00453$:
                                    523 ;	converter.c:46: i+=0x002;
      0027FA 90 00 08         [24]  524 	mov	dptr,#_strtohex_i_65537_60
      0027FD E0               [24]  525 	movx	a,@dptr
      0027FE FA               [12]  526 	mov	r2,a
      0027FF A3               [24]  527 	inc	dptr
      002800 E0               [24]  528 	movx	a,@dptr
      002801 FB               [12]  529 	mov	r3,a
      002802 90 00 08         [24]  530 	mov	dptr,#_strtohex_i_65537_60
      002805 74 02            [12]  531 	mov	a,#0x02
      002807 2A               [12]  532 	add	a,r2
      002808 F0               [24]  533 	movx	@dptr,a
      002809 E4               [12]  534 	clr	a
      00280A 3B               [12]  535 	addc	a,r3
      00280B A3               [24]  536 	inc	dptr
      00280C F0               [24]  537 	movx	@dptr,a
                                    538 ;	converter.c:47: break;
      00280D 02 2C 46         [24]  539 	ljmp	00219$
                                    540 ;	converter.c:48: case 51://3
      002810                        541 00120$:
                                    542 ;	converter.c:49: if(k==0)
      002810 EC               [12]  543 	mov	a,r4
      002811 4D               [12]  544 	orl	a,r5
      002812 70 12            [24]  545 	jnz	00122$
                                    546 ;	converter.c:50: i+=0x300;
      002814 90 00 08         [24]  547 	mov	dptr,#_strtohex_i_65537_60
      002817 E0               [24]  548 	movx	a,@dptr
      002818 FA               [12]  549 	mov	r2,a
      002819 A3               [24]  550 	inc	dptr
      00281A E0               [24]  551 	movx	a,@dptr
      00281B FB               [12]  552 	mov	r3,a
      00281C 90 00 08         [24]  553 	mov	dptr,#_strtohex_i_65537_60
      00281F EA               [12]  554 	mov	a,r2
      002820 F0               [24]  555 	movx	@dptr,a
      002821 74 03            [12]  556 	mov	a,#0x03
      002823 2B               [12]  557 	add	a,r3
      002824 A3               [24]  558 	inc	dptr
      002825 F0               [24]  559 	movx	@dptr,a
      002826                        560 00122$:
                                    561 ;	converter.c:51: if(k==1)
      002826 8C 02            [24]  562 	mov	ar2,r4
      002828 8D 03            [24]  563 	mov	ar3,r5
      00282A BC 01 16         [24]  564 	cjne	r4,#0x01,00124$
      00282D BD 00 13         [24]  565 	cjne	r5,#0x00,00124$
                                    566 ;	converter.c:52: i+=0x030;
      002830 90 00 08         [24]  567 	mov	dptr,#_strtohex_i_65537_60
      002833 E0               [24]  568 	movx	a,@dptr
      002834 F8               [12]  569 	mov	r0,a
      002835 A3               [24]  570 	inc	dptr
      002836 E0               [24]  571 	movx	a,@dptr
      002837 F9               [12]  572 	mov	r1,a
      002838 90 00 08         [24]  573 	mov	dptr,#_strtohex_i_65537_60
      00283B 74 30            [12]  574 	mov	a,#0x30
      00283D 28               [12]  575 	add	a,r0
      00283E F0               [24]  576 	movx	@dptr,a
      00283F E4               [12]  577 	clr	a
      002840 39               [12]  578 	addc	a,r1
      002841 A3               [24]  579 	inc	dptr
      002842 F0               [24]  580 	movx	@dptr,a
      002843                        581 00124$:
                                    582 ;	converter.c:53: if(k==2)
      002843 BA 02 05         [24]  583 	cjne	r2,#0x02,00457$
      002846 BB 00 02         [24]  584 	cjne	r3,#0x00,00457$
      002849 80 03            [24]  585 	sjmp	00458$
      00284B                        586 00457$:
      00284B 02 2C 46         [24]  587 	ljmp	00219$
      00284E                        588 00458$:
                                    589 ;	converter.c:54: i+=0x003;
      00284E 90 00 08         [24]  590 	mov	dptr,#_strtohex_i_65537_60
      002851 E0               [24]  591 	movx	a,@dptr
      002852 FA               [12]  592 	mov	r2,a
      002853 A3               [24]  593 	inc	dptr
      002854 E0               [24]  594 	movx	a,@dptr
      002855 FB               [12]  595 	mov	r3,a
      002856 90 00 08         [24]  596 	mov	dptr,#_strtohex_i_65537_60
      002859 74 03            [12]  597 	mov	a,#0x03
      00285B 2A               [12]  598 	add	a,r2
      00285C F0               [24]  599 	movx	@dptr,a
      00285D E4               [12]  600 	clr	a
      00285E 3B               [12]  601 	addc	a,r3
      00285F A3               [24]  602 	inc	dptr
      002860 F0               [24]  603 	movx	@dptr,a
                                    604 ;	converter.c:55: break;
      002861 02 2C 46         [24]  605 	ljmp	00219$
                                    606 ;	converter.c:56: case 52://4
      002864                        607 00127$:
                                    608 ;	converter.c:57: if(k==0)
      002864 EC               [12]  609 	mov	a,r4
      002865 4D               [12]  610 	orl	a,r5
      002866 70 12            [24]  611 	jnz	00129$
                                    612 ;	converter.c:58: i+=0x400;
      002868 90 00 08         [24]  613 	mov	dptr,#_strtohex_i_65537_60
      00286B E0               [24]  614 	movx	a,@dptr
      00286C FA               [12]  615 	mov	r2,a
      00286D A3               [24]  616 	inc	dptr
      00286E E0               [24]  617 	movx	a,@dptr
      00286F FB               [12]  618 	mov	r3,a
      002870 90 00 08         [24]  619 	mov	dptr,#_strtohex_i_65537_60
      002873 EA               [12]  620 	mov	a,r2
      002874 F0               [24]  621 	movx	@dptr,a
      002875 74 04            [12]  622 	mov	a,#0x04
      002877 2B               [12]  623 	add	a,r3
      002878 A3               [24]  624 	inc	dptr
      002879 F0               [24]  625 	movx	@dptr,a
      00287A                        626 00129$:
                                    627 ;	converter.c:59: if(k==1)
      00287A 8C 02            [24]  628 	mov	ar2,r4
      00287C 8D 03            [24]  629 	mov	ar3,r5
      00287E BC 01 16         [24]  630 	cjne	r4,#0x01,00131$
      002881 BD 00 13         [24]  631 	cjne	r5,#0x00,00131$
                                    632 ;	converter.c:60: i+=0x040;
      002884 90 00 08         [24]  633 	mov	dptr,#_strtohex_i_65537_60
      002887 E0               [24]  634 	movx	a,@dptr
      002888 F8               [12]  635 	mov	r0,a
      002889 A3               [24]  636 	inc	dptr
      00288A E0               [24]  637 	movx	a,@dptr
      00288B F9               [12]  638 	mov	r1,a
      00288C 90 00 08         [24]  639 	mov	dptr,#_strtohex_i_65537_60
      00288F 74 40            [12]  640 	mov	a,#0x40
      002891 28               [12]  641 	add	a,r0
      002892 F0               [24]  642 	movx	@dptr,a
      002893 E4               [12]  643 	clr	a
      002894 39               [12]  644 	addc	a,r1
      002895 A3               [24]  645 	inc	dptr
      002896 F0               [24]  646 	movx	@dptr,a
      002897                        647 00131$:
                                    648 ;	converter.c:61: if(k==2)
      002897 BA 02 05         [24]  649 	cjne	r2,#0x02,00462$
      00289A BB 00 02         [24]  650 	cjne	r3,#0x00,00462$
      00289D 80 03            [24]  651 	sjmp	00463$
      00289F                        652 00462$:
      00289F 02 2C 46         [24]  653 	ljmp	00219$
      0028A2                        654 00463$:
                                    655 ;	converter.c:62: i+=0x004;
      0028A2 90 00 08         [24]  656 	mov	dptr,#_strtohex_i_65537_60
      0028A5 E0               [24]  657 	movx	a,@dptr
      0028A6 FA               [12]  658 	mov	r2,a
      0028A7 A3               [24]  659 	inc	dptr
      0028A8 E0               [24]  660 	movx	a,@dptr
      0028A9 FB               [12]  661 	mov	r3,a
      0028AA 90 00 08         [24]  662 	mov	dptr,#_strtohex_i_65537_60
      0028AD 74 04            [12]  663 	mov	a,#0x04
      0028AF 2A               [12]  664 	add	a,r2
      0028B0 F0               [24]  665 	movx	@dptr,a
      0028B1 E4               [12]  666 	clr	a
      0028B2 3B               [12]  667 	addc	a,r3
      0028B3 A3               [24]  668 	inc	dptr
      0028B4 F0               [24]  669 	movx	@dptr,a
                                    670 ;	converter.c:63: break;
      0028B5 02 2C 46         [24]  671 	ljmp	00219$
                                    672 ;	converter.c:64: case 53://5
      0028B8                        673 00134$:
                                    674 ;	converter.c:65: if(k==0)
      0028B8 EC               [12]  675 	mov	a,r4
      0028B9 4D               [12]  676 	orl	a,r5
      0028BA 70 12            [24]  677 	jnz	00136$
                                    678 ;	converter.c:66: i+=0x500;
      0028BC 90 00 08         [24]  679 	mov	dptr,#_strtohex_i_65537_60
      0028BF E0               [24]  680 	movx	a,@dptr
      0028C0 FA               [12]  681 	mov	r2,a
      0028C1 A3               [24]  682 	inc	dptr
      0028C2 E0               [24]  683 	movx	a,@dptr
      0028C3 FB               [12]  684 	mov	r3,a
      0028C4 90 00 08         [24]  685 	mov	dptr,#_strtohex_i_65537_60
      0028C7 EA               [12]  686 	mov	a,r2
      0028C8 F0               [24]  687 	movx	@dptr,a
      0028C9 74 05            [12]  688 	mov	a,#0x05
      0028CB 2B               [12]  689 	add	a,r3
      0028CC A3               [24]  690 	inc	dptr
      0028CD F0               [24]  691 	movx	@dptr,a
      0028CE                        692 00136$:
                                    693 ;	converter.c:67: if(k==1)
      0028CE 8C 02            [24]  694 	mov	ar2,r4
      0028D0 8D 03            [24]  695 	mov	ar3,r5
      0028D2 BC 01 16         [24]  696 	cjne	r4,#0x01,00138$
      0028D5 BD 00 13         [24]  697 	cjne	r5,#0x00,00138$
                                    698 ;	converter.c:68: i+=0x050;
      0028D8 90 00 08         [24]  699 	mov	dptr,#_strtohex_i_65537_60
      0028DB E0               [24]  700 	movx	a,@dptr
      0028DC F8               [12]  701 	mov	r0,a
      0028DD A3               [24]  702 	inc	dptr
      0028DE E0               [24]  703 	movx	a,@dptr
      0028DF F9               [12]  704 	mov	r1,a
      0028E0 90 00 08         [24]  705 	mov	dptr,#_strtohex_i_65537_60
      0028E3 74 50            [12]  706 	mov	a,#0x50
      0028E5 28               [12]  707 	add	a,r0
      0028E6 F0               [24]  708 	movx	@dptr,a
      0028E7 E4               [12]  709 	clr	a
      0028E8 39               [12]  710 	addc	a,r1
      0028E9 A3               [24]  711 	inc	dptr
      0028EA F0               [24]  712 	movx	@dptr,a
      0028EB                        713 00138$:
                                    714 ;	converter.c:69: if(k==2)
      0028EB BA 02 05         [24]  715 	cjne	r2,#0x02,00467$
      0028EE BB 00 02         [24]  716 	cjne	r3,#0x00,00467$
      0028F1 80 03            [24]  717 	sjmp	00468$
      0028F3                        718 00467$:
      0028F3 02 2C 46         [24]  719 	ljmp	00219$
      0028F6                        720 00468$:
                                    721 ;	converter.c:70: i+=0x005;
      0028F6 90 00 08         [24]  722 	mov	dptr,#_strtohex_i_65537_60
      0028F9 E0               [24]  723 	movx	a,@dptr
      0028FA FA               [12]  724 	mov	r2,a
      0028FB A3               [24]  725 	inc	dptr
      0028FC E0               [24]  726 	movx	a,@dptr
      0028FD FB               [12]  727 	mov	r3,a
      0028FE 90 00 08         [24]  728 	mov	dptr,#_strtohex_i_65537_60
      002901 74 05            [12]  729 	mov	a,#0x05
      002903 2A               [12]  730 	add	a,r2
      002904 F0               [24]  731 	movx	@dptr,a
      002905 E4               [12]  732 	clr	a
      002906 3B               [12]  733 	addc	a,r3
      002907 A3               [24]  734 	inc	dptr
      002908 F0               [24]  735 	movx	@dptr,a
                                    736 ;	converter.c:71: break;
      002909 02 2C 46         [24]  737 	ljmp	00219$
                                    738 ;	converter.c:72: case 54://6
      00290C                        739 00141$:
                                    740 ;	converter.c:73: if(k==0)
      00290C EC               [12]  741 	mov	a,r4
      00290D 4D               [12]  742 	orl	a,r5
      00290E 70 12            [24]  743 	jnz	00143$
                                    744 ;	converter.c:74: i+=0x600;
      002910 90 00 08         [24]  745 	mov	dptr,#_strtohex_i_65537_60
      002913 E0               [24]  746 	movx	a,@dptr
      002914 FA               [12]  747 	mov	r2,a
      002915 A3               [24]  748 	inc	dptr
      002916 E0               [24]  749 	movx	a,@dptr
      002917 FB               [12]  750 	mov	r3,a
      002918 90 00 08         [24]  751 	mov	dptr,#_strtohex_i_65537_60
      00291B EA               [12]  752 	mov	a,r2
      00291C F0               [24]  753 	movx	@dptr,a
      00291D 74 06            [12]  754 	mov	a,#0x06
      00291F 2B               [12]  755 	add	a,r3
      002920 A3               [24]  756 	inc	dptr
      002921 F0               [24]  757 	movx	@dptr,a
      002922                        758 00143$:
                                    759 ;	converter.c:75: if(k==1)
      002922 8C 02            [24]  760 	mov	ar2,r4
      002924 8D 03            [24]  761 	mov	ar3,r5
      002926 BC 01 16         [24]  762 	cjne	r4,#0x01,00145$
      002929 BD 00 13         [24]  763 	cjne	r5,#0x00,00145$
                                    764 ;	converter.c:76: i+=0x060;
      00292C 90 00 08         [24]  765 	mov	dptr,#_strtohex_i_65537_60
      00292F E0               [24]  766 	movx	a,@dptr
      002930 F8               [12]  767 	mov	r0,a
      002931 A3               [24]  768 	inc	dptr
      002932 E0               [24]  769 	movx	a,@dptr
      002933 F9               [12]  770 	mov	r1,a
      002934 90 00 08         [24]  771 	mov	dptr,#_strtohex_i_65537_60
      002937 74 60            [12]  772 	mov	a,#0x60
      002939 28               [12]  773 	add	a,r0
      00293A F0               [24]  774 	movx	@dptr,a
      00293B E4               [12]  775 	clr	a
      00293C 39               [12]  776 	addc	a,r1
      00293D A3               [24]  777 	inc	dptr
      00293E F0               [24]  778 	movx	@dptr,a
      00293F                        779 00145$:
                                    780 ;	converter.c:77: if(k==2)
      00293F BA 02 05         [24]  781 	cjne	r2,#0x02,00472$
      002942 BB 00 02         [24]  782 	cjne	r3,#0x00,00472$
      002945 80 03            [24]  783 	sjmp	00473$
      002947                        784 00472$:
      002947 02 2C 46         [24]  785 	ljmp	00219$
      00294A                        786 00473$:
                                    787 ;	converter.c:78: i+=0x006;
      00294A 90 00 08         [24]  788 	mov	dptr,#_strtohex_i_65537_60
      00294D E0               [24]  789 	movx	a,@dptr
      00294E FA               [12]  790 	mov	r2,a
      00294F A3               [24]  791 	inc	dptr
      002950 E0               [24]  792 	movx	a,@dptr
      002951 FB               [12]  793 	mov	r3,a
      002952 90 00 08         [24]  794 	mov	dptr,#_strtohex_i_65537_60
      002955 74 06            [12]  795 	mov	a,#0x06
      002957 2A               [12]  796 	add	a,r2
      002958 F0               [24]  797 	movx	@dptr,a
      002959 E4               [12]  798 	clr	a
      00295A 3B               [12]  799 	addc	a,r3
      00295B A3               [24]  800 	inc	dptr
      00295C F0               [24]  801 	movx	@dptr,a
                                    802 ;	converter.c:79: break;
      00295D 02 2C 46         [24]  803 	ljmp	00219$
                                    804 ;	converter.c:80: case 55://7
      002960                        805 00148$:
                                    806 ;	converter.c:81: if(k==0)
      002960 EC               [12]  807 	mov	a,r4
      002961 4D               [12]  808 	orl	a,r5
      002962 70 12            [24]  809 	jnz	00150$
                                    810 ;	converter.c:82: i+=0x700;
      002964 90 00 08         [24]  811 	mov	dptr,#_strtohex_i_65537_60
      002967 E0               [24]  812 	movx	a,@dptr
      002968 FA               [12]  813 	mov	r2,a
      002969 A3               [24]  814 	inc	dptr
      00296A E0               [24]  815 	movx	a,@dptr
      00296B FB               [12]  816 	mov	r3,a
      00296C 90 00 08         [24]  817 	mov	dptr,#_strtohex_i_65537_60
      00296F EA               [12]  818 	mov	a,r2
      002970 F0               [24]  819 	movx	@dptr,a
      002971 74 07            [12]  820 	mov	a,#0x07
      002973 2B               [12]  821 	add	a,r3
      002974 A3               [24]  822 	inc	dptr
      002975 F0               [24]  823 	movx	@dptr,a
      002976                        824 00150$:
                                    825 ;	converter.c:83: if(k==1)
      002976 8C 02            [24]  826 	mov	ar2,r4
      002978 8D 03            [24]  827 	mov	ar3,r5
      00297A BC 01 16         [24]  828 	cjne	r4,#0x01,00152$
      00297D BD 00 13         [24]  829 	cjne	r5,#0x00,00152$
                                    830 ;	converter.c:84: i+=0x070;
      002980 90 00 08         [24]  831 	mov	dptr,#_strtohex_i_65537_60
      002983 E0               [24]  832 	movx	a,@dptr
      002984 F8               [12]  833 	mov	r0,a
      002985 A3               [24]  834 	inc	dptr
      002986 E0               [24]  835 	movx	a,@dptr
      002987 F9               [12]  836 	mov	r1,a
      002988 90 00 08         [24]  837 	mov	dptr,#_strtohex_i_65537_60
      00298B 74 70            [12]  838 	mov	a,#0x70
      00298D 28               [12]  839 	add	a,r0
      00298E F0               [24]  840 	movx	@dptr,a
      00298F E4               [12]  841 	clr	a
      002990 39               [12]  842 	addc	a,r1
      002991 A3               [24]  843 	inc	dptr
      002992 F0               [24]  844 	movx	@dptr,a
      002993                        845 00152$:
                                    846 ;	converter.c:85: if(k==2)
      002993 BA 02 05         [24]  847 	cjne	r2,#0x02,00477$
      002996 BB 00 02         [24]  848 	cjne	r3,#0x00,00477$
      002999 80 03            [24]  849 	sjmp	00478$
      00299B                        850 00477$:
      00299B 02 2C 46         [24]  851 	ljmp	00219$
      00299E                        852 00478$:
                                    853 ;	converter.c:86: i+=0x007;
      00299E 90 00 08         [24]  854 	mov	dptr,#_strtohex_i_65537_60
      0029A1 E0               [24]  855 	movx	a,@dptr
      0029A2 FA               [12]  856 	mov	r2,a
      0029A3 A3               [24]  857 	inc	dptr
      0029A4 E0               [24]  858 	movx	a,@dptr
      0029A5 FB               [12]  859 	mov	r3,a
      0029A6 90 00 08         [24]  860 	mov	dptr,#_strtohex_i_65537_60
      0029A9 74 07            [12]  861 	mov	a,#0x07
      0029AB 2A               [12]  862 	add	a,r2
      0029AC F0               [24]  863 	movx	@dptr,a
      0029AD E4               [12]  864 	clr	a
      0029AE 3B               [12]  865 	addc	a,r3
      0029AF A3               [24]  866 	inc	dptr
      0029B0 F0               [24]  867 	movx	@dptr,a
                                    868 ;	converter.c:87: break;
      0029B1 02 2C 46         [24]  869 	ljmp	00219$
                                    870 ;	converter.c:88: case 56://8
      0029B4                        871 00155$:
                                    872 ;	converter.c:89: if(k==0)
      0029B4 EC               [12]  873 	mov	a,r4
      0029B5 4D               [12]  874 	orl	a,r5
      0029B6 70 12            [24]  875 	jnz	00157$
                                    876 ;	converter.c:90: i+=0x800;
      0029B8 90 00 08         [24]  877 	mov	dptr,#_strtohex_i_65537_60
      0029BB E0               [24]  878 	movx	a,@dptr
      0029BC FA               [12]  879 	mov	r2,a
      0029BD A3               [24]  880 	inc	dptr
      0029BE E0               [24]  881 	movx	a,@dptr
      0029BF FB               [12]  882 	mov	r3,a
      0029C0 90 00 08         [24]  883 	mov	dptr,#_strtohex_i_65537_60
      0029C3 EA               [12]  884 	mov	a,r2
      0029C4 F0               [24]  885 	movx	@dptr,a
      0029C5 74 08            [12]  886 	mov	a,#0x08
      0029C7 2B               [12]  887 	add	a,r3
      0029C8 A3               [24]  888 	inc	dptr
      0029C9 F0               [24]  889 	movx	@dptr,a
      0029CA                        890 00157$:
                                    891 ;	converter.c:91: if(k==1)
      0029CA 8C 02            [24]  892 	mov	ar2,r4
      0029CC 8D 03            [24]  893 	mov	ar3,r5
      0029CE BC 01 16         [24]  894 	cjne	r4,#0x01,00159$
      0029D1 BD 00 13         [24]  895 	cjne	r5,#0x00,00159$
                                    896 ;	converter.c:92: i+=0x080;
      0029D4 90 00 08         [24]  897 	mov	dptr,#_strtohex_i_65537_60
      0029D7 E0               [24]  898 	movx	a,@dptr
      0029D8 F8               [12]  899 	mov	r0,a
      0029D9 A3               [24]  900 	inc	dptr
      0029DA E0               [24]  901 	movx	a,@dptr
      0029DB F9               [12]  902 	mov	r1,a
      0029DC 90 00 08         [24]  903 	mov	dptr,#_strtohex_i_65537_60
      0029DF 74 80            [12]  904 	mov	a,#0x80
      0029E1 28               [12]  905 	add	a,r0
      0029E2 F0               [24]  906 	movx	@dptr,a
      0029E3 E4               [12]  907 	clr	a
      0029E4 39               [12]  908 	addc	a,r1
      0029E5 A3               [24]  909 	inc	dptr
      0029E6 F0               [24]  910 	movx	@dptr,a
      0029E7                        911 00159$:
                                    912 ;	converter.c:93: if(k==2)
      0029E7 BA 02 05         [24]  913 	cjne	r2,#0x02,00482$
      0029EA BB 00 02         [24]  914 	cjne	r3,#0x00,00482$
      0029ED 80 03            [24]  915 	sjmp	00483$
      0029EF                        916 00482$:
      0029EF 02 2C 46         [24]  917 	ljmp	00219$
      0029F2                        918 00483$:
                                    919 ;	converter.c:94: i+=0x008;
      0029F2 90 00 08         [24]  920 	mov	dptr,#_strtohex_i_65537_60
      0029F5 E0               [24]  921 	movx	a,@dptr
      0029F6 FA               [12]  922 	mov	r2,a
      0029F7 A3               [24]  923 	inc	dptr
      0029F8 E0               [24]  924 	movx	a,@dptr
      0029F9 FB               [12]  925 	mov	r3,a
      0029FA 90 00 08         [24]  926 	mov	dptr,#_strtohex_i_65537_60
      0029FD 74 08            [12]  927 	mov	a,#0x08
      0029FF 2A               [12]  928 	add	a,r2
      002A00 F0               [24]  929 	movx	@dptr,a
      002A01 E4               [12]  930 	clr	a
      002A02 3B               [12]  931 	addc	a,r3
      002A03 A3               [24]  932 	inc	dptr
      002A04 F0               [24]  933 	movx	@dptr,a
                                    934 ;	converter.c:95: break;
      002A05 02 2C 46         [24]  935 	ljmp	00219$
                                    936 ;	converter.c:96: case 57://9
      002A08                        937 00162$:
                                    938 ;	converter.c:97: if(k==0)
      002A08 EC               [12]  939 	mov	a,r4
      002A09 4D               [12]  940 	orl	a,r5
      002A0A 70 12            [24]  941 	jnz	00164$
                                    942 ;	converter.c:98: i+=0x900;
      002A0C 90 00 08         [24]  943 	mov	dptr,#_strtohex_i_65537_60
      002A0F E0               [24]  944 	movx	a,@dptr
      002A10 FA               [12]  945 	mov	r2,a
      002A11 A3               [24]  946 	inc	dptr
      002A12 E0               [24]  947 	movx	a,@dptr
      002A13 FB               [12]  948 	mov	r3,a
      002A14 90 00 08         [24]  949 	mov	dptr,#_strtohex_i_65537_60
      002A17 EA               [12]  950 	mov	a,r2
      002A18 F0               [24]  951 	movx	@dptr,a
      002A19 74 09            [12]  952 	mov	a,#0x09
      002A1B 2B               [12]  953 	add	a,r3
      002A1C A3               [24]  954 	inc	dptr
      002A1D F0               [24]  955 	movx	@dptr,a
      002A1E                        956 00164$:
                                    957 ;	converter.c:99: if(k==1)
      002A1E 8C 02            [24]  958 	mov	ar2,r4
      002A20 8D 03            [24]  959 	mov	ar3,r5
      002A22 BC 01 16         [24]  960 	cjne	r4,#0x01,00166$
      002A25 BD 00 13         [24]  961 	cjne	r5,#0x00,00166$
                                    962 ;	converter.c:100: i+=0x090;
      002A28 90 00 08         [24]  963 	mov	dptr,#_strtohex_i_65537_60
      002A2B E0               [24]  964 	movx	a,@dptr
      002A2C F8               [12]  965 	mov	r0,a
      002A2D A3               [24]  966 	inc	dptr
      002A2E E0               [24]  967 	movx	a,@dptr
      002A2F F9               [12]  968 	mov	r1,a
      002A30 90 00 08         [24]  969 	mov	dptr,#_strtohex_i_65537_60
      002A33 74 90            [12]  970 	mov	a,#0x90
      002A35 28               [12]  971 	add	a,r0
      002A36 F0               [24]  972 	movx	@dptr,a
      002A37 E4               [12]  973 	clr	a
      002A38 39               [12]  974 	addc	a,r1
      002A39 A3               [24]  975 	inc	dptr
      002A3A F0               [24]  976 	movx	@dptr,a
      002A3B                        977 00166$:
                                    978 ;	converter.c:101: if(k==2)
      002A3B BA 02 05         [24]  979 	cjne	r2,#0x02,00487$
      002A3E BB 00 02         [24]  980 	cjne	r3,#0x00,00487$
      002A41 80 03            [24]  981 	sjmp	00488$
      002A43                        982 00487$:
      002A43 02 2C 46         [24]  983 	ljmp	00219$
      002A46                        984 00488$:
                                    985 ;	converter.c:102: i+=0x009;
      002A46 90 00 08         [24]  986 	mov	dptr,#_strtohex_i_65537_60
      002A49 E0               [24]  987 	movx	a,@dptr
      002A4A FA               [12]  988 	mov	r2,a
      002A4B A3               [24]  989 	inc	dptr
      002A4C E0               [24]  990 	movx	a,@dptr
      002A4D FB               [12]  991 	mov	r3,a
      002A4E 90 00 08         [24]  992 	mov	dptr,#_strtohex_i_65537_60
      002A51 74 09            [12]  993 	mov	a,#0x09
      002A53 2A               [12]  994 	add	a,r2
      002A54 F0               [24]  995 	movx	@dptr,a
      002A55 E4               [12]  996 	clr	a
      002A56 3B               [12]  997 	addc	a,r3
      002A57 A3               [24]  998 	inc	dptr
      002A58 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	converter.c:103: break;
      002A59 02 2C 46         [24] 1001 	ljmp	00219$
                                   1002 ;	converter.c:104: case 65://A
      002A5C                       1003 00169$:
                                   1004 ;	converter.c:105: if(k==0)
      002A5C EC               [12] 1005 	mov	a,r4
      002A5D 4D               [12] 1006 	orl	a,r5
      002A5E 70 12            [24] 1007 	jnz	00171$
                                   1008 ;	converter.c:106: i+=0xA00;
      002A60 90 00 08         [24] 1009 	mov	dptr,#_strtohex_i_65537_60
      002A63 E0               [24] 1010 	movx	a,@dptr
      002A64 FA               [12] 1011 	mov	r2,a
      002A65 A3               [24] 1012 	inc	dptr
      002A66 E0               [24] 1013 	movx	a,@dptr
      002A67 FB               [12] 1014 	mov	r3,a
      002A68 90 00 08         [24] 1015 	mov	dptr,#_strtohex_i_65537_60
      002A6B EA               [12] 1016 	mov	a,r2
      002A6C F0               [24] 1017 	movx	@dptr,a
      002A6D 74 0A            [12] 1018 	mov	a,#0x0a
      002A6F 2B               [12] 1019 	add	a,r3
      002A70 A3               [24] 1020 	inc	dptr
      002A71 F0               [24] 1021 	movx	@dptr,a
      002A72                       1022 00171$:
                                   1023 ;	converter.c:107: if(k==1)
      002A72 8C 02            [24] 1024 	mov	ar2,r4
      002A74 8D 03            [24] 1025 	mov	ar3,r5
      002A76 BC 01 16         [24] 1026 	cjne	r4,#0x01,00173$
      002A79 BD 00 13         [24] 1027 	cjne	r5,#0x00,00173$
                                   1028 ;	converter.c:108: i+=0x0A0;
      002A7C 90 00 08         [24] 1029 	mov	dptr,#_strtohex_i_65537_60
      002A7F E0               [24] 1030 	movx	a,@dptr
      002A80 F8               [12] 1031 	mov	r0,a
      002A81 A3               [24] 1032 	inc	dptr
      002A82 E0               [24] 1033 	movx	a,@dptr
      002A83 F9               [12] 1034 	mov	r1,a
      002A84 90 00 08         [24] 1035 	mov	dptr,#_strtohex_i_65537_60
      002A87 74 A0            [12] 1036 	mov	a,#0xa0
      002A89 28               [12] 1037 	add	a,r0
      002A8A F0               [24] 1038 	movx	@dptr,a
      002A8B E4               [12] 1039 	clr	a
      002A8C 39               [12] 1040 	addc	a,r1
      002A8D A3               [24] 1041 	inc	dptr
      002A8E F0               [24] 1042 	movx	@dptr,a
      002A8F                       1043 00173$:
                                   1044 ;	converter.c:109: if(k==2)
      002A8F BA 02 05         [24] 1045 	cjne	r2,#0x02,00492$
      002A92 BB 00 02         [24] 1046 	cjne	r3,#0x00,00492$
      002A95 80 03            [24] 1047 	sjmp	00493$
      002A97                       1048 00492$:
      002A97 02 2C 46         [24] 1049 	ljmp	00219$
      002A9A                       1050 00493$:
                                   1051 ;	converter.c:110: i+=0x00A;
      002A9A 90 00 08         [24] 1052 	mov	dptr,#_strtohex_i_65537_60
      002A9D E0               [24] 1053 	movx	a,@dptr
      002A9E FA               [12] 1054 	mov	r2,a
      002A9F A3               [24] 1055 	inc	dptr
      002AA0 E0               [24] 1056 	movx	a,@dptr
      002AA1 FB               [12] 1057 	mov	r3,a
      002AA2 90 00 08         [24] 1058 	mov	dptr,#_strtohex_i_65537_60
      002AA5 74 0A            [12] 1059 	mov	a,#0x0a
      002AA7 2A               [12] 1060 	add	a,r2
      002AA8 F0               [24] 1061 	movx	@dptr,a
      002AA9 E4               [12] 1062 	clr	a
      002AAA 3B               [12] 1063 	addc	a,r3
      002AAB A3               [24] 1064 	inc	dptr
      002AAC F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	converter.c:111: break;
      002AAD 02 2C 46         [24] 1067 	ljmp	00219$
                                   1068 ;	converter.c:112: case 66://B
      002AB0                       1069 00176$:
                                   1070 ;	converter.c:113: if(k==0)
      002AB0 EC               [12] 1071 	mov	a,r4
      002AB1 4D               [12] 1072 	orl	a,r5
      002AB2 70 12            [24] 1073 	jnz	00178$
                                   1074 ;	converter.c:114: i+=0xB00;
      002AB4 90 00 08         [24] 1075 	mov	dptr,#_strtohex_i_65537_60
      002AB7 E0               [24] 1076 	movx	a,@dptr
      002AB8 FA               [12] 1077 	mov	r2,a
      002AB9 A3               [24] 1078 	inc	dptr
      002ABA E0               [24] 1079 	movx	a,@dptr
      002ABB FB               [12] 1080 	mov	r3,a
      002ABC 90 00 08         [24] 1081 	mov	dptr,#_strtohex_i_65537_60
      002ABF EA               [12] 1082 	mov	a,r2
      002AC0 F0               [24] 1083 	movx	@dptr,a
      002AC1 74 0B            [12] 1084 	mov	a,#0x0b
      002AC3 2B               [12] 1085 	add	a,r3
      002AC4 A3               [24] 1086 	inc	dptr
      002AC5 F0               [24] 1087 	movx	@dptr,a
      002AC6                       1088 00178$:
                                   1089 ;	converter.c:115: if(k==1)
      002AC6 8C 02            [24] 1090 	mov	ar2,r4
      002AC8 8D 03            [24] 1091 	mov	ar3,r5
      002ACA BC 01 16         [24] 1092 	cjne	r4,#0x01,00180$
      002ACD BD 00 13         [24] 1093 	cjne	r5,#0x00,00180$
                                   1094 ;	converter.c:116: i+=0x0B0;
      002AD0 90 00 08         [24] 1095 	mov	dptr,#_strtohex_i_65537_60
      002AD3 E0               [24] 1096 	movx	a,@dptr
      002AD4 F8               [12] 1097 	mov	r0,a
      002AD5 A3               [24] 1098 	inc	dptr
      002AD6 E0               [24] 1099 	movx	a,@dptr
      002AD7 F9               [12] 1100 	mov	r1,a
      002AD8 90 00 08         [24] 1101 	mov	dptr,#_strtohex_i_65537_60
      002ADB 74 B0            [12] 1102 	mov	a,#0xb0
      002ADD 28               [12] 1103 	add	a,r0
      002ADE F0               [24] 1104 	movx	@dptr,a
      002ADF E4               [12] 1105 	clr	a
      002AE0 39               [12] 1106 	addc	a,r1
      002AE1 A3               [24] 1107 	inc	dptr
      002AE2 F0               [24] 1108 	movx	@dptr,a
      002AE3                       1109 00180$:
                                   1110 ;	converter.c:117: if(k==2)
      002AE3 BA 02 05         [24] 1111 	cjne	r2,#0x02,00497$
      002AE6 BB 00 02         [24] 1112 	cjne	r3,#0x00,00497$
      002AE9 80 03            [24] 1113 	sjmp	00498$
      002AEB                       1114 00497$:
      002AEB 02 2C 46         [24] 1115 	ljmp	00219$
      002AEE                       1116 00498$:
                                   1117 ;	converter.c:118: i+=0x00B;
      002AEE 90 00 08         [24] 1118 	mov	dptr,#_strtohex_i_65537_60
      002AF1 E0               [24] 1119 	movx	a,@dptr
      002AF2 FA               [12] 1120 	mov	r2,a
      002AF3 A3               [24] 1121 	inc	dptr
      002AF4 E0               [24] 1122 	movx	a,@dptr
      002AF5 FB               [12] 1123 	mov	r3,a
      002AF6 90 00 08         [24] 1124 	mov	dptr,#_strtohex_i_65537_60
      002AF9 74 0B            [12] 1125 	mov	a,#0x0b
      002AFB 2A               [12] 1126 	add	a,r2
      002AFC F0               [24] 1127 	movx	@dptr,a
      002AFD E4               [12] 1128 	clr	a
      002AFE 3B               [12] 1129 	addc	a,r3
      002AFF A3               [24] 1130 	inc	dptr
      002B00 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	converter.c:119: break;
      002B01 02 2C 46         [24] 1133 	ljmp	00219$
                                   1134 ;	converter.c:120: case 67://C
      002B04                       1135 00183$:
                                   1136 ;	converter.c:121: if(k==0)
      002B04 EC               [12] 1137 	mov	a,r4
      002B05 4D               [12] 1138 	orl	a,r5
      002B06 70 12            [24] 1139 	jnz	00185$
                                   1140 ;	converter.c:122: i+=0xC00;
      002B08 90 00 08         [24] 1141 	mov	dptr,#_strtohex_i_65537_60
      002B0B E0               [24] 1142 	movx	a,@dptr
      002B0C FA               [12] 1143 	mov	r2,a
      002B0D A3               [24] 1144 	inc	dptr
      002B0E E0               [24] 1145 	movx	a,@dptr
      002B0F FB               [12] 1146 	mov	r3,a
      002B10 90 00 08         [24] 1147 	mov	dptr,#_strtohex_i_65537_60
      002B13 EA               [12] 1148 	mov	a,r2
      002B14 F0               [24] 1149 	movx	@dptr,a
      002B15 74 0C            [12] 1150 	mov	a,#0x0c
      002B17 2B               [12] 1151 	add	a,r3
      002B18 A3               [24] 1152 	inc	dptr
      002B19 F0               [24] 1153 	movx	@dptr,a
      002B1A                       1154 00185$:
                                   1155 ;	converter.c:123: if(k==1)
      002B1A 8C 02            [24] 1156 	mov	ar2,r4
      002B1C 8D 03            [24] 1157 	mov	ar3,r5
      002B1E BC 01 16         [24] 1158 	cjne	r4,#0x01,00187$
      002B21 BD 00 13         [24] 1159 	cjne	r5,#0x00,00187$
                                   1160 ;	converter.c:124: i+=0x0C0;
      002B24 90 00 08         [24] 1161 	mov	dptr,#_strtohex_i_65537_60
      002B27 E0               [24] 1162 	movx	a,@dptr
      002B28 F8               [12] 1163 	mov	r0,a
      002B29 A3               [24] 1164 	inc	dptr
      002B2A E0               [24] 1165 	movx	a,@dptr
      002B2B F9               [12] 1166 	mov	r1,a
      002B2C 90 00 08         [24] 1167 	mov	dptr,#_strtohex_i_65537_60
      002B2F 74 C0            [12] 1168 	mov	a,#0xc0
      002B31 28               [12] 1169 	add	a,r0
      002B32 F0               [24] 1170 	movx	@dptr,a
      002B33 E4               [12] 1171 	clr	a
      002B34 39               [12] 1172 	addc	a,r1
      002B35 A3               [24] 1173 	inc	dptr
      002B36 F0               [24] 1174 	movx	@dptr,a
      002B37                       1175 00187$:
                                   1176 ;	converter.c:125: if(k==2)
      002B37 BA 02 05         [24] 1177 	cjne	r2,#0x02,00502$
      002B3A BB 00 02         [24] 1178 	cjne	r3,#0x00,00502$
      002B3D 80 03            [24] 1179 	sjmp	00503$
      002B3F                       1180 00502$:
      002B3F 02 2C 46         [24] 1181 	ljmp	00219$
      002B42                       1182 00503$:
                                   1183 ;	converter.c:126: i+=0x00C;
      002B42 90 00 08         [24] 1184 	mov	dptr,#_strtohex_i_65537_60
      002B45 E0               [24] 1185 	movx	a,@dptr
      002B46 FA               [12] 1186 	mov	r2,a
      002B47 A3               [24] 1187 	inc	dptr
      002B48 E0               [24] 1188 	movx	a,@dptr
      002B49 FB               [12] 1189 	mov	r3,a
      002B4A 90 00 08         [24] 1190 	mov	dptr,#_strtohex_i_65537_60
      002B4D 74 0C            [12] 1191 	mov	a,#0x0c
      002B4F 2A               [12] 1192 	add	a,r2
      002B50 F0               [24] 1193 	movx	@dptr,a
      002B51 E4               [12] 1194 	clr	a
      002B52 3B               [12] 1195 	addc	a,r3
      002B53 A3               [24] 1196 	inc	dptr
      002B54 F0               [24] 1197 	movx	@dptr,a
                                   1198 ;	converter.c:127: break;
      002B55 02 2C 46         [24] 1199 	ljmp	00219$
                                   1200 ;	converter.c:128: case 68://D
      002B58                       1201 00190$:
                                   1202 ;	converter.c:129: if(k==0)
      002B58 EC               [12] 1203 	mov	a,r4
      002B59 4D               [12] 1204 	orl	a,r5
      002B5A 70 12            [24] 1205 	jnz	00192$
                                   1206 ;	converter.c:130: i+=0xD00;
      002B5C 90 00 08         [24] 1207 	mov	dptr,#_strtohex_i_65537_60
      002B5F E0               [24] 1208 	movx	a,@dptr
      002B60 FA               [12] 1209 	mov	r2,a
      002B61 A3               [24] 1210 	inc	dptr
      002B62 E0               [24] 1211 	movx	a,@dptr
      002B63 FB               [12] 1212 	mov	r3,a
      002B64 90 00 08         [24] 1213 	mov	dptr,#_strtohex_i_65537_60
      002B67 EA               [12] 1214 	mov	a,r2
      002B68 F0               [24] 1215 	movx	@dptr,a
      002B69 74 0D            [12] 1216 	mov	a,#0x0d
      002B6B 2B               [12] 1217 	add	a,r3
      002B6C A3               [24] 1218 	inc	dptr
      002B6D F0               [24] 1219 	movx	@dptr,a
      002B6E                       1220 00192$:
                                   1221 ;	converter.c:131: if(k==1)
      002B6E 8C 02            [24] 1222 	mov	ar2,r4
      002B70 8D 03            [24] 1223 	mov	ar3,r5
      002B72 BC 01 16         [24] 1224 	cjne	r4,#0x01,00194$
      002B75 BD 00 13         [24] 1225 	cjne	r5,#0x00,00194$
                                   1226 ;	converter.c:132: i+=0x0D0;
      002B78 90 00 08         [24] 1227 	mov	dptr,#_strtohex_i_65537_60
      002B7B E0               [24] 1228 	movx	a,@dptr
      002B7C F8               [12] 1229 	mov	r0,a
      002B7D A3               [24] 1230 	inc	dptr
      002B7E E0               [24] 1231 	movx	a,@dptr
      002B7F F9               [12] 1232 	mov	r1,a
      002B80 90 00 08         [24] 1233 	mov	dptr,#_strtohex_i_65537_60
      002B83 74 D0            [12] 1234 	mov	a,#0xd0
      002B85 28               [12] 1235 	add	a,r0
      002B86 F0               [24] 1236 	movx	@dptr,a
      002B87 E4               [12] 1237 	clr	a
      002B88 39               [12] 1238 	addc	a,r1
      002B89 A3               [24] 1239 	inc	dptr
      002B8A F0               [24] 1240 	movx	@dptr,a
      002B8B                       1241 00194$:
                                   1242 ;	converter.c:133: if(k==2)
      002B8B BA 02 05         [24] 1243 	cjne	r2,#0x02,00507$
      002B8E BB 00 02         [24] 1244 	cjne	r3,#0x00,00507$
      002B91 80 03            [24] 1245 	sjmp	00508$
      002B93                       1246 00507$:
      002B93 02 2C 46         [24] 1247 	ljmp	00219$
      002B96                       1248 00508$:
                                   1249 ;	converter.c:134: i+=0x00D;
      002B96 90 00 08         [24] 1250 	mov	dptr,#_strtohex_i_65537_60
      002B99 E0               [24] 1251 	movx	a,@dptr
      002B9A FA               [12] 1252 	mov	r2,a
      002B9B A3               [24] 1253 	inc	dptr
      002B9C E0               [24] 1254 	movx	a,@dptr
      002B9D FB               [12] 1255 	mov	r3,a
      002B9E 90 00 08         [24] 1256 	mov	dptr,#_strtohex_i_65537_60
      002BA1 74 0D            [12] 1257 	mov	a,#0x0d
      002BA3 2A               [12] 1258 	add	a,r2
      002BA4 F0               [24] 1259 	movx	@dptr,a
      002BA5 E4               [12] 1260 	clr	a
      002BA6 3B               [12] 1261 	addc	a,r3
      002BA7 A3               [24] 1262 	inc	dptr
      002BA8 F0               [24] 1263 	movx	@dptr,a
                                   1264 ;	converter.c:135: break;
      002BA9 02 2C 46         [24] 1265 	ljmp	00219$
                                   1266 ;	converter.c:136: case 69://E
      002BAC                       1267 00197$:
                                   1268 ;	converter.c:137: if(k==0)
      002BAC EC               [12] 1269 	mov	a,r4
      002BAD 4D               [12] 1270 	orl	a,r5
      002BAE 70 12            [24] 1271 	jnz	00199$
                                   1272 ;	converter.c:138: i+=0xE00;
      002BB0 90 00 08         [24] 1273 	mov	dptr,#_strtohex_i_65537_60
      002BB3 E0               [24] 1274 	movx	a,@dptr
      002BB4 FA               [12] 1275 	mov	r2,a
      002BB5 A3               [24] 1276 	inc	dptr
      002BB6 E0               [24] 1277 	movx	a,@dptr
      002BB7 FB               [12] 1278 	mov	r3,a
      002BB8 90 00 08         [24] 1279 	mov	dptr,#_strtohex_i_65537_60
      002BBB EA               [12] 1280 	mov	a,r2
      002BBC F0               [24] 1281 	movx	@dptr,a
      002BBD 74 0E            [12] 1282 	mov	a,#0x0e
      002BBF 2B               [12] 1283 	add	a,r3
      002BC0 A3               [24] 1284 	inc	dptr
      002BC1 F0               [24] 1285 	movx	@dptr,a
      002BC2                       1286 00199$:
                                   1287 ;	converter.c:139: if(k==1)
      002BC2 8C 02            [24] 1288 	mov	ar2,r4
      002BC4 8D 03            [24] 1289 	mov	ar3,r5
      002BC6 BC 01 16         [24] 1290 	cjne	r4,#0x01,00201$
      002BC9 BD 00 13         [24] 1291 	cjne	r5,#0x00,00201$
                                   1292 ;	converter.c:140: i+=0x0E0;
      002BCC 90 00 08         [24] 1293 	mov	dptr,#_strtohex_i_65537_60
      002BCF E0               [24] 1294 	movx	a,@dptr
      002BD0 F8               [12] 1295 	mov	r0,a
      002BD1 A3               [24] 1296 	inc	dptr
      002BD2 E0               [24] 1297 	movx	a,@dptr
      002BD3 F9               [12] 1298 	mov	r1,a
      002BD4 90 00 08         [24] 1299 	mov	dptr,#_strtohex_i_65537_60
      002BD7 74 E0            [12] 1300 	mov	a,#0xe0
      002BD9 28               [12] 1301 	add	a,r0
      002BDA F0               [24] 1302 	movx	@dptr,a
      002BDB E4               [12] 1303 	clr	a
      002BDC 39               [12] 1304 	addc	a,r1
      002BDD A3               [24] 1305 	inc	dptr
      002BDE F0               [24] 1306 	movx	@dptr,a
      002BDF                       1307 00201$:
                                   1308 ;	converter.c:141: if(k==2)
      002BDF BA 02 64         [24] 1309 	cjne	r2,#0x02,00219$
      002BE2 BB 00 61         [24] 1310 	cjne	r3,#0x00,00219$
                                   1311 ;	converter.c:142: i+=0x00E;
      002BE5 90 00 08         [24] 1312 	mov	dptr,#_strtohex_i_65537_60
      002BE8 E0               [24] 1313 	movx	a,@dptr
      002BE9 FA               [12] 1314 	mov	r2,a
      002BEA A3               [24] 1315 	inc	dptr
      002BEB E0               [24] 1316 	movx	a,@dptr
      002BEC FB               [12] 1317 	mov	r3,a
      002BED 90 00 08         [24] 1318 	mov	dptr,#_strtohex_i_65537_60
      002BF0 74 0E            [12] 1319 	mov	a,#0x0e
      002BF2 2A               [12] 1320 	add	a,r2
      002BF3 F0               [24] 1321 	movx	@dptr,a
      002BF4 E4               [12] 1322 	clr	a
      002BF5 3B               [12] 1323 	addc	a,r3
      002BF6 A3               [24] 1324 	inc	dptr
      002BF7 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	converter.c:143: break;
                                   1327 ;	converter.c:144: case 70://F
      002BF8 80 4C            [24] 1328 	sjmp	00219$
      002BFA                       1329 00204$:
                                   1330 ;	converter.c:145: if(k==0)
      002BFA EC               [12] 1331 	mov	a,r4
      002BFB 4D               [12] 1332 	orl	a,r5
      002BFC 70 12            [24] 1333 	jnz	00206$
                                   1334 ;	converter.c:146: i+=0xF00;
      002BFE 90 00 08         [24] 1335 	mov	dptr,#_strtohex_i_65537_60
      002C01 E0               [24] 1336 	movx	a,@dptr
      002C02 FA               [12] 1337 	mov	r2,a
      002C03 A3               [24] 1338 	inc	dptr
      002C04 E0               [24] 1339 	movx	a,@dptr
      002C05 FB               [12] 1340 	mov	r3,a
      002C06 90 00 08         [24] 1341 	mov	dptr,#_strtohex_i_65537_60
      002C09 EA               [12] 1342 	mov	a,r2
      002C0A F0               [24] 1343 	movx	@dptr,a
      002C0B 74 0F            [12] 1344 	mov	a,#0x0f
      002C0D 2B               [12] 1345 	add	a,r3
      002C0E A3               [24] 1346 	inc	dptr
      002C0F F0               [24] 1347 	movx	@dptr,a
      002C10                       1348 00206$:
                                   1349 ;	converter.c:147: if(k==1)
      002C10 8C 02            [24] 1350 	mov	ar2,r4
      002C12 8D 03            [24] 1351 	mov	ar3,r5
      002C14 BC 01 16         [24] 1352 	cjne	r4,#0x01,00208$
      002C17 BD 00 13         [24] 1353 	cjne	r5,#0x00,00208$
                                   1354 ;	converter.c:148: i+=0x0F0;
      002C1A 90 00 08         [24] 1355 	mov	dptr,#_strtohex_i_65537_60
      002C1D E0               [24] 1356 	movx	a,@dptr
      002C1E F8               [12] 1357 	mov	r0,a
      002C1F A3               [24] 1358 	inc	dptr
      002C20 E0               [24] 1359 	movx	a,@dptr
      002C21 F9               [12] 1360 	mov	r1,a
      002C22 90 00 08         [24] 1361 	mov	dptr,#_strtohex_i_65537_60
      002C25 74 F0            [12] 1362 	mov	a,#0xf0
      002C27 28               [12] 1363 	add	a,r0
      002C28 F0               [24] 1364 	movx	@dptr,a
      002C29 E4               [12] 1365 	clr	a
      002C2A 39               [12] 1366 	addc	a,r1
      002C2B A3               [24] 1367 	inc	dptr
      002C2C F0               [24] 1368 	movx	@dptr,a
      002C2D                       1369 00208$:
                                   1370 ;	converter.c:149: if(k==2)
      002C2D BA 02 16         [24] 1371 	cjne	r2,#0x02,00219$
      002C30 BB 00 13         [24] 1372 	cjne	r3,#0x00,00219$
                                   1373 ;	converter.c:150: i+=0x00F;
      002C33 90 00 08         [24] 1374 	mov	dptr,#_strtohex_i_65537_60
      002C36 E0               [24] 1375 	movx	a,@dptr
      002C37 FA               [12] 1376 	mov	r2,a
      002C38 A3               [24] 1377 	inc	dptr
      002C39 E0               [24] 1378 	movx	a,@dptr
      002C3A FB               [12] 1379 	mov	r3,a
      002C3B 90 00 08         [24] 1380 	mov	dptr,#_strtohex_i_65537_60
      002C3E 74 0F            [12] 1381 	mov	a,#0x0f
      002C40 2A               [12] 1382 	add	a,r2
      002C41 F0               [24] 1383 	movx	@dptr,a
      002C42 E4               [12] 1384 	clr	a
      002C43 3B               [12] 1385 	addc	a,r3
      002C44 A3               [24] 1386 	inc	dptr
      002C45 F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	converter.c:159: }
      002C46                       1389 00219$:
                                   1390 ;	converter.c:23: for(int k=0; k<3; k++)
      002C46 0C               [12] 1391 	inc	r4
      002C47 BC 00 01         [24] 1392 	cjne	r4,#0x00,00519$
      002C4A 0D               [12] 1393 	inc	r5
      002C4B                       1394 00519$:
      002C4B 02 26 CF         [24] 1395 	ljmp	00218$
      002C4E                       1396 00213$:
                                   1397 ;	converter.c:161: if(length<3)
      002C4E C3               [12] 1398 	clr	c
      002C4F EE               [12] 1399 	mov	a,r6
      002C50 94 03            [12] 1400 	subb	a,#0x03
      002C52 EF               [12] 1401 	mov	a,r7
      002C53 64 80            [12] 1402 	xrl	a,#0x80
      002C55 94 80            [12] 1403 	subb	a,#0x80
      002C57 50 0E            [24] 1404 	jnc	00215$
                                   1405 ;	converter.c:162: return (uint8_t)i;
      002C59 90 00 08         [24] 1406 	mov	dptr,#_strtohex_i_65537_60
      002C5C E0               [24] 1407 	movx	a,@dptr
      002C5D FE               [12] 1408 	mov	r6,a
      002C5E A3               [24] 1409 	inc	dptr
      002C5F E0               [24] 1410 	movx	a,@dptr
      002C60 7F 00            [12] 1411 	mov	r7,#0x00
      002C62 8E 82            [24] 1412 	mov	dpl,r6
      002C64 8F 83            [24] 1413 	mov	dph,r7
      002C66 22               [24] 1414 	ret
      002C67                       1415 00215$:
                                   1416 ;	converter.c:164: return i;
      002C67 90 00 08         [24] 1417 	mov	dptr,#_strtohex_i_65537_60
      002C6A E0               [24] 1418 	movx	a,@dptr
      002C6B FE               [12] 1419 	mov	r6,a
      002C6C A3               [24] 1420 	inc	dptr
      002C6D E0               [24] 1421 	movx	a,@dptr
                                   1422 ;	converter.c:165: }
      002C6E 8E 82            [24] 1423 	mov	dpl,r6
      002C70 F5 83            [12] 1424 	mov	dph,a
      002C72 22               [24] 1425 	ret
                                   1426 	.area CSEG    (CODE)
                                   1427 	.area CONST   (CODE)
                                   1428 	.area CONST   (CODE)
      0043F3                       1429 ___str_0:
      0043F3 00                    1430 	.db 0x00
                                   1431 	.area CSEG    (CODE)
                                   1432 	.area XINIT   (CODE)
                                   1433 	.area CABS    (ABS,CODE)
