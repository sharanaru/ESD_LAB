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
                                     12 	.globl _i2c_read
                                     13 	.globl _i2c_write
                                     14 	.globl _i2c_stop
                                     15 	.globl _i2c_start
                                     16 	.globl _i2c_reset
                                     17 	.globl _delay
                                     18 	.globl _readint
                                     19 	.globl _putstr
                                     20 	.globl _gets
                                     21 	.globl _atoi
                                     22 	.globl _P5_7
                                     23 	.globl _P5_6
                                     24 	.globl _P5_5
                                     25 	.globl _P5_4
                                     26 	.globl _P5_3
                                     27 	.globl _P5_2
                                     28 	.globl _P5_1
                                     29 	.globl _P5_0
                                     30 	.globl _P4_7
                                     31 	.globl _P4_6
                                     32 	.globl _P4_5
                                     33 	.globl _P4_4
                                     34 	.globl _P4_3
                                     35 	.globl _P4_2
                                     36 	.globl _P4_1
                                     37 	.globl _P4_0
                                     38 	.globl _PX0L
                                     39 	.globl _PT0L
                                     40 	.globl _PX1L
                                     41 	.globl _PT1L
                                     42 	.globl _PSL
                                     43 	.globl _PT2L
                                     44 	.globl _PPCL
                                     45 	.globl _EC
                                     46 	.globl _CCF0
                                     47 	.globl _CCF1
                                     48 	.globl _CCF2
                                     49 	.globl _CCF3
                                     50 	.globl _CCF4
                                     51 	.globl _CR
                                     52 	.globl _CF
                                     53 	.globl _TF2
                                     54 	.globl _EXF2
                                     55 	.globl _RCLK
                                     56 	.globl _TCLK
                                     57 	.globl _EXEN2
                                     58 	.globl _TR2
                                     59 	.globl _C_T2
                                     60 	.globl _CP_RL2
                                     61 	.globl _T2CON_7
                                     62 	.globl _T2CON_6
                                     63 	.globl _T2CON_5
                                     64 	.globl _T2CON_4
                                     65 	.globl _T2CON_3
                                     66 	.globl _T2CON_2
                                     67 	.globl _T2CON_1
                                     68 	.globl _T2CON_0
                                     69 	.globl _PT2
                                     70 	.globl _ET2
                                     71 	.globl _CY
                                     72 	.globl _AC
                                     73 	.globl _F0
                                     74 	.globl _RS1
                                     75 	.globl _RS0
                                     76 	.globl _OV
                                     77 	.globl _F1
                                     78 	.globl _P
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _RD
                                     85 	.globl _WR
                                     86 	.globl _T1
                                     87 	.globl _T0
                                     88 	.globl _INT1
                                     89 	.globl _INT0
                                     90 	.globl _TXD
                                     91 	.globl _RXD
                                     92 	.globl _P3_7
                                     93 	.globl _P3_6
                                     94 	.globl _P3_5
                                     95 	.globl _P3_4
                                     96 	.globl _P3_3
                                     97 	.globl _P3_2
                                     98 	.globl _P3_1
                                     99 	.globl _P3_0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _P2_7
                                    107 	.globl _P2_6
                                    108 	.globl _P2_5
                                    109 	.globl _P2_4
                                    110 	.globl _P2_3
                                    111 	.globl _P2_2
                                    112 	.globl _P2_1
                                    113 	.globl _P2_0
                                    114 	.globl _SM0
                                    115 	.globl _SM1
                                    116 	.globl _SM2
                                    117 	.globl _REN
                                    118 	.globl _TB8
                                    119 	.globl _RB8
                                    120 	.globl _TI
                                    121 	.globl _RI
                                    122 	.globl _P1_7
                                    123 	.globl _P1_6
                                    124 	.globl _P1_5
                                    125 	.globl _P1_4
                                    126 	.globl _P1_3
                                    127 	.globl _P1_2
                                    128 	.globl _P1_1
                                    129 	.globl _P1_0
                                    130 	.globl _TF1
                                    131 	.globl _TR1
                                    132 	.globl _TF0
                                    133 	.globl _TR0
                                    134 	.globl _IE1
                                    135 	.globl _IT1
                                    136 	.globl _IE0
                                    137 	.globl _IT0
                                    138 	.globl _P0_7
                                    139 	.globl _P0_6
                                    140 	.globl _P0_5
                                    141 	.globl _P0_4
                                    142 	.globl _P0_3
                                    143 	.globl _P0_2
                                    144 	.globl _P0_1
                                    145 	.globl _P0_0
                                    146 	.globl _EECON
                                    147 	.globl _KBF
                                    148 	.globl _KBE
                                    149 	.globl _KBLS
                                    150 	.globl _BRL
                                    151 	.globl _BDRCON
                                    152 	.globl _T2MOD
                                    153 	.globl _SPDAT
                                    154 	.globl _SPSTA
                                    155 	.globl _SPCON
                                    156 	.globl _SADEN
                                    157 	.globl _SADDR
                                    158 	.globl _WDTPRG
                                    159 	.globl _WDTRST
                                    160 	.globl _P5
                                    161 	.globl _P4
                                    162 	.globl _IPH1
                                    163 	.globl _IPL1
                                    164 	.globl _IPH0
                                    165 	.globl _IPL0
                                    166 	.globl _IEN1
                                    167 	.globl _IEN0
                                    168 	.globl _CMOD
                                    169 	.globl _CL
                                    170 	.globl _CH
                                    171 	.globl _CCON
                                    172 	.globl _CCAPM4
                                    173 	.globl _CCAPM3
                                    174 	.globl _CCAPM2
                                    175 	.globl _CCAPM1
                                    176 	.globl _CCAPM0
                                    177 	.globl _CCAP4L
                                    178 	.globl _CCAP3L
                                    179 	.globl _CCAP2L
                                    180 	.globl _CCAP1L
                                    181 	.globl _CCAP0L
                                    182 	.globl _CCAP4H
                                    183 	.globl _CCAP3H
                                    184 	.globl _CCAP2H
                                    185 	.globl _CCAP1H
                                    186 	.globl _CCAP0H
                                    187 	.globl _CKCON1
                                    188 	.globl _CKCON0
                                    189 	.globl _CKRL
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2CON
                                    197 	.globl _B
                                    198 	.globl _ACC
                                    199 	.globl _PSW
                                    200 	.globl _IP
                                    201 	.globl _P3
                                    202 	.globl _IE
                                    203 	.globl _P2
                                    204 	.globl _SBUF
                                    205 	.globl _SCON
                                    206 	.globl _P1
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _PCON
                                    214 	.globl _DPH
                                    215 	.globl _DPL
                                    216 	.globl _SP
                                    217 	.globl _P0
                                    218 	.globl _putchar
                                    219 	.globl _getchar
                                    220 ;--------------------------------------------------------
                                    221 ; special function registers
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0	=	0x0080
                           000081   226 _SP	=	0x0081
                           000082   227 _DPL	=	0x0082
                           000083   228 _DPH	=	0x0083
                           000087   229 _PCON	=	0x0087
                           000088   230 _TCON	=	0x0088
                           000089   231 _TMOD	=	0x0089
                           00008A   232 _TL0	=	0x008a
                           00008B   233 _TL1	=	0x008b
                           00008C   234 _TH0	=	0x008c
                           00008D   235 _TH1	=	0x008d
                           000090   236 _P1	=	0x0090
                           000098   237 _SCON	=	0x0098
                           000099   238 _SBUF	=	0x0099
                           0000A0   239 _P2	=	0x00a0
                           0000A8   240 _IE	=	0x00a8
                           0000B0   241 _P3	=	0x00b0
                           0000B8   242 _IP	=	0x00b8
                           0000D0   243 _PSW	=	0x00d0
                           0000E0   244 _ACC	=	0x00e0
                           0000F0   245 _B	=	0x00f0
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                                    297 ;--------------------------------------------------------
                                    298 ; special function bits
                                    299 ;--------------------------------------------------------
                                    300 	.area RSEG    (ABS,DATA)
      000000                        301 	.org 0x0000
                           000080   302 _P0_0	=	0x0080
                           000081   303 _P0_1	=	0x0081
                           000082   304 _P0_2	=	0x0082
                           000083   305 _P0_3	=	0x0083
                           000084   306 _P0_4	=	0x0084
                           000085   307 _P0_5	=	0x0085
                           000086   308 _P0_6	=	0x0086
                           000087   309 _P0_7	=	0x0087
                           000088   310 _IT0	=	0x0088
                           000089   311 _IE0	=	0x0089
                           00008A   312 _IT1	=	0x008a
                           00008B   313 _IE1	=	0x008b
                           00008C   314 _TR0	=	0x008c
                           00008D   315 _TF0	=	0x008d
                           00008E   316 _TR1	=	0x008e
                           00008F   317 _TF1	=	0x008f
                           000090   318 _P1_0	=	0x0090
                           000091   319 _P1_1	=	0x0091
                           000092   320 _P1_2	=	0x0092
                           000093   321 _P1_3	=	0x0093
                           000094   322 _P1_4	=	0x0094
                           000095   323 _P1_5	=	0x0095
                           000096   324 _P1_6	=	0x0096
                           000097   325 _P1_7	=	0x0097
                           000098   326 _RI	=	0x0098
                           000099   327 _TI	=	0x0099
                           00009A   328 _RB8	=	0x009a
                           00009B   329 _TB8	=	0x009b
                           00009C   330 _REN	=	0x009c
                           00009D   331 _SM2	=	0x009d
                           00009E   332 _SM1	=	0x009e
                           00009F   333 _SM0	=	0x009f
                           0000A0   334 _P2_0	=	0x00a0
                           0000A1   335 _P2_1	=	0x00a1
                           0000A2   336 _P2_2	=	0x00a2
                           0000A3   337 _P2_3	=	0x00a3
                           0000A4   338 _P2_4	=	0x00a4
                           0000A5   339 _P2_5	=	0x00a5
                           0000A6   340 _P2_6	=	0x00a6
                           0000A7   341 _P2_7	=	0x00a7
                           0000A8   342 _EX0	=	0x00a8
                           0000A9   343 _ET0	=	0x00a9
                           0000AA   344 _EX1	=	0x00aa
                           0000AB   345 _ET1	=	0x00ab
                           0000AC   346 _ES	=	0x00ac
                           0000AF   347 _EA	=	0x00af
                           0000B0   348 _P3_0	=	0x00b0
                           0000B1   349 _P3_1	=	0x00b1
                           0000B2   350 _P3_2	=	0x00b2
                           0000B3   351 _P3_3	=	0x00b3
                           0000B4   352 _P3_4	=	0x00b4
                           0000B5   353 _P3_5	=	0x00b5
                           0000B6   354 _P3_6	=	0x00b6
                           0000B7   355 _P3_7	=	0x00b7
                           0000B0   356 _RXD	=	0x00b0
                           0000B1   357 _TXD	=	0x00b1
                           0000B2   358 _INT0	=	0x00b2
                           0000B3   359 _INT1	=	0x00b3
                           0000B4   360 _T0	=	0x00b4
                           0000B5   361 _T1	=	0x00b5
                           0000B6   362 _WR	=	0x00b6
                           0000B7   363 _RD	=	0x00b7
                           0000B8   364 _PX0	=	0x00b8
                           0000B9   365 _PT0	=	0x00b9
                           0000BA   366 _PX1	=	0x00ba
                           0000BB   367 _PT1	=	0x00bb
                           0000BC   368 _PS	=	0x00bc
                           0000D0   369 _P	=	0x00d0
                           0000D1   370 _F1	=	0x00d1
                           0000D2   371 _OV	=	0x00d2
                           0000D3   372 _RS0	=	0x00d3
                           0000D4   373 _RS1	=	0x00d4
                           0000D5   374 _F0	=	0x00d5
                           0000D6   375 _AC	=	0x00d6
                           0000D7   376 _CY	=	0x00d7
                           0000AD   377 _ET2	=	0x00ad
                           0000BD   378 _PT2	=	0x00bd
                           0000C8   379 _T2CON_0	=	0x00c8
                           0000C9   380 _T2CON_1	=	0x00c9
                           0000CA   381 _T2CON_2	=	0x00ca
                           0000CB   382 _T2CON_3	=	0x00cb
                           0000CC   383 _T2CON_4	=	0x00cc
                           0000CD   384 _T2CON_5	=	0x00cd
                           0000CE   385 _T2CON_6	=	0x00ce
                           0000CF   386 _T2CON_7	=	0x00cf
                           0000C8   387 _CP_RL2	=	0x00c8
                           0000C9   388 _C_T2	=	0x00c9
                           0000CA   389 _TR2	=	0x00ca
                           0000CB   390 _EXEN2	=	0x00cb
                           0000CC   391 _TCLK	=	0x00cc
                           0000CD   392 _RCLK	=	0x00cd
                           0000CE   393 _EXF2	=	0x00ce
                           0000CF   394 _TF2	=	0x00cf
                           0000DF   395 _CF	=	0x00df
                           0000DE   396 _CR	=	0x00de
                           0000DC   397 _CCF4	=	0x00dc
                           0000DB   398 _CCF3	=	0x00db
                           0000DA   399 _CCF2	=	0x00da
                           0000D9   400 _CCF1	=	0x00d9
                           0000D8   401 _CCF0	=	0x00d8
                           0000AE   402 _EC	=	0x00ae
                           0000BE   403 _PPCL	=	0x00be
                           0000BD   404 _PT2L	=	0x00bd
                           0000BC   405 _PSL	=	0x00bc
                           0000BB   406 _PT1L	=	0x00bb
                           0000BA   407 _PX1L	=	0x00ba
                           0000B9   408 _PT0L	=	0x00b9
                           0000B8   409 _PX0L	=	0x00b8
                           0000C0   410 _P4_0	=	0x00c0
                           0000C1   411 _P4_1	=	0x00c1
                           0000C2   412 _P4_2	=	0x00c2
                           0000C3   413 _P4_3	=	0x00c3
                           0000C4   414 _P4_4	=	0x00c4
                           0000C5   415 _P4_5	=	0x00c5
                           0000C6   416 _P4_6	=	0x00c6
                           0000C7   417 _P4_7	=	0x00c7
                           0000E8   418 _P5_0	=	0x00e8
                           0000E9   419 _P5_1	=	0x00e9
                           0000EA   420 _P5_2	=	0x00ea
                           0000EB   421 _P5_3	=	0x00eb
                           0000EC   422 _P5_4	=	0x00ec
                           0000ED   423 _P5_5	=	0x00ed
                           0000EE   424 _P5_6	=	0x00ee
                           0000EF   425 _P5_7	=	0x00ef
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram 
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; Stack segment in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 	.area	SSEG
      000008                        442 __start__stack:
      000008                        443 	.ds	1
                                    444 
                                    445 ;--------------------------------------------------------
                                    446 ; indirectly addressable internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area ISEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area IABS    (ABS,DATA)
                                    453 	.area IABS    (ABS,DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; bit data
                                    456 ;--------------------------------------------------------
                                    457 	.area BSEG    (BIT)
                                    458 ;--------------------------------------------------------
                                    459 ; paged external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area PSEG    (PAG,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XSEG    (XDATA)
      000001                        466 _putchar_c_65536_63:
      000001                        467 	.ds 2
      000003                        468 _putstr_s_65536_67:
      000003                        469 	.ds 3
      000006                        470 _i2c_write_k_65536_76:
      000006                        471 	.ds 2
      000008                        472 _i2c_read_reader_65536_83:
      000008                        473 	.ds 2
      00000A                        474 _main_t_131073_91:
      00000A                        475 	.ds 2
                                    476 ;--------------------------------------------------------
                                    477 ; absolute external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area XABS    (ABS,XDATA)
                                    480 ;--------------------------------------------------------
                                    481 ; external initialized ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XISEG   (XDATA)
                                    484 	.area HOME    (CODE)
                                    485 	.area GSINIT0 (CODE)
                                    486 	.area GSINIT1 (CODE)
                                    487 	.area GSINIT2 (CODE)
                                    488 	.area GSINIT3 (CODE)
                                    489 	.area GSINIT4 (CODE)
                                    490 	.area GSINIT5 (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 	.area GSFINAL (CODE)
                                    493 	.area CSEG    (CODE)
                                    494 ;--------------------------------------------------------
                                    495 ; interrupt vector 
                                    496 ;--------------------------------------------------------
                                    497 	.area HOME    (CODE)
      002564                        498 __interrupt_vect:
      002564 02 25 6A         [24]  499 	ljmp	__sdcc_gsinit_startup
                                    500 ;--------------------------------------------------------
                                    501 ; global & static initialisations
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.globl __sdcc_gsinit_startup
                                    508 	.globl __sdcc_program_startup
                                    509 	.globl __start__stack
                                    510 	.globl __mcs51_genXINIT
                                    511 	.globl __mcs51_genXRAMCLEAR
                                    512 	.globl __mcs51_genRAMCLEAR
                                    513 	.area GSFINAL (CODE)
      0025C3 02 25 67         [24]  514 	ljmp	__sdcc_program_startup
                                    515 ;--------------------------------------------------------
                                    516 ; Home
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area HOME    (CODE)
      002567                        520 __sdcc_program_startup:
      002567 02 27 B8         [24]  521 	ljmp	_main
                                    522 ;	return from main will return to caller
                                    523 ;--------------------------------------------------------
                                    524 ; code
                                    525 ;--------------------------------------------------------
                                    526 	.area CSEG    (CODE)
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'putchar'
                                    529 ;------------------------------------------------------------
                                    530 ;c                         Allocated with name '_putchar_c_65536_63'
                                    531 ;------------------------------------------------------------
                                    532 ;	main.c:15: int putchar (int c)//serial outps char value
                                    533 ;	-----------------------------------------
                                    534 ;	 function putchar
                                    535 ;	-----------------------------------------
      0025C6                        536 _putchar:
                           000007   537 	ar7 = 0x07
                           000006   538 	ar6 = 0x06
                           000005   539 	ar5 = 0x05
                           000004   540 	ar4 = 0x04
                           000003   541 	ar3 = 0x03
                           000002   542 	ar2 = 0x02
                           000001   543 	ar1 = 0x01
                           000000   544 	ar0 = 0x00
      0025C6 AF 83            [24]  545 	mov	r7,dph
      0025C8 E5 82            [12]  546 	mov	a,dpl
      0025CA 90 00 01         [24]  547 	mov	dptr,#_putchar_c_65536_63
      0025CD F0               [24]  548 	movx	@dptr,a
      0025CE EF               [12]  549 	mov	a,r7
      0025CF A3               [24]  550 	inc	dptr
      0025D0 F0               [24]  551 	movx	@dptr,a
                                    552 ;	main.c:17: while (!TI);				// compare asm code generated for these three lines
      0025D1                        553 00101$:
      0025D1 30 99 FD         [24]  554 	jnb	_TI,00101$
                                    555 ;	main.c:18: while (TI == 0);
      0025D4                        556 00104$:
      0025D4 30 99 FD         [24]  557 	jnb	_TI,00104$
                                    558 ;	main.c:19: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0025D7                        559 00107$:
      0025D7 E5 98            [12]  560 	mov	a,_SCON
      0025D9 30 E1 FB         [24]  561 	jnb	acc.1,00107$
                                    562 ;	main.c:20: SBUF = c;  	// load serial port with transmit value
      0025DC 90 00 01         [24]  563 	mov	dptr,#_putchar_c_65536_63
      0025DF E0               [24]  564 	movx	a,@dptr
      0025E0 FE               [12]  565 	mov	r6,a
      0025E1 A3               [24]  566 	inc	dptr
      0025E2 E0               [24]  567 	movx	a,@dptr
      0025E3 8E 99            [24]  568 	mov	_SBUF,r6
                                    569 ;	main.c:21: TI = 0;  	// clear TI flag
                                    570 ;	assignBit
      0025E5 C2 99            [12]  571 	clr	_TI
                                    572 ;	main.c:22: return 0;
      0025E7 90 00 00         [24]  573 	mov	dptr,#0x0000
                                    574 ;	main.c:23: }
      0025EA 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'getchar'
                                    578 ;------------------------------------------------------------
                                    579 ;	main.c:26: int getchar(void)//reads char value from serial
                                    580 ;	-----------------------------------------
                                    581 ;	 function getchar
                                    582 ;	-----------------------------------------
      0025EB                        583 _getchar:
                                    584 ;	main.c:29: while (!RI);                // compare asm code generated for these three lines
      0025EB                        585 00101$:
      0025EB 30 98 FD         [24]  586 	jnb	_RI,00101$
                                    587 ;	main.c:30: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      0025EE                        588 00104$:
      0025EE E5 98            [12]  589 	mov	a,_SCON
      0025F0 30 E0 FB         [24]  590 	jnb	acc.0,00104$
                                    591 ;	main.c:31: while (RI == 0);
      0025F3                        592 00107$:
                                    593 ;	main.c:32: RI = 0;			// clear RI flag
                                    594 ;	assignBit
      0025F3 10 98 02         [24]  595 	jbc	_RI,00130$
      0025F6 80 FB            [24]  596 	sjmp	00107$
      0025F8                        597 00130$:
                                    598 ;	main.c:33: return SBUF;  	// return character from SBUF
      0025F8 AE 99            [24]  599 	mov	r6,_SBUF
      0025FA 7F 00            [12]  600 	mov	r7,#0x00
      0025FC 8E 82            [24]  601 	mov	dpl,r6
      0025FE 8F 83            [24]  602 	mov	dph,r7
                                    603 ;	main.c:34: }
      002600 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'putstr'
                                    607 ;------------------------------------------------------------
                                    608 ;s                         Allocated with name '_putstr_s_65536_67'
                                    609 ;i                         Allocated with name '_putstr_i_65536_68'
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:35: int putstr (char *s)//outputs string to serial
                                    612 ;	-----------------------------------------
                                    613 ;	 function putstr
                                    614 ;	-----------------------------------------
      002601                        615 _putstr:
      002601 AF F0            [24]  616 	mov	r7,b
      002603 AE 83            [24]  617 	mov	r6,dph
      002605 E5 82            [12]  618 	mov	a,dpl
      002607 90 00 03         [24]  619 	mov	dptr,#_putstr_s_65536_67
      00260A F0               [24]  620 	movx	@dptr,a
      00260B EE               [12]  621 	mov	a,r6
      00260C A3               [24]  622 	inc	dptr
      00260D F0               [24]  623 	movx	@dptr,a
      00260E EF               [12]  624 	mov	a,r7
      00260F A3               [24]  625 	inc	dptr
      002610 F0               [24]  626 	movx	@dptr,a
                                    627 ;	main.c:38: while (*s) 			// output characters until NULL found
      002611 90 00 03         [24]  628 	mov	dptr,#_putstr_s_65536_67
      002614 E0               [24]  629 	movx	a,@dptr
      002615 FD               [12]  630 	mov	r5,a
      002616 A3               [24]  631 	inc	dptr
      002617 E0               [24]  632 	movx	a,@dptr
      002618 FE               [12]  633 	mov	r6,a
      002619 A3               [24]  634 	inc	dptr
      00261A E0               [24]  635 	movx	a,@dptr
      00261B FF               [12]  636 	mov	r7,a
      00261C 7B 00            [12]  637 	mov	r3,#0x00
      00261E 7C 00            [12]  638 	mov	r4,#0x00
      002620                        639 00101$:
      002620 8D 82            [24]  640 	mov	dpl,r5
      002622 8E 83            [24]  641 	mov	dph,r6
      002624 8F F0            [24]  642 	mov	b,r7
      002626 12 2A C4         [24]  643 	lcall	__gptrget
      002629 FA               [12]  644 	mov	r2,a
      00262A 60 36            [24]  645 	jz	00108$
                                    646 ;	main.c:40: putchar(*s++);
      00262C 0D               [12]  647 	inc	r5
      00262D BD 00 01         [24]  648 	cjne	r5,#0x00,00116$
      002630 0E               [12]  649 	inc	r6
      002631                        650 00116$:
      002631 90 00 03         [24]  651 	mov	dptr,#_putstr_s_65536_67
      002634 ED               [12]  652 	mov	a,r5
      002635 F0               [24]  653 	movx	@dptr,a
      002636 EE               [12]  654 	mov	a,r6
      002637 A3               [24]  655 	inc	dptr
      002638 F0               [24]  656 	movx	@dptr,a
      002639 EF               [12]  657 	mov	a,r7
      00263A A3               [24]  658 	inc	dptr
      00263B F0               [24]  659 	movx	@dptr,a
      00263C 8A 01            [24]  660 	mov	ar1,r2
      00263E 7A 00            [12]  661 	mov	r2,#0x00
      002640 89 82            [24]  662 	mov	dpl,r1
      002642 8A 83            [24]  663 	mov	dph,r2
      002644 C0 07            [24]  664 	push	ar7
      002646 C0 06            [24]  665 	push	ar6
      002648 C0 05            [24]  666 	push	ar5
      00264A C0 04            [24]  667 	push	ar4
      00264C C0 03            [24]  668 	push	ar3
      00264E 12 25 C6         [24]  669 	lcall	_putchar
      002651 D0 03            [24]  670 	pop	ar3
      002653 D0 04            [24]  671 	pop	ar4
      002655 D0 05            [24]  672 	pop	ar5
      002657 D0 06            [24]  673 	pop	ar6
      002659 D0 07            [24]  674 	pop	ar7
                                    675 ;	main.c:41: i++;
      00265B 0B               [12]  676 	inc	r3
      00265C BB 00 C1         [24]  677 	cjne	r3,#0x00,00101$
      00265F 0C               [12]  678 	inc	r4
      002660 80 BE            [24]  679 	sjmp	00101$
      002662                        680 00108$:
      002662 90 00 03         [24]  681 	mov	dptr,#_putstr_s_65536_67
      002665 ED               [12]  682 	mov	a,r5
      002666 F0               [24]  683 	movx	@dptr,a
      002667 EE               [12]  684 	mov	a,r6
      002668 A3               [24]  685 	inc	dptr
      002669 F0               [24]  686 	movx	@dptr,a
      00266A EF               [12]  687 	mov	a,r7
      00266B A3               [24]  688 	inc	dptr
      00266C F0               [24]  689 	movx	@dptr,a
                                    690 ;	main.c:44: return i+1;
      00266D 0B               [12]  691 	inc	r3
      00266E BB 00 01         [24]  692 	cjne	r3,#0x00,00118$
      002671 0C               [12]  693 	inc	r4
      002672                        694 00118$:
      002672 8B 82            [24]  695 	mov	dpl,r3
      002674 8C 83            [24]  696 	mov	dph,r4
                                    697 ;	main.c:45: }
      002676 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'readint'
                                    701 ;------------------------------------------------------------
                                    702 ;reader                    Allocated with name '_readint_reader_65536_70'
                                    703 ;number                    Allocated with name '_readint_number_65537_71'
                                    704 ;------------------------------------------------------------
                                    705 ;	main.c:50: int readint()//reads  char string as integer
                                    706 ;	-----------------------------------------
                                    707 ;	 function readint
                                    708 ;	-----------------------------------------
      002677                        709 _readint:
                                    710 ;	main.c:53: gets(reader);
      002677 90 00 00         [24]  711 	mov	dptr,#0x0000
      00267A 75 F0 00         [24]  712 	mov	b,#0x00
      00267D 12 29 9F         [24]  713 	lcall	_gets
                                    714 ;	main.c:54: int number=atoi(reader);
      002680 90 00 00         [24]  715 	mov	dptr,#0x0000
      002683 75 F0 00         [24]  716 	mov	b,#0x00
                                    717 ;	main.c:55: return number;
                                    718 ;	main.c:56: }
      002686 02 28 7F         [24]  719 	ljmp	_atoi
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'delay'
                                    722 ;------------------------------------------------------------
                                    723 ;	main.c:58: void delay()
                                    724 ;	-----------------------------------------
                                    725 ;	 function delay
                                    726 ;	-----------------------------------------
      002689                        727 _delay:
                                    728 ;	main.c:65: __endasm;
      002689 74 03            [12]  729 	mov	a,#3
      00268B                        730 	    l1:
      00268B 14               [12]  731 	dec	a
      00268C B4 00 FC         [24]  732 	cjne	a,#0,l1
                                    733 ;	main.c:66: }
      00268F 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'i2c_reset'
                                    737 ;------------------------------------------------------------
                                    738 ;	main.c:67: void i2c_reset() //setting both lines to high to go into normal condition
                                    739 ;	-----------------------------------------
                                    740 ;	 function i2c_reset
                                    741 ;	-----------------------------------------
      002690                        742 _i2c_reset:
                                    743 ;	main.c:69: clearSCL;
                                    744 ;	assignBit
      002690 C2 94            [12]  745 	clr	_P1_4
                                    746 ;	main.c:70: clearSDA;
                                    747 ;	assignBit
      002692 C2 95            [12]  748 	clr	_P1_5
                                    749 ;	main.c:72: setSDA;
                                    750 ;	assignBit
      002694 D2 95            [12]  751 	setb	_P1_5
                                    752 ;	main.c:73: setSCL;
                                    753 ;	assignBit
      002696 D2 94            [12]  754 	setb	_P1_4
                                    755 ;	main.c:74: delay();
                                    756 ;	main.c:75: }
      002698 02 26 89         [24]  757 	ljmp	_delay
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'i2c_start'
                                    760 ;------------------------------------------------------------
                                    761 ;	main.c:76: void i2c_start()
                                    762 ;	-----------------------------------------
                                    763 ;	 function i2c_start
                                    764 ;	-----------------------------------------
      00269B                        765 _i2c_start:
                                    766 ;	main.c:78: clearSDA;
                                    767 ;	assignBit
      00269B C2 95            [12]  768 	clr	_P1_5
                                    769 ;	main.c:79: delay();
      00269D 12 26 89         [24]  770 	lcall	_delay
                                    771 ;	main.c:80: clearSCL;
                                    772 ;	assignBit
      0026A0 C2 94            [12]  773 	clr	_P1_4
                                    774 ;	main.c:81: delay();
                                    775 ;	main.c:83: }
      0026A2 02 26 89         [24]  776 	ljmp	_delay
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'i2c_stop'
                                    779 ;------------------------------------------------------------
                                    780 ;	main.c:84: void i2c_stop()
                                    781 ;	-----------------------------------------
                                    782 ;	 function i2c_stop
                                    783 ;	-----------------------------------------
      0026A5                        784 _i2c_stop:
                                    785 ;	main.c:86: clearSDA;
                                    786 ;	assignBit
      0026A5 C2 95            [12]  787 	clr	_P1_5
                                    788 ;	main.c:87: setSCL;
                                    789 ;	assignBit
      0026A7 D2 94            [12]  790 	setb	_P1_4
                                    791 ;	main.c:88: delay();
      0026A9 12 26 89         [24]  792 	lcall	_delay
                                    793 ;	main.c:89: setSDA; //low to high transition of sda marks stop
                                    794 ;	assignBit
      0026AC D2 95            [12]  795 	setb	_P1_5
                                    796 ;	main.c:90: delay();
                                    797 ;	main.c:92: }
      0026AE 02 26 89         [24]  798 	ljmp	_delay
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'i2c_write'
                                    801 ;------------------------------------------------------------
                                    802 ;k                         Allocated with name '_i2c_write_k_65536_76'
                                    803 ;i                         Allocated with name '_i2c_write_i_131072_78'
                                    804 ;ack_check                 Allocated with name '_i2c_write_ack_check_65537_82'
                                    805 ;------------------------------------------------------------
                                    806 ;	main.c:94: int i2c_write(int k)
                                    807 ;	-----------------------------------------
                                    808 ;	 function i2c_write
                                    809 ;	-----------------------------------------
      0026B1                        810 _i2c_write:
      0026B1 AF 83            [24]  811 	mov	r7,dph
      0026B3 E5 82            [12]  812 	mov	a,dpl
      0026B5 90 00 06         [24]  813 	mov	dptr,#_i2c_write_k_65536_76
      0026B8 F0               [24]  814 	movx	@dptr,a
      0026B9 EF               [12]  815 	mov	a,r7
      0026BA A3               [24]  816 	inc	dptr
      0026BB F0               [24]  817 	movx	@dptr,a
                                    818 ;	main.c:98: for(int i=0; i<8; i++)
      0026BC 7E 00            [12]  819 	mov	r6,#0x00
      0026BE 7F 00            [12]  820 	mov	r7,#0x00
      0026C0                        821 00106$:
      0026C0 C3               [12]  822 	clr	c
      0026C1 EE               [12]  823 	mov	a,r6
      0026C2 94 08            [12]  824 	subb	a,#0x08
      0026C4 EF               [12]  825 	mov	a,r7
      0026C5 64 80            [12]  826 	xrl	a,#0x80
      0026C7 94 80            [12]  827 	subb	a,#0x80
      0026C9 50 57            [24]  828 	jnc	00104$
                                    829 ;	main.c:101: if(k & 128)
      0026CB 90 00 06         [24]  830 	mov	dptr,#_i2c_write_k_65536_76
      0026CE E0               [24]  831 	movx	a,@dptr
      0026CF FC               [12]  832 	mov	r4,a
      0026D0 A3               [24]  833 	inc	dptr
      0026D1 E0               [24]  834 	movx	a,@dptr
      0026D2 EC               [12]  835 	mov	a,r4
      0026D3 30 E7 13         [24]  836 	jnb	acc.7,00102$
                                    837 ;	main.c:103: setSDA;
                                    838 ;	assignBit
      0026D6 D2 95            [12]  839 	setb	_P1_5
                                    840 ;	main.c:104: setSCL;
                                    841 ;	assignBit
      0026D8 D2 94            [12]  842 	setb	_P1_4
                                    843 ;	main.c:105: delay();
      0026DA C0 07            [24]  844 	push	ar7
      0026DC C0 06            [24]  845 	push	ar6
      0026DE 12 26 89         [24]  846 	lcall	_delay
      0026E1 D0 06            [24]  847 	pop	ar6
      0026E3 D0 07            [24]  848 	pop	ar7
                                    849 ;	main.c:106: clearSCL;
                                    850 ;	assignBit
      0026E5 C2 94            [12]  851 	clr	_P1_4
      0026E7 80 11            [24]  852 	sjmp	00103$
      0026E9                        853 00102$:
                                    854 ;	main.c:113: clearSDA;
                                    855 ;	assignBit
      0026E9 C2 95            [12]  856 	clr	_P1_5
                                    857 ;	main.c:114: setSCL;
                                    858 ;	assignBit
      0026EB D2 94            [12]  859 	setb	_P1_4
                                    860 ;	main.c:115: delay();
      0026ED C0 07            [24]  861 	push	ar7
      0026EF C0 06            [24]  862 	push	ar6
      0026F1 12 26 89         [24]  863 	lcall	_delay
      0026F4 D0 06            [24]  864 	pop	ar6
      0026F6 D0 07            [24]  865 	pop	ar7
                                    866 ;	main.c:116: clearSCL;
                                    867 ;	assignBit
      0026F8 C2 94            [12]  868 	clr	_P1_4
      0026FA                        869 00103$:
                                    870 ;	main.c:124: delay();
      0026FA C0 07            [24]  871 	push	ar7
      0026FC C0 06            [24]  872 	push	ar6
      0026FE 12 26 89         [24]  873 	lcall	_delay
      002701 D0 06            [24]  874 	pop	ar6
      002703 D0 07            [24]  875 	pop	ar7
                                    876 ;	main.c:125: k<<=1;
      002705 90 00 06         [24]  877 	mov	dptr,#_i2c_write_k_65536_76
      002708 E0               [24]  878 	movx	a,@dptr
      002709 FC               [12]  879 	mov	r4,a
      00270A A3               [24]  880 	inc	dptr
      00270B E0               [24]  881 	movx	a,@dptr
      00270C FD               [12]  882 	mov	r5,a
      00270D EC               [12]  883 	mov	a,r4
      00270E 2C               [12]  884 	add	a,r4
      00270F FC               [12]  885 	mov	r4,a
      002710 ED               [12]  886 	mov	a,r5
      002711 33               [12]  887 	rlc	a
      002712 FD               [12]  888 	mov	r5,a
      002713 90 00 06         [24]  889 	mov	dptr,#_i2c_write_k_65536_76
      002716 EC               [12]  890 	mov	a,r4
      002717 F0               [24]  891 	movx	@dptr,a
      002718 ED               [12]  892 	mov	a,r5
      002719 A3               [24]  893 	inc	dptr
      00271A F0               [24]  894 	movx	@dptr,a
                                    895 ;	main.c:98: for(int i=0; i<8; i++)
      00271B 0E               [12]  896 	inc	r6
      00271C BE 00 A1         [24]  897 	cjne	r6,#0x00,00106$
      00271F 0F               [12]  898 	inc	r7
      002720 80 9E            [24]  899 	sjmp	00106$
      002722                        900 00104$:
                                    901 ;	main.c:128: setSDA;
                                    902 ;	assignBit
      002722 D2 95            [12]  903 	setb	_P1_5
                                    904 ;	main.c:131: __endasm;
      002724 00               [12]  905 	nop
                                    906 ;	main.c:132: setSCL;
                                    907 ;	assignBit
      002725 D2 94            [12]  908 	setb	_P1_4
                                    909 ;	main.c:134: ack_check |=P1_5;
      002727 A2 95            [12]  910 	mov	c,_P1_5
      002729 E4               [12]  911 	clr	a
      00272A 33               [12]  912 	rlc	a
      00272B FE               [12]  913 	mov	r6,a
      00272C 7F 00            [12]  914 	mov	r7,#0x00
                                    915 ;	main.c:136: delay();
      00272E C0 07            [24]  916 	push	ar7
      002730 C0 06            [24]  917 	push	ar6
      002732 12 26 89         [24]  918 	lcall	_delay
      002735 D0 06            [24]  919 	pop	ar6
      002737 D0 07            [24]  920 	pop	ar7
                                    921 ;	main.c:137: clearSCL;
                                    922 ;	assignBit
      002739 C2 94            [12]  923 	clr	_P1_4
                                    924 ;	main.c:138: return ack_check;
      00273B 8E 82            [24]  925 	mov	dpl,r6
      00273D 8F 83            [24]  926 	mov	dph,r7
                                    927 ;	main.c:139: }
      00273F 22               [24]  928 	ret
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'i2c_read'
                                    931 ;------------------------------------------------------------
                                    932 ;reader                    Allocated with name '_i2c_read_reader_65536_83'
                                    933 ;i                         Allocated with name '_i2c_read_i_131072_84'
                                    934 ;------------------------------------------------------------
                                    935 ;	main.c:140: int i2c_read()
                                    936 ;	-----------------------------------------
                                    937 ;	 function i2c_read
                                    938 ;	-----------------------------------------
      002740                        939 _i2c_read:
                                    940 ;	main.c:142: int reader=0;
      002740 90 00 08         [24]  941 	mov	dptr,#_i2c_read_reader_65536_83
      002743 E4               [12]  942 	clr	a
      002744 F0               [24]  943 	movx	@dptr,a
      002745 A3               [24]  944 	inc	dptr
      002746 F0               [24]  945 	movx	@dptr,a
                                    946 ;	main.c:143: setSDA;
                                    947 ;	assignBit
      002747 D2 95            [12]  948 	setb	_P1_5
                                    949 ;	main.c:145: for (int i=0; i<8; i++)
      002749 7E 00            [12]  950 	mov	r6,#0x00
      00274B 7F 00            [12]  951 	mov	r7,#0x00
      00274D                        952 00103$:
      00274D C3               [12]  953 	clr	c
      00274E EE               [12]  954 	mov	a,r6
      00274F 94 08            [12]  955 	subb	a,#0x08
      002751 EF               [12]  956 	mov	a,r7
      002752 64 80            [12]  957 	xrl	a,#0x80
      002754 94 80            [12]  958 	subb	a,#0x80
      002756 50 48            [24]  959 	jnc	00101$
                                    960 ;	main.c:147: reader<<=1;
      002758 90 00 08         [24]  961 	mov	dptr,#_i2c_read_reader_65536_83
      00275B E0               [24]  962 	movx	a,@dptr
      00275C FC               [12]  963 	mov	r4,a
      00275D A3               [24]  964 	inc	dptr
      00275E E0               [24]  965 	movx	a,@dptr
      00275F FD               [12]  966 	mov	r5,a
      002760 EC               [12]  967 	mov	a,r4
      002761 2C               [12]  968 	add	a,r4
      002762 FC               [12]  969 	mov	r4,a
      002763 ED               [12]  970 	mov	a,r5
      002764 33               [12]  971 	rlc	a
      002765 FD               [12]  972 	mov	r5,a
      002766 90 00 08         [24]  973 	mov	dptr,#_i2c_read_reader_65536_83
      002769 EC               [12]  974 	mov	a,r4
      00276A F0               [24]  975 	movx	@dptr,a
      00276B ED               [12]  976 	mov	a,r5
      00276C A3               [24]  977 	inc	dptr
      00276D F0               [24]  978 	movx	@dptr,a
                                    979 ;	main.c:148: setSCL;
                                    980 ;	assignBit
      00276E D2 94            [12]  981 	setb	_P1_4
                                    982 ;	main.c:149: delay();
      002770 C0 07            [24]  983 	push	ar7
      002772 C0 06            [24]  984 	push	ar6
      002774 12 26 89         [24]  985 	lcall	_delay
                                    986 ;	main.c:150: reader |=P1_5;
      002777 90 00 08         [24]  987 	mov	dptr,#_i2c_read_reader_65536_83
      00277A E0               [24]  988 	movx	a,@dptr
      00277B FC               [12]  989 	mov	r4,a
      00277C A3               [24]  990 	inc	dptr
      00277D E0               [24]  991 	movx	a,@dptr
      00277E FD               [12]  992 	mov	r5,a
      00277F A2 95            [12]  993 	mov	c,_P1_5
      002781 E4               [12]  994 	clr	a
      002782 33               [12]  995 	rlc	a
      002783 FA               [12]  996 	mov	r2,a
      002784 7B 00            [12]  997 	mov	r3,#0x00
      002786 90 00 08         [24]  998 	mov	dptr,#_i2c_read_reader_65536_83
      002789 EA               [12]  999 	mov	a,r2
      00278A 4C               [12] 1000 	orl	a,r4
      00278B F0               [24] 1001 	movx	@dptr,a
      00278C EB               [12] 1002 	mov	a,r3
      00278D 4D               [12] 1003 	orl	a,r5
      00278E A3               [24] 1004 	inc	dptr
      00278F F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	main.c:151: clearSCL;
                                   1007 ;	assignBit
      002790 C2 94            [12] 1008 	clr	_P1_4
                                   1009 ;	main.c:152: delay();
      002792 12 26 89         [24] 1010 	lcall	_delay
      002795 D0 06            [24] 1011 	pop	ar6
      002797 D0 07            [24] 1012 	pop	ar7
                                   1013 ;	main.c:145: for (int i=0; i<8; i++)
      002799 0E               [12] 1014 	inc	r6
      00279A BE 00 B0         [24] 1015 	cjne	r6,#0x00,00103$
      00279D 0F               [12] 1016 	inc	r7
      00279E 80 AD            [24] 1017 	sjmp	00103$
      0027A0                       1018 00101$:
                                   1019 ;	main.c:157: setSCL;
                                   1020 ;	assignBit
      0027A0 D2 94            [12] 1021 	setb	_P1_4
                                   1022 ;	main.c:158: delay();
      0027A2 12 26 89         [24] 1023 	lcall	_delay
                                   1024 ;	main.c:159: setSDA;
                                   1025 ;	assignBit
      0027A5 D2 95            [12] 1026 	setb	_P1_5
                                   1027 ;	main.c:160: clearSCL;
                                   1028 ;	assignBit
      0027A7 C2 94            [12] 1029 	clr	_P1_4
                                   1030 ;	main.c:161: delay();
      0027A9 12 26 89         [24] 1031 	lcall	_delay
                                   1032 ;	main.c:162: return reader;
      0027AC 90 00 08         [24] 1033 	mov	dptr,#_i2c_read_reader_65536_83
      0027AF E0               [24] 1034 	movx	a,@dptr
      0027B0 FE               [12] 1035 	mov	r6,a
      0027B1 A3               [24] 1036 	inc	dptr
      0027B2 E0               [24] 1037 	movx	a,@dptr
                                   1038 ;	main.c:164: }
      0027B3 8E 82            [24] 1039 	mov	dpl,r6
      0027B5 F5 83            [12] 1040 	mov	dph,a
      0027B7 22               [24] 1041 	ret
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'main'
                                   1044 ;------------------------------------------------------------
                                   1045 ;i                         Allocated with name '_main_i_196608_89'
                                   1046 ;t                         Allocated with name '_main_t_131073_91'
                                   1047 ;s                         Allocated with name '_main_s_131074_93'
                                   1048 ;ww                        Allocated with name '_main_ww_196610_94'
                                   1049 ;------------------------------------------------------------
                                   1050 ;	main.c:167: void main(void)
                                   1051 ;	-----------------------------------------
                                   1052 ;	 function main
                                   1053 ;	-----------------------------------------
      0027B8                       1054 _main:
                                   1055 ;	main.c:173: while(1)
      0027B8                       1056 00107$:
                                   1057 ;	main.c:175: i2c_reset();
      0027B8 12 26 90         [24] 1058 	lcall	_i2c_reset
                                   1059 ;	main.c:178: i2c_start();
      0027BB 12 26 9B         [24] 1060 	lcall	_i2c_start
                                   1061 ;	main.c:179: i2c_write(0xA0);
      0027BE 90 00 A0         [24] 1062 	mov	dptr,#0x00a0
      0027C1 12 26 B1         [24] 1063 	lcall	_i2c_write
                                   1064 ;	main.c:180: delay();
      0027C4 12 26 89         [24] 1065 	lcall	_delay
                                   1066 ;	main.c:181: i2c_write(0x01);
      0027C7 90 00 01         [24] 1067 	mov	dptr,#0x0001
      0027CA 12 26 B1         [24] 1068 	lcall	_i2c_write
                                   1069 ;	main.c:182: delay();
      0027CD 12 26 89         [24] 1070 	lcall	_delay
                                   1071 ;	main.c:183: i2c_write('a');
      0027D0 90 00 61         [24] 1072 	mov	dptr,#0x0061
      0027D3 12 26 B1         [24] 1073 	lcall	_i2c_write
                                   1074 ;	main.c:184: delay();
      0027D6 12 26 89         [24] 1075 	lcall	_delay
                                   1076 ;	main.c:185: i2c_stop();
      0027D9 12 26 A5         [24] 1077 	lcall	_i2c_stop
                                   1078 ;	main.c:186: for(uint16_t i=1000;i!=0;i--)
      0027DC 7E E8            [12] 1079 	mov	r6,#0xe8
      0027DE 7F 03            [12] 1080 	mov	r7,#0x03
      0027E0                       1081 00110$:
      0027E0 EE               [12] 1082 	mov	a,r6
      0027E1 4F               [12] 1083 	orl	a,r7
      0027E2 60 12            [24] 1084 	jz	00101$
                                   1085 ;	main.c:188: delay();
      0027E4 C0 07            [24] 1086 	push	ar7
      0027E6 C0 06            [24] 1087 	push	ar6
      0027E8 12 26 89         [24] 1088 	lcall	_delay
      0027EB D0 06            [24] 1089 	pop	ar6
      0027ED D0 07            [24] 1090 	pop	ar7
                                   1091 ;	main.c:186: for(uint16_t i=1000;i!=0;i--)
      0027EF 1E               [12] 1092 	dec	r6
      0027F0 BE FF 01         [24] 1093 	cjne	r6,#0xff,00147$
      0027F3 1F               [12] 1094 	dec	r7
      0027F4                       1095 00147$:
      0027F4 80 EA            [24] 1096 	sjmp	00110$
      0027F6                       1097 00101$:
                                   1098 ;	main.c:191: int t=1;
      0027F6 90 00 0A         [24] 1099 	mov	dptr,#_main_t_131073_91
      0027F9 74 01            [12] 1100 	mov	a,#0x01
      0027FB F0               [24] 1101 	movx	@dptr,a
      0027FC E4               [12] 1102 	clr	a
      0027FD A3               [24] 1103 	inc	dptr
      0027FE F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	main.c:192: while(t) //ack polling
      0027FF                       1106 00102$:
      0027FF 90 00 0A         [24] 1107 	mov	dptr,#_main_t_131073_91
      002802 E0               [24] 1108 	movx	a,@dptr
      002803 F5 F0            [12] 1109 	mov	b,a
      002805 A3               [24] 1110 	inc	dptr
      002806 E0               [24] 1111 	movx	a,@dptr
      002807 45 F0            [12] 1112 	orl	a,b
      002809 60 21            [24] 1113 	jz	00104$
                                   1114 ;	main.c:194: setSCL;
                                   1115 ;	assignBit
      00280B D2 94            [12] 1116 	setb	_P1_4
                                   1117 ;	main.c:197: clearSDA;
                                   1118 ;	assignBit
      00280D C2 95            [12] 1119 	clr	_P1_5
                                   1120 ;	main.c:198: delay();
      00280F 12 26 89         [24] 1121 	lcall	_delay
                                   1122 ;	main.c:199: clearSCL;
                                   1123 ;	assignBit
      002812 C2 94            [12] 1124 	clr	_P1_4
                                   1125 ;	main.c:200: t=i2c_write(0xA0);
      002814 90 00 A0         [24] 1126 	mov	dptr,#0x00a0
      002817 12 26 B1         [24] 1127 	lcall	_i2c_write
      00281A E5 82            [12] 1128 	mov	a,dpl
      00281C 85 83 F0         [24] 1129 	mov	b,dph
      00281F 90 00 0A         [24] 1130 	mov	dptr,#_main_t_131073_91
      002822 F0               [24] 1131 	movx	@dptr,a
      002823 E5 F0            [12] 1132 	mov	a,b
      002825 A3               [24] 1133 	inc	dptr
      002826 F0               [24] 1134 	movx	@dptr,a
                                   1135 ;	main.c:201: delay();
      002827 12 26 89         [24] 1136 	lcall	_delay
      00282A 80 D3            [24] 1137 	sjmp	00102$
      00282C                       1138 00104$:
                                   1139 ;	main.c:203: i2c_stop();
      00282C 12 26 A5         [24] 1140 	lcall	_i2c_stop
                                   1141 ;	main.c:204: setSCL;
                                   1142 ;	assignBit
      00282F D2 94            [12] 1143 	setb	_P1_4
                                   1144 ;	main.c:205: clearSDA;
                                   1145 ;	assignBit
      002831 C2 95            [12] 1146 	clr	_P1_5
                                   1147 ;	main.c:206: delay();
      002833 12 26 89         [24] 1148 	lcall	_delay
                                   1149 ;	main.c:207: clearSCL;
                                   1150 ;	assignBit
      002836 C2 94            [12] 1151 	clr	_P1_4
                                   1152 ;	main.c:209: i2c_write(0xA0);delay();
      002838 90 00 A0         [24] 1153 	mov	dptr,#0x00a0
      00283B 12 26 B1         [24] 1154 	lcall	_i2c_write
      00283E 12 26 89         [24] 1155 	lcall	_delay
                                   1156 ;	main.c:210: i2c_write(0x01);delay();
      002841 90 00 01         [24] 1157 	mov	dptr,#0x0001
      002844 12 26 B1         [24] 1158 	lcall	_i2c_write
      002847 12 26 89         [24] 1159 	lcall	_delay
                                   1160 ;	main.c:213: setSCL;
                                   1161 ;	assignBit
      00284A D2 94            [12] 1162 	setb	_P1_4
                                   1163 ;	main.c:214: clearSDA;
                                   1164 ;	assignBit
      00284C C2 95            [12] 1165 	clr	_P1_5
                                   1166 ;	main.c:215: delay();
      00284E 12 26 89         [24] 1167 	lcall	_delay
                                   1168 ;	main.c:216: clearSCL;
                                   1169 ;	assignBit
      002851 C2 94            [12] 1170 	clr	_P1_4
                                   1171 ;	main.c:217: i2c_write(0xA1);
      002853 90 00 A1         [24] 1172 	mov	dptr,#0x00a1
      002856 12 26 B1         [24] 1173 	lcall	_i2c_write
                                   1174 ;	main.c:221: s=i2c_read();
      002859 12 27 40         [24] 1175 	lcall	_i2c_read
                                   1176 ;	main.c:222: putchar(s);
      00285C 12 25 C6         [24] 1177 	lcall	_putchar
                                   1178 ;	main.c:223: i2c_stop();
      00285F 12 26 A5         [24] 1179 	lcall	_i2c_stop
                                   1180 ;	main.c:224: for(uint16_t ww=1000;ww!=0;ww--)
      002862 7E E8            [12] 1181 	mov	r6,#0xe8
      002864 7F 03            [12] 1182 	mov	r7,#0x03
      002866                       1183 00113$:
      002866 EE               [12] 1184 	mov	a,r6
      002867 4F               [12] 1185 	orl	a,r7
      002868 70 03            [24] 1186 	jnz	00149$
      00286A 02 27 B8         [24] 1187 	ljmp	00107$
      00286D                       1188 00149$:
                                   1189 ;	main.c:226: delay();
      00286D C0 07            [24] 1190 	push	ar7
      00286F C0 06            [24] 1191 	push	ar6
      002871 12 26 89         [24] 1192 	lcall	_delay
      002874 D0 06            [24] 1193 	pop	ar6
      002876 D0 07            [24] 1194 	pop	ar7
                                   1195 ;	main.c:224: for(uint16_t ww=1000;ww!=0;ww--)
      002878 1E               [12] 1196 	dec	r6
      002879 BE FF 01         [24] 1197 	cjne	r6,#0xff,00150$
      00287C 1F               [12] 1198 	dec	r7
      00287D                       1199 00150$:
                                   1200 ;	main.c:237: }
      00287D 80 E7            [24] 1201 	sjmp	00113$
                                   1202 	.area CSEG    (CODE)
                                   1203 	.area CONST   (CODE)
                                   1204 	.area XINIT   (CODE)
                                   1205 	.area CABS    (ABS,CODE)
