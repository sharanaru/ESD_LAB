                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _i2c_stop
                                     13 	.globl _i2c_start
                                     14 	.globl _i2c_reset
                                     15 	.globl _delay
                                     16 	.globl _P5_7
                                     17 	.globl _P5_6
                                     18 	.globl _P5_5
                                     19 	.globl _P5_4
                                     20 	.globl _P5_3
                                     21 	.globl _P5_2
                                     22 	.globl _P5_1
                                     23 	.globl _P5_0
                                     24 	.globl _P4_7
                                     25 	.globl _P4_6
                                     26 	.globl _P4_5
                                     27 	.globl _P4_4
                                     28 	.globl _P4_3
                                     29 	.globl _P4_2
                                     30 	.globl _P4_1
                                     31 	.globl _P4_0
                                     32 	.globl _PX0L
                                     33 	.globl _PT0L
                                     34 	.globl _PX1L
                                     35 	.globl _PT1L
                                     36 	.globl _PSL
                                     37 	.globl _PT2L
                                     38 	.globl _PPCL
                                     39 	.globl _EC
                                     40 	.globl _CCF0
                                     41 	.globl _CCF1
                                     42 	.globl _CCF2
                                     43 	.globl _CCF3
                                     44 	.globl _CCF4
                                     45 	.globl _CR
                                     46 	.globl _CF
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _ET2
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _PS
                                     74 	.globl _PT1
                                     75 	.globl _PX1
                                     76 	.globl _PT0
                                     77 	.globl _PX0
                                     78 	.globl _RD
                                     79 	.globl _WR
                                     80 	.globl _T1
                                     81 	.globl _T0
                                     82 	.globl _INT1
                                     83 	.globl _INT0
                                     84 	.globl _TXD
                                     85 	.globl _RXD
                                     86 	.globl _P3_7
                                     87 	.globl _P3_6
                                     88 	.globl _P3_5
                                     89 	.globl _P3_4
                                     90 	.globl _P3_3
                                     91 	.globl _P3_2
                                     92 	.globl _P3_1
                                     93 	.globl _P3_0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _EECON
                                    141 	.globl _KBF
                                    142 	.globl _KBE
                                    143 	.globl _KBLS
                                    144 	.globl _BRL
                                    145 	.globl _BDRCON
                                    146 	.globl _T2MOD
                                    147 	.globl _SPDAT
                                    148 	.globl _SPSTA
                                    149 	.globl _SPCON
                                    150 	.globl _SADEN
                                    151 	.globl _SADDR
                                    152 	.globl _WDTPRG
                                    153 	.globl _WDTRST
                                    154 	.globl _P5
                                    155 	.globl _P4
                                    156 	.globl _IPH1
                                    157 	.globl _IPL1
                                    158 	.globl _IPH0
                                    159 	.globl _IPL0
                                    160 	.globl _IEN1
                                    161 	.globl _IEN0
                                    162 	.globl _CMOD
                                    163 	.globl _CL
                                    164 	.globl _CH
                                    165 	.globl _CCON
                                    166 	.globl _CCAPM4
                                    167 	.globl _CCAPM3
                                    168 	.globl _CCAPM2
                                    169 	.globl _CCAPM1
                                    170 	.globl _CCAPM0
                                    171 	.globl _CCAP4L
                                    172 	.globl _CCAP3L
                                    173 	.globl _CCAP2L
                                    174 	.globl _CCAP1L
                                    175 	.globl _CCAP0L
                                    176 	.globl _CCAP4H
                                    177 	.globl _CCAP3H
                                    178 	.globl _CCAP2H
                                    179 	.globl _CCAP1H
                                    180 	.globl _CCAP0H
                                    181 	.globl _CKCON1
                                    182 	.globl _CKCON0
                                    183 	.globl _CKRL
                                    184 	.globl _AUXR1
                                    185 	.globl _AUXR
                                    186 	.globl _TH2
                                    187 	.globl _TL2
                                    188 	.globl _RCAP2H
                                    189 	.globl _RCAP2L
                                    190 	.globl _T2CON
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _PSW
                                    194 	.globl _IP
                                    195 	.globl _P3
                                    196 	.globl _IE
                                    197 	.globl _P2
                                    198 	.globl _SBUF
                                    199 	.globl _SCON
                                    200 	.globl _P1
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0	=	0x0080
                           000081   218 _SP	=	0x0081
                           000082   219 _DPL	=	0x0082
                           000083   220 _DPH	=	0x0083
                           000087   221 _PCON	=	0x0087
                           000088   222 _TCON	=	0x0088
                           000089   223 _TMOD	=	0x0089
                           00008A   224 _TL0	=	0x008a
                           00008B   225 _TL1	=	0x008b
                           00008C   226 _TH0	=	0x008c
                           00008D   227 _TH1	=	0x008d
                           000090   228 _P1	=	0x0090
                           000098   229 _SCON	=	0x0098
                           000099   230 _SBUF	=	0x0099
                           0000A0   231 _P2	=	0x00a0
                           0000A8   232 _IE	=	0x00a8
                           0000B0   233 _P3	=	0x00b0
                           0000B8   234 _IP	=	0x00b8
                           0000D0   235 _PSW	=	0x00d0
                           0000E0   236 _ACC	=	0x00e0
                           0000F0   237 _B	=	0x00f0
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                                    289 ;--------------------------------------------------------
                                    290 ; special function bits
                                    291 ;--------------------------------------------------------
                                    292 	.area RSEG    (ABS,DATA)
      000000                        293 	.org 0x0000
                           000080   294 _P0_0	=	0x0080
                           000081   295 _P0_1	=	0x0081
                           000082   296 _P0_2	=	0x0082
                           000083   297 _P0_3	=	0x0083
                           000084   298 _P0_4	=	0x0084
                           000085   299 _P0_5	=	0x0085
                           000086   300 _P0_6	=	0x0086
                           000087   301 _P0_7	=	0x0087
                           000088   302 _IT0	=	0x0088
                           000089   303 _IE0	=	0x0089
                           00008A   304 _IT1	=	0x008a
                           00008B   305 _IE1	=	0x008b
                           00008C   306 _TR0	=	0x008c
                           00008D   307 _TF0	=	0x008d
                           00008E   308 _TR1	=	0x008e
                           00008F   309 _TF1	=	0x008f
                           000090   310 _P1_0	=	0x0090
                           000091   311 _P1_1	=	0x0091
                           000092   312 _P1_2	=	0x0092
                           000093   313 _P1_3	=	0x0093
                           000094   314 _P1_4	=	0x0094
                           000095   315 _P1_5	=	0x0095
                           000096   316 _P1_6	=	0x0096
                           000097   317 _P1_7	=	0x0097
                           000098   318 _RI	=	0x0098
                           000099   319 _TI	=	0x0099
                           00009A   320 _RB8	=	0x009a
                           00009B   321 _TB8	=	0x009b
                           00009C   322 _REN	=	0x009c
                           00009D   323 _SM2	=	0x009d
                           00009E   324 _SM1	=	0x009e
                           00009F   325 _SM0	=	0x009f
                           0000A0   326 _P2_0	=	0x00a0
                           0000A1   327 _P2_1	=	0x00a1
                           0000A2   328 _P2_2	=	0x00a2
                           0000A3   329 _P2_3	=	0x00a3
                           0000A4   330 _P2_4	=	0x00a4
                           0000A5   331 _P2_5	=	0x00a5
                           0000A6   332 _P2_6	=	0x00a6
                           0000A7   333 _P2_7	=	0x00a7
                           0000A8   334 _EX0	=	0x00a8
                           0000A9   335 _ET0	=	0x00a9
                           0000AA   336 _EX1	=	0x00aa
                           0000AB   337 _ET1	=	0x00ab
                           0000AC   338 _ES	=	0x00ac
                           0000AF   339 _EA	=	0x00af
                           0000B0   340 _P3_0	=	0x00b0
                           0000B1   341 _P3_1	=	0x00b1
                           0000B2   342 _P3_2	=	0x00b2
                           0000B3   343 _P3_3	=	0x00b3
                           0000B4   344 _P3_4	=	0x00b4
                           0000B5   345 _P3_5	=	0x00b5
                           0000B6   346 _P3_6	=	0x00b6
                           0000B7   347 _P3_7	=	0x00b7
                           0000B0   348 _RXD	=	0x00b0
                           0000B1   349 _TXD	=	0x00b1
                           0000B2   350 _INT0	=	0x00b2
                           0000B3   351 _INT1	=	0x00b3
                           0000B4   352 _T0	=	0x00b4
                           0000B5   353 _T1	=	0x00b5
                           0000B6   354 _WR	=	0x00b6
                           0000B7   355 _RD	=	0x00b7
                           0000B8   356 _PX0	=	0x00b8
                           0000B9   357 _PT0	=	0x00b9
                           0000BA   358 _PX1	=	0x00ba
                           0000BB   359 _PT1	=	0x00bb
                           0000BC   360 _PS	=	0x00bc
                           0000D0   361 _P	=	0x00d0
                           0000D1   362 _F1	=	0x00d1
                           0000D2   363 _OV	=	0x00d2
                           0000D3   364 _RS0	=	0x00d3
                           0000D4   365 _RS1	=	0x00d4
                           0000D5   366 _F0	=	0x00d5
                           0000D6   367 _AC	=	0x00d6
                           0000D7   368 _CY	=	0x00d7
                           0000AD   369 _ET2	=	0x00ad
                           0000BD   370 _PT2	=	0x00bd
                           0000C8   371 _T2CON_0	=	0x00c8
                           0000C9   372 _T2CON_1	=	0x00c9
                           0000CA   373 _T2CON_2	=	0x00ca
                           0000CB   374 _T2CON_3	=	0x00cb
                           0000CC   375 _T2CON_4	=	0x00cc
                           0000CD   376 _T2CON_5	=	0x00cd
                           0000CE   377 _T2CON_6	=	0x00ce
                           0000CF   378 _T2CON_7	=	0x00cf
                           0000C8   379 _CP_RL2	=	0x00c8
                           0000C9   380 _C_T2	=	0x00c9
                           0000CA   381 _TR2	=	0x00ca
                           0000CB   382 _EXEN2	=	0x00cb
                           0000CC   383 _TCLK	=	0x00cc
                           0000CD   384 _RCLK	=	0x00cd
                           0000CE   385 _EXF2	=	0x00ce
                           0000CF   386 _TF2	=	0x00cf
                           0000DF   387 _CF	=	0x00df
                           0000DE   388 _CR	=	0x00de
                           0000DC   389 _CCF4	=	0x00dc
                           0000DB   390 _CCF3	=	0x00db
                           0000DA   391 _CCF2	=	0x00da
                           0000D9   392 _CCF1	=	0x00d9
                           0000D8   393 _CCF0	=	0x00d8
                           0000AE   394 _EC	=	0x00ae
                           0000BE   395 _PPCL	=	0x00be
                           0000BD   396 _PT2L	=	0x00bd
                           0000BC   397 _PSL	=	0x00bc
                           0000BB   398 _PT1L	=	0x00bb
                           0000BA   399 _PX1L	=	0x00ba
                           0000B9   400 _PT0L	=	0x00b9
                           0000B8   401 _PX0L	=	0x00b8
                           0000C0   402 _P4_0	=	0x00c0
                           0000C1   403 _P4_1	=	0x00c1
                           0000C2   404 _P4_2	=	0x00c2
                           0000C3   405 _P4_3	=	0x00c3
                           0000C4   406 _P4_4	=	0x00c4
                           0000C5   407 _P4_5	=	0x00c5
                           0000C6   408 _P4_6	=	0x00c6
                           0000C7   409 _P4_7	=	0x00c7
                           0000E8   410 _P5_0	=	0x00e8
                           0000E9   411 _P5_1	=	0x00e9
                           0000EA   412 _P5_2	=	0x00ea
                           0000EB   413 _P5_3	=	0x00eb
                           0000EC   414 _P5_4	=	0x00ec
                           0000ED   415 _P5_5	=	0x00ed
                           0000EE   416 _P5_6	=	0x00ee
                           0000EF   417 _P5_7	=	0x00ef
                                    418 ;--------------------------------------------------------
                                    419 ; overlayable register banks
                                    420 ;--------------------------------------------------------
                                    421 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable items in internal ram 
                                    429 ;--------------------------------------------------------
                                    430 ;--------------------------------------------------------
                                    431 ; Stack segment in internal ram 
                                    432 ;--------------------------------------------------------
                                    433 	.area	SSEG
      000008                        434 __start__stack:
      000008                        435 	.ds	1
                                    436 
                                    437 ;--------------------------------------------------------
                                    438 ; indirectly addressable internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area ISEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; absolute internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area IABS    (ABS,DATA)
                                    445 	.area IABS    (ABS,DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; bit data
                                    448 ;--------------------------------------------------------
                                    449 	.area BSEG    (BIT)
                                    450 ;--------------------------------------------------------
                                    451 ; paged external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area PSEG    (PAG,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XSEG    (XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XABS    (ABS,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external initialized ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XISEG   (XDATA)
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT0 (CODE)
                                    468 	.area GSINIT1 (CODE)
                                    469 	.area GSINIT2 (CODE)
                                    470 	.area GSINIT3 (CODE)
                                    471 	.area GSINIT4 (CODE)
                                    472 	.area GSINIT5 (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 	.area GSFINAL (CODE)
                                    475 	.area CSEG    (CODE)
                                    476 ;--------------------------------------------------------
                                    477 ; interrupt vector 
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
      000000                        480 __interrupt_vect:
      000000 02 00 06         [24]  481 	ljmp	__sdcc_gsinit_startup
                                    482 ;--------------------------------------------------------
                                    483 ; global & static initialisations
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.area GSFINAL (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.globl __sdcc_gsinit_startup
                                    490 	.globl __sdcc_program_startup
                                    491 	.globl __start__stack
                                    492 	.globl __mcs51_genXINIT
                                    493 	.globl __mcs51_genXRAMCLEAR
                                    494 	.globl __mcs51_genRAMCLEAR
                                    495 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  496 	ljmp	__sdcc_program_startup
                                    497 ;--------------------------------------------------------
                                    498 ; Home
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
                                    501 	.area HOME    (CODE)
      000003                        502 __sdcc_program_startup:
      000003 02 00 91         [24]  503 	ljmp	_main
                                    504 ;	return from main will return to caller
                                    505 ;--------------------------------------------------------
                                    506 ; code
                                    507 ;--------------------------------------------------------
                                    508 	.area CSEG    (CODE)
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'delay'
                                    511 ;------------------------------------------------------------
                                    512 ;	main.c:15: void delay()
                                    513 ;	-----------------------------------------
                                    514 ;	 function delay
                                    515 ;	-----------------------------------------
      000062                        516 _delay:
                           000007   517 	ar7 = 0x07
                           000006   518 	ar6 = 0x06
                           000005   519 	ar5 = 0x05
                           000004   520 	ar4 = 0x04
                           000003   521 	ar3 = 0x03
                           000002   522 	ar2 = 0x02
                           000001   523 	ar1 = 0x01
                           000000   524 	ar0 = 0x00
                                    525 ;	main.c:22: __endasm;
      000062 74 03            [12]  526 	mov	a,#3
      000064                        527 	l1:
      000064 14               [12]  528 	dec	a
      000065 B4 00 FC         [24]  529 	cjne	a,#0,l1
                                    530 ;	main.c:23: }
      000068 22               [24]  531 	ret
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'i2c_reset'
                                    534 ;------------------------------------------------------------
                                    535 ;	main.c:24: void i2c_reset() //setting both lines to high to go into normal condition
                                    536 ;	-----------------------------------------
                                    537 ;	 function i2c_reset
                                    538 ;	-----------------------------------------
      000069                        539 _i2c_reset:
                                    540 ;	main.c:26: setSDA;
      000069 43 90 20         [24]  541 	orl	_P1,#0x20
                                    542 ;	main.c:27: setSCL;
      00006C 43 90 10         [24]  543 	orl	_P1,#0x10
                                    544 ;	main.c:28: delay();
                                    545 ;	main.c:29: }
      00006F 02 00 62         [24]  546 	ljmp	_delay
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'i2c_start'
                                    549 ;------------------------------------------------------------
                                    550 ;	main.c:30: void i2c_start()
                                    551 ;	-----------------------------------------
                                    552 ;	 function i2c_start
                                    553 ;	-----------------------------------------
      000072                        554 _i2c_start:
                                    555 ;	main.c:32: clearSDA;
      000072 53 90 DF         [24]  556 	anl	_P1,#0xdf
                                    557 ;	main.c:33: delay();
      000075 12 00 62         [24]  558 	lcall	_delay
                                    559 ;	main.c:34: clearSCL;
      000078 53 90 EF         [24]  560 	anl	_P1,#0xef
                                    561 ;	main.c:35: }
      00007B 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'i2c_stop'
                                    565 ;------------------------------------------------------------
                                    566 ;	main.c:36: void i2c_stop()
                                    567 ;	-----------------------------------------
                                    568 ;	 function i2c_stop
                                    569 ;	-----------------------------------------
      00007C                        570 _i2c_stop:
                                    571 ;	main.c:38: delay();
      00007C 12 00 62         [24]  572 	lcall	_delay
                                    573 ;	main.c:39: setSCL;
      00007F 43 90 10         [24]  574 	orl	_P1,#0x10
                                    575 ;	main.c:40: delay();
      000082 12 00 62         [24]  576 	lcall	_delay
                                    577 ;	main.c:41: clearSDA; //low to high transition of sda marks stop
      000085 53 90 DF         [24]  578 	anl	_P1,#0xdf
                                    579 ;	main.c:42: delay();
      000088 12 00 62         [24]  580 	lcall	_delay
                                    581 ;	main.c:43: setSDA;
      00008B 43 90 20         [24]  582 	orl	_P1,#0x20
                                    583 ;	main.c:44: delay();
                                    584 ;	main.c:47: }
      00008E 02 00 62         [24]  585 	ljmp	_delay
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'main'
                                    588 ;------------------------------------------------------------
                                    589 ;	main.c:49: void main(void)
                                    590 ;	-----------------------------------------
                                    591 ;	 function main
                                    592 ;	-----------------------------------------
      000091                        593 _main:
                                    594 ;	main.c:52: i2c_start();
      000091 12 00 72         [24]  595 	lcall	_i2c_start
                                    596 ;	main.c:53: i2c_stop();
      000094 12 00 7C         [24]  597 	lcall	_i2c_stop
                                    598 ;	main.c:54: i2c_start();
      000097 12 00 72         [24]  599 	lcall	_i2c_start
                                    600 ;	main.c:55: i2c_start();
                                    601 ;	main.c:61: }
      00009A 02 00 72         [24]  602 	ljmp	_i2c_start
                                    603 	.area CSEG    (CODE)
                                    604 	.area CONST   (CODE)
                                    605 	.area XINIT   (CODE)
                                    606 	.area CABS    (ABS,CODE)
