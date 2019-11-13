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
                                     12 	.globl _random_read
                                     13 	.globl _byte_write
                                     14 	.globl _i2c_read
                                     15 	.globl _i2c_nack
                                     16 	.globl _i2c_ack
                                     17 	.globl _i2c_write
                                     18 	.globl _restart_i2c
                                     19 	.globl _long_delay
                                     20 	.globl _i2c_stop
                                     21 	.globl _i2c_start
                                     22 	.globl _i2c_reset
                                     23 	.globl _delay
                                     24 	.globl _readint
                                     25 	.globl _putstr
                                     26 	.globl _gets
                                     27 	.globl _atoi
                                     28 	.globl _P5_7
                                     29 	.globl _P5_6
                                     30 	.globl _P5_5
                                     31 	.globl _P5_4
                                     32 	.globl _P5_3
                                     33 	.globl _P5_2
                                     34 	.globl _P5_1
                                     35 	.globl _P5_0
                                     36 	.globl _P4_7
                                     37 	.globl _P4_6
                                     38 	.globl _P4_5
                                     39 	.globl _P4_4
                                     40 	.globl _P4_3
                                     41 	.globl _P4_2
                                     42 	.globl _P4_1
                                     43 	.globl _P4_0
                                     44 	.globl _PX0L
                                     45 	.globl _PT0L
                                     46 	.globl _PX1L
                                     47 	.globl _PT1L
                                     48 	.globl _PSL
                                     49 	.globl _PT2L
                                     50 	.globl _PPCL
                                     51 	.globl _EC
                                     52 	.globl _CCF0
                                     53 	.globl _CCF1
                                     54 	.globl _CCF2
                                     55 	.globl _CCF3
                                     56 	.globl _CCF4
                                     57 	.globl _CR
                                     58 	.globl _CF
                                     59 	.globl _TF2
                                     60 	.globl _EXF2
                                     61 	.globl _RCLK
                                     62 	.globl _TCLK
                                     63 	.globl _EXEN2
                                     64 	.globl _TR2
                                     65 	.globl _C_T2
                                     66 	.globl _CP_RL2
                                     67 	.globl _T2CON_7
                                     68 	.globl _T2CON_6
                                     69 	.globl _T2CON_5
                                     70 	.globl _T2CON_4
                                     71 	.globl _T2CON_3
                                     72 	.globl _T2CON_2
                                     73 	.globl _T2CON_1
                                     74 	.globl _T2CON_0
                                     75 	.globl _PT2
                                     76 	.globl _ET2
                                     77 	.globl _CY
                                     78 	.globl _AC
                                     79 	.globl _F0
                                     80 	.globl _RS1
                                     81 	.globl _RS0
                                     82 	.globl _OV
                                     83 	.globl _F1
                                     84 	.globl _P
                                     85 	.globl _PS
                                     86 	.globl _PT1
                                     87 	.globl _PX1
                                     88 	.globl _PT0
                                     89 	.globl _PX0
                                     90 	.globl _RD
                                     91 	.globl _WR
                                     92 	.globl _T1
                                     93 	.globl _T0
                                     94 	.globl _INT1
                                     95 	.globl _INT0
                                     96 	.globl _TXD
                                     97 	.globl _RXD
                                     98 	.globl _P3_7
                                     99 	.globl _P3_6
                                    100 	.globl _P3_5
                                    101 	.globl _P3_4
                                    102 	.globl _P3_3
                                    103 	.globl _P3_2
                                    104 	.globl _P3_1
                                    105 	.globl _P3_0
                                    106 	.globl _EA
                                    107 	.globl _ES
                                    108 	.globl _ET1
                                    109 	.globl _EX1
                                    110 	.globl _ET0
                                    111 	.globl _EX0
                                    112 	.globl _P2_7
                                    113 	.globl _P2_6
                                    114 	.globl _P2_5
                                    115 	.globl _P2_4
                                    116 	.globl _P2_3
                                    117 	.globl _P2_2
                                    118 	.globl _P2_1
                                    119 	.globl _P2_0
                                    120 	.globl _SM0
                                    121 	.globl _SM1
                                    122 	.globl _SM2
                                    123 	.globl _REN
                                    124 	.globl _TB8
                                    125 	.globl _RB8
                                    126 	.globl _TI
                                    127 	.globl _RI
                                    128 	.globl _P1_7
                                    129 	.globl _P1_6
                                    130 	.globl _P1_5
                                    131 	.globl _P1_4
                                    132 	.globl _P1_3
                                    133 	.globl _P1_2
                                    134 	.globl _P1_1
                                    135 	.globl _P1_0
                                    136 	.globl _TF1
                                    137 	.globl _TR1
                                    138 	.globl _TF0
                                    139 	.globl _TR0
                                    140 	.globl _IE1
                                    141 	.globl _IT1
                                    142 	.globl _IE0
                                    143 	.globl _IT0
                                    144 	.globl _P0_7
                                    145 	.globl _P0_6
                                    146 	.globl _P0_5
                                    147 	.globl _P0_4
                                    148 	.globl _P0_3
                                    149 	.globl _P0_2
                                    150 	.globl _P0_1
                                    151 	.globl _P0_0
                                    152 	.globl _EECON
                                    153 	.globl _KBF
                                    154 	.globl _KBE
                                    155 	.globl _KBLS
                                    156 	.globl _BRL
                                    157 	.globl _BDRCON
                                    158 	.globl _T2MOD
                                    159 	.globl _SPDAT
                                    160 	.globl _SPSTA
                                    161 	.globl _SPCON
                                    162 	.globl _SADEN
                                    163 	.globl _SADDR
                                    164 	.globl _WDTPRG
                                    165 	.globl _WDTRST
                                    166 	.globl _P5
                                    167 	.globl _P4
                                    168 	.globl _IPH1
                                    169 	.globl _IPL1
                                    170 	.globl _IPH0
                                    171 	.globl _IPL0
                                    172 	.globl _IEN1
                                    173 	.globl _IEN0
                                    174 	.globl _CMOD
                                    175 	.globl _CL
                                    176 	.globl _CH
                                    177 	.globl _CCON
                                    178 	.globl _CCAPM4
                                    179 	.globl _CCAPM3
                                    180 	.globl _CCAPM2
                                    181 	.globl _CCAPM1
                                    182 	.globl _CCAPM0
                                    183 	.globl _CCAP4L
                                    184 	.globl _CCAP3L
                                    185 	.globl _CCAP2L
                                    186 	.globl _CCAP1L
                                    187 	.globl _CCAP0L
                                    188 	.globl _CCAP4H
                                    189 	.globl _CCAP3H
                                    190 	.globl _CCAP2H
                                    191 	.globl _CCAP1H
                                    192 	.globl _CCAP0H
                                    193 	.globl _CKCON1
                                    194 	.globl _CKCON0
                                    195 	.globl _CKRL
                                    196 	.globl _AUXR1
                                    197 	.globl _AUXR
                                    198 	.globl _TH2
                                    199 	.globl _TL2
                                    200 	.globl _RCAP2H
                                    201 	.globl _RCAP2L
                                    202 	.globl _T2CON
                                    203 	.globl _B
                                    204 	.globl _ACC
                                    205 	.globl _PSW
                                    206 	.globl _IP
                                    207 	.globl _P3
                                    208 	.globl _IE
                                    209 	.globl _P2
                                    210 	.globl _SBUF
                                    211 	.globl _SCON
                                    212 	.globl _P1
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TL1
                                    216 	.globl _TL0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _PCON
                                    220 	.globl _DPH
                                    221 	.globl _DPL
                                    222 	.globl _SP
                                    223 	.globl _P0
                                    224 	.globl _random_read_PARM_2
                                    225 	.globl _byte_write_PARM_3
                                    226 	.globl _byte_write_PARM_2
                                    227 	.globl _putchar
                                    228 	.globl _getchar
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           000080   234 _P0	=	0x0080
                           000081   235 _SP	=	0x0081
                           000082   236 _DPL	=	0x0082
                           000083   237 _DPH	=	0x0083
                           000087   238 _PCON	=	0x0087
                           000088   239 _TCON	=	0x0088
                           000089   240 _TMOD	=	0x0089
                           00008A   241 _TL0	=	0x008a
                           00008B   242 _TL1	=	0x008b
                           00008C   243 _TH0	=	0x008c
                           00008D   244 _TH1	=	0x008d
                           000090   245 _P1	=	0x0090
                           000098   246 _SCON	=	0x0098
                           000099   247 _SBUF	=	0x0099
                           0000A0   248 _P2	=	0x00a0
                           0000A8   249 _IE	=	0x00a8
                           0000B0   250 _P3	=	0x00b0
                           0000B8   251 _IP	=	0x00b8
                           0000D0   252 _PSW	=	0x00d0
                           0000E0   253 _ACC	=	0x00e0
                           0000F0   254 _B	=	0x00f0
                           0000C8   255 _T2CON	=	0x00c8
                           0000CA   256 _RCAP2L	=	0x00ca
                           0000CB   257 _RCAP2H	=	0x00cb
                           0000CC   258 _TL2	=	0x00cc
                           0000CD   259 _TH2	=	0x00cd
                           00008E   260 _AUXR	=	0x008e
                           0000A2   261 _AUXR1	=	0x00a2
                           000097   262 _CKRL	=	0x0097
                           00008F   263 _CKCON0	=	0x008f
                           0000AF   264 _CKCON1	=	0x00af
                           0000FA   265 _CCAP0H	=	0x00fa
                           0000FB   266 _CCAP1H	=	0x00fb
                           0000FC   267 _CCAP2H	=	0x00fc
                           0000FD   268 _CCAP3H	=	0x00fd
                           0000FE   269 _CCAP4H	=	0x00fe
                           0000EA   270 _CCAP0L	=	0x00ea
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 _CCAP2L	=	0x00ec
                           0000ED   273 _CCAP3L	=	0x00ed
                           0000EE   274 _CCAP4L	=	0x00ee
                           0000DA   275 _CCAPM0	=	0x00da
                           0000DB   276 _CCAPM1	=	0x00db
                           0000DC   277 _CCAPM2	=	0x00dc
                           0000DD   278 _CCAPM3	=	0x00dd
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 _CCON	=	0x00d8
                           0000F9   281 _CH	=	0x00f9
                           0000E9   282 _CL	=	0x00e9
                           0000D9   283 _CMOD	=	0x00d9
                           0000A8   284 _IEN0	=	0x00a8
                           0000B1   285 _IEN1	=	0x00b1
                           0000B8   286 _IPL0	=	0x00b8
                           0000B7   287 _IPH0	=	0x00b7
                           0000B2   288 _IPL1	=	0x00b2
                           0000B3   289 _IPH1	=	0x00b3
                           0000C0   290 _P4	=	0x00c0
                           0000E8   291 _P5	=	0x00e8
                           0000A6   292 _WDTRST	=	0x00a6
                           0000A7   293 _WDTPRG	=	0x00a7
                           0000A9   294 _SADDR	=	0x00a9
                           0000B9   295 _SADEN	=	0x00b9
                           0000C3   296 _SPCON	=	0x00c3
                           0000C4   297 _SPSTA	=	0x00c4
                           0000C5   298 _SPDAT	=	0x00c5
                           0000C9   299 _T2MOD	=	0x00c9
                           00009B   300 _BDRCON	=	0x009b
                           00009A   301 _BRL	=	0x009a
                           00009C   302 _KBLS	=	0x009c
                           00009D   303 _KBE	=	0x009d
                           00009E   304 _KBF	=	0x009e
                           0000D2   305 _EECON	=	0x00d2
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           000080   311 _P0_0	=	0x0080
                           000081   312 _P0_1	=	0x0081
                           000082   313 _P0_2	=	0x0082
                           000083   314 _P0_3	=	0x0083
                           000084   315 _P0_4	=	0x0084
                           000085   316 _P0_5	=	0x0085
                           000086   317 _P0_6	=	0x0086
                           000087   318 _P0_7	=	0x0087
                           000088   319 _IT0	=	0x0088
                           000089   320 _IE0	=	0x0089
                           00008A   321 _IT1	=	0x008a
                           00008B   322 _IE1	=	0x008b
                           00008C   323 _TR0	=	0x008c
                           00008D   324 _TF0	=	0x008d
                           00008E   325 _TR1	=	0x008e
                           00008F   326 _TF1	=	0x008f
                           000090   327 _P1_0	=	0x0090
                           000091   328 _P1_1	=	0x0091
                           000092   329 _P1_2	=	0x0092
                           000093   330 _P1_3	=	0x0093
                           000094   331 _P1_4	=	0x0094
                           000095   332 _P1_5	=	0x0095
                           000096   333 _P1_6	=	0x0096
                           000097   334 _P1_7	=	0x0097
                           000098   335 _RI	=	0x0098
                           000099   336 _TI	=	0x0099
                           00009A   337 _RB8	=	0x009a
                           00009B   338 _TB8	=	0x009b
                           00009C   339 _REN	=	0x009c
                           00009D   340 _SM2	=	0x009d
                           00009E   341 _SM1	=	0x009e
                           00009F   342 _SM0	=	0x009f
                           0000A0   343 _P2_0	=	0x00a0
                           0000A1   344 _P2_1	=	0x00a1
                           0000A2   345 _P2_2	=	0x00a2
                           0000A3   346 _P2_3	=	0x00a3
                           0000A4   347 _P2_4	=	0x00a4
                           0000A5   348 _P2_5	=	0x00a5
                           0000A6   349 _P2_6	=	0x00a6
                           0000A7   350 _P2_7	=	0x00a7
                           0000A8   351 _EX0	=	0x00a8
                           0000A9   352 _ET0	=	0x00a9
                           0000AA   353 _EX1	=	0x00aa
                           0000AB   354 _ET1	=	0x00ab
                           0000AC   355 _ES	=	0x00ac
                           0000AF   356 _EA	=	0x00af
                           0000B0   357 _P3_0	=	0x00b0
                           0000B1   358 _P3_1	=	0x00b1
                           0000B2   359 _P3_2	=	0x00b2
                           0000B3   360 _P3_3	=	0x00b3
                           0000B4   361 _P3_4	=	0x00b4
                           0000B5   362 _P3_5	=	0x00b5
                           0000B6   363 _P3_6	=	0x00b6
                           0000B7   364 _P3_7	=	0x00b7
                           0000B0   365 _RXD	=	0x00b0
                           0000B1   366 _TXD	=	0x00b1
                           0000B2   367 _INT0	=	0x00b2
                           0000B3   368 _INT1	=	0x00b3
                           0000B4   369 _T0	=	0x00b4
                           0000B5   370 _T1	=	0x00b5
                           0000B6   371 _WR	=	0x00b6
                           0000B7   372 _RD	=	0x00b7
                           0000B8   373 _PX0	=	0x00b8
                           0000B9   374 _PT0	=	0x00b9
                           0000BA   375 _PX1	=	0x00ba
                           0000BB   376 _PT1	=	0x00bb
                           0000BC   377 _PS	=	0x00bc
                           0000D0   378 _P	=	0x00d0
                           0000D1   379 _F1	=	0x00d1
                           0000D2   380 _OV	=	0x00d2
                           0000D3   381 _RS0	=	0x00d3
                           0000D4   382 _RS1	=	0x00d4
                           0000D5   383 _F0	=	0x00d5
                           0000D6   384 _AC	=	0x00d6
                           0000D7   385 _CY	=	0x00d7
                           0000AD   386 _ET2	=	0x00ad
                           0000BD   387 _PT2	=	0x00bd
                           0000C8   388 _T2CON_0	=	0x00c8
                           0000C9   389 _T2CON_1	=	0x00c9
                           0000CA   390 _T2CON_2	=	0x00ca
                           0000CB   391 _T2CON_3	=	0x00cb
                           0000CC   392 _T2CON_4	=	0x00cc
                           0000CD   393 _T2CON_5	=	0x00cd
                           0000CE   394 _T2CON_6	=	0x00ce
                           0000CF   395 _T2CON_7	=	0x00cf
                           0000C8   396 _CP_RL2	=	0x00c8
                           0000C9   397 _C_T2	=	0x00c9
                           0000CA   398 _TR2	=	0x00ca
                           0000CB   399 _EXEN2	=	0x00cb
                           0000CC   400 _TCLK	=	0x00cc
                           0000CD   401 _RCLK	=	0x00cd
                           0000CE   402 _EXF2	=	0x00ce
                           0000CF   403 _TF2	=	0x00cf
                           0000DF   404 _CF	=	0x00df
                           0000DE   405 _CR	=	0x00de
                           0000DC   406 _CCF4	=	0x00dc
                           0000DB   407 _CCF3	=	0x00db
                           0000DA   408 _CCF2	=	0x00da
                           0000D9   409 _CCF1	=	0x00d9
                           0000D8   410 _CCF0	=	0x00d8
                           0000AE   411 _EC	=	0x00ae
                           0000BE   412 _PPCL	=	0x00be
                           0000BD   413 _PT2L	=	0x00bd
                           0000BC   414 _PSL	=	0x00bc
                           0000BB   415 _PT1L	=	0x00bb
                           0000BA   416 _PX1L	=	0x00ba
                           0000B9   417 _PT0L	=	0x00b9
                           0000B8   418 _PX0L	=	0x00b8
                           0000C0   419 _P4_0	=	0x00c0
                           0000C1   420 _P4_1	=	0x00c1
                           0000C2   421 _P4_2	=	0x00c2
                           0000C3   422 _P4_3	=	0x00c3
                           0000C4   423 _P4_4	=	0x00c4
                           0000C5   424 _P4_5	=	0x00c5
                           0000C6   425 _P4_6	=	0x00c6
                           0000C7   426 _P4_7	=	0x00c7
                           0000E8   427 _P5_0	=	0x00e8
                           0000E9   428 _P5_1	=	0x00e9
                           0000EA   429 _P5_2	=	0x00ea
                           0000EB   430 _P5_3	=	0x00eb
                           0000EC   431 _P5_4	=	0x00ec
                           0000ED   432 _P5_5	=	0x00ed
                           0000EE   433 _P5_6	=	0x00ee
                           0000EF   434 _P5_7	=	0x00ef
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable register banks
                                    437 ;--------------------------------------------------------
                                    438 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        439 	.ds 8
                                    440 ;--------------------------------------------------------
                                    441 ; internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area DSEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 ;--------------------------------------------------------
                                    448 ; Stack segment in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 	.area	SSEG
      000008                        451 __start__stack:
      000008                        452 	.ds	1
                                    453 
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
      000001                        475 _putchar_c_65536_63:
      000001                        476 	.ds 2
      000003                        477 _putstr_s_65536_67:
      000003                        478 	.ds 3
      000006                        479 _i2c_write_k_65536_80:
      000006                        480 	.ds 2
      000008                        481 _i2c_read_reader_65536_89:
      000008                        482 	.ds 2
      00000A                        483 _byte_write_PARM_2:
      00000A                        484 	.ds 1
      00000B                        485 _byte_write_PARM_3:
      00000B                        486 	.ds 1
      00000C                        487 _byte_write_controlcode_65536_92:
      00000C                        488 	.ds 1
      00000D                        489 _byte_write_t_65537_94:
      00000D                        490 	.ds 2
      00000F                        491 _random_read_PARM_2:
      00000F                        492 	.ds 1
      000010                        493 _random_read_controlcode_65536_96:
      000010                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; interrupt vector 
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
      000000                        517 __interrupt_vect:
      000000 02 00 06         [24]  518 	ljmp	__sdcc_gsinit_startup
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      000003                        539 __sdcc_program_startup:
      000003 02 03 83         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;c                         Allocated with name '_putchar_c_65536_63'
                                    550 ;------------------------------------------------------------
                                    551 ;	main.c:15: int putchar (int c)//serial outps char value
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      000062                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      000062 AF 83            [24]  564 	mov	r7,dph
      000064 E5 82            [12]  565 	mov	a,dpl
      000066 90 00 01         [24]  566 	mov	dptr,#_putchar_c_65536_63
      000069 F0               [24]  567 	movx	@dptr,a
      00006A EF               [12]  568 	mov	a,r7
      00006B A3               [24]  569 	inc	dptr
      00006C F0               [24]  570 	movx	@dptr,a
                                    571 ;	main.c:17: while (!TI);				// compare asm code generated for these three lines
      00006D                        572 00101$:
      00006D 30 99 FD         [24]  573 	jnb	_TI,00101$
                                    574 ;	main.c:18: while (TI == 0);
      000070                        575 00104$:
      000070 30 99 FD         [24]  576 	jnb	_TI,00104$
                                    577 ;	main.c:19: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      000073                        578 00107$:
      000073 E5 98            [12]  579 	mov	a,_SCON
      000075 30 E1 FB         [24]  580 	jnb	acc.1,00107$
                                    581 ;	main.c:20: SBUF = c;  	// load serial port with transmit value
      000078 90 00 01         [24]  582 	mov	dptr,#_putchar_c_65536_63
      00007B E0               [24]  583 	movx	a,@dptr
      00007C FE               [12]  584 	mov	r6,a
      00007D A3               [24]  585 	inc	dptr
      00007E E0               [24]  586 	movx	a,@dptr
      00007F 8E 99            [24]  587 	mov	_SBUF,r6
                                    588 ;	main.c:21: TI = 0;  	// clear TI flag
                                    589 ;	assignBit
      000081 C2 99            [12]  590 	clr	_TI
                                    591 ;	main.c:22: return 0;
      000083 90 00 00         [24]  592 	mov	dptr,#0x0000
                                    593 ;	main.c:23: }
      000086 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'getchar'
                                    597 ;------------------------------------------------------------
                                    598 ;	main.c:26: int getchar(void)//reads char value from serial
                                    599 ;	-----------------------------------------
                                    600 ;	 function getchar
                                    601 ;	-----------------------------------------
      000087                        602 _getchar:
                                    603 ;	main.c:29: while (!RI);                // compare asm code generated for these three lines
      000087                        604 00101$:
      000087 30 98 FD         [24]  605 	jnb	_RI,00101$
                                    606 ;	main.c:30: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      00008A                        607 00104$:
      00008A E5 98            [12]  608 	mov	a,_SCON
      00008C 30 E0 FB         [24]  609 	jnb	acc.0,00104$
                                    610 ;	main.c:31: while (RI == 0);
      00008F                        611 00107$:
                                    612 ;	main.c:32: RI = 0;			// clear RI flag
                                    613 ;	assignBit
      00008F 10 98 02         [24]  614 	jbc	_RI,00130$
      000092 80 FB            [24]  615 	sjmp	00107$
      000094                        616 00130$:
                                    617 ;	main.c:33: return SBUF;  	// return character from SBUF
      000094 AE 99            [24]  618 	mov	r6,_SBUF
      000096 7F 00            [12]  619 	mov	r7,#0x00
      000098 8E 82            [24]  620 	mov	dpl,r6
      00009A 8F 83            [24]  621 	mov	dph,r7
                                    622 ;	main.c:34: }
      00009C 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'putstr'
                                    626 ;------------------------------------------------------------
                                    627 ;s                         Allocated with name '_putstr_s_65536_67'
                                    628 ;i                         Allocated with name '_putstr_i_65536_68'
                                    629 ;------------------------------------------------------------
                                    630 ;	main.c:35: int putstr (char *s)//outputs string to serial
                                    631 ;	-----------------------------------------
                                    632 ;	 function putstr
                                    633 ;	-----------------------------------------
      00009D                        634 _putstr:
      00009D AF F0            [24]  635 	mov	r7,b
      00009F AE 83            [24]  636 	mov	r6,dph
      0000A1 E5 82            [12]  637 	mov	a,dpl
      0000A3 90 00 03         [24]  638 	mov	dptr,#_putstr_s_65536_67
      0000A6 F0               [24]  639 	movx	@dptr,a
      0000A7 EE               [12]  640 	mov	a,r6
      0000A8 A3               [24]  641 	inc	dptr
      0000A9 F0               [24]  642 	movx	@dptr,a
      0000AA EF               [12]  643 	mov	a,r7
      0000AB A3               [24]  644 	inc	dptr
      0000AC F0               [24]  645 	movx	@dptr,a
                                    646 ;	main.c:38: while (*s) 			// output characters until NULL found
      0000AD 90 00 03         [24]  647 	mov	dptr,#_putstr_s_65536_67
      0000B0 E0               [24]  648 	movx	a,@dptr
      0000B1 FD               [12]  649 	mov	r5,a
      0000B2 A3               [24]  650 	inc	dptr
      0000B3 E0               [24]  651 	movx	a,@dptr
      0000B4 FE               [12]  652 	mov	r6,a
      0000B5 A3               [24]  653 	inc	dptr
      0000B6 E0               [24]  654 	movx	a,@dptr
      0000B7 FF               [12]  655 	mov	r7,a
      0000B8 7B 00            [12]  656 	mov	r3,#0x00
      0000BA 7C 00            [12]  657 	mov	r4,#0x00
      0000BC                        658 00101$:
      0000BC 8D 82            [24]  659 	mov	dpl,r5
      0000BE 8E 83            [24]  660 	mov	dph,r6
      0000C0 8F F0            [24]  661 	mov	b,r7
      0000C2 12 06 45         [24]  662 	lcall	__gptrget
      0000C5 FA               [12]  663 	mov	r2,a
      0000C6 60 36            [24]  664 	jz	00108$
                                    665 ;	main.c:40: putchar(*s++);
      0000C8 0D               [12]  666 	inc	r5
      0000C9 BD 00 01         [24]  667 	cjne	r5,#0x00,00116$
      0000CC 0E               [12]  668 	inc	r6
      0000CD                        669 00116$:
      0000CD 90 00 03         [24]  670 	mov	dptr,#_putstr_s_65536_67
      0000D0 ED               [12]  671 	mov	a,r5
      0000D1 F0               [24]  672 	movx	@dptr,a
      0000D2 EE               [12]  673 	mov	a,r6
      0000D3 A3               [24]  674 	inc	dptr
      0000D4 F0               [24]  675 	movx	@dptr,a
      0000D5 EF               [12]  676 	mov	a,r7
      0000D6 A3               [24]  677 	inc	dptr
      0000D7 F0               [24]  678 	movx	@dptr,a
      0000D8 8A 01            [24]  679 	mov	ar1,r2
      0000DA 7A 00            [12]  680 	mov	r2,#0x00
      0000DC 89 82            [24]  681 	mov	dpl,r1
      0000DE 8A 83            [24]  682 	mov	dph,r2
      0000E0 C0 07            [24]  683 	push	ar7
      0000E2 C0 06            [24]  684 	push	ar6
      0000E4 C0 05            [24]  685 	push	ar5
      0000E6 C0 04            [24]  686 	push	ar4
      0000E8 C0 03            [24]  687 	push	ar3
      0000EA 12 00 62         [24]  688 	lcall	_putchar
      0000ED D0 03            [24]  689 	pop	ar3
      0000EF D0 04            [24]  690 	pop	ar4
      0000F1 D0 05            [24]  691 	pop	ar5
      0000F3 D0 06            [24]  692 	pop	ar6
      0000F5 D0 07            [24]  693 	pop	ar7
                                    694 ;	main.c:41: i++;
      0000F7 0B               [12]  695 	inc	r3
      0000F8 BB 00 C1         [24]  696 	cjne	r3,#0x00,00101$
      0000FB 0C               [12]  697 	inc	r4
      0000FC 80 BE            [24]  698 	sjmp	00101$
      0000FE                        699 00108$:
      0000FE 90 00 03         [24]  700 	mov	dptr,#_putstr_s_65536_67
      000101 ED               [12]  701 	mov	a,r5
      000102 F0               [24]  702 	movx	@dptr,a
      000103 EE               [12]  703 	mov	a,r6
      000104 A3               [24]  704 	inc	dptr
      000105 F0               [24]  705 	movx	@dptr,a
      000106 EF               [12]  706 	mov	a,r7
      000107 A3               [24]  707 	inc	dptr
      000108 F0               [24]  708 	movx	@dptr,a
                                    709 ;	main.c:44: return i+1;
      000109 0B               [12]  710 	inc	r3
      00010A BB 00 01         [24]  711 	cjne	r3,#0x00,00118$
      00010D 0C               [12]  712 	inc	r4
      00010E                        713 00118$:
      00010E 8B 82            [24]  714 	mov	dpl,r3
      000110 8C 83            [24]  715 	mov	dph,r4
                                    716 ;	main.c:45: }
      000112 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'readint'
                                    720 ;------------------------------------------------------------
                                    721 ;reader                    Allocated with name '_readint_reader_65536_70'
                                    722 ;number                    Allocated with name '_readint_number_65537_71'
                                    723 ;------------------------------------------------------------
                                    724 ;	main.c:50: int readint()//reads  char string as integer
                                    725 ;	-----------------------------------------
                                    726 ;	 function readint
                                    727 ;	-----------------------------------------
      000113                        728 _readint:
                                    729 ;	main.c:53: gets(reader);
      000113 90 00 00         [24]  730 	mov	dptr,#0x0000
      000116 75 F0 00         [24]  731 	mov	b,#0x00
      000119 12 05 20         [24]  732 	lcall	_gets
                                    733 ;	main.c:54: int number=atoi(reader);
      00011C 90 00 00         [24]  734 	mov	dptr,#0x0000
      00011F 75 F0 00         [24]  735 	mov	b,#0x00
                                    736 ;	main.c:55: return number;
                                    737 ;	main.c:56: }
      000122 02 04 00         [24]  738 	ljmp	_atoi
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'delay'
                                    741 ;------------------------------------------------------------
                                    742 ;	main.c:58: void delay()
                                    743 ;	-----------------------------------------
                                    744 ;	 function delay
                                    745 ;	-----------------------------------------
      000125                        746 _delay:
                                    747 ;	main.c:65: __endasm;
      000125 74 03            [12]  748 	mov	a,#3
      000127                        749 	    l1:
      000127 14               [12]  750 	dec	a
      000128 B4 00 FC         [24]  751 	cjne	a,#0,l1
                                    752 ;	main.c:66: }
      00012B 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'i2c_reset'
                                    756 ;------------------------------------------------------------
                                    757 ;	main.c:67: void i2c_reset() //setting both lines to high to go into normal condition
                                    758 ;	-----------------------------------------
                                    759 ;	 function i2c_reset
                                    760 ;	-----------------------------------------
      00012C                        761 _i2c_reset:
                                    762 ;	main.c:69: clearSCL;
                                    763 ;	assignBit
      00012C C2 94            [12]  764 	clr	_P1_4
                                    765 ;	main.c:70: clearSDA;
                                    766 ;	assignBit
      00012E C2 95            [12]  767 	clr	_P1_5
                                    768 ;	main.c:72: setSDA;
                                    769 ;	assignBit
      000130 D2 95            [12]  770 	setb	_P1_5
                                    771 ;	main.c:73: setSCL;
                                    772 ;	assignBit
      000132 D2 94            [12]  773 	setb	_P1_4
                                    774 ;	main.c:74: delay();
                                    775 ;	main.c:75: }
      000134 02 01 25         [24]  776 	ljmp	_delay
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'i2c_start'
                                    779 ;------------------------------------------------------------
                                    780 ;	main.c:76: void i2c_start()
                                    781 ;	-----------------------------------------
                                    782 ;	 function i2c_start
                                    783 ;	-----------------------------------------
      000137                        784 _i2c_start:
                                    785 ;	main.c:78: clearSDA;
                                    786 ;	assignBit
      000137 C2 95            [12]  787 	clr	_P1_5
                                    788 ;	main.c:79: delay();
      000139 12 01 25         [24]  789 	lcall	_delay
                                    790 ;	main.c:80: clearSCL;
                                    791 ;	assignBit
      00013C C2 94            [12]  792 	clr	_P1_4
                                    793 ;	main.c:81: delay();
                                    794 ;	main.c:83: }
      00013E 02 01 25         [24]  795 	ljmp	_delay
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'i2c_stop'
                                    798 ;------------------------------------------------------------
                                    799 ;	main.c:84: void i2c_stop()
                                    800 ;	-----------------------------------------
                                    801 ;	 function i2c_stop
                                    802 ;	-----------------------------------------
      000141                        803 _i2c_stop:
                                    804 ;	main.c:86: clearSDA;
                                    805 ;	assignBit
      000141 C2 95            [12]  806 	clr	_P1_5
                                    807 ;	main.c:87: setSCL;
                                    808 ;	assignBit
      000143 D2 94            [12]  809 	setb	_P1_4
                                    810 ;	main.c:88: delay();
      000145 12 01 25         [24]  811 	lcall	_delay
                                    812 ;	main.c:89: setSDA; //low to high transition of sda marks stop
                                    813 ;	assignBit
      000148 D2 95            [12]  814 	setb	_P1_5
                                    815 ;	main.c:90: delay();
                                    816 ;	main.c:92: }
      00014A 02 01 25         [24]  817 	ljmp	_delay
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'long_delay'
                                    820 ;------------------------------------------------------------
                                    821 ;i                         Allocated with name '_long_delay_i_131072_77'
                                    822 ;------------------------------------------------------------
                                    823 ;	main.c:93: void long_delay()
                                    824 ;	-----------------------------------------
                                    825 ;	 function long_delay
                                    826 ;	-----------------------------------------
      00014D                        827 _long_delay:
                                    828 ;	main.c:95: for(uint16_t i=800;i!=0;i--)
      00014D 7E 20            [12]  829 	mov	r6,#0x20
      00014F 7F 03            [12]  830 	mov	r7,#0x03
      000151                        831 00103$:
      000151 EE               [12]  832 	mov	a,r6
      000152 4F               [12]  833 	orl	a,r7
      000153 60 12            [24]  834 	jz	00105$
                                    835 ;	main.c:97: delay();
      000155 C0 07            [24]  836 	push	ar7
      000157 C0 06            [24]  837 	push	ar6
      000159 12 01 25         [24]  838 	lcall	_delay
      00015C D0 06            [24]  839 	pop	ar6
      00015E D0 07            [24]  840 	pop	ar7
                                    841 ;	main.c:95: for(uint16_t i=800;i!=0;i--)
      000160 1E               [12]  842 	dec	r6
      000161 BE FF 01         [24]  843 	cjne	r6,#0xff,00117$
      000164 1F               [12]  844 	dec	r7
      000165                        845 00117$:
      000165 80 EA            [24]  846 	sjmp	00103$
      000167                        847 00105$:
                                    848 ;	main.c:99: }
      000167 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'restart_i2c'
                                    852 ;------------------------------------------------------------
                                    853 ;	main.c:100: void restart_i2c()
                                    854 ;	-----------------------------------------
                                    855 ;	 function restart_i2c
                                    856 ;	-----------------------------------------
      000168                        857 _restart_i2c:
                                    858 ;	main.c:102: setSCL;
                                    859 ;	assignBit
      000168 D2 94            [12]  860 	setb	_P1_4
                                    861 ;	main.c:103: clearSDA;
                                    862 ;	assignBit
      00016A C2 95            [12]  863 	clr	_P1_5
                                    864 ;	main.c:104: delay();
      00016C 12 01 25         [24]  865 	lcall	_delay
                                    866 ;	main.c:105: clearSCL;
                                    867 ;	assignBit
      00016F C2 94            [12]  868 	clr	_P1_4
                                    869 ;	main.c:106: }
      000171 22               [24]  870 	ret
                                    871 ;------------------------------------------------------------
                                    872 ;Allocation info for local variables in function 'i2c_write'
                                    873 ;------------------------------------------------------------
                                    874 ;k                         Allocated with name '_i2c_write_k_65536_80'
                                    875 ;i                         Allocated with name '_i2c_write_i_131072_82'
                                    876 ;ack_check                 Allocated with name '_i2c_write_ack_check_65537_86'
                                    877 ;------------------------------------------------------------
                                    878 ;	main.c:108: int i2c_write(int k)
                                    879 ;	-----------------------------------------
                                    880 ;	 function i2c_write
                                    881 ;	-----------------------------------------
      000172                        882 _i2c_write:
      000172 AF 83            [24]  883 	mov	r7,dph
      000174 E5 82            [12]  884 	mov	a,dpl
      000176 90 00 06         [24]  885 	mov	dptr,#_i2c_write_k_65536_80
      000179 F0               [24]  886 	movx	@dptr,a
      00017A EF               [12]  887 	mov	a,r7
      00017B A3               [24]  888 	inc	dptr
      00017C F0               [24]  889 	movx	@dptr,a
                                    890 ;	main.c:112: for(int i=0; i<8; i++)
      00017D 7E 00            [12]  891 	mov	r6,#0x00
      00017F 7F 00            [12]  892 	mov	r7,#0x00
      000181                        893 00106$:
      000181 C3               [12]  894 	clr	c
      000182 EE               [12]  895 	mov	a,r6
      000183 94 08            [12]  896 	subb	a,#0x08
      000185 EF               [12]  897 	mov	a,r7
      000186 64 80            [12]  898 	xrl	a,#0x80
      000188 94 80            [12]  899 	subb	a,#0x80
      00018A 50 57            [24]  900 	jnc	00104$
                                    901 ;	main.c:115: if(k & 128)
      00018C 90 00 06         [24]  902 	mov	dptr,#_i2c_write_k_65536_80
      00018F E0               [24]  903 	movx	a,@dptr
      000190 FC               [12]  904 	mov	r4,a
      000191 A3               [24]  905 	inc	dptr
      000192 E0               [24]  906 	movx	a,@dptr
      000193 EC               [12]  907 	mov	a,r4
      000194 30 E7 13         [24]  908 	jnb	acc.7,00102$
                                    909 ;	main.c:117: setSDA;
                                    910 ;	assignBit
      000197 D2 95            [12]  911 	setb	_P1_5
                                    912 ;	main.c:118: setSCL;
                                    913 ;	assignBit
      000199 D2 94            [12]  914 	setb	_P1_4
                                    915 ;	main.c:119: delay();
      00019B C0 07            [24]  916 	push	ar7
      00019D C0 06            [24]  917 	push	ar6
      00019F 12 01 25         [24]  918 	lcall	_delay
      0001A2 D0 06            [24]  919 	pop	ar6
      0001A4 D0 07            [24]  920 	pop	ar7
                                    921 ;	main.c:120: clearSCL;
                                    922 ;	assignBit
      0001A6 C2 94            [12]  923 	clr	_P1_4
      0001A8 80 11            [24]  924 	sjmp	00103$
      0001AA                        925 00102$:
                                    926 ;	main.c:127: clearSDA;
                                    927 ;	assignBit
      0001AA C2 95            [12]  928 	clr	_P1_5
                                    929 ;	main.c:128: setSCL;
                                    930 ;	assignBit
      0001AC D2 94            [12]  931 	setb	_P1_4
                                    932 ;	main.c:129: delay();
      0001AE C0 07            [24]  933 	push	ar7
      0001B0 C0 06            [24]  934 	push	ar6
      0001B2 12 01 25         [24]  935 	lcall	_delay
      0001B5 D0 06            [24]  936 	pop	ar6
      0001B7 D0 07            [24]  937 	pop	ar7
                                    938 ;	main.c:130: clearSCL;
                                    939 ;	assignBit
      0001B9 C2 94            [12]  940 	clr	_P1_4
      0001BB                        941 00103$:
                                    942 ;	main.c:138: delay();
      0001BB C0 07            [24]  943 	push	ar7
      0001BD C0 06            [24]  944 	push	ar6
      0001BF 12 01 25         [24]  945 	lcall	_delay
      0001C2 D0 06            [24]  946 	pop	ar6
      0001C4 D0 07            [24]  947 	pop	ar7
                                    948 ;	main.c:139: k<<=1;
      0001C6 90 00 06         [24]  949 	mov	dptr,#_i2c_write_k_65536_80
      0001C9 E0               [24]  950 	movx	a,@dptr
      0001CA FC               [12]  951 	mov	r4,a
      0001CB A3               [24]  952 	inc	dptr
      0001CC E0               [24]  953 	movx	a,@dptr
      0001CD FD               [12]  954 	mov	r5,a
      0001CE EC               [12]  955 	mov	a,r4
      0001CF 2C               [12]  956 	add	a,r4
      0001D0 FC               [12]  957 	mov	r4,a
      0001D1 ED               [12]  958 	mov	a,r5
      0001D2 33               [12]  959 	rlc	a
      0001D3 FD               [12]  960 	mov	r5,a
      0001D4 90 00 06         [24]  961 	mov	dptr,#_i2c_write_k_65536_80
      0001D7 EC               [12]  962 	mov	a,r4
      0001D8 F0               [24]  963 	movx	@dptr,a
      0001D9 ED               [12]  964 	mov	a,r5
      0001DA A3               [24]  965 	inc	dptr
      0001DB F0               [24]  966 	movx	@dptr,a
                                    967 ;	main.c:112: for(int i=0; i<8; i++)
      0001DC 0E               [12]  968 	inc	r6
      0001DD BE 00 A1         [24]  969 	cjne	r6,#0x00,00106$
      0001E0 0F               [12]  970 	inc	r7
      0001E1 80 9E            [24]  971 	sjmp	00106$
      0001E3                        972 00104$:
                                    973 ;	main.c:142: setSDA;
                                    974 ;	assignBit
      0001E3 D2 95            [12]  975 	setb	_P1_5
                                    976 ;	main.c:145: __endasm;
      0001E5 00               [12]  977 	nop
                                    978 ;	main.c:146: setSCL;
                                    979 ;	assignBit
      0001E6 D2 94            [12]  980 	setb	_P1_4
                                    981 ;	main.c:148: ack_check |=P1_5;
      0001E8 A2 95            [12]  982 	mov	c,_P1_5
      0001EA E4               [12]  983 	clr	a
      0001EB 33               [12]  984 	rlc	a
      0001EC FE               [12]  985 	mov	r6,a
      0001ED 7F 00            [12]  986 	mov	r7,#0x00
                                    987 ;	main.c:150: delay();
      0001EF C0 07            [24]  988 	push	ar7
      0001F1 C0 06            [24]  989 	push	ar6
      0001F3 12 01 25         [24]  990 	lcall	_delay
      0001F6 D0 06            [24]  991 	pop	ar6
      0001F8 D0 07            [24]  992 	pop	ar7
                                    993 ;	main.c:151: clearSCL;
                                    994 ;	assignBit
      0001FA C2 94            [12]  995 	clr	_P1_4
                                    996 ;	main.c:152: return ack_check;
      0001FC 8E 82            [24]  997 	mov	dpl,r6
      0001FE 8F 83            [24]  998 	mov	dph,r7
                                    999 ;	main.c:153: }
      000200 22               [24] 1000 	ret
                                   1001 ;------------------------------------------------------------
                                   1002 ;Allocation info for local variables in function 'i2c_ack'
                                   1003 ;------------------------------------------------------------
                                   1004 ;	main.c:154: void i2c_ack()
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function i2c_ack
                                   1007 ;	-----------------------------------------
      000201                       1008 _i2c_ack:
                                   1009 ;	main.c:156: clearSDA;
                                   1010 ;	assignBit
      000201 C2 95            [12] 1011 	clr	_P1_5
                                   1012 ;	main.c:157: delay();
      000203 12 01 25         [24] 1013 	lcall	_delay
                                   1014 ;	main.c:158: setSCL;
                                   1015 ;	assignBit
      000206 D2 94            [12] 1016 	setb	_P1_4
                                   1017 ;	main.c:159: delay();
      000208 12 01 25         [24] 1018 	lcall	_delay
                                   1019 ;	main.c:160: clearSCL;
                                   1020 ;	assignBit
      00020B C2 94            [12] 1021 	clr	_P1_4
                                   1022 ;	main.c:161: setSDA;
                                   1023 ;	assignBit
      00020D D2 95            [12] 1024 	setb	_P1_5
                                   1025 ;	main.c:162: }
      00020F 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'i2c_nack'
                                   1029 ;------------------------------------------------------------
                                   1030 ;	main.c:163: void i2c_nack()
                                   1031 ;	-----------------------------------------
                                   1032 ;	 function i2c_nack
                                   1033 ;	-----------------------------------------
      000210                       1034 _i2c_nack:
                                   1035 ;	main.c:165: setSCL;
                                   1036 ;	assignBit
      000210 D2 94            [12] 1037 	setb	_P1_4
                                   1038 ;	main.c:166: delay();
      000212 12 01 25         [24] 1039 	lcall	_delay
                                   1040 ;	main.c:167: setSDA;
                                   1041 ;	assignBit
      000215 D2 95            [12] 1042 	setb	_P1_5
                                   1043 ;	main.c:168: clearSCL;
                                   1044 ;	assignBit
      000217 C2 94            [12] 1045 	clr	_P1_4
                                   1046 ;	main.c:169: delay();
                                   1047 ;	main.c:170: }
      000219 02 01 25         [24] 1048 	ljmp	_delay
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'i2c_read'
                                   1051 ;------------------------------------------------------------
                                   1052 ;reader                    Allocated with name '_i2c_read_reader_65536_89'
                                   1053 ;i                         Allocated with name '_i2c_read_i_131072_90'
                                   1054 ;------------------------------------------------------------
                                   1055 ;	main.c:171: int i2c_read()
                                   1056 ;	-----------------------------------------
                                   1057 ;	 function i2c_read
                                   1058 ;	-----------------------------------------
      00021C                       1059 _i2c_read:
                                   1060 ;	main.c:173: int reader=0;
      00021C 90 00 08         [24] 1061 	mov	dptr,#_i2c_read_reader_65536_89
      00021F E4               [12] 1062 	clr	a
      000220 F0               [24] 1063 	movx	@dptr,a
      000221 A3               [24] 1064 	inc	dptr
      000222 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	main.c:174: setSDA;
                                   1067 ;	assignBit
      000223 D2 95            [12] 1068 	setb	_P1_5
                                   1069 ;	main.c:176: for (int i=0; i<8; i++)
      000225 7E 00            [12] 1070 	mov	r6,#0x00
      000227 7F 00            [12] 1071 	mov	r7,#0x00
      000229                       1072 00103$:
      000229 C3               [12] 1073 	clr	c
      00022A EE               [12] 1074 	mov	a,r6
      00022B 94 08            [12] 1075 	subb	a,#0x08
      00022D EF               [12] 1076 	mov	a,r7
      00022E 64 80            [12] 1077 	xrl	a,#0x80
      000230 94 80            [12] 1078 	subb	a,#0x80
      000232 50 48            [24] 1079 	jnc	00101$
                                   1080 ;	main.c:178: reader<<=1;
      000234 90 00 08         [24] 1081 	mov	dptr,#_i2c_read_reader_65536_89
      000237 E0               [24] 1082 	movx	a,@dptr
      000238 FC               [12] 1083 	mov	r4,a
      000239 A3               [24] 1084 	inc	dptr
      00023A E0               [24] 1085 	movx	a,@dptr
      00023B FD               [12] 1086 	mov	r5,a
      00023C EC               [12] 1087 	mov	a,r4
      00023D 2C               [12] 1088 	add	a,r4
      00023E FC               [12] 1089 	mov	r4,a
      00023F ED               [12] 1090 	mov	a,r5
      000240 33               [12] 1091 	rlc	a
      000241 FD               [12] 1092 	mov	r5,a
      000242 90 00 08         [24] 1093 	mov	dptr,#_i2c_read_reader_65536_89
      000245 EC               [12] 1094 	mov	a,r4
      000246 F0               [24] 1095 	movx	@dptr,a
      000247 ED               [12] 1096 	mov	a,r5
      000248 A3               [24] 1097 	inc	dptr
      000249 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	main.c:179: setSCL;
                                   1100 ;	assignBit
      00024A D2 94            [12] 1101 	setb	_P1_4
                                   1102 ;	main.c:180: delay();
      00024C C0 07            [24] 1103 	push	ar7
      00024E C0 06            [24] 1104 	push	ar6
      000250 12 01 25         [24] 1105 	lcall	_delay
                                   1106 ;	main.c:181: reader |=P1_5;
      000253 90 00 08         [24] 1107 	mov	dptr,#_i2c_read_reader_65536_89
      000256 E0               [24] 1108 	movx	a,@dptr
      000257 FC               [12] 1109 	mov	r4,a
      000258 A3               [24] 1110 	inc	dptr
      000259 E0               [24] 1111 	movx	a,@dptr
      00025A FD               [12] 1112 	mov	r5,a
      00025B A2 95            [12] 1113 	mov	c,_P1_5
      00025D E4               [12] 1114 	clr	a
      00025E 33               [12] 1115 	rlc	a
      00025F FA               [12] 1116 	mov	r2,a
      000260 7B 00            [12] 1117 	mov	r3,#0x00
      000262 90 00 08         [24] 1118 	mov	dptr,#_i2c_read_reader_65536_89
      000265 EA               [12] 1119 	mov	a,r2
      000266 4C               [12] 1120 	orl	a,r4
      000267 F0               [24] 1121 	movx	@dptr,a
      000268 EB               [12] 1122 	mov	a,r3
      000269 4D               [12] 1123 	orl	a,r5
      00026A A3               [24] 1124 	inc	dptr
      00026B F0               [24] 1125 	movx	@dptr,a
                                   1126 ;	main.c:182: clearSCL;
                                   1127 ;	assignBit
      00026C C2 94            [12] 1128 	clr	_P1_4
                                   1129 ;	main.c:183: delay();
      00026E 12 01 25         [24] 1130 	lcall	_delay
      000271 D0 06            [24] 1131 	pop	ar6
      000273 D0 07            [24] 1132 	pop	ar7
                                   1133 ;	main.c:176: for (int i=0; i<8; i++)
      000275 0E               [12] 1134 	inc	r6
      000276 BE 00 B0         [24] 1135 	cjne	r6,#0x00,00103$
      000279 0F               [12] 1136 	inc	r7
      00027A 80 AD            [24] 1137 	sjmp	00103$
      00027C                       1138 00101$:
                                   1139 ;	main.c:189: return reader;
      00027C 90 00 08         [24] 1140 	mov	dptr,#_i2c_read_reader_65536_89
      00027F E0               [24] 1141 	movx	a,@dptr
      000280 FE               [12] 1142 	mov	r6,a
      000281 A3               [24] 1143 	inc	dptr
      000282 E0               [24] 1144 	movx	a,@dptr
                                   1145 ;	main.c:191: }
      000283 8E 82            [24] 1146 	mov	dpl,r6
      000285 F5 83            [12] 1147 	mov	dph,a
      000287 22               [24] 1148 	ret
                                   1149 ;------------------------------------------------------------
                                   1150 ;Allocation info for local variables in function 'byte_write'
                                   1151 ;------------------------------------------------------------
                                   1152 ;byte_address              Allocated with name '_byte_write_PARM_2'
                                   1153 ;writedata                 Allocated with name '_byte_write_PARM_3'
                                   1154 ;controlcode               Allocated with name '_byte_write_controlcode_65536_92'
                                   1155 ;t                         Allocated with name '_byte_write_t_65537_94'
                                   1156 ;------------------------------------------------------------
                                   1157 ;	main.c:192: void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function byte_write
                                   1160 ;	-----------------------------------------
      000288                       1161 _byte_write:
      000288 E5 82            [12] 1162 	mov	a,dpl
      00028A 90 00 0C         [24] 1163 	mov	dptr,#_byte_write_controlcode_65536_92
      00028D F0               [24] 1164 	movx	@dptr,a
                                   1165 ;	main.c:194: restart_i2c();
      00028E 12 01 68         [24] 1166 	lcall	_restart_i2c
                                   1167 ;	main.c:195: i2c_write(controlcode);
      000291 90 00 0C         [24] 1168 	mov	dptr,#_byte_write_controlcode_65536_92
      000294 E0               [24] 1169 	movx	a,@dptr
      000295 FE               [12] 1170 	mov	r6,a
      000296 7F 00            [12] 1171 	mov	r7,#0x00
      000298 8E 82            [24] 1172 	mov	dpl,r6
      00029A 8F 83            [24] 1173 	mov	dph,r7
      00029C C0 07            [24] 1174 	push	ar7
      00029E C0 06            [24] 1175 	push	ar6
      0002A0 12 01 72         [24] 1176 	lcall	_i2c_write
                                   1177 ;	main.c:196: delay();
      0002A3 12 01 25         [24] 1178 	lcall	_delay
                                   1179 ;	main.c:197: i2c_write(byte_address);
      0002A6 90 00 0A         [24] 1180 	mov	dptr,#_byte_write_PARM_2
      0002A9 E0               [24] 1181 	movx	a,@dptr
      0002AA FD               [12] 1182 	mov	r5,a
      0002AB 7C 00            [12] 1183 	mov	r4,#0x00
      0002AD 8D 82            [24] 1184 	mov	dpl,r5
      0002AF 8C 83            [24] 1185 	mov	dph,r4
      0002B1 12 01 72         [24] 1186 	lcall	_i2c_write
                                   1187 ;	main.c:198: delay();
      0002B4 12 01 25         [24] 1188 	lcall	_delay
                                   1189 ;	main.c:199: i2c_write(writedata);
      0002B7 90 00 0B         [24] 1190 	mov	dptr,#_byte_write_PARM_3
      0002BA E0               [24] 1191 	movx	a,@dptr
      0002BB FD               [12] 1192 	mov	r5,a
      0002BC 7C 00            [12] 1193 	mov	r4,#0x00
      0002BE 8D 82            [24] 1194 	mov	dpl,r5
      0002C0 8C 83            [24] 1195 	mov	dph,r4
      0002C2 12 01 72         [24] 1196 	lcall	_i2c_write
                                   1197 ;	main.c:200: delay();
      0002C5 12 01 25         [24] 1198 	lcall	_delay
                                   1199 ;	main.c:201: i2c_stop();
      0002C8 12 01 41         [24] 1200 	lcall	_i2c_stop
                                   1201 ;	main.c:202: long_delay();
      0002CB 12 01 4D         [24] 1202 	lcall	_long_delay
      0002CE D0 06            [24] 1203 	pop	ar6
      0002D0 D0 07            [24] 1204 	pop	ar7
                                   1205 ;	main.c:204: int t=1;
      0002D2 90 00 0D         [24] 1206 	mov	dptr,#_byte_write_t_65537_94
      0002D5 74 01            [12] 1207 	mov	a,#0x01
      0002D7 F0               [24] 1208 	movx	@dptr,a
      0002D8 E4               [12] 1209 	clr	a
      0002D9 A3               [24] 1210 	inc	dptr
      0002DA F0               [24] 1211 	movx	@dptr,a
                                   1212 ;	main.c:205: while(t) //ack polling
      0002DB                       1213 00101$:
      0002DB 90 00 0D         [24] 1214 	mov	dptr,#_byte_write_t_65537_94
      0002DE E0               [24] 1215 	movx	a,@dptr
      0002DF F5 F0            [12] 1216 	mov	b,a
      0002E1 A3               [24] 1217 	inc	dptr
      0002E2 E0               [24] 1218 	movx	a,@dptr
      0002E3 45 F0            [12] 1219 	orl	a,b
      0002E5 60 2C            [24] 1220 	jz	00103$
                                   1221 ;	main.c:208: restart_i2c();
      0002E7 C0 07            [24] 1222 	push	ar7
      0002E9 C0 06            [24] 1223 	push	ar6
      0002EB 12 01 68         [24] 1224 	lcall	_restart_i2c
      0002EE D0 06            [24] 1225 	pop	ar6
      0002F0 D0 07            [24] 1226 	pop	ar7
                                   1227 ;	main.c:209: t=i2c_write(controlcode);
      0002F2 8E 82            [24] 1228 	mov	dpl,r6
      0002F4 8F 83            [24] 1229 	mov	dph,r7
      0002F6 C0 07            [24] 1230 	push	ar7
      0002F8 C0 06            [24] 1231 	push	ar6
      0002FA 12 01 72         [24] 1232 	lcall	_i2c_write
      0002FD E5 82            [12] 1233 	mov	a,dpl
      0002FF 85 83 F0         [24] 1234 	mov	b,dph
      000302 90 00 0D         [24] 1235 	mov	dptr,#_byte_write_t_65537_94
      000305 F0               [24] 1236 	movx	@dptr,a
      000306 E5 F0            [12] 1237 	mov	a,b
      000308 A3               [24] 1238 	inc	dptr
      000309 F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	main.c:210: delay();
      00030A 12 01 25         [24] 1241 	lcall	_delay
      00030D D0 06            [24] 1242 	pop	ar6
      00030F D0 07            [24] 1243 	pop	ar7
      000311 80 C8            [24] 1244 	sjmp	00101$
      000313                       1245 00103$:
                                   1246 ;	main.c:212: i2c_stop();
                                   1247 ;	main.c:213: }
      000313 02 01 41         [24] 1248 	ljmp	_i2c_stop
                                   1249 ;------------------------------------------------------------
                                   1250 ;Allocation info for local variables in function 'random_read'
                                   1251 ;------------------------------------------------------------
                                   1252 ;byte_address              Allocated with name '_random_read_PARM_2'
                                   1253 ;controlcode               Allocated with name '_random_read_controlcode_65536_96'
                                   1254 ;s                         Allocated with name '_random_read_s_65537_98'
                                   1255 ;------------------------------------------------------------
                                   1256 ;	main.c:216: void random_read(uint8_t controlcode,uint8_t byte_address)
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function random_read
                                   1259 ;	-----------------------------------------
      000316                       1260 _random_read:
      000316 E5 82            [12] 1261 	mov	a,dpl
      000318 90 00 10         [24] 1262 	mov	dptr,#_random_read_controlcode_65536_96
      00031B F0               [24] 1263 	movx	@dptr,a
                                   1264 ;	main.c:218: restart_i2c();
      00031C 12 01 68         [24] 1265 	lcall	_restart_i2c
                                   1266 ;	main.c:219: i2c_write(controlcode);delay();
      00031F 90 00 10         [24] 1267 	mov	dptr,#_random_read_controlcode_65536_96
      000322 E0               [24] 1268 	movx	a,@dptr
      000323 FF               [12] 1269 	mov	r7,a
      000324 7E 00            [12] 1270 	mov	r6,#0x00
      000326 8F 82            [24] 1271 	mov	dpl,r7
      000328 8E 83            [24] 1272 	mov	dph,r6
      00032A C0 07            [24] 1273 	push	ar7
      00032C C0 06            [24] 1274 	push	ar6
      00032E 12 01 72         [24] 1275 	lcall	_i2c_write
      000331 12 01 25         [24] 1276 	lcall	_delay
                                   1277 ;	main.c:220: i2c_write(byte_address);delay();
      000334 90 00 0F         [24] 1278 	mov	dptr,#_random_read_PARM_2
      000337 E0               [24] 1279 	movx	a,@dptr
      000338 FD               [12] 1280 	mov	r5,a
      000339 7C 00            [12] 1281 	mov	r4,#0x00
      00033B 8D 82            [24] 1282 	mov	dpl,r5
      00033D 8C 83            [24] 1283 	mov	dph,r4
      00033F 12 01 72         [24] 1284 	lcall	_i2c_write
      000342 12 01 25         [24] 1285 	lcall	_delay
                                   1286 ;	main.c:221: restart_i2c();
      000345 12 01 68         [24] 1287 	lcall	_restart_i2c
      000348 D0 06            [24] 1288 	pop	ar6
      00034A D0 07            [24] 1289 	pop	ar7
                                   1290 ;	main.c:222: i2c_write((controlcode+1)); //change to read operation
      00034C 0F               [12] 1291 	inc	r7
      00034D BF 00 01         [24] 1292 	cjne	r7,#0x00,00103$
      000350 0E               [12] 1293 	inc	r6
      000351                       1294 00103$:
      000351 8F 82            [24] 1295 	mov	dpl,r7
      000353 8E 83            [24] 1296 	mov	dph,r6
      000355 12 01 72         [24] 1297 	lcall	_i2c_write
                                   1298 ;	main.c:224: s=i2c_read();
      000358 12 02 1C         [24] 1299 	lcall	_i2c_read
      00035B AE 82            [24] 1300 	mov	r6,dpl
      00035D AF 83            [24] 1301 	mov	r7,dph
                                   1302 ;	main.c:225: i2c_nack();
      00035F C0 07            [24] 1303 	push	ar7
      000361 C0 06            [24] 1304 	push	ar6
      000363 12 02 10         [24] 1305 	lcall	_i2c_nack
      000366 D0 06            [24] 1306 	pop	ar6
      000368 D0 07            [24] 1307 	pop	ar7
                                   1308 ;	main.c:226: putchar(s);
      00036A 8E 82            [24] 1309 	mov	dpl,r6
      00036C 8F 83            [24] 1310 	mov	dph,r7
      00036E 12 00 62         [24] 1311 	lcall	_putchar
                                   1312 ;	main.c:227: i2c_stop();
      000371 12 01 41         [24] 1313 	lcall	_i2c_stop
                                   1314 ;	main.c:228: putchar('\n');
      000374 90 00 0A         [24] 1315 	mov	dptr,#0x000a
      000377 12 00 62         [24] 1316 	lcall	_putchar
                                   1317 ;	main.c:229: putchar('\r'); long_delay();
      00037A 90 00 0D         [24] 1318 	mov	dptr,#0x000d
      00037D 12 00 62         [24] 1319 	lcall	_putchar
                                   1320 ;	main.c:231: }
      000380 02 01 4D         [24] 1321 	ljmp	_long_delay
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'main'
                                   1324 ;------------------------------------------------------------
                                   1325 ;s                         Allocated with name '_main_s_131073_102'
                                   1326 ;------------------------------------------------------------
                                   1327 ;	main.c:232: void main(void)
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function main
                                   1330 ;	-----------------------------------------
      000383                       1331 _main:
                                   1332 ;	main.c:234: while(1)
      000383                       1333 00102$:
                                   1334 ;	main.c:236: i2c_reset();
      000383 12 01 2C         [24] 1335 	lcall	_i2c_reset
                                   1336 ;	main.c:237: byte_write(0xA0,0x01,'b');
      000386 90 00 0A         [24] 1337 	mov	dptr,#_byte_write_PARM_2
      000389 74 01            [12] 1338 	mov	a,#0x01
      00038B F0               [24] 1339 	movx	@dptr,a
      00038C 90 00 0B         [24] 1340 	mov	dptr,#_byte_write_PARM_3
      00038F 74 62            [12] 1341 	mov	a,#0x62
      000391 F0               [24] 1342 	movx	@dptr,a
      000392 75 82 A0         [24] 1343 	mov	dpl,#0xa0
      000395 12 02 88         [24] 1344 	lcall	_byte_write
                                   1345 ;	main.c:238: byte_write(0xA0,0x02,'c');
      000398 90 00 0A         [24] 1346 	mov	dptr,#_byte_write_PARM_2
      00039B 74 02            [12] 1347 	mov	a,#0x02
      00039D F0               [24] 1348 	movx	@dptr,a
      00039E 90 00 0B         [24] 1349 	mov	dptr,#_byte_write_PARM_3
      0003A1 74 63            [12] 1350 	mov	a,#0x63
      0003A3 F0               [24] 1351 	movx	@dptr,a
      0003A4 75 82 A0         [24] 1352 	mov	dpl,#0xa0
      0003A7 12 02 88         [24] 1353 	lcall	_byte_write
                                   1354 ;	main.c:239: restart_i2c();
      0003AA 12 01 68         [24] 1355 	lcall	_restart_i2c
                                   1356 ;	main.c:240: i2c_write(0xA0);delay();
      0003AD 90 00 A0         [24] 1357 	mov	dptr,#0x00a0
      0003B0 12 01 72         [24] 1358 	lcall	_i2c_write
      0003B3 12 01 25         [24] 1359 	lcall	_delay
                                   1360 ;	main.c:241: i2c_write(0x01);delay();
      0003B6 90 00 01         [24] 1361 	mov	dptr,#0x0001
      0003B9 12 01 72         [24] 1362 	lcall	_i2c_write
      0003BC 12 01 25         [24] 1363 	lcall	_delay
                                   1364 ;	main.c:242: restart_i2c();
      0003BF 12 01 68         [24] 1365 	lcall	_restart_i2c
                                   1366 ;	main.c:243: i2c_write((0xA1)); //change to read operation
      0003C2 90 00 A1         [24] 1367 	mov	dptr,#0x00a1
      0003C5 12 01 72         [24] 1368 	lcall	_i2c_write
                                   1369 ;	main.c:245: s=i2c_read();
      0003C8 12 02 1C         [24] 1370 	lcall	_i2c_read
      0003CB AE 82            [24] 1371 	mov	r6,dpl
      0003CD AF 83            [24] 1372 	mov	r7,dph
                                   1373 ;	main.c:246: i2c_ack();
      0003CF C0 07            [24] 1374 	push	ar7
      0003D1 C0 06            [24] 1375 	push	ar6
      0003D3 12 02 01         [24] 1376 	lcall	_i2c_ack
      0003D6 D0 06            [24] 1377 	pop	ar6
      0003D8 D0 07            [24] 1378 	pop	ar7
                                   1379 ;	main.c:247: putchar(s);
      0003DA 8E 82            [24] 1380 	mov	dpl,r6
      0003DC 8F 83            [24] 1381 	mov	dph,r7
      0003DE 12 00 62         [24] 1382 	lcall	_putchar
                                   1383 ;	main.c:248: s=i2c_read();
      0003E1 12 02 1C         [24] 1384 	lcall	_i2c_read
      0003E4 AE 82            [24] 1385 	mov	r6,dpl
      0003E6 AF 83            [24] 1386 	mov	r7,dph
                                   1387 ;	main.c:249: i2c_nack();
      0003E8 C0 07            [24] 1388 	push	ar7
      0003EA C0 06            [24] 1389 	push	ar6
      0003EC 12 02 10         [24] 1390 	lcall	_i2c_nack
      0003EF D0 06            [24] 1391 	pop	ar6
      0003F1 D0 07            [24] 1392 	pop	ar7
                                   1393 ;	main.c:250: putchar(s);
      0003F3 8E 82            [24] 1394 	mov	dpl,r6
      0003F5 8F 83            [24] 1395 	mov	dph,r7
      0003F7 12 00 62         [24] 1396 	lcall	_putchar
                                   1397 ;	main.c:251: i2c_stop();
      0003FA 12 01 41         [24] 1398 	lcall	_i2c_stop
                                   1399 ;	main.c:263: }
      0003FD 02 03 83         [24] 1400 	ljmp	00102$
                                   1401 	.area CSEG    (CODE)
                                   1402 	.area CONST   (CODE)
                                   1403 	.area XINIT   (CODE)
                                   1404 	.area CABS    (ABS,CODE)
