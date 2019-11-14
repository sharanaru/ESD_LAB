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
                                     12 	.globl _randomread_handler
                                     13 	.globl _writebytehandler
                                     14 	.globl _readint
                                     15 	.globl _putstr
                                     16 	.globl _strtohex
                                     17 	.globl _seq_read
                                     18 	.globl _random_read
                                     19 	.globl _byte_write
                                     20 	.globl _i2c_nack
                                     21 	.globl _i2c_write
                                     22 	.globl _restart_i2c
                                     23 	.globl _i2c_stop
                                     24 	.globl _i2c_reset
                                     25 	.globl _toupper
                                     26 	.globl _gets
                                     27 	.globl _printf
                                     28 	.globl _atoi
                                     29 	.globl _P5_7
                                     30 	.globl _P5_6
                                     31 	.globl _P5_5
                                     32 	.globl _P5_4
                                     33 	.globl _P5_3
                                     34 	.globl _P5_2
                                     35 	.globl _P5_1
                                     36 	.globl _P5_0
                                     37 	.globl _P4_7
                                     38 	.globl _P4_6
                                     39 	.globl _P4_5
                                     40 	.globl _P4_4
                                     41 	.globl _P4_3
                                     42 	.globl _P4_2
                                     43 	.globl _P4_1
                                     44 	.globl _P4_0
                                     45 	.globl _PX0L
                                     46 	.globl _PT0L
                                     47 	.globl _PX1L
                                     48 	.globl _PT1L
                                     49 	.globl _PSL
                                     50 	.globl _PT2L
                                     51 	.globl _PPCL
                                     52 	.globl _EC
                                     53 	.globl _CCF0
                                     54 	.globl _CCF1
                                     55 	.globl _CCF2
                                     56 	.globl _CCF3
                                     57 	.globl _CCF4
                                     58 	.globl _CR
                                     59 	.globl _CF
                                     60 	.globl _TF2
                                     61 	.globl _EXF2
                                     62 	.globl _RCLK
                                     63 	.globl _TCLK
                                     64 	.globl _EXEN2
                                     65 	.globl _TR2
                                     66 	.globl _C_T2
                                     67 	.globl _CP_RL2
                                     68 	.globl _T2CON_7
                                     69 	.globl _T2CON_6
                                     70 	.globl _T2CON_5
                                     71 	.globl _T2CON_4
                                     72 	.globl _T2CON_3
                                     73 	.globl _T2CON_2
                                     74 	.globl _T2CON_1
                                     75 	.globl _T2CON_0
                                     76 	.globl _PT2
                                     77 	.globl _ET2
                                     78 	.globl _CY
                                     79 	.globl _AC
                                     80 	.globl _F0
                                     81 	.globl _RS1
                                     82 	.globl _RS0
                                     83 	.globl _OV
                                     84 	.globl _F1
                                     85 	.globl _P
                                     86 	.globl _PS
                                     87 	.globl _PT1
                                     88 	.globl _PX1
                                     89 	.globl _PT0
                                     90 	.globl _PX0
                                     91 	.globl _RD
                                     92 	.globl _WR
                                     93 	.globl _T1
                                     94 	.globl _T0
                                     95 	.globl _INT1
                                     96 	.globl _INT0
                                     97 	.globl _TXD
                                     98 	.globl _RXD
                                     99 	.globl _P3_7
                                    100 	.globl _P3_6
                                    101 	.globl _P3_5
                                    102 	.globl _P3_4
                                    103 	.globl _P3_3
                                    104 	.globl _P3_2
                                    105 	.globl _P3_1
                                    106 	.globl _P3_0
                                    107 	.globl _EA
                                    108 	.globl _ES
                                    109 	.globl _ET1
                                    110 	.globl _EX1
                                    111 	.globl _ET0
                                    112 	.globl _EX0
                                    113 	.globl _P2_7
                                    114 	.globl _P2_6
                                    115 	.globl _P2_5
                                    116 	.globl _P2_4
                                    117 	.globl _P2_3
                                    118 	.globl _P2_2
                                    119 	.globl _P2_1
                                    120 	.globl _P2_0
                                    121 	.globl _SM0
                                    122 	.globl _SM1
                                    123 	.globl _SM2
                                    124 	.globl _REN
                                    125 	.globl _TB8
                                    126 	.globl _RB8
                                    127 	.globl _TI
                                    128 	.globl _RI
                                    129 	.globl _P1_7
                                    130 	.globl _P1_6
                                    131 	.globl _P1_5
                                    132 	.globl _P1_4
                                    133 	.globl _P1_3
                                    134 	.globl _P1_2
                                    135 	.globl _P1_1
                                    136 	.globl _P1_0
                                    137 	.globl _TF1
                                    138 	.globl _TR1
                                    139 	.globl _TF0
                                    140 	.globl _TR0
                                    141 	.globl _IE1
                                    142 	.globl _IT1
                                    143 	.globl _IE0
                                    144 	.globl _IT0
                                    145 	.globl _P0_7
                                    146 	.globl _P0_6
                                    147 	.globl _P0_5
                                    148 	.globl _P0_4
                                    149 	.globl _P0_3
                                    150 	.globl _P0_2
                                    151 	.globl _P0_1
                                    152 	.globl _P0_0
                                    153 	.globl _EECON
                                    154 	.globl _KBF
                                    155 	.globl _KBE
                                    156 	.globl _KBLS
                                    157 	.globl _BRL
                                    158 	.globl _BDRCON
                                    159 	.globl _T2MOD
                                    160 	.globl _SPDAT
                                    161 	.globl _SPSTA
                                    162 	.globl _SPCON
                                    163 	.globl _SADEN
                                    164 	.globl _SADDR
                                    165 	.globl _WDTPRG
                                    166 	.globl _WDTRST
                                    167 	.globl _P5
                                    168 	.globl _P4
                                    169 	.globl _IPH1
                                    170 	.globl _IPL1
                                    171 	.globl _IPH0
                                    172 	.globl _IPL0
                                    173 	.globl _IEN1
                                    174 	.globl _IEN0
                                    175 	.globl _CMOD
                                    176 	.globl _CL
                                    177 	.globl _CH
                                    178 	.globl _CCON
                                    179 	.globl _CCAPM4
                                    180 	.globl _CCAPM3
                                    181 	.globl _CCAPM2
                                    182 	.globl _CCAPM1
                                    183 	.globl _CCAPM0
                                    184 	.globl _CCAP4L
                                    185 	.globl _CCAP3L
                                    186 	.globl _CCAP2L
                                    187 	.globl _CCAP1L
                                    188 	.globl _CCAP0L
                                    189 	.globl _CCAP4H
                                    190 	.globl _CCAP3H
                                    191 	.globl _CCAP2H
                                    192 	.globl _CCAP1H
                                    193 	.globl _CCAP0H
                                    194 	.globl _CKCON1
                                    195 	.globl _CKCON0
                                    196 	.globl _CKRL
                                    197 	.globl _AUXR1
                                    198 	.globl _AUXR
                                    199 	.globl _TH2
                                    200 	.globl _TL2
                                    201 	.globl _RCAP2H
                                    202 	.globl _RCAP2L
                                    203 	.globl _T2CON
                                    204 	.globl _B
                                    205 	.globl _ACC
                                    206 	.globl _PSW
                                    207 	.globl _IP
                                    208 	.globl _P3
                                    209 	.globl _IE
                                    210 	.globl _P2
                                    211 	.globl _SBUF
                                    212 	.globl _SCON
                                    213 	.globl _P1
                                    214 	.globl _TH1
                                    215 	.globl _TH0
                                    216 	.globl _TL1
                                    217 	.globl _TL0
                                    218 	.globl _TMOD
                                    219 	.globl _TCON
                                    220 	.globl _PCON
                                    221 	.globl _DPH
                                    222 	.globl _DPL
                                    223 	.globl _SP
                                    224 	.globl _P0
                                    225 	.globl _addressreceiver
                                    226 	.globl _errorflag
                                    227 	.globl _control
                                    228 	.globl _output
                                    229 	.globl _menuselect
                                    230 	.globl _putchar
                                    231 	.globl _getchar
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0	=	0x0080
                           000081   238 _SP	=	0x0081
                           000082   239 _DPL	=	0x0082
                           000083   240 _DPH	=	0x0083
                           000087   241 _PCON	=	0x0087
                           000088   242 _TCON	=	0x0088
                           000089   243 _TMOD	=	0x0089
                           00008A   244 _TL0	=	0x008a
                           00008B   245 _TL1	=	0x008b
                           00008C   246 _TH0	=	0x008c
                           00008D   247 _TH1	=	0x008d
                           000090   248 _P1	=	0x0090
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           0000A0   251 _P2	=	0x00a0
                           0000A8   252 _IE	=	0x00a8
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 _IP	=	0x00b8
                           0000D0   255 _PSW	=	0x00d0
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P0_0	=	0x0080
                           000081   315 _P0_1	=	0x0081
                           000082   316 _P0_2	=	0x0082
                           000083   317 _P0_3	=	0x0083
                           000084   318 _P0_4	=	0x0084
                           000085   319 _P0_5	=	0x0085
                           000086   320 _P0_6	=	0x0086
                           000087   321 _P0_7	=	0x0087
                           000088   322 _IT0	=	0x0088
                           000089   323 _IE0	=	0x0089
                           00008A   324 _IT1	=	0x008a
                           00008B   325 _IE1	=	0x008b
                           00008C   326 _TR0	=	0x008c
                           00008D   327 _TF0	=	0x008d
                           00008E   328 _TR1	=	0x008e
                           00008F   329 _TF1	=	0x008f
                           000090   330 _P1_0	=	0x0090
                           000091   331 _P1_1	=	0x0091
                           000092   332 _P1_2	=	0x0092
                           000093   333 _P1_3	=	0x0093
                           000094   334 _P1_4	=	0x0094
                           000095   335 _P1_5	=	0x0095
                           000096   336 _P1_6	=	0x0096
                           000097   337 _P1_7	=	0x0097
                           000098   338 _RI	=	0x0098
                           000099   339 _TI	=	0x0099
                           00009A   340 _RB8	=	0x009a
                           00009B   341 _TB8	=	0x009b
                           00009C   342 _REN	=	0x009c
                           00009D   343 _SM2	=	0x009d
                           00009E   344 _SM1	=	0x009e
                           00009F   345 _SM0	=	0x009f
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000A8   354 _EX0	=	0x00a8
                           0000A9   355 _ET0	=	0x00a9
                           0000AA   356 _EX1	=	0x00aa
                           0000AB   357 _ET1	=	0x00ab
                           0000AC   358 _ES	=	0x00ac
                           0000AF   359 _EA	=	0x00af
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B1   369 _TXD	=	0x00b1
                           0000B2   370 _INT0	=	0x00b2
                           0000B3   371 _INT1	=	0x00b3
                           0000B4   372 _T0	=	0x00b4
                           0000B5   373 _T1	=	0x00b5
                           0000B6   374 _WR	=	0x00b6
                           0000B7   375 _RD	=	0x00b7
                           0000B8   376 _PX0	=	0x00b8
                           0000B9   377 _PT0	=	0x00b9
                           0000BA   378 _PX1	=	0x00ba
                           0000BB   379 _PT1	=	0x00bb
                           0000BC   380 _PS	=	0x00bc
                           0000D0   381 _P	=	0x00d0
                           0000D1   382 _F1	=	0x00d1
                           0000D2   383 _OV	=	0x00d2
                           0000D3   384 _RS0	=	0x00d3
                           0000D4   385 _RS1	=	0x00d4
                           0000D5   386 _F0	=	0x00d5
                           0000D6   387 _AC	=	0x00d6
                           0000D7   388 _CY	=	0x00d7
                           0000AD   389 _ET2	=	0x00ad
                           0000BD   390 _PT2	=	0x00bd
                           0000C8   391 _T2CON_0	=	0x00c8
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 _T2CON_2	=	0x00ca
                           0000CB   394 _T2CON_3	=	0x00cb
                           0000CC   395 _T2CON_4	=	0x00cc
                           0000CD   396 _T2CON_5	=	0x00cd
                           0000CE   397 _T2CON_6	=	0x00ce
                           0000CF   398 _T2CON_7	=	0x00cf
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000DF   407 _CF	=	0x00df
                           0000DE   408 _CR	=	0x00de
                           0000DC   409 _CCF4	=	0x00dc
                           0000DB   410 _CCF3	=	0x00db
                           0000DA   411 _CCF2	=	0x00da
                           0000D9   412 _CCF1	=	0x00d9
                           0000D8   413 _CCF0	=	0x00d8
                           0000AE   414 _EC	=	0x00ae
                           0000BE   415 _PPCL	=	0x00be
                           0000BD   416 _PT2L	=	0x00bd
                           0000BC   417 _PSL	=	0x00bc
                           0000BB   418 _PT1L	=	0x00bb
                           0000BA   419 _PX1L	=	0x00ba
                           0000B9   420 _PT0L	=	0x00b9
                           0000B8   421 _PX0L	=	0x00b8
                           0000C0   422 _P4_0	=	0x00c0
                           0000C1   423 _P4_1	=	0x00c1
                           0000C2   424 _P4_2	=	0x00c2
                           0000C3   425 _P4_3	=	0x00c3
                           0000C4   426 _P4_4	=	0x00c4
                           0000C5   427 _P4_5	=	0x00c5
                           0000C6   428 _P4_6	=	0x00c6
                           0000C7   429 _P4_7	=	0x00c7
                           0000E8   430 _P5_0	=	0x00e8
                           0000E9   431 _P5_1	=	0x00e9
                           0000EA   432 _P5_2	=	0x00ea
                           0000EB   433 _P5_3	=	0x00eb
                           0000EC   434 _P5_4	=	0x00ec
                           0000ED   435 _P5_5	=	0x00ed
                           0000EE   436 _P5_6	=	0x00ee
                           0000EF   437 _P5_7	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; Stack segment in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 	.area	SSEG
      000014                        454 __start__stack:
      000014                        455 	.ds	1
                                    456 
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
      00001A                        478 _putchar_c_65536_90:
      00001A                        479 	.ds 2
      00001C                        480 _putstr_s_65536_94:
      00001C                        481 	.ds 3
      00001F                        482 _menuselect::
      00001F                        483 	.ds 2
      000021                        484 _writebytehandler_receiver_65536_99:
      000021                        485 	.ds 3
      000024                        486 _randomread_handler_receiver_65536_104:
      000024                        487 	.ds 3
      000027                        488 _output::
      000027                        489 	.ds 1
                                    490 ;--------------------------------------------------------
                                    491 ; absolute external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XABS    (ABS,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external initialized ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XISEG   (XDATA)
      00006F                        498 _control::
      00006F                        499 	.ds 1
      000070                        500 _errorflag::
      000070                        501 	.ds 1
      000071                        502 _addressreceiver::
      000071                        503 	.ds 3
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT0 (CODE)
                                    506 	.area GSINIT1 (CODE)
                                    507 	.area GSINIT2 (CODE)
                                    508 	.area GSINIT3 (CODE)
                                    509 	.area GSINIT4 (CODE)
                                    510 	.area GSINIT5 (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area CSEG    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; interrupt vector 
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
      002564                        518 __interrupt_vect:
      002564 02 25 6A         [24]  519 	ljmp	__sdcc_gsinit_startup
                                    520 ;--------------------------------------------------------
                                    521 ; global & static initialisations
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area GSINIT  (CODE)
                                    525 	.area GSFINAL (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.globl __sdcc_gsinit_startup
                                    528 	.globl __sdcc_program_startup
                                    529 	.globl __start__stack
                                    530 	.globl __mcs51_genXINIT
                                    531 	.globl __mcs51_genXRAMCLEAR
                                    532 	.globl __mcs51_genRAMCLEAR
                                    533 	.area GSFINAL (CODE)
      0025C3 02 25 67         [24]  534 	ljmp	__sdcc_program_startup
                                    535 ;--------------------------------------------------------
                                    536 ; Home
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area HOME    (CODE)
      002567                        540 __sdcc_program_startup:
      002567 02 32 D0         [24]  541 	ljmp	_main
                                    542 ;	return from main will return to caller
                                    543 ;--------------------------------------------------------
                                    544 ; code
                                    545 ;--------------------------------------------------------
                                    546 	.area CSEG    (CODE)
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'putchar'
                                    549 ;------------------------------------------------------------
                                    550 ;c                         Allocated with name '_putchar_c_65536_90'
                                    551 ;------------------------------------------------------------
                                    552 ;	main.c:17: int putchar (int c)//serial outps char value
                                    553 ;	-----------------------------------------
                                    554 ;	 function putchar
                                    555 ;	-----------------------------------------
      0030DD                        556 _putchar:
                           000007   557 	ar7 = 0x07
                           000006   558 	ar6 = 0x06
                           000005   559 	ar5 = 0x05
                           000004   560 	ar4 = 0x04
                           000003   561 	ar3 = 0x03
                           000002   562 	ar2 = 0x02
                           000001   563 	ar1 = 0x01
                           000000   564 	ar0 = 0x00
      0030DD AF 83            [24]  565 	mov	r7,dph
      0030DF E5 82            [12]  566 	mov	a,dpl
      0030E1 90 00 1A         [24]  567 	mov	dptr,#_putchar_c_65536_90
      0030E4 F0               [24]  568 	movx	@dptr,a
      0030E5 EF               [12]  569 	mov	a,r7
      0030E6 A3               [24]  570 	inc	dptr
      0030E7 F0               [24]  571 	movx	@dptr,a
                                    572 ;	main.c:19: while (!TI);				// compare asm code generated for these three lines
      0030E8                        573 00101$:
      0030E8 30 99 FD         [24]  574 	jnb	_TI,00101$
                                    575 ;	main.c:20: while (TI == 0);
      0030EB                        576 00104$:
      0030EB 30 99 FD         [24]  577 	jnb	_TI,00104$
                                    578 ;	main.c:21: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0030EE                        579 00107$:
      0030EE E5 98            [12]  580 	mov	a,_SCON
      0030F0 30 E1 FB         [24]  581 	jnb	acc.1,00107$
                                    582 ;	main.c:22: SBUF = c;  	// load serial port with transmit value
      0030F3 90 00 1A         [24]  583 	mov	dptr,#_putchar_c_65536_90
      0030F6 E0               [24]  584 	movx	a,@dptr
      0030F7 FE               [12]  585 	mov	r6,a
      0030F8 A3               [24]  586 	inc	dptr
      0030F9 E0               [24]  587 	movx	a,@dptr
      0030FA 8E 99            [24]  588 	mov	_SBUF,r6
                                    589 ;	main.c:23: TI = 0;  	// clear TI flag
                                    590 ;	assignBit
      0030FC C2 99            [12]  591 	clr	_TI
                                    592 ;	main.c:24: return 0;
      0030FE 90 00 00         [24]  593 	mov	dptr,#0x0000
                                    594 ;	main.c:25: }
      003101 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'getchar'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:28: int getchar(void)//reads char value from serial
                                    600 ;	-----------------------------------------
                                    601 ;	 function getchar
                                    602 ;	-----------------------------------------
      003102                        603 _getchar:
                                    604 ;	main.c:31: while (!RI);                // compare asm code generated for these three lines
      003102                        605 00101$:
      003102 30 98 FD         [24]  606 	jnb	_RI,00101$
                                    607 ;	main.c:32: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      003105                        608 00104$:
      003105 E5 98            [12]  609 	mov	a,_SCON
      003107 30 E0 FB         [24]  610 	jnb	acc.0,00104$
                                    611 ;	main.c:33: while (RI == 0);
      00310A                        612 00107$:
                                    613 ;	main.c:34: RI = 0;			// clear RI flag
                                    614 ;	assignBit
      00310A 10 98 02         [24]  615 	jbc	_RI,00130$
      00310D 80 FB            [24]  616 	sjmp	00107$
      00310F                        617 00130$:
                                    618 ;	main.c:35: return SBUF;  	// return character from SBUF
      00310F AE 99            [24]  619 	mov	r6,_SBUF
      003111 7F 00            [12]  620 	mov	r7,#0x00
      003113 8E 82            [24]  621 	mov	dpl,r6
      003115 8F 83            [24]  622 	mov	dph,r7
                                    623 ;	main.c:36: }
      003117 22               [24]  624 	ret
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'putstr'
                                    627 ;------------------------------------------------------------
                                    628 ;s                         Allocated with name '_putstr_s_65536_94'
                                    629 ;i                         Allocated with name '_putstr_i_65536_95'
                                    630 ;------------------------------------------------------------
                                    631 ;	main.c:37: int putstr (char *s)//outputs string to serial
                                    632 ;	-----------------------------------------
                                    633 ;	 function putstr
                                    634 ;	-----------------------------------------
      003118                        635 _putstr:
      003118 AF F0            [24]  636 	mov	r7,b
      00311A AE 83            [24]  637 	mov	r6,dph
      00311C E5 82            [12]  638 	mov	a,dpl
      00311E 90 00 1C         [24]  639 	mov	dptr,#_putstr_s_65536_94
      003121 F0               [24]  640 	movx	@dptr,a
      003122 EE               [12]  641 	mov	a,r6
      003123 A3               [24]  642 	inc	dptr
      003124 F0               [24]  643 	movx	@dptr,a
      003125 EF               [12]  644 	mov	a,r7
      003126 A3               [24]  645 	inc	dptr
      003127 F0               [24]  646 	movx	@dptr,a
                                    647 ;	main.c:40: while (*s) 			// output characters until NULL found
      003128 90 00 1C         [24]  648 	mov	dptr,#_putstr_s_65536_94
      00312B E0               [24]  649 	movx	a,@dptr
      00312C FD               [12]  650 	mov	r5,a
      00312D A3               [24]  651 	inc	dptr
      00312E E0               [24]  652 	movx	a,@dptr
      00312F FE               [12]  653 	mov	r6,a
      003130 A3               [24]  654 	inc	dptr
      003131 E0               [24]  655 	movx	a,@dptr
      003132 FF               [12]  656 	mov	r7,a
      003133 7B 00            [12]  657 	mov	r3,#0x00
      003135 7C 00            [12]  658 	mov	r4,#0x00
      003137                        659 00101$:
      003137 8D 82            [24]  660 	mov	dpl,r5
      003139 8E 83            [24]  661 	mov	dph,r6
      00313B 8F F0            [24]  662 	mov	b,r7
      00313D 12 41 92         [24]  663 	lcall	__gptrget
      003140 FA               [12]  664 	mov	r2,a
      003141 60 36            [24]  665 	jz	00108$
                                    666 ;	main.c:42: putchar(*s++);
      003143 0D               [12]  667 	inc	r5
      003144 BD 00 01         [24]  668 	cjne	r5,#0x00,00116$
      003147 0E               [12]  669 	inc	r6
      003148                        670 00116$:
      003148 90 00 1C         [24]  671 	mov	dptr,#_putstr_s_65536_94
      00314B ED               [12]  672 	mov	a,r5
      00314C F0               [24]  673 	movx	@dptr,a
      00314D EE               [12]  674 	mov	a,r6
      00314E A3               [24]  675 	inc	dptr
      00314F F0               [24]  676 	movx	@dptr,a
      003150 EF               [12]  677 	mov	a,r7
      003151 A3               [24]  678 	inc	dptr
      003152 F0               [24]  679 	movx	@dptr,a
      003153 8A 01            [24]  680 	mov	ar1,r2
      003155 7A 00            [12]  681 	mov	r2,#0x00
      003157 89 82            [24]  682 	mov	dpl,r1
      003159 8A 83            [24]  683 	mov	dph,r2
      00315B C0 07            [24]  684 	push	ar7
      00315D C0 06            [24]  685 	push	ar6
      00315F C0 05            [24]  686 	push	ar5
      003161 C0 04            [24]  687 	push	ar4
      003163 C0 03            [24]  688 	push	ar3
      003165 12 30 DD         [24]  689 	lcall	_putchar
      003168 D0 03            [24]  690 	pop	ar3
      00316A D0 04            [24]  691 	pop	ar4
      00316C D0 05            [24]  692 	pop	ar5
      00316E D0 06            [24]  693 	pop	ar6
      003170 D0 07            [24]  694 	pop	ar7
                                    695 ;	main.c:43: i++;
      003172 0B               [12]  696 	inc	r3
      003173 BB 00 C1         [24]  697 	cjne	r3,#0x00,00101$
      003176 0C               [12]  698 	inc	r4
      003177 80 BE            [24]  699 	sjmp	00101$
      003179                        700 00108$:
      003179 90 00 1C         [24]  701 	mov	dptr,#_putstr_s_65536_94
      00317C ED               [12]  702 	mov	a,r5
      00317D F0               [24]  703 	movx	@dptr,a
      00317E EE               [12]  704 	mov	a,r6
      00317F A3               [24]  705 	inc	dptr
      003180 F0               [24]  706 	movx	@dptr,a
      003181 EF               [12]  707 	mov	a,r7
      003182 A3               [24]  708 	inc	dptr
      003183 F0               [24]  709 	movx	@dptr,a
                                    710 ;	main.c:46: return i+1;
      003184 0B               [12]  711 	inc	r3
      003185 BB 00 01         [24]  712 	cjne	r3,#0x00,00118$
      003188 0C               [12]  713 	inc	r4
      003189                        714 00118$:
      003189 8B 82            [24]  715 	mov	dpl,r3
      00318B 8C 83            [24]  716 	mov	dph,r4
                                    717 ;	main.c:47: }
      00318D 22               [24]  718 	ret
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'readint'
                                    721 ;------------------------------------------------------------
                                    722 ;reader                    Allocated with name '_readint_reader_65536_97'
                                    723 ;number                    Allocated with name '_readint_number_65537_98'
                                    724 ;------------------------------------------------------------
                                    725 ;	main.c:49: int readint()//reads  char string as integer
                                    726 ;	-----------------------------------------
                                    727 ;	 function readint
                                    728 ;	-----------------------------------------
      00318E                        729 _readint:
                                    730 ;	main.c:52: gets(reader);
      00318E 90 00 00         [24]  731 	mov	dptr,#0x0000
      003191 75 F0 00         [24]  732 	mov	b,#0x00
      003194 12 35 C2         [24]  733 	lcall	_gets
                                    734 ;	main.c:53: int number=atoi(reader);
      003197 90 00 00         [24]  735 	mov	dptr,#0x0000
      00319A 75 F0 00         [24]  736 	mov	b,#0x00
                                    737 ;	main.c:54: return number;
                                    738 ;	main.c:55: }
      00319D 02 34 A2         [24]  739 	ljmp	_atoi
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'writebytehandler'
                                    742 ;------------------------------------------------------------
                                    743 ;receiver                  Allocated with name '_writebytehandler_receiver_65536_99'
                                    744 ;t                         Allocated with name '_writebytehandler_t_65536_100'
                                    745 ;blockno                   Allocated with name '_writebytehandler_blockno_65536_100'
                                    746 ;address                   Allocated with name '_writebytehandler_address_65537_102'
                                    747 ;data                      Allocated with name '_writebytehandler_data_65538_103'
                                    748 ;dataentry                 Allocated with name '_writebytehandler_dataentry_65538_103'
                                    749 ;------------------------------------------------------------
                                    750 ;	main.c:64: void writebytehandler(char *receiver)
                                    751 ;	-----------------------------------------
                                    752 ;	 function writebytehandler
                                    753 ;	-----------------------------------------
      0031A0                        754 _writebytehandler:
      0031A0 AF F0            [24]  755 	mov	r7,b
      0031A2 AE 83            [24]  756 	mov	r6,dph
      0031A4 E5 82            [12]  757 	mov	a,dpl
      0031A6 90 00 21         [24]  758 	mov	dptr,#_writebytehandler_receiver_65536_99
      0031A9 F0               [24]  759 	movx	@dptr,a
      0031AA EE               [12]  760 	mov	a,r6
      0031AB A3               [24]  761 	inc	dptr
      0031AC F0               [24]  762 	movx	@dptr,a
      0031AD EF               [12]  763 	mov	a,r7
      0031AE A3               [24]  764 	inc	dptr
      0031AF F0               [24]  765 	movx	@dptr,a
                                    766 ;	main.c:66: uint16_t t=strtohex(receiver);
      0031B0 90 00 21         [24]  767 	mov	dptr,#_writebytehandler_receiver_65536_99
      0031B3 E0               [24]  768 	movx	a,@dptr
      0031B4 FD               [12]  769 	mov	r5,a
      0031B5 A3               [24]  770 	inc	dptr
      0031B6 E0               [24]  771 	movx	a,@dptr
      0031B7 FE               [12]  772 	mov	r6,a
      0031B8 A3               [24]  773 	inc	dptr
      0031B9 E0               [24]  774 	movx	a,@dptr
      0031BA FF               [12]  775 	mov	r7,a
      0031BB 8D 82            [24]  776 	mov	dpl,r5
      0031BD 8E 83            [24]  777 	mov	dph,r6
      0031BF 8F F0            [24]  778 	mov	b,r7
      0031C1 12 25 C6         [24]  779 	lcall	_strtohex
      0031C4 AE 82            [24]  780 	mov	r6,dpl
      0031C6 AF 83            [24]  781 	mov	r7,dph
                                    782 ;	main.c:67: uint8_t blockno=(t & 0xE00)>>8;
      0031C8 74 0E            [12]  783 	mov	a,#0x0e
      0031CA 5F               [12]  784 	anl	a,r7
                                    785 ;	main.c:68: printf("block no. is %d\n\r",blockno);
      0031CB FD               [12]  786 	mov	r5,a
      0031CC FB               [12]  787 	mov	r3,a
      0031CD 7C 00            [12]  788 	mov	r4,#0x00
      0031CF C0 07            [24]  789 	push	ar7
      0031D1 C0 06            [24]  790 	push	ar6
      0031D3 C0 05            [24]  791 	push	ar5
      0031D5 C0 03            [24]  792 	push	ar3
      0031D7 C0 04            [24]  793 	push	ar4
      0031D9 74 ED            [12]  794 	mov	a,#___str_0
      0031DB C0 E0            [24]  795 	push	acc
      0031DD 74 41            [12]  796 	mov	a,#(___str_0 >> 8)
      0031DF C0 E0            [24]  797 	push	acc
      0031E1 74 80            [12]  798 	mov	a,#0x80
      0031E3 C0 E0            [24]  799 	push	acc
      0031E5 12 37 70         [24]  800 	lcall	_printf
      0031E8 E5 81            [12]  801 	mov	a,sp
      0031EA 24 FB            [12]  802 	add	a,#0xfb
      0031EC F5 81            [12]  803 	mov	sp,a
      0031EE D0 05            [24]  804 	pop	ar5
      0031F0 D0 06            [24]  805 	pop	ar6
      0031F2 D0 07            [24]  806 	pop	ar7
                                    807 ;	main.c:69: if(blockno<8)
      0031F4 BD 08 00         [24]  808 	cjne	r5,#0x08,00110$
      0031F7                        809 00110$:
      0031F7 50 2D            [24]  810 	jnc	00102$
                                    811 ;	main.c:72: control |=blockno;
      0031F9 90 00 6F         [24]  812 	mov	dptr,#_control
      0031FC E0               [24]  813 	movx	a,@dptr
      0031FD 4D               [12]  814 	orl	a,r5
      0031FE F0               [24]  815 	movx	@dptr,a
                                    816 ;	main.c:73: printf("control %X\n\r",control);
      0031FF E0               [24]  817 	movx	a,@dptr
      003200 FD               [12]  818 	mov	r5,a
      003201 7C 00            [12]  819 	mov	r4,#0x00
      003203 C0 07            [24]  820 	push	ar7
      003205 C0 06            [24]  821 	push	ar6
      003207 C0 05            [24]  822 	push	ar5
      003209 C0 04            [24]  823 	push	ar4
      00320B 74 FF            [12]  824 	mov	a,#___str_1
      00320D C0 E0            [24]  825 	push	acc
      00320F 74 41            [12]  826 	mov	a,#(___str_1 >> 8)
      003211 C0 E0            [24]  827 	push	acc
      003213 74 80            [12]  828 	mov	a,#0x80
      003215 C0 E0            [24]  829 	push	acc
      003217 12 37 70         [24]  830 	lcall	_printf
      00321A E5 81            [12]  831 	mov	a,sp
      00321C 24 FB            [12]  832 	add	a,#0xfb
      00321E F5 81            [12]  833 	mov	sp,a
      003220 D0 06            [24]  834 	pop	ar6
      003222 D0 07            [24]  835 	pop	ar7
      003224 80 06            [24]  836 	sjmp	00103$
      003226                        837 00102$:
                                    838 ;	main.c:78: errorflag=1;
      003226 90 00 70         [24]  839 	mov	dptr,#_errorflag
      003229 74 01            [12]  840 	mov	a,#0x01
      00322B F0               [24]  841 	movx	@dptr,a
      00322C                        842 00103$:
                                    843 ;	main.c:79: uint8_t address=(t&0x0FF);
                                    844 ;	main.c:80: putstr("Enter data to be written\n\r");
      00322C 90 42 0C         [24]  845 	mov	dptr,#___str_2
      00322F 75 F0 80         [24]  846 	mov	b,#0x80
      003232 C0 06            [24]  847 	push	ar6
      003234 12 31 18         [24]  848 	lcall	_putstr
                                    849 ;	main.c:82: gets(dataentry);
      003237 90 00 00         [24]  850 	mov	dptr,#0x0000
      00323A 75 F0 00         [24]  851 	mov	b,#0x00
      00323D 12 35 C2         [24]  852 	lcall	_gets
                                    853 ;	main.c:83: data=strtohex(dataentry);
      003240 90 00 00         [24]  854 	mov	dptr,#0x0000
      003243 75 F0 00         [24]  855 	mov	b,#0x00
      003246 12 25 C6         [24]  856 	lcall	_strtohex
      003249 AD 82            [24]  857 	mov	r5,dpl
      00324B D0 06            [24]  858 	pop	ar6
                                    859 ;	main.c:84: byte_write(control,address,data);
      00324D 90 00 6F         [24]  860 	mov	dptr,#_control
      003250 E0               [24]  861 	movx	a,@dptr
      003251 FF               [12]  862 	mov	r7,a
      003252 90 00 0A         [24]  863 	mov	dptr,#_byte_write_PARM_2
      003255 EE               [12]  864 	mov	a,r6
      003256 F0               [24]  865 	movx	@dptr,a
      003257 90 00 0B         [24]  866 	mov	dptr,#_byte_write_PARM_3
      00325A ED               [12]  867 	mov	a,r5
      00325B F0               [24]  868 	movx	@dptr,a
      00325C 8F 82            [24]  869 	mov	dpl,r7
                                    870 ;	main.c:85: }
      00325E 02 2C 4D         [24]  871 	ljmp	_byte_write
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'randomread_handler'
                                    874 ;------------------------------------------------------------
                                    875 ;receiver                  Allocated with name '_randomread_handler_receiver_65536_104'
                                    876 ;t                         Allocated with name '_randomread_handler_t_65536_105'
                                    877 ;blockno                   Allocated with name '_randomread_handler_blockno_65536_105'
                                    878 ;address                   Allocated with name '_randomread_handler_address_131072_108'
                                    879 ;result                    Allocated with name '_randomread_handler_result_131072_108'
                                    880 ;------------------------------------------------------------
                                    881 ;	main.c:87: int randomread_handler(char *receiver)
                                    882 ;	-----------------------------------------
                                    883 ;	 function randomread_handler
                                    884 ;	-----------------------------------------
      003261                        885 _randomread_handler:
      003261 AF F0            [24]  886 	mov	r7,b
      003263 AE 83            [24]  887 	mov	r6,dph
      003265 E5 82            [12]  888 	mov	a,dpl
      003267 90 00 24         [24]  889 	mov	dptr,#_randomread_handler_receiver_65536_104
      00326A F0               [24]  890 	movx	@dptr,a
      00326B EE               [12]  891 	mov	a,r6
      00326C A3               [24]  892 	inc	dptr
      00326D F0               [24]  893 	movx	@dptr,a
      00326E EF               [12]  894 	mov	a,r7
      00326F A3               [24]  895 	inc	dptr
      003270 F0               [24]  896 	movx	@dptr,a
                                    897 ;	main.c:89: uint16_t t=strtohex(receiver);
      003271 90 00 24         [24]  898 	mov	dptr,#_randomread_handler_receiver_65536_104
      003274 E0               [24]  899 	movx	a,@dptr
      003275 FD               [12]  900 	mov	r5,a
      003276 A3               [24]  901 	inc	dptr
      003277 E0               [24]  902 	movx	a,@dptr
      003278 FE               [12]  903 	mov	r6,a
      003279 A3               [24]  904 	inc	dptr
      00327A E0               [24]  905 	movx	a,@dptr
      00327B FF               [12]  906 	mov	r7,a
      00327C 8D 82            [24]  907 	mov	dpl,r5
      00327E 8E 83            [24]  908 	mov	dph,r6
      003280 8F F0            [24]  909 	mov	b,r7
      003282 12 25 C6         [24]  910 	lcall	_strtohex
      003285 AE 82            [24]  911 	mov	r6,dpl
      003287 AF 83            [24]  912 	mov	r7,dph
                                    913 ;	main.c:90: uint8_t blockno=(t & 0xE00)>>8;
      003289 74 0E            [12]  914 	mov	a,#0x0e
      00328B 5F               [12]  915 	anl	a,r7
      00328C FD               [12]  916 	mov	r5,a
                                    917 ;	main.c:91: if(blockno<7)
      00328D BD 07 00         [24]  918 	cjne	r5,#0x07,00117$
      003290                        919 00117$:
      003290 50 08            [24]  920 	jnc	00102$
                                    921 ;	main.c:94: control |=blockno;
      003292 90 00 6F         [24]  922 	mov	dptr,#_control
      003295 E0               [24]  923 	movx	a,@dptr
      003296 4D               [12]  924 	orl	a,r5
      003297 F0               [24]  925 	movx	@dptr,a
      003298 80 06            [24]  926 	sjmp	00103$
      00329A                        927 00102$:
                                    928 ;	main.c:99: errorflag=1;
      00329A 90 00 70         [24]  929 	mov	dptr,#_errorflag
      00329D 74 01            [12]  930 	mov	a,#0x01
      00329F F0               [24]  931 	movx	@dptr,a
      0032A0                        932 00103$:
                                    933 ;	main.c:100: if(errorflag)
      0032A0 90 00 70         [24]  934 	mov	dptr,#_errorflag
      0032A3 E0               [24]  935 	movx	a,@dptr
      0032A4 60 0D            [24]  936 	jz	00105$
                                    937 ;	main.c:102: putstr("Wrong block number. \n\r");
      0032A6 90 42 27         [24]  938 	mov	dptr,#___str_3
      0032A9 75 F0 80         [24]  939 	mov	b,#0x80
      0032AC 12 31 18         [24]  940 	lcall	_putstr
                                    941 ;	main.c:103: return -1;
      0032AF 90 FF FF         [24]  942 	mov	dptr,#0xffff
      0032B2 22               [24]  943 	ret
      0032B3                        944 00105$:
                                    945 ;	main.c:108: uint8_t address=(t&0x0FF);
                                    946 ;	main.c:109: int result =random_read(control,address);
      0032B3 90 00 6F         [24]  947 	mov	dptr,#_control
      0032B6 E0               [24]  948 	movx	a,@dptr
      0032B7 FF               [12]  949 	mov	r7,a
      0032B8 90 00 0F         [24]  950 	mov	dptr,#_random_read_PARM_2
      0032BB EE               [12]  951 	mov	a,r6
      0032BC F0               [24]  952 	movx	@dptr,a
      0032BD 8F 82            [24]  953 	mov	dpl,r7
      0032BF 12 2C DB         [24]  954 	lcall	_random_read
      0032C2 AE 82            [24]  955 	mov	r6,dpl
      0032C4 AF 83            [24]  956 	mov	r7,dph
                                    957 ;	main.c:110: errorflag=0;
      0032C6 90 00 70         [24]  958 	mov	dptr,#_errorflag
      0032C9 E4               [12]  959 	clr	a
      0032CA F0               [24]  960 	movx	@dptr,a
                                    961 ;	main.c:111: return result;
      0032CB 8E 82            [24]  962 	mov	dpl,r6
      0032CD 8F 83            [24]  963 	mov	dph,r7
                                    964 ;	main.c:114: }
      0032CF 22               [24]  965 	ret
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'main'
                                    968 ;------------------------------------------------------------
                                    969 ;addressreceiver1          Allocated with name '_main_addressreceiver1_196609_113'
                                    970 ;address1                  Allocated with name '_main_address1_196610_114'
                                    971 ;block1                    Allocated with name '_main_block1_196610_114'
                                    972 ;startaddress              Allocated with name '_main_startaddress_196610_114'
                                    973 ;addressreceiver2          Allocated with name '_main_addressreceiver2_196610_114'
                                    974 ;address2                  Allocated with name '_main_address2_196611_115'
                                    975 ;block2                    Allocated with name '_main_block2_196611_115'
                                    976 ;endaddress                Allocated with name '_main_endaddress_196611_115'
                                    977 ;------------------------------------------------------------
                                    978 ;	main.c:116: void main(void)
                                    979 ;	-----------------------------------------
                                    980 ;	 function main
                                    981 ;	-----------------------------------------
      0032D0                        982 _main:
                                    983 ;	main.c:118: i2c_reset();
      0032D0 12 2F 81         [24]  984 	lcall	_i2c_reset
                                    985 ;	main.c:119: while(1)
      0032D3                        986 00109$:
                                    987 ;	main.c:121: errorflag=0;
      0032D3 90 00 70         [24]  988 	mov	dptr,#_errorflag
      0032D6 E4               [12]  989 	clr	a
      0032D7 F0               [24]  990 	movx	@dptr,a
                                    991 ;	main.c:122: putstr("*****************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\r\n\rPRESS X FOR EEPROM RESET\n\r");
      0032D8 90 42 3E         [24]  992 	mov	dptr,#___str_4
      0032DB 75 F0 80         [24]  993 	mov	b,#0x80
      0032DE 12 31 18         [24]  994 	lcall	_putstr
                                    995 ;	main.c:123: menuselect=getchar();
      0032E1 12 31 02         [24]  996 	lcall	_getchar
      0032E4 AE 82            [24]  997 	mov	r6,dpl
      0032E6 AF 83            [24]  998 	mov	r7,dph
      0032E8 90 00 1F         [24]  999 	mov	dptr,#_menuselect
      0032EB EE               [12] 1000 	mov	a,r6
      0032EC F0               [24] 1001 	movx	@dptr,a
      0032ED EF               [12] 1002 	mov	a,r7
      0032EE A3               [24] 1003 	inc	dptr
      0032EF F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	main.c:125: putchar(menuselect);
      0032F0 8E 82            [24] 1006 	mov	dpl,r6
      0032F2 8F 83            [24] 1007 	mov	dph,r7
      0032F4 12 30 DD         [24] 1008 	lcall	_putchar
                                   1009 ;	main.c:126: putstr("\n\r");
      0032F7 90 42 D5         [24] 1010 	mov	dptr,#___str_5
      0032FA 75 F0 80         [24] 1011 	mov	b,#0x80
      0032FD 12 31 18         [24] 1012 	lcall	_putstr
                                   1013 ;	main.c:128: switch(toupper(menuselect))
      003300 90 00 1F         [24] 1014 	mov	dptr,#_menuselect
      003303 E0               [24] 1015 	movx	a,@dptr
      003304 FE               [12] 1016 	mov	r6,a
      003305 A3               [24] 1017 	inc	dptr
      003306 E0               [24] 1018 	movx	a,@dptr
      003307 FF               [12] 1019 	mov	r7,a
      003308 8E 82            [24] 1020 	mov	dpl,r6
      00330A 8F 83            [24] 1021 	mov	dph,r7
      00330C 12 36 E7         [24] 1022 	lcall	_toupper
      00330F AE 82            [24] 1023 	mov	r6,dpl
      003311 AF 83            [24] 1024 	mov	r7,dph
      003313 BE 52 05         [24] 1025 	cjne	r6,#0x52,00137$
      003316 BF 00 02         [24] 1026 	cjne	r7,#0x00,00137$
      003319 80 56            [24] 1027 	sjmp	00102$
      00331B                       1028 00137$:
      00331B BE 53 06         [24] 1029 	cjne	r6,#0x53,00138$
      00331E BF 00 03         [24] 1030 	cjne	r7,#0x00,00138$
      003321 02 33 DA         [24] 1031 	ljmp	00105$
      003324                       1032 00138$:
      003324 BE 57 05         [24] 1033 	cjne	r6,#0x57,00139$
      003327 BF 00 02         [24] 1034 	cjne	r7,#0x00,00139$
      00332A 80 0B            [24] 1035 	sjmp	00101$
      00332C                       1036 00139$:
      00332C BE 58 06         [24] 1037 	cjne	r6,#0x58,00140$
      00332F BF 00 03         [24] 1038 	cjne	r7,#0x00,00140$
      003332 02 34 8D         [24] 1039 	ljmp	00106$
      003335                       1040 00140$:
                                   1041 ;	main.c:131: case 'W':
      003335 80 9C            [24] 1042 	sjmp	00109$
      003337                       1043 00101$:
                                   1044 ;	main.c:132: putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
      003337 90 42 D8         [24] 1045 	mov	dptr,#___str_6
      00333A 75 F0 80         [24] 1046 	mov	b,#0x80
      00333D 12 31 18         [24] 1047 	lcall	_putstr
                                   1048 ;	main.c:134: gets(addressreceiver);
      003340 90 00 71         [24] 1049 	mov	dptr,#_addressreceiver
      003343 E0               [24] 1050 	movx	a,@dptr
      003344 FD               [12] 1051 	mov	r5,a
      003345 A3               [24] 1052 	inc	dptr
      003346 E0               [24] 1053 	movx	a,@dptr
      003347 FE               [12] 1054 	mov	r6,a
      003348 A3               [24] 1055 	inc	dptr
      003349 E0               [24] 1056 	movx	a,@dptr
      00334A FF               [12] 1057 	mov	r7,a
      00334B 8D 82            [24] 1058 	mov	dpl,r5
      00334D 8E 83            [24] 1059 	mov	dph,r6
      00334F 8F F0            [24] 1060 	mov	b,r7
      003351 12 35 C2         [24] 1061 	lcall	_gets
                                   1062 ;	main.c:135: writebytehandler(addressreceiver);
      003354 90 00 71         [24] 1063 	mov	dptr,#_addressreceiver
      003357 E0               [24] 1064 	movx	a,@dptr
      003358 FD               [12] 1065 	mov	r5,a
      003359 A3               [24] 1066 	inc	dptr
      00335A E0               [24] 1067 	movx	a,@dptr
      00335B FE               [12] 1068 	mov	r6,a
      00335C A3               [24] 1069 	inc	dptr
      00335D E0               [24] 1070 	movx	a,@dptr
      00335E FF               [12] 1071 	mov	r7,a
      00335F 8D 82            [24] 1072 	mov	dpl,r5
      003361 8E 83            [24] 1073 	mov	dph,r6
      003363 8F F0            [24] 1074 	mov	b,r7
      003365 12 31 A0         [24] 1075 	lcall	_writebytehandler
                                   1076 ;	main.c:136: control=0xA0;
      003368 90 00 6F         [24] 1077 	mov	dptr,#_control
      00336B 74 A0            [12] 1078 	mov	a,#0xa0
      00336D F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	main.c:137: break;
      00336E 02 32 D3         [24] 1081 	ljmp	00109$
                                   1082 ;	main.c:139: case 'R':
      003371                       1083 00102$:
                                   1084 ;	main.c:140: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
      003371 90 43 45         [24] 1085 	mov	dptr,#___str_7
      003374 75 F0 80         [24] 1086 	mov	b,#0x80
      003377 12 31 18         [24] 1087 	lcall	_putstr
                                   1088 ;	main.c:141: gets(addressreceiver);
      00337A 90 00 71         [24] 1089 	mov	dptr,#_addressreceiver
      00337D E0               [24] 1090 	movx	a,@dptr
      00337E FD               [12] 1091 	mov	r5,a
      00337F A3               [24] 1092 	inc	dptr
      003380 E0               [24] 1093 	movx	a,@dptr
      003381 FE               [12] 1094 	mov	r6,a
      003382 A3               [24] 1095 	inc	dptr
      003383 E0               [24] 1096 	movx	a,@dptr
      003384 FF               [12] 1097 	mov	r7,a
      003385 8D 82            [24] 1098 	mov	dpl,r5
      003387 8E 83            [24] 1099 	mov	dph,r6
      003389 8F F0            [24] 1100 	mov	b,r7
      00338B 12 35 C2         [24] 1101 	lcall	_gets
                                   1102 ;	main.c:142: output=randomread_handler(addressreceiver);
      00338E 90 00 71         [24] 1103 	mov	dptr,#_addressreceiver
      003391 E0               [24] 1104 	movx	a,@dptr
      003392 FD               [12] 1105 	mov	r5,a
      003393 A3               [24] 1106 	inc	dptr
      003394 E0               [24] 1107 	movx	a,@dptr
      003395 FE               [12] 1108 	mov	r6,a
      003396 A3               [24] 1109 	inc	dptr
      003397 E0               [24] 1110 	movx	a,@dptr
      003398 FF               [12] 1111 	mov	r7,a
      003399 8D 82            [24] 1112 	mov	dpl,r5
      00339B 8E 83            [24] 1113 	mov	dph,r6
      00339D 8F F0            [24] 1114 	mov	b,r7
      00339F 12 32 61         [24] 1115 	lcall	_randomread_handler
      0033A2 AE 82            [24] 1116 	mov	r6,dpl
      0033A4 AF 83            [24] 1117 	mov	r7,dph
      0033A6 90 00 27         [24] 1118 	mov	dptr,#_output
      0033A9 EE               [12] 1119 	mov	a,r6
      0033AA F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	main.c:143: if(errorflag==0)
      0033AB 90 00 70         [24] 1122 	mov	dptr,#_errorflag
      0033AE E0               [24] 1123 	movx	a,@dptr
      0033AF 70 20            [24] 1124 	jnz	00104$
                                   1125 ;	main.c:144: printf("Read value is 0x%X\n\r",output);
      0033B1 90 00 27         [24] 1126 	mov	dptr,#_output
      0033B4 E0               [24] 1127 	movx	a,@dptr
      0033B5 FF               [12] 1128 	mov	r7,a
      0033B6 7E 00            [12] 1129 	mov	r6,#0x00
      0033B8 C0 07            [24] 1130 	push	ar7
      0033BA C0 06            [24] 1131 	push	ar6
      0033BC 74 AE            [12] 1132 	mov	a,#___str_8
      0033BE C0 E0            [24] 1133 	push	acc
      0033C0 74 43            [12] 1134 	mov	a,#(___str_8 >> 8)
      0033C2 C0 E0            [24] 1135 	push	acc
      0033C4 74 80            [12] 1136 	mov	a,#0x80
      0033C6 C0 E0            [24] 1137 	push	acc
      0033C8 12 37 70         [24] 1138 	lcall	_printf
      0033CB E5 81            [12] 1139 	mov	a,sp
      0033CD 24 FB            [12] 1140 	add	a,#0xfb
      0033CF F5 81            [12] 1141 	mov	sp,a
      0033D1                       1142 00104$:
                                   1143 ;	main.c:145: control=0xA0;
      0033D1 90 00 6F         [24] 1144 	mov	dptr,#_control
      0033D4 74 A0            [12] 1145 	mov	a,#0xa0
      0033D6 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	main.c:146: break;
      0033D7 02 32 D3         [24] 1148 	ljmp	00109$
                                   1149 ;	main.c:147: case 'S':
      0033DA                       1150 00105$:
                                   1151 ;	main.c:148: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
      0033DA 90 43 45         [24] 1152 	mov	dptr,#___str_7
      0033DD 75 F0 80         [24] 1153 	mov	b,#0x80
      0033E0 12 31 18         [24] 1154 	lcall	_putstr
                                   1155 ;	main.c:151: putstr("Enter first address\n\r");
      0033E3 90 43 C3         [24] 1156 	mov	dptr,#___str_9
      0033E6 75 F0 80         [24] 1157 	mov	b,#0x80
      0033E9 12 31 18         [24] 1158 	lcall	_putstr
                                   1159 ;	main.c:152: gets(addressreceiver1);
      0033EC 90 00 00         [24] 1160 	mov	dptr,#0x0000
      0033EF 75 F0 00         [24] 1161 	mov	b,#0x00
      0033F2 12 35 C2         [24] 1162 	lcall	_gets
                                   1163 ;	main.c:153: uint16_t address1=strtohex(addressreceiver1);
      0033F5 90 00 00         [24] 1164 	mov	dptr,#0x0000
      0033F8 75 F0 00         [24] 1165 	mov	b,#0x00
      0033FB 12 25 C6         [24] 1166 	lcall	_strtohex
      0033FE AE 82            [24] 1167 	mov	r6,dpl
      003400 AF 83            [24] 1168 	mov	r7,dph
                                   1169 ;	main.c:155: uint8_t block1=(address1 & 0xE00)>>8;
      003402 74 0E            [12] 1170 	mov	a,#0x0e
      003404 5F               [12] 1171 	anl	a,r7
      003405 FC               [12] 1172 	mov	r4,a
                                   1173 ;	main.c:156: uint8_t startaddress=(address1&0x0FF);
                                   1174 ;	main.c:158: putstr("Enter second address\n\r");
      003406 90 43 D9         [24] 1175 	mov	dptr,#___str_10
      003409 75 F0 80         [24] 1176 	mov	b,#0x80
      00340C C0 06            [24] 1177 	push	ar6
      00340E C0 04            [24] 1178 	push	ar4
      003410 12 31 18         [24] 1179 	lcall	_putstr
                                   1180 ;	main.c:159: gets(addressreceiver2);
      003413 90 00 00         [24] 1181 	mov	dptr,#0x0000
      003416 75 F0 00         [24] 1182 	mov	b,#0x00
      003419 12 35 C2         [24] 1183 	lcall	_gets
                                   1184 ;	main.c:161: uint16_t address2=strtohex(addressreceiver2);
      00341C 90 00 00         [24] 1185 	mov	dptr,#0x0000
      00341F 75 F0 00         [24] 1186 	mov	b,#0x00
      003422 12 25 C6         [24] 1187 	lcall	_strtohex
      003425 AD 82            [24] 1188 	mov	r5,dpl
      003427 AF 83            [24] 1189 	mov	r7,dph
      003429 D0 04            [24] 1190 	pop	ar4
      00342B D0 06            [24] 1191 	pop	ar6
                                   1192 ;	main.c:162: uint8_t block2=(address2 & 0xE00)>>8;
      00342D 74 0E            [12] 1193 	mov	a,#0x0e
      00342F 5F               [12] 1194 	anl	a,r7
      003430 FA               [12] 1195 	mov	r2,a
                                   1196 ;	main.c:163: uint8_t endaddress=(address2&0x0FF);
                                   1197 ;	main.c:165: printf("\n\rADDS are %d %d \n\r",startaddress,endaddress);
      003431 8D 03            [24] 1198 	mov	ar3,r5
      003433 7F 00            [12] 1199 	mov	r7,#0x00
      003435 8E 00            [24] 1200 	mov	ar0,r6
      003437 79 00            [12] 1201 	mov	r1,#0x00
      003439 C0 06            [24] 1202 	push	ar6
      00343B C0 05            [24] 1203 	push	ar5
      00343D C0 04            [24] 1204 	push	ar4
      00343F C0 02            [24] 1205 	push	ar2
      003441 C0 03            [24] 1206 	push	ar3
      003443 C0 07            [24] 1207 	push	ar7
      003445 C0 00            [24] 1208 	push	ar0
      003447 C0 01            [24] 1209 	push	ar1
      003449 74 F0            [12] 1210 	mov	a,#___str_11
      00344B C0 E0            [24] 1211 	push	acc
      00344D 74 43            [12] 1212 	mov	a,#(___str_11 >> 8)
      00344F C0 E0            [24] 1213 	push	acc
      003451 74 80            [12] 1214 	mov	a,#0x80
      003453 C0 E0            [24] 1215 	push	acc
      003455 12 37 70         [24] 1216 	lcall	_printf
      003458 E5 81            [12] 1217 	mov	a,sp
      00345A 24 F9            [12] 1218 	add	a,#0xf9
      00345C F5 81            [12] 1219 	mov	sp,a
      00345E D0 02            [24] 1220 	pop	ar2
      003460 D0 04            [24] 1221 	pop	ar4
      003462 D0 05            [24] 1222 	pop	ar5
      003464 D0 06            [24] 1223 	pop	ar6
                                   1224 ;	main.c:167: seq_read(control,startaddress,endaddress,block1,block2);
      003466 90 00 6F         [24] 1225 	mov	dptr,#_control
      003469 E0               [24] 1226 	movx	a,@dptr
      00346A FF               [12] 1227 	mov	r7,a
      00346B 90 00 11         [24] 1228 	mov	dptr,#_seq_read_PARM_2
      00346E EE               [12] 1229 	mov	a,r6
      00346F F0               [24] 1230 	movx	@dptr,a
      003470 90 00 12         [24] 1231 	mov	dptr,#_seq_read_PARM_3
      003473 ED               [12] 1232 	mov	a,r5
      003474 F0               [24] 1233 	movx	@dptr,a
      003475 90 00 13         [24] 1234 	mov	dptr,#_seq_read_PARM_4
      003478 EC               [12] 1235 	mov	a,r4
      003479 F0               [24] 1236 	movx	@dptr,a
      00347A 90 00 14         [24] 1237 	mov	dptr,#_seq_read_PARM_5
      00347D EA               [12] 1238 	mov	a,r2
      00347E F0               [24] 1239 	movx	@dptr,a
      00347F 8F 82            [24] 1240 	mov	dpl,r7
      003481 12 2D 3A         [24] 1241 	lcall	_seq_read
                                   1242 ;	main.c:168: control=0xA0;
      003484 90 00 6F         [24] 1243 	mov	dptr,#_control
      003487 74 A0            [12] 1244 	mov	a,#0xa0
      003489 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	main.c:170: break;
      00348A 02 32 D3         [24] 1247 	ljmp	00109$
                                   1248 ;	main.c:171: case 'X':
      00348D                       1249 00106$:
                                   1250 ;	main.c:172: restart_i2c();
      00348D 12 2F BD         [24] 1251 	lcall	_restart_i2c
                                   1252 ;	main.c:173: i2c_write(0xFF);
      003490 90 00 FF         [24] 1253 	mov	dptr,#0x00ff
      003493 12 2F C7         [24] 1254 	lcall	_i2c_write
                                   1255 ;	main.c:174: i2c_nack();
      003496 12 30 65         [24] 1256 	lcall	_i2c_nack
                                   1257 ;	main.c:175: restart_i2c();
      003499 12 2F BD         [24] 1258 	lcall	_restart_i2c
                                   1259 ;	main.c:176: i2c_stop();
      00349C 12 2F 96         [24] 1260 	lcall	_i2c_stop
                                   1261 ;	main.c:217: }
                                   1262 ;	main.c:221: }
      00349F 02 32 D3         [24] 1263 	ljmp	00109$
                                   1264 	.area CSEG    (CODE)
                                   1265 	.area CONST   (CODE)
                                   1266 	.area CONST   (CODE)
      0041ED                       1267 ___str_0:
      0041ED 62 6C 6F 63 6B 20 6E  1268 	.ascii "block no. is %d"
             6F 2E 20 69 73 20 25
             64
      0041FC 0A                    1269 	.db 0x0a
      0041FD 0D                    1270 	.db 0x0d
      0041FE 00                    1271 	.db 0x00
                                   1272 	.area CSEG    (CODE)
                                   1273 	.area CONST   (CODE)
      0041FF                       1274 ___str_1:
      0041FF 63 6F 6E 74 72 6F 6C  1275 	.ascii "control %X"
             20 25 58
      004209 0A                    1276 	.db 0x0a
      00420A 0D                    1277 	.db 0x0d
      00420B 00                    1278 	.db 0x00
                                   1279 	.area CSEG    (CODE)
                                   1280 	.area CONST   (CODE)
      00420C                       1281 ___str_2:
      00420C 45 6E 74 65 72 20 64  1282 	.ascii "Enter data to be written"
             61 74 61 20 74 6F 20
             62 65 20 77 72 69 74
             74 65 6E
      004224 0A                    1283 	.db 0x0a
      004225 0D                    1284 	.db 0x0d
      004226 00                    1285 	.db 0x00
                                   1286 	.area CSEG    (CODE)
                                   1287 	.area CONST   (CODE)
      004227                       1288 ___str_3:
      004227 57 72 6F 6E 67 20 62  1289 	.ascii "Wrong block number. "
             6C 6F 63 6B 20 6E 75
             6D 62 65 72 2E 20
      00423B 0A                    1290 	.db 0x0a
      00423C 0D                    1291 	.db 0x0d
      00423D 00                    1292 	.db 0x00
                                   1293 	.area CSEG    (CODE)
                                   1294 	.area CONST   (CODE)
      00423E                       1295 ___str_4:
      00423E 2A 2A 2A 2A 2A 2A 2A  1296 	.ascii "*****************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A
      00424F 0A                    1297 	.db 0x0a
      004250 0D                    1298 	.db 0x0d
      004251 4D 45 4E 55 20 46 4F  1299 	.ascii "MENU FOR TESTING I2C FUNCTIONS"
             52 20 54 45 53 54 49
             4E 47 20 49 32 43 20
             46 55 4E 43 54 49 4F
             4E 53
      00426F 0A                    1300 	.db 0x0a
      004270 0D                    1301 	.db 0x0d
      004271 50 52 45 53 53 20 57  1302 	.ascii "PRESS W FOR WRITE BYTE"
             20 46 4F 52 20 57 52
             49 54 45 20 42 59 54
             45
      004287 0A                    1303 	.db 0x0a
      004288 0D                    1304 	.db 0x0d
      004289 50 52 45 53 53 20 52  1305 	.ascii "PRESS R FOR RANDOM READ"
             20 46 4F 52 20 52 41
             4E 44 4F 4D 20 52 45
             41 44
      0042A0 0A                    1306 	.db 0x0a
      0042A1 0D                    1307 	.db 0x0d
      0042A2 50 52 45 53 53 20 53  1308 	.ascii "PRESS S FOR HEX DUMP"
             20 46 4F 52 20 48 45
             58 20 44 55 4D 50
      0042B6 0A                    1309 	.db 0x0a
      0042B7 0D                    1310 	.db 0x0d
      0042B8 0A                    1311 	.db 0x0a
      0042B9 0D                    1312 	.db 0x0d
      0042BA 50 52 45 53 53 20 58  1313 	.ascii "PRESS X FOR EEPROM RESET"
             20 46 4F 52 20 45 45
             50 52 4F 4D 20 52 45
             53 45 54
      0042D2 0A                    1314 	.db 0x0a
      0042D3 0D                    1315 	.db 0x0d
      0042D4 00                    1316 	.db 0x00
                                   1317 	.area CSEG    (CODE)
                                   1318 	.area CONST   (CODE)
      0042D5                       1319 ___str_5:
      0042D5 0A                    1320 	.db 0x0a
      0042D6 0D                    1321 	.db 0x0d
      0042D7 00                    1322 	.db 0x00
                                   1323 	.area CSEG    (CODE)
                                   1324 	.area CONST   (CODE)
      0042D8                       1325 ___str_6:
      0042D8 45 4E 54 45 52 20 41  1326 	.ascii "ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER A"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 57
             52 49 54 54 45 4E 20
             2C 41 44 44 52 45 53
             53 20 49 4E 43 4C 55
             44 45 53 20 42 4C 4F
             43 4B 20 4E 55 4D 42
             45 52 20 41
      004314 4E 44 20 57 4F 52 44  1327 	.ascii "ND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX"
             20 41 44 52 52 45 53
             53 20 54 4F 47 45 54
             48 45 52 20 53 45 50
             45 52 41 54 45 44 20
             42 59 20 30 20 69 6E
             20 48 45 58
      004342 0A                    1328 	.db 0x0a
      004343 0D                    1329 	.db 0x0d
      004344 00                    1330 	.db 0x00
                                   1331 	.area CSEG    (CODE)
                                   1332 	.area CONST   (CODE)
      004345                       1333 ___str_7:
      004345 45 4E 54 45 52 20 41  1334 	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 52
             45 41 44 2C 41 44 44
             52 45 53 53 20 49 4E
             43 4C 55 44 45 53 20
             42 4C 4F 43 4B 20 4E
             55 4D 42 45 52 20 41
             4E 44 20 57
      004381 4F 52 44 20 41 44 52  1335 	.ascii "ORD ADRRESS TOGETHER SEPERATED BY 0 in HEX"
             52 45 53 53 20 54 4F
             47 45 54 48 45 52 20
             53 45 50 45 52 41 54
             45 44 20 42 59 20 30
             20 69 6E 20 48 45 58
      0043AB 0A                    1336 	.db 0x0a
      0043AC 0D                    1337 	.db 0x0d
      0043AD 00                    1338 	.db 0x00
                                   1339 	.area CSEG    (CODE)
                                   1340 	.area CONST   (CODE)
      0043AE                       1341 ___str_8:
      0043AE 52 65 61 64 20 76 61  1342 	.ascii "Read value is 0x%X"
             6C 75 65 20 69 73 20
             30 78 25 58
      0043C0 0A                    1343 	.db 0x0a
      0043C1 0D                    1344 	.db 0x0d
      0043C2 00                    1345 	.db 0x00
                                   1346 	.area CSEG    (CODE)
                                   1347 	.area CONST   (CODE)
      0043C3                       1348 ___str_9:
      0043C3 45 6E 74 65 72 20 66  1349 	.ascii "Enter first address"
             69 72 73 74 20 61 64
             64 72 65 73 73
      0043D6 0A                    1350 	.db 0x0a
      0043D7 0D                    1351 	.db 0x0d
      0043D8 00                    1352 	.db 0x00
                                   1353 	.area CSEG    (CODE)
                                   1354 	.area CONST   (CODE)
      0043D9                       1355 ___str_10:
      0043D9 45 6E 74 65 72 20 73  1356 	.ascii "Enter second address"
             65 63 6F 6E 64 20 61
             64 64 72 65 73 73
      0043ED 0A                    1357 	.db 0x0a
      0043EE 0D                    1358 	.db 0x0d
      0043EF 00                    1359 	.db 0x00
                                   1360 	.area CSEG    (CODE)
                                   1361 	.area CONST   (CODE)
      0043F0                       1362 ___str_11:
      0043F0 0A                    1363 	.db 0x0a
      0043F1 0D                    1364 	.db 0x0d
      0043F2 41 44 44 53 20 61 72  1365 	.ascii "ADDS are %d %d "
             65 20 25 64 20 25 64
             20
      004401 0A                    1366 	.db 0x0a
      004402 0D                    1367 	.db 0x0d
      004403 00                    1368 	.db 0x00
                                   1369 	.area CSEG    (CODE)
                                   1370 	.area XINIT   (CODE)
      00440F                       1371 __xinit__control:
      00440F A0                    1372 	.db #0xa0	; 160
      004410                       1373 __xinit__errorflag:
      004410 00                    1374 	.db #0x00	; 0
      004411                       1375 __xinit__addressreceiver:
      004411 00 00 00              1376 	.byte #0x00,#0x00,#0x00
                                   1377 	.area CABS    (ABS,CODE)
