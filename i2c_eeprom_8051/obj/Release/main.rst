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
      000016                        478 _putchar_c_65536_90:
      000016                        479 	.ds 2
      000018                        480 _putstr_s_65536_94:
      000018                        481 	.ds 3
      00001B                        482 _menuselect::
      00001B                        483 	.ds 2
      00001D                        484 _writebytehandler_receiver_65536_99:
      00001D                        485 	.ds 3
      000020                        486 _writebytehandler_dataentry_65538_104:
      000020                        487 	.ds 4
      000024                        488 _randomread_handler_receiver_65536_106:
      000024                        489 	.ds 3
      000027                        490 _output::
      000027                        491 	.ds 1
                                    492 ;--------------------------------------------------------
                                    493 ; absolute external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XABS    (ABS,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external initialized ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XISEG   (XDATA)
      000078                        500 _control::
      000078                        501 	.ds 1
      000079                        502 _errorflag::
      000079                        503 	.ds 1
      00007A                        504 _addressreceiver::
      00007A                        505 	.ds 3
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT0 (CODE)
                                    508 	.area GSINIT1 (CODE)
                                    509 	.area GSINIT2 (CODE)
                                    510 	.area GSINIT3 (CODE)
                                    511 	.area GSINIT4 (CODE)
                                    512 	.area GSINIT5 (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area CSEG    (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; interrupt vector 
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
      002564                        520 __interrupt_vect:
      002564 02 25 6A         [24]  521 	ljmp	__sdcc_gsinit_startup
                                    522 ;--------------------------------------------------------
                                    523 ; global & static initialisations
                                    524 ;--------------------------------------------------------
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.globl __sdcc_gsinit_startup
                                    530 	.globl __sdcc_program_startup
                                    531 	.globl __start__stack
                                    532 	.globl __mcs51_genXINIT
                                    533 	.globl __mcs51_genXRAMCLEAR
                                    534 	.globl __mcs51_genRAMCLEAR
                                    535 	.area GSFINAL (CODE)
      0025C3 02 25 67         [24]  536 	ljmp	__sdcc_program_startup
                                    537 ;--------------------------------------------------------
                                    538 ; Home
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area HOME    (CODE)
      002567                        542 __sdcc_program_startup:
      002567 02 34 2A         [24]  543 	ljmp	_main
                                    544 ;	return from main will return to caller
                                    545 ;--------------------------------------------------------
                                    546 ; code
                                    547 ;--------------------------------------------------------
                                    548 	.area CSEG    (CODE)
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'putchar'
                                    551 ;------------------------------------------------------------
                                    552 ;c                         Allocated with name '_putchar_c_65536_90'
                                    553 ;------------------------------------------------------------
                                    554 ;	main.c:17: int putchar (int c)//serial outps char value
                                    555 ;	-----------------------------------------
                                    556 ;	 function putchar
                                    557 ;	-----------------------------------------
      0031FC                        558 _putchar:
                           000007   559 	ar7 = 0x07
                           000006   560 	ar6 = 0x06
                           000005   561 	ar5 = 0x05
                           000004   562 	ar4 = 0x04
                           000003   563 	ar3 = 0x03
                           000002   564 	ar2 = 0x02
                           000001   565 	ar1 = 0x01
                           000000   566 	ar0 = 0x00
      0031FC AF 83            [24]  567 	mov	r7,dph
      0031FE E5 82            [12]  568 	mov	a,dpl
      003200 90 00 16         [24]  569 	mov	dptr,#_putchar_c_65536_90
      003203 F0               [24]  570 	movx	@dptr,a
      003204 EF               [12]  571 	mov	a,r7
      003205 A3               [24]  572 	inc	dptr
      003206 F0               [24]  573 	movx	@dptr,a
                                    574 ;	main.c:19: while (!TI);				// compare asm code generated for these three lines
      003207                        575 00101$:
      003207 30 99 FD         [24]  576 	jnb	_TI,00101$
                                    577 ;	main.c:20: while (TI == 0);
      00320A                        578 00104$:
      00320A 30 99 FD         [24]  579 	jnb	_TI,00104$
                                    580 ;	main.c:21: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      00320D                        581 00107$:
      00320D E5 98            [12]  582 	mov	a,_SCON
      00320F 30 E1 FB         [24]  583 	jnb	acc.1,00107$
                                    584 ;	main.c:22: SBUF = c;  	// load serial port with transmit value
      003212 90 00 16         [24]  585 	mov	dptr,#_putchar_c_65536_90
      003215 E0               [24]  586 	movx	a,@dptr
      003216 FE               [12]  587 	mov	r6,a
      003217 A3               [24]  588 	inc	dptr
      003218 E0               [24]  589 	movx	a,@dptr
      003219 8E 99            [24]  590 	mov	_SBUF,r6
                                    591 ;	main.c:23: TI = 0;  	// clear TI flag
                                    592 ;	assignBit
      00321B C2 99            [12]  593 	clr	_TI
                                    594 ;	main.c:24: return 0;
      00321D 90 00 00         [24]  595 	mov	dptr,#0x0000
                                    596 ;	main.c:25: }
      003220 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'getchar'
                                    600 ;------------------------------------------------------------
                                    601 ;	main.c:28: int getchar(void)//reads char value from serial
                                    602 ;	-----------------------------------------
                                    603 ;	 function getchar
                                    604 ;	-----------------------------------------
      003221                        605 _getchar:
                                    606 ;	main.c:31: while (!RI);                // compare asm code generated for these three lines
      003221                        607 00101$:
      003221 30 98 FD         [24]  608 	jnb	_RI,00101$
                                    609 ;	main.c:32: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      003224                        610 00104$:
      003224 E5 98            [12]  611 	mov	a,_SCON
      003226 30 E0 FB         [24]  612 	jnb	acc.0,00104$
                                    613 ;	main.c:33: while (RI == 0);
      003229                        614 00107$:
                                    615 ;	main.c:34: RI = 0;			// clear RI flag
                                    616 ;	assignBit
      003229 10 98 02         [24]  617 	jbc	_RI,00130$
      00322C 80 FB            [24]  618 	sjmp	00107$
      00322E                        619 00130$:
                                    620 ;	main.c:35: return SBUF;  	// return character from SBUF
      00322E AE 99            [24]  621 	mov	r6,_SBUF
      003230 7F 00            [12]  622 	mov	r7,#0x00
      003232 8E 82            [24]  623 	mov	dpl,r6
      003234 8F 83            [24]  624 	mov	dph,r7
                                    625 ;	main.c:36: }
      003236 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'putstr'
                                    629 ;------------------------------------------------------------
                                    630 ;s                         Allocated with name '_putstr_s_65536_94'
                                    631 ;i                         Allocated with name '_putstr_i_65536_95'
                                    632 ;------------------------------------------------------------
                                    633 ;	main.c:37: int putstr (char *s)//outputs string to serial
                                    634 ;	-----------------------------------------
                                    635 ;	 function putstr
                                    636 ;	-----------------------------------------
      003237                        637 _putstr:
      003237 AF F0            [24]  638 	mov	r7,b
      003239 AE 83            [24]  639 	mov	r6,dph
      00323B E5 82            [12]  640 	mov	a,dpl
      00323D 90 00 18         [24]  641 	mov	dptr,#_putstr_s_65536_94
      003240 F0               [24]  642 	movx	@dptr,a
      003241 EE               [12]  643 	mov	a,r6
      003242 A3               [24]  644 	inc	dptr
      003243 F0               [24]  645 	movx	@dptr,a
      003244 EF               [12]  646 	mov	a,r7
      003245 A3               [24]  647 	inc	dptr
      003246 F0               [24]  648 	movx	@dptr,a
                                    649 ;	main.c:40: while (*s) 			// output characters until NULL found
      003247 90 00 18         [24]  650 	mov	dptr,#_putstr_s_65536_94
      00324A E0               [24]  651 	movx	a,@dptr
      00324B FD               [12]  652 	mov	r5,a
      00324C A3               [24]  653 	inc	dptr
      00324D E0               [24]  654 	movx	a,@dptr
      00324E FE               [12]  655 	mov	r6,a
      00324F A3               [24]  656 	inc	dptr
      003250 E0               [24]  657 	movx	a,@dptr
      003251 FF               [12]  658 	mov	r7,a
      003252 7B 00            [12]  659 	mov	r3,#0x00
      003254 7C 00            [12]  660 	mov	r4,#0x00
      003256                        661 00101$:
      003256 8D 82            [24]  662 	mov	dpl,r5
      003258 8E 83            [24]  663 	mov	dph,r6
      00325A 8F F0            [24]  664 	mov	b,r7
      00325C 12 43 5C         [24]  665 	lcall	__gptrget
      00325F FA               [12]  666 	mov	r2,a
      003260 60 36            [24]  667 	jz	00108$
                                    668 ;	main.c:42: putchar(*s++);
      003262 0D               [12]  669 	inc	r5
      003263 BD 00 01         [24]  670 	cjne	r5,#0x00,00116$
      003266 0E               [12]  671 	inc	r6
      003267                        672 00116$:
      003267 90 00 18         [24]  673 	mov	dptr,#_putstr_s_65536_94
      00326A ED               [12]  674 	mov	a,r5
      00326B F0               [24]  675 	movx	@dptr,a
      00326C EE               [12]  676 	mov	a,r6
      00326D A3               [24]  677 	inc	dptr
      00326E F0               [24]  678 	movx	@dptr,a
      00326F EF               [12]  679 	mov	a,r7
      003270 A3               [24]  680 	inc	dptr
      003271 F0               [24]  681 	movx	@dptr,a
      003272 8A 01            [24]  682 	mov	ar1,r2
      003274 7A 00            [12]  683 	mov	r2,#0x00
      003276 89 82            [24]  684 	mov	dpl,r1
      003278 8A 83            [24]  685 	mov	dph,r2
      00327A C0 07            [24]  686 	push	ar7
      00327C C0 06            [24]  687 	push	ar6
      00327E C0 05            [24]  688 	push	ar5
      003280 C0 04            [24]  689 	push	ar4
      003282 C0 03            [24]  690 	push	ar3
      003284 12 31 FC         [24]  691 	lcall	_putchar
      003287 D0 03            [24]  692 	pop	ar3
      003289 D0 04            [24]  693 	pop	ar4
      00328B D0 05            [24]  694 	pop	ar5
      00328D D0 06            [24]  695 	pop	ar6
      00328F D0 07            [24]  696 	pop	ar7
                                    697 ;	main.c:43: i++;
      003291 0B               [12]  698 	inc	r3
      003292 BB 00 C1         [24]  699 	cjne	r3,#0x00,00101$
      003295 0C               [12]  700 	inc	r4
      003296 80 BE            [24]  701 	sjmp	00101$
      003298                        702 00108$:
      003298 90 00 18         [24]  703 	mov	dptr,#_putstr_s_65536_94
      00329B ED               [12]  704 	mov	a,r5
      00329C F0               [24]  705 	movx	@dptr,a
      00329D EE               [12]  706 	mov	a,r6
      00329E A3               [24]  707 	inc	dptr
      00329F F0               [24]  708 	movx	@dptr,a
      0032A0 EF               [12]  709 	mov	a,r7
      0032A1 A3               [24]  710 	inc	dptr
      0032A2 F0               [24]  711 	movx	@dptr,a
                                    712 ;	main.c:46: return i+1;
      0032A3 0B               [12]  713 	inc	r3
      0032A4 BB 00 01         [24]  714 	cjne	r3,#0x00,00118$
      0032A7 0C               [12]  715 	inc	r4
      0032A8                        716 00118$:
      0032A8 8B 82            [24]  717 	mov	dpl,r3
      0032AA 8C 83            [24]  718 	mov	dph,r4
                                    719 ;	main.c:47: }
      0032AC 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'readint'
                                    723 ;------------------------------------------------------------
                                    724 ;reader                    Allocated with name '_readint_reader_65536_97'
                                    725 ;number                    Allocated with name '_readint_number_65537_98'
                                    726 ;------------------------------------------------------------
                                    727 ;	main.c:49: int readint()//reads  char string as integer
                                    728 ;	-----------------------------------------
                                    729 ;	 function readint
                                    730 ;	-----------------------------------------
      0032AD                        731 _readint:
                                    732 ;	main.c:52: gets(reader);
      0032AD 90 00 00         [24]  733 	mov	dptr,#0x0000
      0032B0 75 F0 00         [24]  734 	mov	b,#0x00
      0032B3 12 36 78         [24]  735 	lcall	_gets
                                    736 ;	main.c:53: int number=atoi(reader);
      0032B6 90 00 00         [24]  737 	mov	dptr,#0x0000
      0032B9 75 F0 00         [24]  738 	mov	b,#0x00
                                    739 ;	main.c:54: return number;
                                    740 ;	main.c:55: }
      0032BC 02 35 58         [24]  741 	ljmp	_atoi
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'writebytehandler'
                                    744 ;------------------------------------------------------------
                                    745 ;receiver                  Allocated with name '_writebytehandler_receiver_65536_99'
                                    746 ;t                         Allocated with name '_writebytehandler_t_65536_100'
                                    747 ;blockno                   Allocated with name '_writebytehandler_blockno_65536_100'
                                    748 ;address                   Allocated with name '_writebytehandler_address_65537_103'
                                    749 ;dataentry                 Allocated with name '_writebytehandler_dataentry_65538_104'
                                    750 ;data                      Allocated with name '_writebytehandler_data_65539_105'
                                    751 ;------------------------------------------------------------
                                    752 ;	main.c:64: void writebytehandler(char *receiver)
                                    753 ;	-----------------------------------------
                                    754 ;	 function writebytehandler
                                    755 ;	-----------------------------------------
      0032BF                        756 _writebytehandler:
      0032BF AF F0            [24]  757 	mov	r7,b
      0032C1 AE 83            [24]  758 	mov	r6,dph
      0032C3 E5 82            [12]  759 	mov	a,dpl
      0032C5 90 00 1D         [24]  760 	mov	dptr,#_writebytehandler_receiver_65536_99
      0032C8 F0               [24]  761 	movx	@dptr,a
      0032C9 EE               [12]  762 	mov	a,r6
      0032CA A3               [24]  763 	inc	dptr
      0032CB F0               [24]  764 	movx	@dptr,a
      0032CC EF               [12]  765 	mov	a,r7
      0032CD A3               [24]  766 	inc	dptr
      0032CE F0               [24]  767 	movx	@dptr,a
                                    768 ;	main.c:66: uint16_t t=strtohex(receiver);
      0032CF 90 00 1D         [24]  769 	mov	dptr,#_writebytehandler_receiver_65536_99
      0032D2 E0               [24]  770 	movx	a,@dptr
      0032D3 FD               [12]  771 	mov	r5,a
      0032D4 A3               [24]  772 	inc	dptr
      0032D5 E0               [24]  773 	movx	a,@dptr
      0032D6 FE               [12]  774 	mov	r6,a
      0032D7 A3               [24]  775 	inc	dptr
      0032D8 E0               [24]  776 	movx	a,@dptr
      0032D9 FF               [12]  777 	mov	r7,a
      0032DA 8D 82            [24]  778 	mov	dpl,r5
      0032DC 8E 83            [24]  779 	mov	dph,r6
      0032DE 8F F0            [24]  780 	mov	b,r7
      0032E0 12 25 C6         [24]  781 	lcall	_strtohex
      0032E3 AE 82            [24]  782 	mov	r6,dpl
      0032E5 AF 83            [24]  783 	mov	r7,dph
                                    784 ;	main.c:67: uint8_t blockno=(t & 0xE00)>>8;
      0032E7 74 0E            [12]  785 	mov	a,#0x0e
      0032E9 5F               [12]  786 	anl	a,r7
                                    787 ;	main.c:69: printf("block no. is %d\n\r",blockno);
      0032EA FD               [12]  788 	mov	r5,a
      0032EB FB               [12]  789 	mov	r3,a
      0032EC 7C 00            [12]  790 	mov	r4,#0x00
      0032EE C0 07            [24]  791 	push	ar7
      0032F0 C0 06            [24]  792 	push	ar6
      0032F2 C0 05            [24]  793 	push	ar5
      0032F4 C0 03            [24]  794 	push	ar3
      0032F6 C0 04            [24]  795 	push	ar4
      0032F8 74 FA            [12]  796 	mov	a,#___str_0
      0032FA C0 E0            [24]  797 	push	acc
      0032FC 74 43            [12]  798 	mov	a,#(___str_0 >> 8)
      0032FE C0 E0            [24]  799 	push	acc
      003300 74 80            [12]  800 	mov	a,#0x80
      003302 C0 E0            [24]  801 	push	acc
      003304 12 39 3A         [24]  802 	lcall	_printf
      003307 E5 81            [12]  803 	mov	a,sp
      003309 24 FB            [12]  804 	add	a,#0xfb
      00330B F5 81            [12]  805 	mov	sp,a
      00330D D0 05            [24]  806 	pop	ar5
      00330F D0 06            [24]  807 	pop	ar6
      003311 D0 07            [24]  808 	pop	ar7
                                    809 ;	main.c:70: if(blockno<8)
      003313 BD 08 00         [24]  810 	cjne	r5,#0x08,00110$
      003316                        811 00110$:
      003316 50 2D            [24]  812 	jnc	00102$
                                    813 ;	main.c:73: control |=blockno;
      003318 90 00 78         [24]  814 	mov	dptr,#_control
      00331B E0               [24]  815 	movx	a,@dptr
      00331C 4D               [12]  816 	orl	a,r5
      00331D F0               [24]  817 	movx	@dptr,a
                                    818 ;	main.c:74: printf("control %X\n\r",control);
      00331E E0               [24]  819 	movx	a,@dptr
      00331F FD               [12]  820 	mov	r5,a
      003320 7C 00            [12]  821 	mov	r4,#0x00
      003322 C0 07            [24]  822 	push	ar7
      003324 C0 06            [24]  823 	push	ar6
      003326 C0 05            [24]  824 	push	ar5
      003328 C0 04            [24]  825 	push	ar4
      00332A 74 0C            [12]  826 	mov	a,#___str_1
      00332C C0 E0            [24]  827 	push	acc
      00332E 74 44            [12]  828 	mov	a,#(___str_1 >> 8)
      003330 C0 E0            [24]  829 	push	acc
      003332 74 80            [12]  830 	mov	a,#0x80
      003334 C0 E0            [24]  831 	push	acc
      003336 12 39 3A         [24]  832 	lcall	_printf
      003339 E5 81            [12]  833 	mov	a,sp
      00333B 24 FB            [12]  834 	add	a,#0xfb
      00333D F5 81            [12]  835 	mov	sp,a
      00333F D0 06            [24]  836 	pop	ar6
      003341 D0 07            [24]  837 	pop	ar7
      003343 80 09            [24]  838 	sjmp	00103$
      003345                        839 00102$:
                                    840 ;	main.c:80: putstr("\n\rInvalid block no.\n\r");
      003345 90 44 19         [24]  841 	mov	dptr,#___str_2
      003348 75 F0 80         [24]  842 	mov	b,#0x80
                                    843 ;	main.c:81: return;
      00334B 02 32 37         [24]  844 	ljmp	_putstr
      00334E                        845 00103$:
                                    846 ;	main.c:84: uint8_t address=(t&0x0FF);
                                    847 ;	main.c:86: putstr("Enter data to be written\n\r");
      00334E 90 44 2F         [24]  848 	mov	dptr,#___str_3
      003351 75 F0 80         [24]  849 	mov	b,#0x80
      003354 C0 06            [24]  850 	push	ar6
      003356 12 32 37         [24]  851 	lcall	_putstr
                                    852 ;	main.c:88: gets(dataentry);
      003359 90 00 20         [24]  853 	mov	dptr,#_writebytehandler_dataentry_65538_104
      00335C 75 F0 00         [24]  854 	mov	b,#0x00
      00335F 12 36 78         [24]  855 	lcall	_gets
                                    856 ;	main.c:90: data=strtohex(dataentry);
      003362 90 00 20         [24]  857 	mov	dptr,#_writebytehandler_dataentry_65538_104
      003365 75 F0 00         [24]  858 	mov	b,#0x00
      003368 12 25 C6         [24]  859 	lcall	_strtohex
      00336B AD 82            [24]  860 	mov	r5,dpl
                                    861 ;	main.c:91: putstr(dataentry);
      00336D 90 00 20         [24]  862 	mov	dptr,#_writebytehandler_dataentry_65538_104
      003370 75 F0 00         [24]  863 	mov	b,#0x00
      003373 C0 05            [24]  864 	push	ar5
      003375 12 32 37         [24]  865 	lcall	_putstr
      003378 D0 05            [24]  866 	pop	ar5
      00337A D0 06            [24]  867 	pop	ar6
                                    868 ;	main.c:92: byte_write(control,address,data);
      00337C 90 00 78         [24]  869 	mov	dptr,#_control
      00337F E0               [24]  870 	movx	a,@dptr
      003380 FF               [12]  871 	mov	r7,a
      003381 90 00 0A         [24]  872 	mov	dptr,#_byte_write_PARM_2
      003384 EE               [12]  873 	mov	a,r6
      003385 F0               [24]  874 	movx	@dptr,a
      003386 90 00 0B         [24]  875 	mov	dptr,#_byte_write_PARM_3
      003389 ED               [12]  876 	mov	a,r5
      00338A F0               [24]  877 	movx	@dptr,a
      00338B 8F 82            [24]  878 	mov	dpl,r7
                                    879 ;	main.c:93: }
      00338D 02 2C 2F         [24]  880 	ljmp	_byte_write
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'randomread_handler'
                                    883 ;------------------------------------------------------------
                                    884 ;receiver                  Allocated with name '_randomread_handler_receiver_65536_106'
                                    885 ;t                         Allocated with name '_randomread_handler_t_65536_107'
                                    886 ;blockno                   Allocated with name '_randomread_handler_blockno_65537_108'
                                    887 ;address                   Allocated with name '_randomread_handler_address_131073_111'
                                    888 ;result                    Allocated with name '_randomread_handler_result_131073_111'
                                    889 ;------------------------------------------------------------
                                    890 ;	main.c:95: int randomread_handler(char *receiver)
                                    891 ;	-----------------------------------------
                                    892 ;	 function randomread_handler
                                    893 ;	-----------------------------------------
      003390                        894 _randomread_handler:
      003390 AF F0            [24]  895 	mov	r7,b
      003392 AE 83            [24]  896 	mov	r6,dph
      003394 E5 82            [12]  897 	mov	a,dpl
      003396 90 00 24         [24]  898 	mov	dptr,#_randomread_handler_receiver_65536_106
      003399 F0               [24]  899 	movx	@dptr,a
      00339A EE               [12]  900 	mov	a,r6
      00339B A3               [24]  901 	inc	dptr
      00339C F0               [24]  902 	movx	@dptr,a
      00339D EF               [12]  903 	mov	a,r7
      00339E A3               [24]  904 	inc	dptr
      00339F F0               [24]  905 	movx	@dptr,a
                                    906 ;	main.c:97: uint16_t t=strtohex(receiver);
      0033A0 90 00 24         [24]  907 	mov	dptr,#_randomread_handler_receiver_65536_106
      0033A3 E0               [24]  908 	movx	a,@dptr
      0033A4 FD               [12]  909 	mov	r5,a
      0033A5 A3               [24]  910 	inc	dptr
      0033A6 E0               [24]  911 	movx	a,@dptr
      0033A7 FE               [12]  912 	mov	r6,a
      0033A8 A3               [24]  913 	inc	dptr
      0033A9 E0               [24]  914 	movx	a,@dptr
      0033AA FF               [12]  915 	mov	r7,a
      0033AB 8D 82            [24]  916 	mov	dpl,r5
      0033AD 8E 83            [24]  917 	mov	dph,r6
      0033AF 8F F0            [24]  918 	mov	b,r7
      0033B1 12 25 C6         [24]  919 	lcall	_strtohex
      0033B4 AE 82            [24]  920 	mov	r6,dpl
      0033B6 AF 83            [24]  921 	mov	r7,dph
                                    922 ;	main.c:98: printf("%s input address\n\r",receiver);
      0033B8 C0 07            [24]  923 	push	ar7
      0033BA C0 06            [24]  924 	push	ar6
      0033BC 90 00 24         [24]  925 	mov	dptr,#_randomread_handler_receiver_65536_106
      0033BF E0               [24]  926 	movx	a,@dptr
      0033C0 C0 E0            [24]  927 	push	acc
      0033C2 A3               [24]  928 	inc	dptr
      0033C3 E0               [24]  929 	movx	a,@dptr
      0033C4 C0 E0            [24]  930 	push	acc
      0033C6 A3               [24]  931 	inc	dptr
      0033C7 E0               [24]  932 	movx	a,@dptr
      0033C8 C0 E0            [24]  933 	push	acc
      0033CA 74 4A            [12]  934 	mov	a,#___str_4
      0033CC C0 E0            [24]  935 	push	acc
      0033CE 74 44            [12]  936 	mov	a,#(___str_4 >> 8)
      0033D0 C0 E0            [24]  937 	push	acc
      0033D2 74 80            [12]  938 	mov	a,#0x80
      0033D4 C0 E0            [24]  939 	push	acc
      0033D6 12 39 3A         [24]  940 	lcall	_printf
      0033D9 E5 81            [12]  941 	mov	a,sp
      0033DB 24 FA            [12]  942 	add	a,#0xfa
      0033DD F5 81            [12]  943 	mov	sp,a
      0033DF D0 06            [24]  944 	pop	ar6
      0033E1 D0 07            [24]  945 	pop	ar7
                                    946 ;	main.c:99: uint8_t blockno=(t & 0xE00)>>8;
      0033E3 74 0E            [12]  947 	mov	a,#0x0e
      0033E5 5F               [12]  948 	anl	a,r7
      0033E6 FD               [12]  949 	mov	r5,a
                                    950 ;	main.c:100: if(blockno<7)
      0033E7 BD 07 00         [24]  951 	cjne	r5,#0x07,00117$
      0033EA                        952 00117$:
      0033EA 50 08            [24]  953 	jnc	00102$
                                    954 ;	main.c:103: control |=blockno;
      0033EC 90 00 78         [24]  955 	mov	dptr,#_control
      0033EF E0               [24]  956 	movx	a,@dptr
      0033F0 4D               [12]  957 	orl	a,r5
      0033F1 F0               [24]  958 	movx	@dptr,a
      0033F2 80 06            [24]  959 	sjmp	00103$
      0033F4                        960 00102$:
                                    961 ;	main.c:108: errorflag=1;
      0033F4 90 00 79         [24]  962 	mov	dptr,#_errorflag
      0033F7 74 01            [12]  963 	mov	a,#0x01
      0033F9 F0               [24]  964 	movx	@dptr,a
      0033FA                        965 00103$:
                                    966 ;	main.c:109: if(errorflag)
      0033FA 90 00 79         [24]  967 	mov	dptr,#_errorflag
      0033FD E0               [24]  968 	movx	a,@dptr
      0033FE 60 0D            [24]  969 	jz	00105$
                                    970 ;	main.c:111: putstr("Wrong block number. \n\r");
      003400 90 44 5D         [24]  971 	mov	dptr,#___str_5
      003403 75 F0 80         [24]  972 	mov	b,#0x80
      003406 12 32 37         [24]  973 	lcall	_putstr
                                    974 ;	main.c:112: return -1;
      003409 90 FF FF         [24]  975 	mov	dptr,#0xffff
      00340C 22               [24]  976 	ret
      00340D                        977 00105$:
                                    978 ;	main.c:117: uint8_t address=(t&0x0FF);
                                    979 ;	main.c:118: int result =random_read(control,address);
      00340D 90 00 78         [24]  980 	mov	dptr,#_control
      003410 E0               [24]  981 	movx	a,@dptr
      003411 FF               [12]  982 	mov	r7,a
      003412 90 00 0F         [24]  983 	mov	dptr,#_random_read_PARM_2
      003415 EE               [12]  984 	mov	a,r6
      003416 F0               [24]  985 	movx	@dptr,a
      003417 8F 82            [24]  986 	mov	dpl,r7
      003419 12 2C BD         [24]  987 	lcall	_random_read
      00341C AE 82            [24]  988 	mov	r6,dpl
      00341E AF 83            [24]  989 	mov	r7,dph
                                    990 ;	main.c:120: errorflag=0;
      003420 90 00 79         [24]  991 	mov	dptr,#_errorflag
      003423 E4               [12]  992 	clr	a
      003424 F0               [24]  993 	movx	@dptr,a
                                    994 ;	main.c:121: return result;
      003425 8E 82            [24]  995 	mov	dpl,r6
      003427 8F 83            [24]  996 	mov	dph,r7
                                    997 ;	main.c:124: }
      003429 22               [24]  998 	ret
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'main'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	main.c:126: void main(void)
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function main
                                   1005 ;	-----------------------------------------
      00342A                       1006 _main:
                                   1007 ;	main.c:128: i2c_reset();
      00342A 12 30 A0         [24] 1008 	lcall	_i2c_reset
                                   1009 ;	main.c:129: while(1)
      00342D                       1010 00109$:
                                   1011 ;	main.c:131: errorflag=0;
      00342D 90 00 79         [24] 1012 	mov	dptr,#_errorflag
      003430 E4               [12] 1013 	clr	a
      003431 F0               [24] 1014 	movx	@dptr,a
                                   1015 ;	main.c:132: putstr("*****************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\r\n\rPRESS X FOR EEPROM RESET\n\r");
      003432 90 44 74         [24] 1016 	mov	dptr,#___str_6
      003435 75 F0 80         [24] 1017 	mov	b,#0x80
      003438 12 32 37         [24] 1018 	lcall	_putstr
                                   1019 ;	main.c:133: menuselect=getchar();
      00343B 12 32 21         [24] 1020 	lcall	_getchar
      00343E AE 82            [24] 1021 	mov	r6,dpl
      003440 AF 83            [24] 1022 	mov	r7,dph
      003442 90 00 1B         [24] 1023 	mov	dptr,#_menuselect
      003445 EE               [12] 1024 	mov	a,r6
      003446 F0               [24] 1025 	movx	@dptr,a
      003447 EF               [12] 1026 	mov	a,r7
      003448 A3               [24] 1027 	inc	dptr
      003449 F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	main.c:135: putchar(menuselect);
      00344A 8E 82            [24] 1030 	mov	dpl,r6
      00344C 8F 83            [24] 1031 	mov	dph,r7
      00344E 12 31 FC         [24] 1032 	lcall	_putchar
                                   1033 ;	main.c:136: putstr("\n\r");
      003451 90 45 0B         [24] 1034 	mov	dptr,#___str_7
      003454 75 F0 80         [24] 1035 	mov	b,#0x80
      003457 12 32 37         [24] 1036 	lcall	_putstr
                                   1037 ;	main.c:138: switch(toupper(menuselect))
      00345A 90 00 1B         [24] 1038 	mov	dptr,#_menuselect
      00345D E0               [24] 1039 	movx	a,@dptr
      00345E FE               [12] 1040 	mov	r6,a
      00345F A3               [24] 1041 	inc	dptr
      003460 E0               [24] 1042 	movx	a,@dptr
      003461 FF               [12] 1043 	mov	r7,a
      003462 8E 82            [24] 1044 	mov	dpl,r6
      003464 8F 83            [24] 1045 	mov	dph,r7
      003466 12 38 B1         [24] 1046 	lcall	_toupper
      003469 AE 82            [24] 1047 	mov	r6,dpl
      00346B AF 83            [24] 1048 	mov	r7,dph
      00346D BE 52 05         [24] 1049 	cjne	r6,#0x52,00137$
      003470 BF 00 02         [24] 1050 	cjne	r7,#0x00,00137$
      003473 80 56            [24] 1051 	sjmp	00102$
      003475                       1052 00137$:
      003475 BE 53 06         [24] 1053 	cjne	r6,#0x53,00138$
      003478 BF 00 03         [24] 1054 	cjne	r7,#0x00,00138$
      00347B 02 35 34         [24] 1055 	ljmp	00105$
      00347E                       1056 00138$:
      00347E BE 57 05         [24] 1057 	cjne	r6,#0x57,00139$
      003481 BF 00 02         [24] 1058 	cjne	r7,#0x00,00139$
      003484 80 0B            [24] 1059 	sjmp	00101$
      003486                       1060 00139$:
      003486 BE 58 06         [24] 1061 	cjne	r6,#0x58,00140$
      003489 BF 00 03         [24] 1062 	cjne	r7,#0x00,00140$
      00348C 02 35 43         [24] 1063 	ljmp	00106$
      00348F                       1064 00140$:
                                   1065 ;	main.c:141: case 'W':
      00348F 80 9C            [24] 1066 	sjmp	00109$
      003491                       1067 00101$:
                                   1068 ;	main.c:142: putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
      003491 90 45 0E         [24] 1069 	mov	dptr,#___str_8
      003494 75 F0 80         [24] 1070 	mov	b,#0x80
      003497 12 32 37         [24] 1071 	lcall	_putstr
                                   1072 ;	main.c:144: gets(addressreceiver);
      00349A 90 00 7A         [24] 1073 	mov	dptr,#_addressreceiver
      00349D E0               [24] 1074 	movx	a,@dptr
      00349E FD               [12] 1075 	mov	r5,a
      00349F A3               [24] 1076 	inc	dptr
      0034A0 E0               [24] 1077 	movx	a,@dptr
      0034A1 FE               [12] 1078 	mov	r6,a
      0034A2 A3               [24] 1079 	inc	dptr
      0034A3 E0               [24] 1080 	movx	a,@dptr
      0034A4 FF               [12] 1081 	mov	r7,a
      0034A5 8D 82            [24] 1082 	mov	dpl,r5
      0034A7 8E 83            [24] 1083 	mov	dph,r6
      0034A9 8F F0            [24] 1084 	mov	b,r7
      0034AB 12 36 78         [24] 1085 	lcall	_gets
                                   1086 ;	main.c:145: writebytehandler(addressreceiver);
      0034AE 90 00 7A         [24] 1087 	mov	dptr,#_addressreceiver
      0034B1 E0               [24] 1088 	movx	a,@dptr
      0034B2 FD               [12] 1089 	mov	r5,a
      0034B3 A3               [24] 1090 	inc	dptr
      0034B4 E0               [24] 1091 	movx	a,@dptr
      0034B5 FE               [12] 1092 	mov	r6,a
      0034B6 A3               [24] 1093 	inc	dptr
      0034B7 E0               [24] 1094 	movx	a,@dptr
      0034B8 FF               [12] 1095 	mov	r7,a
      0034B9 8D 82            [24] 1096 	mov	dpl,r5
      0034BB 8E 83            [24] 1097 	mov	dph,r6
      0034BD 8F F0            [24] 1098 	mov	b,r7
      0034BF 12 32 BF         [24] 1099 	lcall	_writebytehandler
                                   1100 ;	main.c:146: control=0xA0;
      0034C2 90 00 78         [24] 1101 	mov	dptr,#_control
      0034C5 74 A0            [12] 1102 	mov	a,#0xa0
      0034C7 F0               [24] 1103 	movx	@dptr,a
                                   1104 ;	main.c:147: break;
      0034C8 02 34 2D         [24] 1105 	ljmp	00109$
                                   1106 ;	main.c:149: case 'R':
      0034CB                       1107 00102$:
                                   1108 ;	main.c:150: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX\n\r");
      0034CB 90 45 7B         [24] 1109 	mov	dptr,#___str_9
      0034CE 75 F0 80         [24] 1110 	mov	b,#0x80
      0034D1 12 32 37         [24] 1111 	lcall	_putstr
                                   1112 ;	main.c:151: gets(addressreceiver);
      0034D4 90 00 7A         [24] 1113 	mov	dptr,#_addressreceiver
      0034D7 E0               [24] 1114 	movx	a,@dptr
      0034D8 FD               [12] 1115 	mov	r5,a
      0034D9 A3               [24] 1116 	inc	dptr
      0034DA E0               [24] 1117 	movx	a,@dptr
      0034DB FE               [12] 1118 	mov	r6,a
      0034DC A3               [24] 1119 	inc	dptr
      0034DD E0               [24] 1120 	movx	a,@dptr
      0034DE FF               [12] 1121 	mov	r7,a
      0034DF 8D 82            [24] 1122 	mov	dpl,r5
      0034E1 8E 83            [24] 1123 	mov	dph,r6
      0034E3 8F F0            [24] 1124 	mov	b,r7
      0034E5 12 36 78         [24] 1125 	lcall	_gets
                                   1126 ;	main.c:152: output=randomread_handler(addressreceiver);
      0034E8 90 00 7A         [24] 1127 	mov	dptr,#_addressreceiver
      0034EB E0               [24] 1128 	movx	a,@dptr
      0034EC FD               [12] 1129 	mov	r5,a
      0034ED A3               [24] 1130 	inc	dptr
      0034EE E0               [24] 1131 	movx	a,@dptr
      0034EF FE               [12] 1132 	mov	r6,a
      0034F0 A3               [24] 1133 	inc	dptr
      0034F1 E0               [24] 1134 	movx	a,@dptr
      0034F2 FF               [12] 1135 	mov	r7,a
      0034F3 8D 82            [24] 1136 	mov	dpl,r5
      0034F5 8E 83            [24] 1137 	mov	dph,r6
      0034F7 8F F0            [24] 1138 	mov	b,r7
      0034F9 12 33 90         [24] 1139 	lcall	_randomread_handler
      0034FC AE 82            [24] 1140 	mov	r6,dpl
      0034FE AF 83            [24] 1141 	mov	r7,dph
      003500 90 00 27         [24] 1142 	mov	dptr,#_output
      003503 EE               [12] 1143 	mov	a,r6
      003504 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	main.c:153: if(errorflag==0)
      003505 90 00 79         [24] 1146 	mov	dptr,#_errorflag
      003508 E0               [24] 1147 	movx	a,@dptr
      003509 70 20            [24] 1148 	jnz	00104$
                                   1149 ;	main.c:154: printf("Read value is 0x%X\n\r",output);
      00350B 90 00 27         [24] 1150 	mov	dptr,#_output
      00350E E0               [24] 1151 	movx	a,@dptr
      00350F FF               [12] 1152 	mov	r7,a
      003510 7E 00            [12] 1153 	mov	r6,#0x00
      003512 C0 07            [24] 1154 	push	ar7
      003514 C0 06            [24] 1155 	push	ar6
      003516 74 E4            [12] 1156 	mov	a,#___str_10
      003518 C0 E0            [24] 1157 	push	acc
      00351A 74 45            [12] 1158 	mov	a,#(___str_10 >> 8)
      00351C C0 E0            [24] 1159 	push	acc
      00351E 74 80            [12] 1160 	mov	a,#0x80
      003520 C0 E0            [24] 1161 	push	acc
      003522 12 39 3A         [24] 1162 	lcall	_printf
      003525 E5 81            [12] 1163 	mov	a,sp
      003527 24 FB            [12] 1164 	add	a,#0xfb
      003529 F5 81            [12] 1165 	mov	sp,a
      00352B                       1166 00104$:
                                   1167 ;	main.c:155: control=0xA0;
      00352B 90 00 78         [24] 1168 	mov	dptr,#_control
      00352E 74 A0            [12] 1169 	mov	a,#0xa0
      003530 F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	main.c:156: break;
      003531 02 34 2D         [24] 1172 	ljmp	00109$
                                   1173 ;	main.c:157: case 'S':
      003534                       1174 00105$:
                                   1175 ;	main.c:160: seq_read(0xA0);
      003534 75 82 A0         [24] 1176 	mov	dpl,#0xa0
      003537 12 2D 1C         [24] 1177 	lcall	_seq_read
                                   1178 ;	main.c:161: control=0xA0;
      00353A 90 00 78         [24] 1179 	mov	dptr,#_control
      00353D 74 A0            [12] 1180 	mov	a,#0xa0
      00353F F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	main.c:163: break;
      003540 02 34 2D         [24] 1183 	ljmp	00109$
                                   1184 ;	main.c:164: case 'X':
      003543                       1185 00106$:
                                   1186 ;	main.c:165: restart_i2c();
      003543 12 30 DC         [24] 1187 	lcall	_restart_i2c
                                   1188 ;	main.c:166: i2c_write(0xFF);
      003546 90 00 FF         [24] 1189 	mov	dptr,#0x00ff
      003549 12 30 E6         [24] 1190 	lcall	_i2c_write
                                   1191 ;	main.c:167: i2c_nack();
      00354C 12 31 84         [24] 1192 	lcall	_i2c_nack
                                   1193 ;	main.c:168: restart_i2c();
      00354F 12 30 DC         [24] 1194 	lcall	_restart_i2c
                                   1195 ;	main.c:169: i2c_stop();
      003552 12 30 B5         [24] 1196 	lcall	_i2c_stop
                                   1197 ;	main.c:210: }
                                   1198 ;	main.c:214: }
      003555 02 34 2D         [24] 1199 	ljmp	00109$
                                   1200 	.area CSEG    (CODE)
                                   1201 	.area CONST   (CODE)
                                   1202 	.area CONST   (CODE)
      0043FA                       1203 ___str_0:
      0043FA 62 6C 6F 63 6B 20 6E  1204 	.ascii "block no. is %d"
             6F 2E 20 69 73 20 25
             64
      004409 0A                    1205 	.db 0x0a
      00440A 0D                    1206 	.db 0x0d
      00440B 00                    1207 	.db 0x00
                                   1208 	.area CSEG    (CODE)
                                   1209 	.area CONST   (CODE)
      00440C                       1210 ___str_1:
      00440C 63 6F 6E 74 72 6F 6C  1211 	.ascii "control %X"
             20 25 58
      004416 0A                    1212 	.db 0x0a
      004417 0D                    1213 	.db 0x0d
      004418 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      004419                       1217 ___str_2:
      004419 0A                    1218 	.db 0x0a
      00441A 0D                    1219 	.db 0x0d
      00441B 49 6E 76 61 6C 69 64  1220 	.ascii "Invalid block no."
             20 62 6C 6F 63 6B 20
             6E 6F 2E
      00442C 0A                    1221 	.db 0x0a
      00442D 0D                    1222 	.db 0x0d
      00442E 00                    1223 	.db 0x00
                                   1224 	.area CSEG    (CODE)
                                   1225 	.area CONST   (CODE)
      00442F                       1226 ___str_3:
      00442F 45 6E 74 65 72 20 64  1227 	.ascii "Enter data to be written"
             61 74 61 20 74 6F 20
             62 65 20 77 72 69 74
             74 65 6E
      004447 0A                    1228 	.db 0x0a
      004448 0D                    1229 	.db 0x0d
      004449 00                    1230 	.db 0x00
                                   1231 	.area CSEG    (CODE)
                                   1232 	.area CONST   (CODE)
      00444A                       1233 ___str_4:
      00444A 25 73 20 69 6E 70 75  1234 	.ascii "%s input address"
             74 20 61 64 64 72 65
             73 73
      00445A 0A                    1235 	.db 0x0a
      00445B 0D                    1236 	.db 0x0d
      00445C 00                    1237 	.db 0x00
                                   1238 	.area CSEG    (CODE)
                                   1239 	.area CONST   (CODE)
      00445D                       1240 ___str_5:
      00445D 57 72 6F 6E 67 20 62  1241 	.ascii "Wrong block number. "
             6C 6F 63 6B 20 6E 75
             6D 62 65 72 2E 20
      004471 0A                    1242 	.db 0x0a
      004472 0D                    1243 	.db 0x0d
      004473 00                    1244 	.db 0x00
                                   1245 	.area CSEG    (CODE)
                                   1246 	.area CONST   (CODE)
      004474                       1247 ___str_6:
      004474 2A 2A 2A 2A 2A 2A 2A  1248 	.ascii "*****************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A
      004485 0A                    1249 	.db 0x0a
      004486 0D                    1250 	.db 0x0d
      004487 4D 45 4E 55 20 46 4F  1251 	.ascii "MENU FOR TESTING I2C FUNCTIONS"
             52 20 54 45 53 54 49
             4E 47 20 49 32 43 20
             46 55 4E 43 54 49 4F
             4E 53
      0044A5 0A                    1252 	.db 0x0a
      0044A6 0D                    1253 	.db 0x0d
      0044A7 50 52 45 53 53 20 57  1254 	.ascii "PRESS W FOR WRITE BYTE"
             20 46 4F 52 20 57 52
             49 54 45 20 42 59 54
             45
      0044BD 0A                    1255 	.db 0x0a
      0044BE 0D                    1256 	.db 0x0d
      0044BF 50 52 45 53 53 20 52  1257 	.ascii "PRESS R FOR RANDOM READ"
             20 46 4F 52 20 52 41
             4E 44 4F 4D 20 52 45
             41 44
      0044D6 0A                    1258 	.db 0x0a
      0044D7 0D                    1259 	.db 0x0d
      0044D8 50 52 45 53 53 20 53  1260 	.ascii "PRESS S FOR HEX DUMP"
             20 46 4F 52 20 48 45
             58 20 44 55 4D 50
      0044EC 0A                    1261 	.db 0x0a
      0044ED 0D                    1262 	.db 0x0d
      0044EE 0A                    1263 	.db 0x0a
      0044EF 0D                    1264 	.db 0x0d
      0044F0 50 52 45 53 53 20 58  1265 	.ascii "PRESS X FOR EEPROM RESET"
             20 46 4F 52 20 45 45
             50 52 4F 4D 20 52 45
             53 45 54
      004508 0A                    1266 	.db 0x0a
      004509 0D                    1267 	.db 0x0d
      00450A 00                    1268 	.db 0x00
                                   1269 	.area CSEG    (CODE)
                                   1270 	.area CONST   (CODE)
      00450B                       1271 ___str_7:
      00450B 0A                    1272 	.db 0x0a
      00450C 0D                    1273 	.db 0x0d
      00450D 00                    1274 	.db 0x00
                                   1275 	.area CSEG    (CODE)
                                   1276 	.area CONST   (CODE)
      00450E                       1277 ___str_8:
      00450E 45 4E 54 45 52 20 41  1278 	.ascii "ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER A"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 57
             52 49 54 54 45 4E 20
             2C 41 44 44 52 45 53
             53 20 49 4E 43 4C 55
             44 45 53 20 42 4C 4F
             43 4B 20 4E 55 4D 42
             45 52 20 41
      00454A 4E 44 20 57 4F 52 44  1279 	.ascii "ND WORD ADRRESS TOGETHER SEPERATED BY 0 in HEX"
             20 41 44 52 52 45 53
             53 20 54 4F 47 45 54
             48 45 52 20 53 45 50
             45 52 41 54 45 44 20
             42 59 20 30 20 69 6E
             20 48 45 58
      004578 0A                    1280 	.db 0x0a
      004579 0D                    1281 	.db 0x0d
      00457A 00                    1282 	.db 0x00
                                   1283 	.area CSEG    (CODE)
                                   1284 	.area CONST   (CODE)
      00457B                       1285 ___str_9:
      00457B 45 4E 54 45 52 20 41  1286 	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 52
             45 41 44 2C 41 44 44
             52 45 53 53 20 49 4E
             43 4C 55 44 45 53 20
             42 4C 4F 43 4B 20 4E
             55 4D 42 45 52 20 41
             4E 44 20 57
      0045B7 4F 52 44 20 41 44 52  1287 	.ascii "ORD ADRRESS TOGETHER SEPERATED BY 0 in HEX"
             52 45 53 53 20 54 4F
             47 45 54 48 45 52 20
             53 45 50 45 52 41 54
             45 44 20 42 59 20 30
             20 69 6E 20 48 45 58
      0045E1 0A                    1288 	.db 0x0a
      0045E2 0D                    1289 	.db 0x0d
      0045E3 00                    1290 	.db 0x00
                                   1291 	.area CSEG    (CODE)
                                   1292 	.area CONST   (CODE)
      0045E4                       1293 ___str_10:
      0045E4 52 65 61 64 20 76 61  1294 	.ascii "Read value is 0x%X"
             6C 75 65 20 69 73 20
             30 78 25 58
      0045F6 0A                    1295 	.db 0x0a
      0045F7 0D                    1296 	.db 0x0d
      0045F8 00                    1297 	.db 0x00
                                   1298 	.area CSEG    (CODE)
                                   1299 	.area XINIT   (CODE)
      004604                       1300 __xinit__control:
      004604 A0                    1301 	.db #0xa0	; 160
      004605                       1302 __xinit__errorflag:
      004605 00                    1303 	.db #0x00	; 0
      004606                       1304 __xinit__addressreceiver:
      004606 00 00 00              1305 	.byte #0x00,#0x00,#0x00
                                   1306 	.area CABS    (ABS,CODE)
