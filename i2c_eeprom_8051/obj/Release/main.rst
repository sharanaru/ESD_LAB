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
                                     16 	.globl _inputchecker
                                     17 	.globl _strtohex
                                     18 	.globl _seq_read
                                     19 	.globl _random_read
                                     20 	.globl _byte_write
                                     21 	.globl _i2c_nack
                                     22 	.globl _i2c_write
                                     23 	.globl _restart_i2c
                                     24 	.globl _i2c_stop
                                     25 	.globl _i2c_reset
                                     26 	.globl _toupper
                                     27 	.globl _printf_tiny
                                     28 	.globl _gets
                                     29 	.globl _printf
                                     30 	.globl _atoi
                                     31 	.globl _P5_7
                                     32 	.globl _P5_6
                                     33 	.globl _P5_5
                                     34 	.globl _P5_4
                                     35 	.globl _P5_3
                                     36 	.globl _P5_2
                                     37 	.globl _P5_1
                                     38 	.globl _P5_0
                                     39 	.globl _P4_7
                                     40 	.globl _P4_6
                                     41 	.globl _P4_5
                                     42 	.globl _P4_4
                                     43 	.globl _P4_3
                                     44 	.globl _P4_2
                                     45 	.globl _P4_1
                                     46 	.globl _P4_0
                                     47 	.globl _PX0L
                                     48 	.globl _PT0L
                                     49 	.globl _PX1L
                                     50 	.globl _PT1L
                                     51 	.globl _PSL
                                     52 	.globl _PT2L
                                     53 	.globl _PPCL
                                     54 	.globl _EC
                                     55 	.globl _CCF0
                                     56 	.globl _CCF1
                                     57 	.globl _CCF2
                                     58 	.globl _CCF3
                                     59 	.globl _CCF4
                                     60 	.globl _CR
                                     61 	.globl _CF
                                     62 	.globl _TF2
                                     63 	.globl _EXF2
                                     64 	.globl _RCLK
                                     65 	.globl _TCLK
                                     66 	.globl _EXEN2
                                     67 	.globl _TR2
                                     68 	.globl _C_T2
                                     69 	.globl _CP_RL2
                                     70 	.globl _T2CON_7
                                     71 	.globl _T2CON_6
                                     72 	.globl _T2CON_5
                                     73 	.globl _T2CON_4
                                     74 	.globl _T2CON_3
                                     75 	.globl _T2CON_2
                                     76 	.globl _T2CON_1
                                     77 	.globl _T2CON_0
                                     78 	.globl _PT2
                                     79 	.globl _ET2
                                     80 	.globl _CY
                                     81 	.globl _AC
                                     82 	.globl _F0
                                     83 	.globl _RS1
                                     84 	.globl _RS0
                                     85 	.globl _OV
                                     86 	.globl _F1
                                     87 	.globl _P
                                     88 	.globl _PS
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _RD
                                     94 	.globl _WR
                                     95 	.globl _T1
                                     96 	.globl _T0
                                     97 	.globl _INT1
                                     98 	.globl _INT0
                                     99 	.globl _TXD
                                    100 	.globl _RXD
                                    101 	.globl _P3_7
                                    102 	.globl _P3_6
                                    103 	.globl _P3_5
                                    104 	.globl _P3_4
                                    105 	.globl _P3_3
                                    106 	.globl _P3_2
                                    107 	.globl _P3_1
                                    108 	.globl _P3_0
                                    109 	.globl _EA
                                    110 	.globl _ES
                                    111 	.globl _ET1
                                    112 	.globl _EX1
                                    113 	.globl _ET0
                                    114 	.globl _EX0
                                    115 	.globl _P2_7
                                    116 	.globl _P2_6
                                    117 	.globl _P2_5
                                    118 	.globl _P2_4
                                    119 	.globl _P2_3
                                    120 	.globl _P2_2
                                    121 	.globl _P2_1
                                    122 	.globl _P2_0
                                    123 	.globl _SM0
                                    124 	.globl _SM1
                                    125 	.globl _SM2
                                    126 	.globl _REN
                                    127 	.globl _TB8
                                    128 	.globl _RB8
                                    129 	.globl _TI
                                    130 	.globl _RI
                                    131 	.globl _P1_7
                                    132 	.globl _P1_6
                                    133 	.globl _P1_5
                                    134 	.globl _P1_4
                                    135 	.globl _P1_3
                                    136 	.globl _P1_2
                                    137 	.globl _P1_1
                                    138 	.globl _P1_0
                                    139 	.globl _TF1
                                    140 	.globl _TR1
                                    141 	.globl _TF0
                                    142 	.globl _TR0
                                    143 	.globl _IE1
                                    144 	.globl _IT1
                                    145 	.globl _IE0
                                    146 	.globl _IT0
                                    147 	.globl _P0_7
                                    148 	.globl _P0_6
                                    149 	.globl _P0_5
                                    150 	.globl _P0_4
                                    151 	.globl _P0_3
                                    152 	.globl _P0_2
                                    153 	.globl _P0_1
                                    154 	.globl _P0_0
                                    155 	.globl _EECON
                                    156 	.globl _KBF
                                    157 	.globl _KBE
                                    158 	.globl _KBLS
                                    159 	.globl _BRL
                                    160 	.globl _BDRCON
                                    161 	.globl _T2MOD
                                    162 	.globl _SPDAT
                                    163 	.globl _SPSTA
                                    164 	.globl _SPCON
                                    165 	.globl _SADEN
                                    166 	.globl _SADDR
                                    167 	.globl _WDTPRG
                                    168 	.globl _WDTRST
                                    169 	.globl _P5
                                    170 	.globl _P4
                                    171 	.globl _IPH1
                                    172 	.globl _IPL1
                                    173 	.globl _IPH0
                                    174 	.globl _IPL0
                                    175 	.globl _IEN1
                                    176 	.globl _IEN0
                                    177 	.globl _CMOD
                                    178 	.globl _CL
                                    179 	.globl _CH
                                    180 	.globl _CCON
                                    181 	.globl _CCAPM4
                                    182 	.globl _CCAPM3
                                    183 	.globl _CCAPM2
                                    184 	.globl _CCAPM1
                                    185 	.globl _CCAPM0
                                    186 	.globl _CCAP4L
                                    187 	.globl _CCAP3L
                                    188 	.globl _CCAP2L
                                    189 	.globl _CCAP1L
                                    190 	.globl _CCAP0L
                                    191 	.globl _CCAP4H
                                    192 	.globl _CCAP3H
                                    193 	.globl _CCAP2H
                                    194 	.globl _CCAP1H
                                    195 	.globl _CCAP0H
                                    196 	.globl _CKCON1
                                    197 	.globl _CKCON0
                                    198 	.globl _CKRL
                                    199 	.globl _AUXR1
                                    200 	.globl _AUXR
                                    201 	.globl _TH2
                                    202 	.globl _TL2
                                    203 	.globl _RCAP2H
                                    204 	.globl _RCAP2L
                                    205 	.globl _T2CON
                                    206 	.globl _B
                                    207 	.globl _ACC
                                    208 	.globl _PSW
                                    209 	.globl _IP
                                    210 	.globl _P3
                                    211 	.globl _IE
                                    212 	.globl _P2
                                    213 	.globl _SBUF
                                    214 	.globl _SCON
                                    215 	.globl _P1
                                    216 	.globl _TH1
                                    217 	.globl _TH0
                                    218 	.globl _TL1
                                    219 	.globl _TL0
                                    220 	.globl _TMOD
                                    221 	.globl _TCON
                                    222 	.globl _PCON
                                    223 	.globl _DPH
                                    224 	.globl _DPL
                                    225 	.globl _SP
                                    226 	.globl _P0
                                    227 	.globl _errorflag
                                    228 	.globl _control
                                    229 	.globl _flag_inputcheck
                                    230 	.globl _output
                                    231 	.globl _menuselect
                                    232 	.globl _addressreceiver
                                    233 	.globl _putchar
                                    234 	.globl _getchar
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           000080   240 _P0	=	0x0080
                           000081   241 _SP	=	0x0081
                           000082   242 _DPL	=	0x0082
                           000083   243 _DPH	=	0x0083
                           000087   244 _PCON	=	0x0087
                           000088   245 _TCON	=	0x0088
                           000089   246 _TMOD	=	0x0089
                           00008A   247 _TL0	=	0x008a
                           00008B   248 _TL1	=	0x008b
                           00008C   249 _TH0	=	0x008c
                           00008D   250 _TH1	=	0x008d
                           000090   251 _P1	=	0x0090
                           000098   252 _SCON	=	0x0098
                           000099   253 _SBUF	=	0x0099
                           0000A0   254 _P2	=	0x00a0
                           0000A8   255 _IE	=	0x00a8
                           0000B0   256 _P3	=	0x00b0
                           0000B8   257 _IP	=	0x00b8
                           0000D0   258 _PSW	=	0x00d0
                           0000E0   259 _ACC	=	0x00e0
                           0000F0   260 _B	=	0x00f0
                           0000C8   261 _T2CON	=	0x00c8
                           0000CA   262 _RCAP2L	=	0x00ca
                           0000CB   263 _RCAP2H	=	0x00cb
                           0000CC   264 _TL2	=	0x00cc
                           0000CD   265 _TH2	=	0x00cd
                           00008E   266 _AUXR	=	0x008e
                           0000A2   267 _AUXR1	=	0x00a2
                           000097   268 _CKRL	=	0x0097
                           00008F   269 _CKCON0	=	0x008f
                           0000AF   270 _CKCON1	=	0x00af
                           0000FA   271 _CCAP0H	=	0x00fa
                           0000FB   272 _CCAP1H	=	0x00fb
                           0000FC   273 _CCAP2H	=	0x00fc
                           0000FD   274 _CCAP3H	=	0x00fd
                           0000FE   275 _CCAP4H	=	0x00fe
                           0000EA   276 _CCAP0L	=	0x00ea
                           0000EB   277 _CCAP1L	=	0x00eb
                           0000EC   278 _CCAP2L	=	0x00ec
                           0000ED   279 _CCAP3L	=	0x00ed
                           0000EE   280 _CCAP4L	=	0x00ee
                           0000DA   281 _CCAPM0	=	0x00da
                           0000DB   282 _CCAPM1	=	0x00db
                           0000DC   283 _CCAPM2	=	0x00dc
                           0000DD   284 _CCAPM3	=	0x00dd
                           0000DE   285 _CCAPM4	=	0x00de
                           0000D8   286 _CCON	=	0x00d8
                           0000F9   287 _CH	=	0x00f9
                           0000E9   288 _CL	=	0x00e9
                           0000D9   289 _CMOD	=	0x00d9
                           0000A8   290 _IEN0	=	0x00a8
                           0000B1   291 _IEN1	=	0x00b1
                           0000B8   292 _IPL0	=	0x00b8
                           0000B7   293 _IPH0	=	0x00b7
                           0000B2   294 _IPL1	=	0x00b2
                           0000B3   295 _IPH1	=	0x00b3
                           0000C0   296 _P4	=	0x00c0
                           0000E8   297 _P5	=	0x00e8
                           0000A6   298 _WDTRST	=	0x00a6
                           0000A7   299 _WDTPRG	=	0x00a7
                           0000A9   300 _SADDR	=	0x00a9
                           0000B9   301 _SADEN	=	0x00b9
                           0000C3   302 _SPCON	=	0x00c3
                           0000C4   303 _SPSTA	=	0x00c4
                           0000C5   304 _SPDAT	=	0x00c5
                           0000C9   305 _T2MOD	=	0x00c9
                           00009B   306 _BDRCON	=	0x009b
                           00009A   307 _BRL	=	0x009a
                           00009C   308 _KBLS	=	0x009c
                           00009D   309 _KBE	=	0x009d
                           00009E   310 _KBF	=	0x009e
                           0000D2   311 _EECON	=	0x00d2
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           000080   317 _P0_0	=	0x0080
                           000081   318 _P0_1	=	0x0081
                           000082   319 _P0_2	=	0x0082
                           000083   320 _P0_3	=	0x0083
                           000084   321 _P0_4	=	0x0084
                           000085   322 _P0_5	=	0x0085
                           000086   323 _P0_6	=	0x0086
                           000087   324 _P0_7	=	0x0087
                           000088   325 _IT0	=	0x0088
                           000089   326 _IE0	=	0x0089
                           00008A   327 _IT1	=	0x008a
                           00008B   328 _IE1	=	0x008b
                           00008C   329 _TR0	=	0x008c
                           00008D   330 _TF0	=	0x008d
                           00008E   331 _TR1	=	0x008e
                           00008F   332 _TF1	=	0x008f
                           000090   333 _P1_0	=	0x0090
                           000091   334 _P1_1	=	0x0091
                           000092   335 _P1_2	=	0x0092
                           000093   336 _P1_3	=	0x0093
                           000094   337 _P1_4	=	0x0094
                           000095   338 _P1_5	=	0x0095
                           000096   339 _P1_6	=	0x0096
                           000097   340 _P1_7	=	0x0097
                           000098   341 _RI	=	0x0098
                           000099   342 _TI	=	0x0099
                           00009A   343 _RB8	=	0x009a
                           00009B   344 _TB8	=	0x009b
                           00009C   345 _REN	=	0x009c
                           00009D   346 _SM2	=	0x009d
                           00009E   347 _SM1	=	0x009e
                           00009F   348 _SM0	=	0x009f
                           0000A0   349 _P2_0	=	0x00a0
                           0000A1   350 _P2_1	=	0x00a1
                           0000A2   351 _P2_2	=	0x00a2
                           0000A3   352 _P2_3	=	0x00a3
                           0000A4   353 _P2_4	=	0x00a4
                           0000A5   354 _P2_5	=	0x00a5
                           0000A6   355 _P2_6	=	0x00a6
                           0000A7   356 _P2_7	=	0x00a7
                           0000A8   357 _EX0	=	0x00a8
                           0000A9   358 _ET0	=	0x00a9
                           0000AA   359 _EX1	=	0x00aa
                           0000AB   360 _ET1	=	0x00ab
                           0000AC   361 _ES	=	0x00ac
                           0000AF   362 _EA	=	0x00af
                           0000B0   363 _P3_0	=	0x00b0
                           0000B1   364 _P3_1	=	0x00b1
                           0000B2   365 _P3_2	=	0x00b2
                           0000B3   366 _P3_3	=	0x00b3
                           0000B4   367 _P3_4	=	0x00b4
                           0000B5   368 _P3_5	=	0x00b5
                           0000B6   369 _P3_6	=	0x00b6
                           0000B7   370 _P3_7	=	0x00b7
                           0000B0   371 _RXD	=	0x00b0
                           0000B1   372 _TXD	=	0x00b1
                           0000B2   373 _INT0	=	0x00b2
                           0000B3   374 _INT1	=	0x00b3
                           0000B4   375 _T0	=	0x00b4
                           0000B5   376 _T1	=	0x00b5
                           0000B6   377 _WR	=	0x00b6
                           0000B7   378 _RD	=	0x00b7
                           0000B8   379 _PX0	=	0x00b8
                           0000B9   380 _PT0	=	0x00b9
                           0000BA   381 _PX1	=	0x00ba
                           0000BB   382 _PT1	=	0x00bb
                           0000BC   383 _PS	=	0x00bc
                           0000D0   384 _P	=	0x00d0
                           0000D1   385 _F1	=	0x00d1
                           0000D2   386 _OV	=	0x00d2
                           0000D3   387 _RS0	=	0x00d3
                           0000D4   388 _RS1	=	0x00d4
                           0000D5   389 _F0	=	0x00d5
                           0000D6   390 _AC	=	0x00d6
                           0000D7   391 _CY	=	0x00d7
                           0000AD   392 _ET2	=	0x00ad
                           0000BD   393 _PT2	=	0x00bd
                           0000C8   394 _T2CON_0	=	0x00c8
                           0000C9   395 _T2CON_1	=	0x00c9
                           0000CA   396 _T2CON_2	=	0x00ca
                           0000CB   397 _T2CON_3	=	0x00cb
                           0000CC   398 _T2CON_4	=	0x00cc
                           0000CD   399 _T2CON_5	=	0x00cd
                           0000CE   400 _T2CON_6	=	0x00ce
                           0000CF   401 _T2CON_7	=	0x00cf
                           0000C8   402 _CP_RL2	=	0x00c8
                           0000C9   403 _C_T2	=	0x00c9
                           0000CA   404 _TR2	=	0x00ca
                           0000CB   405 _EXEN2	=	0x00cb
                           0000CC   406 _TCLK	=	0x00cc
                           0000CD   407 _RCLK	=	0x00cd
                           0000CE   408 _EXF2	=	0x00ce
                           0000CF   409 _TF2	=	0x00cf
                           0000DF   410 _CF	=	0x00df
                           0000DE   411 _CR	=	0x00de
                           0000DC   412 _CCF4	=	0x00dc
                           0000DB   413 _CCF3	=	0x00db
                           0000DA   414 _CCF2	=	0x00da
                           0000D9   415 _CCF1	=	0x00d9
                           0000D8   416 _CCF0	=	0x00d8
                           0000AE   417 _EC	=	0x00ae
                           0000BE   418 _PPCL	=	0x00be
                           0000BD   419 _PT2L	=	0x00bd
                           0000BC   420 _PSL	=	0x00bc
                           0000BB   421 _PT1L	=	0x00bb
                           0000BA   422 _PX1L	=	0x00ba
                           0000B9   423 _PT0L	=	0x00b9
                           0000B8   424 _PX0L	=	0x00b8
                           0000C0   425 _P4_0	=	0x00c0
                           0000C1   426 _P4_1	=	0x00c1
                           0000C2   427 _P4_2	=	0x00c2
                           0000C3   428 _P4_3	=	0x00c3
                           0000C4   429 _P4_4	=	0x00c4
                           0000C5   430 _P4_5	=	0x00c5
                           0000C6   431 _P4_6	=	0x00c6
                           0000C7   432 _P4_7	=	0x00c7
                           0000E8   433 _P5_0	=	0x00e8
                           0000E9   434 _P5_1	=	0x00e9
                           0000EA   435 _P5_2	=	0x00ea
                           0000EB   436 _P5_3	=	0x00eb
                           0000EC   437 _P5_4	=	0x00ec
                           0000ED   438 _P5_5	=	0x00ed
                           0000EE   439 _P5_6	=	0x00ee
                           0000EF   440 _P5_7	=	0x00ef
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable register banks
                                    443 ;--------------------------------------------------------
                                    444 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        445 	.ds 8
                                    446 ;--------------------------------------------------------
                                    447 ; internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area DSEG    (DATA)
      000008                        450 _inputchecker_sloc0_1_0:
      000008                        451 	.ds 3
      00000B                        452 _inputchecker_sloc1_1_0:
      00000B                        453 	.ds 1
      00000C                        454 _main_sloc0_1_0:
      00000C                        455 	.ds 1
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable items in internal ram 
                                    458 ;--------------------------------------------------------
                                    459 ;--------------------------------------------------------
                                    460 ; Stack segment in internal ram 
                                    461 ;--------------------------------------------------------
                                    462 	.area	SSEG
      000019                        463 __start__stack:
      000019                        464 	.ds	1
                                    465 
                                    466 ;--------------------------------------------------------
                                    467 ; indirectly addressable internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area ISEG    (DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; absolute internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area IABS    (ABS,DATA)
                                    474 	.area IABS    (ABS,DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; bit data
                                    477 ;--------------------------------------------------------
                                    478 	.area BSEG    (BIT)
                                    479 ;--------------------------------------------------------
                                    480 ; paged external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area PSEG    (PAG,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XSEG    (XDATA)
      00001A                        487 _inputchecker_r_65536_90:
      00001A                        488 	.ds 3
      00001D                        489 _addressreceiver::
      00001D                        490 	.ds 4
      000021                        491 _putchar_c_65536_94:
      000021                        492 	.ds 2
      000023                        493 _putstr_s_65536_98:
      000023                        494 	.ds 3
      000026                        495 _menuselect::
      000026                        496 	.ds 2
      000028                        497 _writebytehandler_receiver_65536_103:
      000028                        498 	.ds 3
      00002B                        499 _randomread_handler_receiver_65536_110:
      00002B                        500 	.ds 3
      00002E                        501 _output::
      00002E                        502 	.ds 1
      00002F                        503 _main_addressreceiver1_196609_120:
      00002F                        504 	.ds 4
      000033                        505 _main_addressreceiver2_196610_122:
      000033                        506 	.ds 4
                                    507 ;--------------------------------------------------------
                                    508 ; absolute external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XABS    (ABS,XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; external initialized ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XISEG   (XDATA)
      00007E                        515 _flag_inputcheck::
      00007E                        516 	.ds 2
      000080                        517 _control::
      000080                        518 	.ds 1
      000081                        519 _errorflag::
      000081                        520 	.ds 1
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT0 (CODE)
                                    523 	.area GSINIT1 (CODE)
                                    524 	.area GSINIT2 (CODE)
                                    525 	.area GSINIT3 (CODE)
                                    526 	.area GSINIT4 (CODE)
                                    527 	.area GSINIT5 (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area CSEG    (CODE)
                                    531 ;--------------------------------------------------------
                                    532 ; interrupt vector 
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
      002564                        535 __interrupt_vect:
      002564 02 25 6A         [24]  536 	ljmp	__sdcc_gsinit_startup
                                    537 ;--------------------------------------------------------
                                    538 ; global & static initialisations
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.area GSFINAL (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.globl __sdcc_gsinit_startup
                                    545 	.globl __sdcc_program_startup
                                    546 	.globl __start__stack
                                    547 	.globl __mcs51_genXINIT
                                    548 	.globl __mcs51_genXRAMCLEAR
                                    549 	.globl __mcs51_genRAMCLEAR
                                    550 	.area GSFINAL (CODE)
      0025C3 02 25 67         [24]  551 	ljmp	__sdcc_program_startup
                                    552 ;--------------------------------------------------------
                                    553 ; Home
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
                                    556 	.area HOME    (CODE)
      002567                        557 __sdcc_program_startup:
      002567 02 33 A1         [24]  558 	ljmp	_main
                                    559 ;	return from main will return to caller
                                    560 ;--------------------------------------------------------
                                    561 ; code
                                    562 ;--------------------------------------------------------
                                    563 	.area CSEG    (CODE)
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'inputchecker'
                                    566 ;------------------------------------------------------------
                                    567 ;sloc0                     Allocated with name '_inputchecker_sloc0_1_0'
                                    568 ;sloc1                     Allocated with name '_inputchecker_sloc1_1_0'
                                    569 ;r                         Allocated with name '_inputchecker_r_65536_90'
                                    570 ;i                         Allocated with name '_inputchecker_i_65536_91'
                                    571 ;------------------------------------------------------------
                                    572 ;	main.c:13: void inputchecker(char *r)
                                    573 ;	-----------------------------------------
                                    574 ;	 function inputchecker
                                    575 ;	-----------------------------------------
      0030CA                        576 _inputchecker:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
      0030CA AF F0            [24]  585 	mov	r7,b
      0030CC AE 83            [24]  586 	mov	r6,dph
      0030CE E5 82            [12]  587 	mov	a,dpl
      0030D0 90 00 1A         [24]  588 	mov	dptr,#_inputchecker_r_65536_90
      0030D3 F0               [24]  589 	movx	@dptr,a
      0030D4 EE               [12]  590 	mov	a,r6
      0030D5 A3               [24]  591 	inc	dptr
      0030D6 F0               [24]  592 	movx	@dptr,a
      0030D7 EF               [12]  593 	mov	a,r7
      0030D8 A3               [24]  594 	inc	dptr
      0030D9 F0               [24]  595 	movx	@dptr,a
                                    596 ;	main.c:16: flag_inputcheck=0;
      0030DA 90 00 7E         [24]  597 	mov	dptr,#_flag_inputcheck
      0030DD E4               [12]  598 	clr	a
      0030DE F0               [24]  599 	movx	@dptr,a
      0030DF A3               [24]  600 	inc	dptr
      0030E0 F0               [24]  601 	movx	@dptr,a
                                    602 ;	main.c:17: while(r[i]!='\0')
      0030E1 90 00 1A         [24]  603 	mov	dptr,#_inputchecker_r_65536_90
      0030E4 E0               [24]  604 	movx	a,@dptr
      0030E5 FD               [12]  605 	mov	r5,a
      0030E6 A3               [24]  606 	inc	dptr
      0030E7 E0               [24]  607 	movx	a,@dptr
      0030E8 FE               [12]  608 	mov	r6,a
      0030E9 A3               [24]  609 	inc	dptr
      0030EA E0               [24]  610 	movx	a,@dptr
      0030EB FF               [12]  611 	mov	r7,a
      0030EC 8D 02            [24]  612 	mov	ar2,r5
      0030EE 8E 03            [24]  613 	mov	ar3,r6
      0030F0 8F 04            [24]  614 	mov	ar4,r7
      0030F2 8D 08            [24]  615 	mov	_inputchecker_sloc0_1_0,r5
      0030F4 8E 09            [24]  616 	mov	(_inputchecker_sloc0_1_0 + 1),r6
      0030F6 8F 0A            [24]  617 	mov	(_inputchecker_sloc0_1_0 + 2),r7
      0030F8 78 00            [12]  618 	mov	r0,#0x00
      0030FA 79 00            [12]  619 	mov	r1,#0x00
      0030FC                        620 00109$:
      0030FC C0 02            [24]  621 	push	ar2
      0030FE C0 03            [24]  622 	push	ar3
      003100 C0 04            [24]  623 	push	ar4
      003102 E8               [12]  624 	mov	a,r0
      003103 25 08            [12]  625 	add	a,_inputchecker_sloc0_1_0
      003105 FA               [12]  626 	mov	r2,a
      003106 E9               [12]  627 	mov	a,r1
      003107 35 09            [12]  628 	addc	a,(_inputchecker_sloc0_1_0 + 1)
      003109 FB               [12]  629 	mov	r3,a
      00310A AC 0A            [24]  630 	mov	r4,(_inputchecker_sloc0_1_0 + 2)
      00310C 8A 82            [24]  631 	mov	dpl,r2
      00310E 8B 83            [24]  632 	mov	dph,r3
      003110 8C F0            [24]  633 	mov	b,r4
      003112 12 44 18         [24]  634 	lcall	__gptrget
      003115 F5 0B            [12]  635 	mov	_inputchecker_sloc1_1_0,a
      003117 D0 04            [24]  636 	pop	ar4
      003119 D0 03            [24]  637 	pop	ar3
      00311B D0 02            [24]  638 	pop	ar2
      00311D E5 0B            [12]  639 	mov	a,_inputchecker_sloc1_1_0
      00311F 70 01            [24]  640 	jnz	00134$
      003121 22               [24]  641 	ret
      003122                        642 00134$:
                                    643 ;	main.c:19: if(((r[i]>='0')&&(r[i]<='9'))||((r[i]>='a')&&(r[i]<='f'))||((r[i]>='A')&&(r[i]<='F')))
      003122 74 D0            [12]  644 	mov	a,#0x100 - 0x30
      003124 25 0B            [12]  645 	add	a,_inputchecker_sloc1_1_0
      003126 50 06            [24]  646 	jnc	00106$
      003128 E5 0B            [12]  647 	mov	a,_inputchecker_sloc1_1_0
      00312A 24 C6            [12]  648 	add	a,#0xff - 0x39
      00312C 50 54            [24]  649 	jnc	00101$
      00312E                        650 00106$:
      00312E C0 02            [24]  651 	push	ar2
      003130 C0 03            [24]  652 	push	ar3
      003132 C0 04            [24]  653 	push	ar4
      003134 E8               [12]  654 	mov	a,r0
      003135 2D               [12]  655 	add	a,r5
      003136 FA               [12]  656 	mov	r2,a
      003137 E9               [12]  657 	mov	a,r1
      003138 3E               [12]  658 	addc	a,r6
      003139 FB               [12]  659 	mov	r3,a
      00313A 8F 04            [24]  660 	mov	ar4,r7
      00313C 8A 82            [24]  661 	mov	dpl,r2
      00313E 8B 83            [24]  662 	mov	dph,r3
      003140 8C F0            [24]  663 	mov	b,r4
      003142 12 44 18         [24]  664 	lcall	__gptrget
      003145 F5 0B            [12]  665 	mov	_inputchecker_sloc1_1_0,a
      003147 C3               [12]  666 	clr	c
      003148 94 61            [12]  667 	subb	a,#0x61
      00314A D0 04            [24]  668 	pop	ar4
      00314C D0 03            [24]  669 	pop	ar3
      00314E D0 02            [24]  670 	pop	ar2
      003150 40 06            [24]  671 	jc	00108$
      003152 E5 0B            [12]  672 	mov	a,_inputchecker_sloc1_1_0
      003154 24 99            [12]  673 	add	a,#0xff - 0x66
      003156 50 2A            [24]  674 	jnc	00101$
      003158                        675 00108$:
      003158 C0 05            [24]  676 	push	ar5
      00315A C0 06            [24]  677 	push	ar6
      00315C C0 07            [24]  678 	push	ar7
      00315E E8               [12]  679 	mov	a,r0
      00315F 2A               [12]  680 	add	a,r2
      003160 FD               [12]  681 	mov	r5,a
      003161 E9               [12]  682 	mov	a,r1
      003162 3B               [12]  683 	addc	a,r3
      003163 FE               [12]  684 	mov	r6,a
      003164 8C 07            [24]  685 	mov	ar7,r4
      003166 8D 82            [24]  686 	mov	dpl,r5
      003168 8E 83            [24]  687 	mov	dph,r6
      00316A 8F F0            [24]  688 	mov	b,r7
      00316C 12 44 18         [24]  689 	lcall	__gptrget
      00316F F5 0B            [12]  690 	mov	_inputchecker_sloc1_1_0,a
      003171 C3               [12]  691 	clr	c
      003172 94 41            [12]  692 	subb	a,#0x41
      003174 D0 07            [24]  693 	pop	ar7
      003176 D0 06            [24]  694 	pop	ar6
      003178 D0 05            [24]  695 	pop	ar5
      00317A 40 0E            [24]  696 	jc	00102$
      00317C E5 0B            [12]  697 	mov	a,_inputchecker_sloc1_1_0
      00317E 24 B9            [12]  698 	add	a,#0xff - 0x46
      003180 40 08            [24]  699 	jc	00102$
      003182                        700 00101$:
                                    701 ;	main.c:20: i++;
      003182 08               [12]  702 	inc	r0
      003183 B8 00 01         [24]  703 	cjne	r0,#0x00,00141$
      003186 09               [12]  704 	inc	r1
      003187                        705 00141$:
      003187 02 30 FC         [24]  706 	ljmp	00109$
      00318A                        707 00102$:
                                    708 ;	main.c:25: printf_tiny("Invalid character entered Please retry\n\r");
      00318A 74 4A            [12]  709 	mov	a,#___str_0
      00318C C0 E0            [24]  710 	push	acc
      00318E 74 44            [12]  711 	mov	a,#(___str_0 >> 8)
      003190 C0 E0            [24]  712 	push	acc
      003192 12 38 44         [24]  713 	lcall	_printf_tiny
      003195 15 81            [12]  714 	dec	sp
      003197 15 81            [12]  715 	dec	sp
                                    716 ;	main.c:26: flag_inputcheck=1;
      003199 90 00 7E         [24]  717 	mov	dptr,#_flag_inputcheck
      00319C 74 01            [12]  718 	mov	a,#0x01
      00319E F0               [24]  719 	movx	@dptr,a
      00319F E4               [12]  720 	clr	a
      0031A0 A3               [24]  721 	inc	dptr
      0031A1 F0               [24]  722 	movx	@dptr,a
                                    723 ;	main.c:27: return;
                                    724 ;	main.c:31: }
      0031A2 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'putchar'
                                    728 ;------------------------------------------------------------
                                    729 ;c                         Allocated with name '_putchar_c_65536_94'
                                    730 ;------------------------------------------------------------
                                    731 ;	main.c:36: int putchar (int c)//serial outps char value
                                    732 ;	-----------------------------------------
                                    733 ;	 function putchar
                                    734 ;	-----------------------------------------
      0031A3                        735 _putchar:
      0031A3 AF 83            [24]  736 	mov	r7,dph
      0031A5 E5 82            [12]  737 	mov	a,dpl
      0031A7 90 00 21         [24]  738 	mov	dptr,#_putchar_c_65536_94
      0031AA F0               [24]  739 	movx	@dptr,a
      0031AB EF               [12]  740 	mov	a,r7
      0031AC A3               [24]  741 	inc	dptr
      0031AD F0               [24]  742 	movx	@dptr,a
                                    743 ;	main.c:38: while (!TI);				// compare asm code generated for these three lines
      0031AE                        744 00101$:
      0031AE 30 99 FD         [24]  745 	jnb	_TI,00101$
                                    746 ;	main.c:39: while (TI == 0);
      0031B1                        747 00104$:
      0031B1 30 99 FD         [24]  748 	jnb	_TI,00104$
                                    749 ;	main.c:40: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0031B4                        750 00107$:
      0031B4 E5 98            [12]  751 	mov	a,_SCON
      0031B6 30 E1 FB         [24]  752 	jnb	acc.1,00107$
                                    753 ;	main.c:41: SBUF = c;  	// load serial port with transmit value
      0031B9 90 00 21         [24]  754 	mov	dptr,#_putchar_c_65536_94
      0031BC E0               [24]  755 	movx	a,@dptr
      0031BD FE               [12]  756 	mov	r6,a
      0031BE A3               [24]  757 	inc	dptr
      0031BF E0               [24]  758 	movx	a,@dptr
      0031C0 8E 99            [24]  759 	mov	_SBUF,r6
                                    760 ;	main.c:42: TI = 0;  	// clear TI flag
                                    761 ;	assignBit
      0031C2 C2 99            [12]  762 	clr	_TI
                                    763 ;	main.c:43: return 0;
      0031C4 90 00 00         [24]  764 	mov	dptr,#0x0000
                                    765 ;	main.c:44: }
      0031C7 22               [24]  766 	ret
                                    767 ;------------------------------------------------------------
                                    768 ;Allocation info for local variables in function 'getchar'
                                    769 ;------------------------------------------------------------
                                    770 ;	main.c:47: int getchar(void)//reads char value from serial
                                    771 ;	-----------------------------------------
                                    772 ;	 function getchar
                                    773 ;	-----------------------------------------
      0031C8                        774 _getchar:
                                    775 ;	main.c:50: while (!RI);                // compare asm code generated for these three lines
      0031C8                        776 00101$:
      0031C8 30 98 FD         [24]  777 	jnb	_RI,00101$
                                    778 ;	main.c:51: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      0031CB                        779 00104$:
      0031CB E5 98            [12]  780 	mov	a,_SCON
      0031CD 30 E0 FB         [24]  781 	jnb	acc.0,00104$
                                    782 ;	main.c:52: while (RI == 0);
      0031D0                        783 00107$:
                                    784 ;	main.c:53: RI = 0;			// clear RI flag
                                    785 ;	assignBit
      0031D0 10 98 02         [24]  786 	jbc	_RI,00130$
      0031D3 80 FB            [24]  787 	sjmp	00107$
      0031D5                        788 00130$:
                                    789 ;	main.c:54: return SBUF;  	// return character from SBUF
      0031D5 AE 99            [24]  790 	mov	r6,_SBUF
      0031D7 7F 00            [12]  791 	mov	r7,#0x00
      0031D9 8E 82            [24]  792 	mov	dpl,r6
      0031DB 8F 83            [24]  793 	mov	dph,r7
                                    794 ;	main.c:55: }
      0031DD 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'putstr'
                                    798 ;------------------------------------------------------------
                                    799 ;s                         Allocated with name '_putstr_s_65536_98'
                                    800 ;i                         Allocated with name '_putstr_i_65536_99'
                                    801 ;------------------------------------------------------------
                                    802 ;	main.c:56: int putstr (char *s)//outputs string to serial
                                    803 ;	-----------------------------------------
                                    804 ;	 function putstr
                                    805 ;	-----------------------------------------
      0031DE                        806 _putstr:
      0031DE AF F0            [24]  807 	mov	r7,b
      0031E0 AE 83            [24]  808 	mov	r6,dph
      0031E2 E5 82            [12]  809 	mov	a,dpl
      0031E4 90 00 23         [24]  810 	mov	dptr,#_putstr_s_65536_98
      0031E7 F0               [24]  811 	movx	@dptr,a
      0031E8 EE               [12]  812 	mov	a,r6
      0031E9 A3               [24]  813 	inc	dptr
      0031EA F0               [24]  814 	movx	@dptr,a
      0031EB EF               [12]  815 	mov	a,r7
      0031EC A3               [24]  816 	inc	dptr
      0031ED F0               [24]  817 	movx	@dptr,a
                                    818 ;	main.c:59: while (*s) 			// output characters until NULL found
      0031EE 90 00 23         [24]  819 	mov	dptr,#_putstr_s_65536_98
      0031F1 E0               [24]  820 	movx	a,@dptr
      0031F2 FD               [12]  821 	mov	r5,a
      0031F3 A3               [24]  822 	inc	dptr
      0031F4 E0               [24]  823 	movx	a,@dptr
      0031F5 FE               [12]  824 	mov	r6,a
      0031F6 A3               [24]  825 	inc	dptr
      0031F7 E0               [24]  826 	movx	a,@dptr
      0031F8 FF               [12]  827 	mov	r7,a
      0031F9 7B 00            [12]  828 	mov	r3,#0x00
      0031FB 7C 00            [12]  829 	mov	r4,#0x00
      0031FD                        830 00101$:
      0031FD 8D 82            [24]  831 	mov	dpl,r5
      0031FF 8E 83            [24]  832 	mov	dph,r6
      003201 8F F0            [24]  833 	mov	b,r7
      003203 12 44 18         [24]  834 	lcall	__gptrget
      003206 FA               [12]  835 	mov	r2,a
      003207 60 36            [24]  836 	jz	00108$
                                    837 ;	main.c:61: putchar(*s++);
      003209 0D               [12]  838 	inc	r5
      00320A BD 00 01         [24]  839 	cjne	r5,#0x00,00116$
      00320D 0E               [12]  840 	inc	r6
      00320E                        841 00116$:
      00320E 90 00 23         [24]  842 	mov	dptr,#_putstr_s_65536_98
      003211 ED               [12]  843 	mov	a,r5
      003212 F0               [24]  844 	movx	@dptr,a
      003213 EE               [12]  845 	mov	a,r6
      003214 A3               [24]  846 	inc	dptr
      003215 F0               [24]  847 	movx	@dptr,a
      003216 EF               [12]  848 	mov	a,r7
      003217 A3               [24]  849 	inc	dptr
      003218 F0               [24]  850 	movx	@dptr,a
      003219 8A 01            [24]  851 	mov	ar1,r2
      00321B 7A 00            [12]  852 	mov	r2,#0x00
      00321D 89 82            [24]  853 	mov	dpl,r1
      00321F 8A 83            [24]  854 	mov	dph,r2
      003221 C0 07            [24]  855 	push	ar7
      003223 C0 06            [24]  856 	push	ar6
      003225 C0 05            [24]  857 	push	ar5
      003227 C0 04            [24]  858 	push	ar4
      003229 C0 03            [24]  859 	push	ar3
      00322B 12 31 A3         [24]  860 	lcall	_putchar
      00322E D0 03            [24]  861 	pop	ar3
      003230 D0 04            [24]  862 	pop	ar4
      003232 D0 05            [24]  863 	pop	ar5
      003234 D0 06            [24]  864 	pop	ar6
      003236 D0 07            [24]  865 	pop	ar7
                                    866 ;	main.c:62: i++;
      003238 0B               [12]  867 	inc	r3
      003239 BB 00 C1         [24]  868 	cjne	r3,#0x00,00101$
      00323C 0C               [12]  869 	inc	r4
      00323D 80 BE            [24]  870 	sjmp	00101$
      00323F                        871 00108$:
      00323F 90 00 23         [24]  872 	mov	dptr,#_putstr_s_65536_98
      003242 ED               [12]  873 	mov	a,r5
      003243 F0               [24]  874 	movx	@dptr,a
      003244 EE               [12]  875 	mov	a,r6
      003245 A3               [24]  876 	inc	dptr
      003246 F0               [24]  877 	movx	@dptr,a
      003247 EF               [12]  878 	mov	a,r7
      003248 A3               [24]  879 	inc	dptr
      003249 F0               [24]  880 	movx	@dptr,a
                                    881 ;	main.c:65: return i+1;
      00324A 0B               [12]  882 	inc	r3
      00324B BB 00 01         [24]  883 	cjne	r3,#0x00,00118$
      00324E 0C               [12]  884 	inc	r4
      00324F                        885 00118$:
      00324F 8B 82            [24]  886 	mov	dpl,r3
      003251 8C 83            [24]  887 	mov	dph,r4
                                    888 ;	main.c:66: }
      003253 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'readint'
                                    892 ;------------------------------------------------------------
                                    893 ;reader                    Allocated with name '_readint_reader_65536_101'
                                    894 ;number                    Allocated with name '_readint_number_65537_102'
                                    895 ;------------------------------------------------------------
                                    896 ;	main.c:68: int readint()//reads  char string as integer
                                    897 ;	-----------------------------------------
                                    898 ;	 function readint
                                    899 ;	-----------------------------------------
      003254                        900 _readint:
                                    901 ;	main.c:71: gets(reader);
      003254 90 00 00         [24]  902 	mov	dptr,#0x0000
      003257 75 F0 00         [24]  903 	mov	b,#0x00
      00325A 12 37 3F         [24]  904 	lcall	_gets
                                    905 ;	main.c:72: int number=atoi(reader);
      00325D 90 00 00         [24]  906 	mov	dptr,#0x0000
      003260 75 F0 00         [24]  907 	mov	b,#0x00
                                    908 ;	main.c:73: return number;
                                    909 ;	main.c:74: }
      003263 02 36 1F         [24]  910 	ljmp	_atoi
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'writebytehandler'
                                    913 ;------------------------------------------------------------
                                    914 ;receiver                  Allocated with name '_writebytehandler_receiver_65536_103'
                                    915 ;t                         Allocated with name '_writebytehandler_t_65536_104'
                                    916 ;blockno                   Allocated with name '_writebytehandler_blockno_65536_104'
                                    917 ;address                   Allocated with name '_writebytehandler_address_65537_107'
                                    918 ;data                      Allocated with name '_writebytehandler_data_65538_108'
                                    919 ;------------------------------------------------------------
                                    920 ;	main.c:83: void writebytehandler(char *receiver)
                                    921 ;	-----------------------------------------
                                    922 ;	 function writebytehandler
                                    923 ;	-----------------------------------------
      003266                        924 _writebytehandler:
      003266 AF F0            [24]  925 	mov	r7,b
      003268 AE 83            [24]  926 	mov	r6,dph
      00326A E5 82            [12]  927 	mov	a,dpl
      00326C 90 00 28         [24]  928 	mov	dptr,#_writebytehandler_receiver_65536_103
      00326F F0               [24]  929 	movx	@dptr,a
      003270 EE               [12]  930 	mov	a,r6
      003271 A3               [24]  931 	inc	dptr
      003272 F0               [24]  932 	movx	@dptr,a
      003273 EF               [12]  933 	mov	a,r7
      003274 A3               [24]  934 	inc	dptr
      003275 F0               [24]  935 	movx	@dptr,a
                                    936 ;	main.c:85: uint16_t t=strtohex(receiver);
      003276 90 00 28         [24]  937 	mov	dptr,#_writebytehandler_receiver_65536_103
      003279 E0               [24]  938 	movx	a,@dptr
      00327A FD               [12]  939 	mov	r5,a
      00327B A3               [24]  940 	inc	dptr
      00327C E0               [24]  941 	movx	a,@dptr
      00327D FE               [12]  942 	mov	r6,a
      00327E A3               [24]  943 	inc	dptr
      00327F E0               [24]  944 	movx	a,@dptr
      003280 FF               [12]  945 	mov	r7,a
      003281 8D 82            [24]  946 	mov	dpl,r5
      003283 8E 83            [24]  947 	mov	dph,r6
      003285 8F F0            [24]  948 	mov	b,r7
      003287 12 25 C6         [24]  949 	lcall	_strtohex
      00328A AE 82            [24]  950 	mov	r6,dpl
      00328C AF 83            [24]  951 	mov	r7,dph
                                    952 ;	main.c:86: uint8_t blockno=(t & 0x7ff)>>8;
      00328E 8E 04            [24]  953 	mov	ar4,r6
      003290 74 07            [12]  954 	mov	a,#0x07
      003292 5F               [12]  955 	anl	a,r7
      003293 FD               [12]  956 	mov	r5,a
                                    957 ;	main.c:88: if(((t&0xE00)>>8)<8)
      003294 74 0E            [12]  958 	mov	a,#0x0e
      003296 5F               [12]  959 	anl	a,r7
      003297 FB               [12]  960 	mov	r3,a
      003298 7C 00            [12]  961 	mov	r4,#0x00
      00329A C3               [12]  962 	clr	c
      00329B EB               [12]  963 	mov	a,r3
      00329C 94 08            [12]  964 	subb	a,#0x08
      00329E EC               [12]  965 	mov	a,r4
      00329F 94 00            [12]  966 	subb	a,#0x00
      0032A1 50 0C            [24]  967 	jnc	00102$
                                    968 ;	main.c:91: control |=(blockno<<1);
      0032A3 ED               [12]  969 	mov	a,r5
      0032A4 2D               [12]  970 	add	a,r5
      0032A5 FD               [12]  971 	mov	r5,a
      0032A6 90 00 80         [24]  972 	mov	dptr,#_control
      0032A9 E0               [24]  973 	movx	a,@dptr
      0032AA FC               [12]  974 	mov	r4,a
      0032AB 4D               [12]  975 	orl	a,r5
      0032AC F0               [24]  976 	movx	@dptr,a
      0032AD 80 09            [24]  977 	sjmp	00103$
      0032AF                        978 00102$:
                                    979 ;	main.c:98: putstr("\n\rInvalid block no.\n\r");
      0032AF 90 44 73         [24]  980 	mov	dptr,#___str_1
      0032B2 75 F0 80         [24]  981 	mov	b,#0x80
                                    982 ;	main.c:99: return;
      0032B5 02 31 DE         [24]  983 	ljmp	_putstr
      0032B8                        984 00103$:
                                    985 ;	main.c:102: uint8_t address=(t&0x0FF);
                                    986 ;	main.c:105: putstr("Enter data to be written\n\r");
      0032B8 90 44 89         [24]  987 	mov	dptr,#___str_2
      0032BB 75 F0 80         [24]  988 	mov	b,#0x80
      0032BE C0 06            [24]  989 	push	ar6
      0032C0 12 31 DE         [24]  990 	lcall	_putstr
                                    991 ;	main.c:107: gets(addressreceiver);
      0032C3 90 00 1D         [24]  992 	mov	dptr,#_addressreceiver
      0032C6 75 F0 00         [24]  993 	mov	b,#0x00
      0032C9 12 37 3F         [24]  994 	lcall	_gets
                                    995 ;	main.c:108: inputchecker(addressreceiver);
      0032CC 90 00 1D         [24]  996 	mov	dptr,#_addressreceiver
      0032CF 75 F0 00         [24]  997 	mov	b,#0x00
      0032D2 12 30 CA         [24]  998 	lcall	_inputchecker
      0032D5 D0 06            [24]  999 	pop	ar6
                                   1000 ;	main.c:109: if(!flag_inputcheck)
      0032D7 90 00 7E         [24] 1001 	mov	dptr,#_flag_inputcheck
      0032DA E0               [24] 1002 	movx	a,@dptr
      0032DB F5 F0            [12] 1003 	mov	b,a
      0032DD A3               [24] 1004 	inc	dptr
      0032DE E0               [24] 1005 	movx	a,@dptr
      0032DF 45 F0            [12] 1006 	orl	a,b
      0032E1 70 3E            [24] 1007 	jnz	00106$
                                   1008 ;	main.c:111: putstr("data is ");
      0032E3 90 44 A4         [24] 1009 	mov	dptr,#___str_3
      0032E6 75 F0 80         [24] 1010 	mov	b,#0x80
      0032E9 C0 06            [24] 1011 	push	ar6
      0032EB 12 31 DE         [24] 1012 	lcall	_putstr
                                   1013 ;	main.c:112: putstr(addressreceiver);
      0032EE 90 00 1D         [24] 1014 	mov	dptr,#_addressreceiver
      0032F1 75 F0 00         [24] 1015 	mov	b,#0x00
      0032F4 12 31 DE         [24] 1016 	lcall	_putstr
                                   1017 ;	main.c:113: putstr(newl);
      0032F7 90 44 AD         [24] 1018 	mov	dptr,#___str_4
      0032FA 75 F0 80         [24] 1019 	mov	b,#0x80
      0032FD 12 31 DE         [24] 1020 	lcall	_putstr
                                   1021 ;	main.c:114: data=strtohex(addressreceiver);
      003300 90 00 1D         [24] 1022 	mov	dptr,#_addressreceiver
      003303 75 F0 00         [24] 1023 	mov	b,#0x00
      003306 12 25 C6         [24] 1024 	lcall	_strtohex
      003309 AD 82            [24] 1025 	mov	r5,dpl
      00330B D0 06            [24] 1026 	pop	ar6
                                   1027 ;	main.c:115: byte_write(control,address,data);
      00330D 90 00 80         [24] 1028 	mov	dptr,#_control
      003310 E0               [24] 1029 	movx	a,@dptr
      003311 FF               [12] 1030 	mov	r7,a
      003312 90 00 0A         [24] 1031 	mov	dptr,#_byte_write_PARM_2
      003315 EE               [12] 1032 	mov	a,r6
      003316 F0               [24] 1033 	movx	@dptr,a
      003317 90 00 0B         [24] 1034 	mov	dptr,#_byte_write_PARM_3
      00331A ED               [12] 1035 	mov	a,r5
      00331B F0               [24] 1036 	movx	@dptr,a
      00331C 8F 82            [24] 1037 	mov	dpl,r7
                                   1038 ;	main.c:118: }
      00331E 02 2C 73         [24] 1039 	ljmp	_byte_write
      003321                       1040 00106$:
      003321 22               [24] 1041 	ret
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'randomread_handler'
                                   1044 ;------------------------------------------------------------
                                   1045 ;receiver                  Allocated with name '_randomread_handler_receiver_65536_110'
                                   1046 ;t                         Allocated with name '_randomread_handler_t_65536_111'
                                   1047 ;blockno                   Allocated with name '_randomread_handler_blockno_65536_111'
                                   1048 ;address                   Allocated with name '_randomread_handler_address_131072_114'
                                   1049 ;result                    Allocated with name '_randomread_handler_result_131072_114'
                                   1050 ;------------------------------------------------------------
                                   1051 ;	main.c:120: int randomread_handler(char *receiver)
                                   1052 ;	-----------------------------------------
                                   1053 ;	 function randomread_handler
                                   1054 ;	-----------------------------------------
      003322                       1055 _randomread_handler:
      003322 AF F0            [24] 1056 	mov	r7,b
      003324 AE 83            [24] 1057 	mov	r6,dph
      003326 E5 82            [12] 1058 	mov	a,dpl
      003328 90 00 2B         [24] 1059 	mov	dptr,#_randomread_handler_receiver_65536_110
      00332B F0               [24] 1060 	movx	@dptr,a
      00332C EE               [12] 1061 	mov	a,r6
      00332D A3               [24] 1062 	inc	dptr
      00332E F0               [24] 1063 	movx	@dptr,a
      00332F EF               [12] 1064 	mov	a,r7
      003330 A3               [24] 1065 	inc	dptr
      003331 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	main.c:122: uint16_t t=strtohex(receiver);
      003332 90 00 2B         [24] 1068 	mov	dptr,#_randomread_handler_receiver_65536_110
      003335 E0               [24] 1069 	movx	a,@dptr
      003336 FD               [12] 1070 	mov	r5,a
      003337 A3               [24] 1071 	inc	dptr
      003338 E0               [24] 1072 	movx	a,@dptr
      003339 FE               [12] 1073 	mov	r6,a
      00333A A3               [24] 1074 	inc	dptr
      00333B E0               [24] 1075 	movx	a,@dptr
      00333C FF               [12] 1076 	mov	r7,a
      00333D 8D 82            [24] 1077 	mov	dpl,r5
      00333F 8E 83            [24] 1078 	mov	dph,r6
      003341 8F F0            [24] 1079 	mov	b,r7
      003343 12 25 C6         [24] 1080 	lcall	_strtohex
      003346 AE 82            [24] 1081 	mov	r6,dpl
      003348 AF 83            [24] 1082 	mov	r7,dph
                                   1083 ;	main.c:124: uint8_t blockno=(t & 0x7ff)>>8;
      00334A 8E 04            [24] 1084 	mov	ar4,r6
      00334C 74 07            [12] 1085 	mov	a,#0x07
      00334E 5F               [12] 1086 	anl	a,r7
      00334F FD               [12] 1087 	mov	r5,a
                                   1088 ;	main.c:126: if(((t&0xE00)>>8)<8)
      003350 74 0E            [12] 1089 	mov	a,#0x0e
      003352 5F               [12] 1090 	anl	a,r7
      003353 FB               [12] 1091 	mov	r3,a
      003354 7C 00            [12] 1092 	mov	r4,#0x00
      003356 C3               [12] 1093 	clr	c
      003357 EB               [12] 1094 	mov	a,r3
      003358 94 08            [12] 1095 	subb	a,#0x08
      00335A EC               [12] 1096 	mov	a,r4
      00335B 94 00            [12] 1097 	subb	a,#0x00
      00335D 50 0C            [24] 1098 	jnc	00102$
                                   1099 ;	main.c:129: control |=(blockno<<1);
      00335F ED               [12] 1100 	mov	a,r5
      003360 2D               [12] 1101 	add	a,r5
      003361 FD               [12] 1102 	mov	r5,a
      003362 90 00 80         [24] 1103 	mov	dptr,#_control
      003365 E0               [24] 1104 	movx	a,@dptr
      003366 FC               [12] 1105 	mov	r4,a
      003367 4D               [12] 1106 	orl	a,r5
      003368 F0               [24] 1107 	movx	@dptr,a
      003369 80 06            [24] 1108 	sjmp	00103$
      00336B                       1109 00102$:
                                   1110 ;	main.c:134: errorflag=1;
      00336B 90 00 81         [24] 1111 	mov	dptr,#_errorflag
      00336E 74 01            [12] 1112 	mov	a,#0x01
      003370 F0               [24] 1113 	movx	@dptr,a
      003371                       1114 00103$:
                                   1115 ;	main.c:135: if(errorflag)
      003371 90 00 81         [24] 1116 	mov	dptr,#_errorflag
      003374 E0               [24] 1117 	movx	a,@dptr
      003375 60 0D            [24] 1118 	jz	00105$
                                   1119 ;	main.c:137: putstr("Wrong block number. \n\r");
      003377 90 44 B0         [24] 1120 	mov	dptr,#___str_5
      00337A 75 F0 80         [24] 1121 	mov	b,#0x80
      00337D 12 31 DE         [24] 1122 	lcall	_putstr
                                   1123 ;	main.c:138: return -1;
      003380 90 FF FF         [24] 1124 	mov	dptr,#0xffff
      003383 22               [24] 1125 	ret
      003384                       1126 00105$:
                                   1127 ;	main.c:143: uint8_t address=(t&0x0FF);
                                   1128 ;	main.c:144: int result =random_read(control,address);
      003384 90 00 80         [24] 1129 	mov	dptr,#_control
      003387 E0               [24] 1130 	movx	a,@dptr
      003388 FF               [12] 1131 	mov	r7,a
      003389 90 00 0F         [24] 1132 	mov	dptr,#_random_read_PARM_2
      00338C EE               [12] 1133 	mov	a,r6
      00338D F0               [24] 1134 	movx	@dptr,a
      00338E 8F 82            [24] 1135 	mov	dpl,r7
      003390 12 2D 01         [24] 1136 	lcall	_random_read
      003393 AE 82            [24] 1137 	mov	r6,dpl
      003395 AF 83            [24] 1138 	mov	r7,dph
                                   1139 ;	main.c:145: errorflag=0;
      003397 90 00 81         [24] 1140 	mov	dptr,#_errorflag
      00339A E4               [12] 1141 	clr	a
      00339B F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	main.c:146: return result;
      00339C 8E 82            [24] 1144 	mov	dpl,r6
      00339E 8F 83            [24] 1145 	mov	dph,r7
                                   1146 ;	main.c:149: }
      0033A0 22               [24] 1147 	ret
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'main'
                                   1150 ;------------------------------------------------------------
                                   1151 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1152 ;addressreceiver1          Allocated with name '_main_addressreceiver1_196609_120'
                                   1153 ;address1                  Allocated with name '_main_address1_196610_122'
                                   1154 ;block1                    Allocated with name '_main_block1_196610_122'
                                   1155 ;startaddress              Allocated with name '_main_startaddress_196610_122'
                                   1156 ;addressreceiver2          Allocated with name '_main_addressreceiver2_196610_122'
                                   1157 ;address2                  Allocated with name '_main_address2_196611_124'
                                   1158 ;block2                    Allocated with name '_main_block2_196611_124'
                                   1159 ;endaddress                Allocated with name '_main_endaddress_196611_124'
                                   1160 ;------------------------------------------------------------
                                   1161 ;	main.c:151: void main(void)
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function main
                                   1164 ;	-----------------------------------------
      0033A1                       1165 _main:
                                   1166 ;	main.c:153: i2c_reset();
      0033A1 12 2F 6E         [24] 1167 	lcall	_i2c_reset
                                   1168 ;	main.c:154: while(1)
      0033A4                       1169 00123$:
                                   1170 ;	main.c:158: errorflag=0;
      0033A4 90 00 81         [24] 1171 	mov	dptr,#_errorflag
      0033A7 E4               [12] 1172 	clr	a
      0033A8 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	main.c:159: putstr("*************************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\rPRESS X FOR EEPROM RESET\n\r");
      0033A9 90 44 C7         [24] 1175 	mov	dptr,#___str_6
      0033AC 75 F0 80         [24] 1176 	mov	b,#0x80
      0033AF 12 31 DE         [24] 1177 	lcall	_putstr
                                   1178 ;	main.c:160: menuselect=getchar();
      0033B2 12 31 C8         [24] 1179 	lcall	_getchar
      0033B5 AE 82            [24] 1180 	mov	r6,dpl
      0033B7 AF 83            [24] 1181 	mov	r7,dph
      0033B9 90 00 26         [24] 1182 	mov	dptr,#_menuselect
      0033BC EE               [12] 1183 	mov	a,r6
      0033BD F0               [24] 1184 	movx	@dptr,a
      0033BE EF               [12] 1185 	mov	a,r7
      0033BF A3               [24] 1186 	inc	dptr
      0033C0 F0               [24] 1187 	movx	@dptr,a
                                   1188 ;	main.c:162: putchar(menuselect);
      0033C1 8E 82            [24] 1189 	mov	dpl,r6
      0033C3 8F 83            [24] 1190 	mov	dph,r7
      0033C5 12 31 A3         [24] 1191 	lcall	_putchar
                                   1192 ;	main.c:163: putstr("\n\r");
      0033C8 90 44 AD         [24] 1193 	mov	dptr,#___str_4
      0033CB 75 F0 80         [24] 1194 	mov	b,#0x80
      0033CE 12 31 DE         [24] 1195 	lcall	_putstr
                                   1196 ;	main.c:165: switch(toupper(menuselect))
      0033D1 90 00 26         [24] 1197 	mov	dptr,#_menuselect
      0033D4 E0               [24] 1198 	movx	a,@dptr
      0033D5 FE               [12] 1199 	mov	r6,a
      0033D6 A3               [24] 1200 	inc	dptr
      0033D7 E0               [24] 1201 	movx	a,@dptr
      0033D8 FF               [12] 1202 	mov	r7,a
      0033D9 8E 82            [24] 1203 	mov	dpl,r6
      0033DB 8F 83            [24] 1204 	mov	dph,r7
      0033DD 12 39 6D         [24] 1205 	lcall	_toupper
      0033E0 AE 82            [24] 1206 	mov	r6,dpl
      0033E2 AF 83            [24] 1207 	mov	r7,dph
      0033E4 BE 52 05         [24] 1208 	cjne	r6,#0x52,00175$
      0033E7 BF 00 02         [24] 1209 	cjne	r7,#0x00,00175$
      0033EA 80 55            [24] 1210 	sjmp	00104$
      0033EC                       1211 00175$:
      0033EC BE 53 06         [24] 1212 	cjne	r6,#0x53,00176$
      0033EF BF 00 03         [24] 1213 	cjne	r7,#0x00,00176$
      0033F2 02 34 A8         [24] 1214 	ljmp	00109$
      0033F5                       1215 00176$:
      0033F5 BE 57 05         [24] 1216 	cjne	r6,#0x57,00177$
      0033F8 BF 00 02         [24] 1217 	cjne	r7,#0x00,00177$
      0033FB 80 0C            [24] 1218 	sjmp	00101$
      0033FD                       1219 00177$:
      0033FD BE 58 06         [24] 1220 	cjne	r6,#0x58,00178$
      003400 BF 00 03         [24] 1221 	cjne	r7,#0x00,00178$
      003403 02 35 F2         [24] 1222 	ljmp	00119$
      003406                       1223 00178$:
      003406 02 36 07         [24] 1224 	ljmp	00120$
                                   1225 ;	main.c:168: case 'W':
      003409                       1226 00101$:
                                   1227 ;	main.c:169: putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER IN HEX\n\r");
      003409 90 45 64         [24] 1228 	mov	dptr,#___str_7
      00340C 75 F0 80         [24] 1229 	mov	b,#0x80
      00340F 12 31 DE         [24] 1230 	lcall	_putstr
                                   1231 ;	main.c:171: gets(addressreceiver);
      003412 90 00 1D         [24] 1232 	mov	dptr,#_addressreceiver
      003415 75 F0 00         [24] 1233 	mov	b,#0x00
      003418 12 37 3F         [24] 1234 	lcall	_gets
                                   1235 ;	main.c:172: inputchecker(addressreceiver);
      00341B 90 00 1D         [24] 1236 	mov	dptr,#_addressreceiver
      00341E 75 F0 00         [24] 1237 	mov	b,#0x00
      003421 12 30 CA         [24] 1238 	lcall	_inputchecker
                                   1239 ;	main.c:173: if(!flag_inputcheck)
      003424 90 00 7E         [24] 1240 	mov	dptr,#_flag_inputcheck
      003427 E0               [24] 1241 	movx	a,@dptr
      003428 F5 F0            [12] 1242 	mov	b,a
      00342A A3               [24] 1243 	inc	dptr
      00342B E0               [24] 1244 	movx	a,@dptr
      00342C 45 F0            [12] 1245 	orl	a,b
                                   1246 ;	main.c:174: writebytehandler(addressreceiver);
      00342E 70 08            [24] 1247 	jnz	00103$
      003430 90 00 1D         [24] 1248 	mov	dptr,#_addressreceiver
      003433 F5 F0            [12] 1249 	mov	b,a
      003435 12 32 66         [24] 1250 	lcall	_writebytehandler
      003438                       1251 00103$:
                                   1252 ;	main.c:175: control=0xA0;
      003438 90 00 80         [24] 1253 	mov	dptr,#_control
      00343B 74 A0            [12] 1254 	mov	a,#0xa0
      00343D F0               [24] 1255 	movx	@dptr,a
                                   1256 ;	main.c:176: break;
      00343E 02 33 A4         [24] 1257 	ljmp	00123$
                                   1258 ;	main.c:178: case 'R':
      003441                       1259 00104$:
                                   1260 ;	main.c:179: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER in HEX\n\r");
      003441 90 45 C2         [24] 1261 	mov	dptr,#___str_8
      003444 75 F0 80         [24] 1262 	mov	b,#0x80
      003447 12 31 DE         [24] 1263 	lcall	_putstr
                                   1264 ;	main.c:180: gets(addressreceiver);
      00344A 90 00 1D         [24] 1265 	mov	dptr,#_addressreceiver
      00344D 75 F0 00         [24] 1266 	mov	b,#0x00
      003450 12 37 3F         [24] 1267 	lcall	_gets
                                   1268 ;	main.c:181: inputchecker(addressreceiver);
      003453 90 00 1D         [24] 1269 	mov	dptr,#_addressreceiver
      003456 75 F0 00         [24] 1270 	mov	b,#0x00
      003459 12 30 CA         [24] 1271 	lcall	_inputchecker
                                   1272 ;	main.c:182: if(!flag_inputcheck)
      00345C 90 00 7E         [24] 1273 	mov	dptr,#_flag_inputcheck
      00345F E0               [24] 1274 	movx	a,@dptr
      003460 F5 F0            [12] 1275 	mov	b,a
      003462 A3               [24] 1276 	inc	dptr
      003463 E0               [24] 1277 	movx	a,@dptr
      003464 45 F0            [12] 1278 	orl	a,b
                                   1279 ;	main.c:185: output=randomread_handler(addressreceiver);
      003466 70 37            [24] 1280 	jnz	00108$
      003468 90 00 1D         [24] 1281 	mov	dptr,#_addressreceiver
      00346B F5 F0            [12] 1282 	mov	b,a
      00346D 12 33 22         [24] 1283 	lcall	_randomread_handler
      003470 AE 82            [24] 1284 	mov	r6,dpl
      003472 AF 83            [24] 1285 	mov	r7,dph
      003474 90 00 2E         [24] 1286 	mov	dptr,#_output
      003477 EE               [12] 1287 	mov	a,r6
      003478 F0               [24] 1288 	movx	@dptr,a
                                   1289 ;	main.c:186: if(errorflag==0)
      003479 90 00 81         [24] 1290 	mov	dptr,#_errorflag
      00347C E0               [24] 1291 	movx	a,@dptr
      00347D 70 20            [24] 1292 	jnz	00108$
                                   1293 ;	main.c:187: printf("Read value is 0x%X\n\r",output);
      00347F 90 00 2E         [24] 1294 	mov	dptr,#_output
      003482 E0               [24] 1295 	movx	a,@dptr
      003483 FF               [12] 1296 	mov	r7,a
      003484 7E 00            [12] 1297 	mov	r6,#0x00
      003486 C0 07            [24] 1298 	push	ar7
      003488 C0 06            [24] 1299 	push	ar6
      00348A 74 1C            [12] 1300 	mov	a,#___str_9
      00348C C0 E0            [24] 1301 	push	acc
      00348E 74 46            [12] 1302 	mov	a,#(___str_9 >> 8)
      003490 C0 E0            [24] 1303 	push	acc
      003492 74 80            [12] 1304 	mov	a,#0x80
      003494 C0 E0            [24] 1305 	push	acc
      003496 12 39 F6         [24] 1306 	lcall	_printf
      003499 E5 81            [12] 1307 	mov	a,sp
      00349B 24 FB            [12] 1308 	add	a,#0xfb
      00349D F5 81            [12] 1309 	mov	sp,a
      00349F                       1310 00108$:
                                   1311 ;	main.c:189: control=0xA0;
      00349F 90 00 80         [24] 1312 	mov	dptr,#_control
      0034A2 74 A0            [12] 1313 	mov	a,#0xa0
      0034A4 F0               [24] 1314 	movx	@dptr,a
                                   1315 ;	main.c:191: break;
      0034A5 02 33 A4         [24] 1316 	ljmp	00123$
                                   1317 ;	main.c:192: case 'S':
      0034A8                       1318 00109$:
                                   1319 ;	main.c:193: putstr("\n\r");
      0034A8 90 44 AD         [24] 1320 	mov	dptr,#___str_4
      0034AB 75 F0 80         [24] 1321 	mov	b,#0x80
      0034AE 12 31 DE         [24] 1322 	lcall	_putstr
                                   1323 ;	main.c:196: putstr("Enter first address\n\r");
      0034B1 90 46 31         [24] 1324 	mov	dptr,#___str_10
      0034B4 75 F0 80         [24] 1325 	mov	b,#0x80
      0034B7 12 31 DE         [24] 1326 	lcall	_putstr
                                   1327 ;	main.c:197: gets(addressreceiver1);
      0034BA 90 00 2F         [24] 1328 	mov	dptr,#_main_addressreceiver1_196609_120
      0034BD 75 F0 00         [24] 1329 	mov	b,#0x00
      0034C0 12 37 3F         [24] 1330 	lcall	_gets
                                   1331 ;	main.c:198: inputchecker(addressreceiver1);
      0034C3 90 00 2F         [24] 1332 	mov	dptr,#_main_addressreceiver1_196609_120
      0034C6 75 F0 00         [24] 1333 	mov	b,#0x00
      0034C9 12 30 CA         [24] 1334 	lcall	_inputchecker
                                   1335 ;	main.c:199: if(flag_inputcheck)
      0034CC 90 00 7E         [24] 1336 	mov	dptr,#_flag_inputcheck
      0034CF E0               [24] 1337 	movx	a,@dptr
      0034D0 F5 F0            [12] 1338 	mov	b,a
      0034D2 A3               [24] 1339 	inc	dptr
      0034D3 E0               [24] 1340 	movx	a,@dptr
      0034D4 45 F0            [12] 1341 	orl	a,b
      0034D6 60 15            [24] 1342 	jz	00111$
                                   1343 ;	main.c:201: putstr("Error in input");
      0034D8 90 46 47         [24] 1344 	mov	dptr,#___str_11
      0034DB 75 F0 80         [24] 1345 	mov	b,#0x80
      0034DE 12 31 DE         [24] 1346 	lcall	_putstr
                                   1347 ;	main.c:202: putstr(newl);
      0034E1 90 44 AD         [24] 1348 	mov	dptr,#___str_4
      0034E4 75 F0 80         [24] 1349 	mov	b,#0x80
      0034E7 12 31 DE         [24] 1350 	lcall	_putstr
                                   1351 ;	main.c:203: break;
      0034EA 02 33 A4         [24] 1352 	ljmp	00123$
      0034ED                       1353 00111$:
                                   1354 ;	main.c:207: uint16_t address1=strtohex(addressreceiver1);
      0034ED 90 00 2F         [24] 1355 	mov	dptr,#_main_addressreceiver1_196609_120
      0034F0 75 F0 00         [24] 1356 	mov	b,#0x00
      0034F3 12 25 C6         [24] 1357 	lcall	_strtohex
      0034F6 AE 82            [24] 1358 	mov	r6,dpl
      0034F8 AF 83            [24] 1359 	mov	r7,dph
                                   1360 ;	main.c:209: uint8_t block1=(address1 & 0x7FF)>>8;
      0034FA 8E 04            [24] 1361 	mov	ar4,r6
      0034FC 74 07            [12] 1362 	mov	a,#0x07
      0034FE 5F               [12] 1363 	anl	a,r7
      0034FF FD               [12] 1364 	mov	r5,a
                                   1365 ;	main.c:210: uint8_t startaddress=(address1&0x0FF);
      003500 8E 04            [24] 1366 	mov	ar4,r6
                                   1367 ;	main.c:215: putstr("Enter second address\n\r");
      003502 90 46 56         [24] 1368 	mov	dptr,#___str_12
      003505 75 F0 80         [24] 1369 	mov	b,#0x80
      003508 C0 07            [24] 1370 	push	ar7
      00350A C0 06            [24] 1371 	push	ar6
      00350C C0 05            [24] 1372 	push	ar5
      00350E C0 04            [24] 1373 	push	ar4
      003510 12 31 DE         [24] 1374 	lcall	_putstr
                                   1375 ;	main.c:216: gets(addressreceiver2);
      003513 90 00 33         [24] 1376 	mov	dptr,#_main_addressreceiver2_196610_122
      003516 75 F0 00         [24] 1377 	mov	b,#0x00
      003519 12 37 3F         [24] 1378 	lcall	_gets
                                   1379 ;	main.c:217: inputchecker(addressreceiver2);
      00351C 90 00 33         [24] 1380 	mov	dptr,#_main_addressreceiver2_196610_122
      00351F 75 F0 00         [24] 1381 	mov	b,#0x00
      003522 12 30 CA         [24] 1382 	lcall	_inputchecker
      003525 D0 04            [24] 1383 	pop	ar4
      003527 D0 05            [24] 1384 	pop	ar5
      003529 D0 06            [24] 1385 	pop	ar6
      00352B D0 07            [24] 1386 	pop	ar7
                                   1387 ;	main.c:218: if(flag_inputcheck)
      00352D 90 00 7E         [24] 1388 	mov	dptr,#_flag_inputcheck
      003530 E0               [24] 1389 	movx	a,@dptr
      003531 F5 F0            [12] 1390 	mov	b,a
      003533 A3               [24] 1391 	inc	dptr
      003534 E0               [24] 1392 	movx	a,@dptr
      003535 45 F0            [12] 1393 	orl	a,b
      003537 60 15            [24] 1394 	jz	00113$
                                   1395 ;	main.c:220: putstr("Error in input");
      003539 90 46 47         [24] 1396 	mov	dptr,#___str_11
      00353C 75 F0 80         [24] 1397 	mov	b,#0x80
      00353F 12 31 DE         [24] 1398 	lcall	_putstr
                                   1399 ;	main.c:221: putstr(newl);
      003542 90 44 AD         [24] 1400 	mov	dptr,#___str_4
      003545 75 F0 80         [24] 1401 	mov	b,#0x80
      003548 12 31 DE         [24] 1402 	lcall	_putstr
                                   1403 ;	main.c:222: break;
      00354B 02 33 A4         [24] 1404 	ljmp	00123$
      00354E                       1405 00113$:
                                   1406 ;	main.c:226: uint16_t address2=strtohex(addressreceiver2);
      00354E C0 04            [24] 1407 	push	ar4
      003550 90 00 33         [24] 1408 	mov	dptr,#_main_addressreceiver2_196610_122
      003553 75 F0 00         [24] 1409 	mov	b,#0x00
      003556 C0 07            [24] 1410 	push	ar7
      003558 C0 06            [24] 1411 	push	ar6
      00355A C0 05            [24] 1412 	push	ar5
      00355C C0 04            [24] 1413 	push	ar4
      00355E 12 25 C6         [24] 1414 	lcall	_strtohex
      003561 AA 82            [24] 1415 	mov	r2,dpl
      003563 AB 83            [24] 1416 	mov	r3,dph
      003565 D0 04            [24] 1417 	pop	ar4
      003567 D0 05            [24] 1418 	pop	ar5
      003569 D0 06            [24] 1419 	pop	ar6
      00356B D0 07            [24] 1420 	pop	ar7
                                   1421 ;	main.c:227: uint8_t block2=(address2 & 0x7FF)>>8;
      00356D 8A 00            [24] 1422 	mov	ar0,r2
      00356F 74 07            [12] 1423 	mov	a,#0x07
      003571 5B               [12] 1424 	anl	a,r3
      003572 F9               [12] 1425 	mov	r1,a
                                   1426 ;	main.c:228: uint8_t endaddress=(address2&0x0FF);
      003573 8A 0C            [24] 1427 	mov	_main_sloc0_1_0,r2
                                   1428 ;	main.c:230: if((((address1&0xE00)>>8)>7) || (((address2&0xE00)>>8)>7))
      003575 74 0E            [12] 1429 	mov	a,#0x0e
      003577 5F               [12] 1430 	anl	a,r7
      003578 F8               [12] 1431 	mov	r0,a
      003579 7C 00            [12] 1432 	mov	r4,#0x00
      00357B C3               [12] 1433 	clr	c
      00357C 74 07            [12] 1434 	mov	a,#0x07
      00357E 98               [12] 1435 	subb	a,r0
      00357F E4               [12] 1436 	clr	a
      003580 9C               [12] 1437 	subb	a,r4
      003581 D0 04            [24] 1438 	pop	ar4
      003583 40 12            [24] 1439 	jc	00114$
      003585 C0 04            [24] 1440 	push	ar4
      003587 74 0E            [12] 1441 	mov	a,#0x0e
      003589 5B               [12] 1442 	anl	a,r3
      00358A F8               [12] 1443 	mov	r0,a
      00358B 7C 00            [12] 1444 	mov	r4,#0x00
      00358D C3               [12] 1445 	clr	c
      00358E 74 07            [12] 1446 	mov	a,#0x07
      003590 98               [12] 1447 	subb	a,r0
      003591 E4               [12] 1448 	clr	a
      003592 9C               [12] 1449 	subb	a,r4
      003593 D0 04            [24] 1450 	pop	ar4
      003595 50 0C            [24] 1451 	jnc	00115$
      003597                       1452 00114$:
                                   1453 ;	main.c:233: putstr("Block numbers are invalid\n\r");
      003597 90 46 6D         [24] 1454 	mov	dptr,#___str_13
      00359A 75 F0 80         [24] 1455 	mov	b,#0x80
      00359D 12 31 DE         [24] 1456 	lcall	_putstr
                                   1457 ;	main.c:234: break;
      0035A0 02 33 A4         [24] 1458 	ljmp	00123$
      0035A3                       1459 00115$:
                                   1460 ;	main.c:236: if(address1>address2)
      0035A3 C3               [12] 1461 	clr	c
      0035A4 EA               [12] 1462 	mov	a,r2
      0035A5 9E               [12] 1463 	subb	a,r6
      0035A6 EB               [12] 1464 	mov	a,r3
      0035A7 9F               [12] 1465 	subb	a,r7
      0035A8 50 18            [24] 1466 	jnc	00118$
                                   1467 ;	main.c:238: printf("Initial address is greater than Second address\n\r");
      0035AA 74 89            [12] 1468 	mov	a,#___str_14
      0035AC C0 E0            [24] 1469 	push	acc
      0035AE 74 46            [12] 1470 	mov	a,#(___str_14 >> 8)
      0035B0 C0 E0            [24] 1471 	push	acc
      0035B2 74 80            [12] 1472 	mov	a,#0x80
      0035B4 C0 E0            [24] 1473 	push	acc
      0035B6 12 39 F6         [24] 1474 	lcall	_printf
      0035B9 15 81            [12] 1475 	dec	sp
      0035BB 15 81            [12] 1476 	dec	sp
      0035BD 15 81            [12] 1477 	dec	sp
                                   1478 ;	main.c:239: break;
      0035BF 02 33 A4         [24] 1479 	ljmp	00123$
      0035C2                       1480 00118$:
                                   1481 ;	main.c:242: control |=(block1<<1);
      0035C2 8D 07            [24] 1482 	mov	ar7,r5
      0035C4 EF               [12] 1483 	mov	a,r7
      0035C5 2F               [12] 1484 	add	a,r7
      0035C6 FF               [12] 1485 	mov	r7,a
      0035C7 90 00 80         [24] 1486 	mov	dptr,#_control
      0035CA E0               [24] 1487 	movx	a,@dptr
      0035CB 4F               [12] 1488 	orl	a,r7
      0035CC F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	main.c:246: seq_read(control,startaddress,endaddress,block1,block2);
      0035CD E0               [24] 1491 	movx	a,@dptr
      0035CE FF               [12] 1492 	mov	r7,a
      0035CF 90 00 11         [24] 1493 	mov	dptr,#_seq_read_PARM_2
      0035D2 EC               [12] 1494 	mov	a,r4
      0035D3 F0               [24] 1495 	movx	@dptr,a
      0035D4 90 00 12         [24] 1496 	mov	dptr,#_seq_read_PARM_3
      0035D7 E5 0C            [12] 1497 	mov	a,_main_sloc0_1_0
      0035D9 F0               [24] 1498 	movx	@dptr,a
      0035DA 90 00 13         [24] 1499 	mov	dptr,#_seq_read_PARM_4
      0035DD ED               [12] 1500 	mov	a,r5
      0035DE F0               [24] 1501 	movx	@dptr,a
      0035DF 90 00 14         [24] 1502 	mov	dptr,#_seq_read_PARM_5
      0035E2 E9               [12] 1503 	mov	a,r1
      0035E3 F0               [24] 1504 	movx	@dptr,a
      0035E4 8F 82            [24] 1505 	mov	dpl,r7
      0035E6 12 2D 60         [24] 1506 	lcall	_seq_read
                                   1507 ;	main.c:252: control=0xA0;
      0035E9 90 00 80         [24] 1508 	mov	dptr,#_control
      0035EC 74 A0            [12] 1509 	mov	a,#0xa0
      0035EE F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	main.c:254: break;
      0035EF 02 33 A4         [24] 1512 	ljmp	00123$
                                   1513 ;	main.c:255: case 'X':
      0035F2                       1514 00119$:
                                   1515 ;	main.c:256: restart_i2c();
      0035F2 12 2F AA         [24] 1516 	lcall	_restart_i2c
                                   1517 ;	main.c:257: i2c_write(0xFF);
      0035F5 90 00 FF         [24] 1518 	mov	dptr,#0x00ff
      0035F8 12 2F B4         [24] 1519 	lcall	_i2c_write
                                   1520 ;	main.c:258: i2c_nack();
      0035FB 12 30 52         [24] 1521 	lcall	_i2c_nack
                                   1522 ;	main.c:259: restart_i2c();
      0035FE 12 2F AA         [24] 1523 	lcall	_restart_i2c
                                   1524 ;	main.c:260: i2c_stop();
      003601 12 2F 83         [24] 1525 	lcall	_i2c_stop
                                   1526 ;	main.c:261: break;
      003604 02 33 A4         [24] 1527 	ljmp	00123$
                                   1528 ;	main.c:262: default:
      003607                       1529 00120$:
                                   1530 ;	main.c:263: printf("No function attached to input\r\n");
      003607 74 BA            [12] 1531 	mov	a,#___str_15
      003609 C0 E0            [24] 1532 	push	acc
      00360B 74 46            [12] 1533 	mov	a,#(___str_15 >> 8)
      00360D C0 E0            [24] 1534 	push	acc
      00360F 74 80            [12] 1535 	mov	a,#0x80
      003611 C0 E0            [24] 1536 	push	acc
      003613 12 39 F6         [24] 1537 	lcall	_printf
      003616 15 81            [12] 1538 	dec	sp
      003618 15 81            [12] 1539 	dec	sp
      00361A 15 81            [12] 1540 	dec	sp
                                   1541 ;	main.c:276: }
                                   1542 ;	main.c:280: }
      00361C 02 33 A4         [24] 1543 	ljmp	00123$
                                   1544 	.area CSEG    (CODE)
                                   1545 	.area CONST   (CODE)
                                   1546 	.area CONST   (CODE)
      00444A                       1547 ___str_0:
      00444A 49 6E 76 61 6C 69 64  1548 	.ascii "Invalid character entered Please retry"
             20 63 68 61 72 61 63
             74 65 72 20 65 6E 74
             65 72 65 64 20 50 6C
             65 61 73 65 20 72 65
             74 72 79
      004470 0A                    1549 	.db 0x0a
      004471 0D                    1550 	.db 0x0d
      004472 00                    1551 	.db 0x00
                                   1552 	.area CSEG    (CODE)
                                   1553 	.area CONST   (CODE)
      004473                       1554 ___str_1:
      004473 0A                    1555 	.db 0x0a
      004474 0D                    1556 	.db 0x0d
      004475 49 6E 76 61 6C 69 64  1557 	.ascii "Invalid block no."
             20 62 6C 6F 63 6B 20
             6E 6F 2E
      004486 0A                    1558 	.db 0x0a
      004487 0D                    1559 	.db 0x0d
      004488 00                    1560 	.db 0x00
                                   1561 	.area CSEG    (CODE)
                                   1562 	.area CONST   (CODE)
      004489                       1563 ___str_2:
      004489 45 6E 74 65 72 20 64  1564 	.ascii "Enter data to be written"
             61 74 61 20 74 6F 20
             62 65 20 77 72 69 74
             74 65 6E
      0044A1 0A                    1565 	.db 0x0a
      0044A2 0D                    1566 	.db 0x0d
      0044A3 00                    1567 	.db 0x00
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      0044A4                       1570 ___str_3:
      0044A4 64 61 74 61 20 69 73  1571 	.ascii "data is "
             20
      0044AC 00                    1572 	.db 0x00
                                   1573 	.area CSEG    (CODE)
                                   1574 	.area CONST   (CODE)
      0044AD                       1575 ___str_4:
      0044AD 0A                    1576 	.db 0x0a
      0044AE 0D                    1577 	.db 0x0d
      0044AF 00                    1578 	.db 0x00
                                   1579 	.area CSEG    (CODE)
                                   1580 	.area CONST   (CODE)
      0044B0                       1581 ___str_5:
      0044B0 57 72 6F 6E 67 20 62  1582 	.ascii "Wrong block number. "
             6C 6F 63 6B 20 6E 75
             6D 62 65 72 2E 20
      0044C4 0A                    1583 	.db 0x0a
      0044C5 0D                    1584 	.db 0x0d
      0044C6 00                    1585 	.db 0x00
                                   1586 	.area CSEG    (CODE)
                                   1587 	.area CONST   (CODE)
      0044C7                       1588 ___str_6:
      0044C7 2A 2A 2A 2A 2A 2A 2A  1589 	.ascii "*************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0044E0 0A                    1590 	.db 0x0a
      0044E1 0D                    1591 	.db 0x0d
      0044E2 4D 45 4E 55 20 46 4F  1592 	.ascii "MENU FOR TESTING I2C FUNCTIONS"
             52 20 54 45 53 54 49
             4E 47 20 49 32 43 20
             46 55 4E 43 54 49 4F
             4E 53
      004500 0A                    1593 	.db 0x0a
      004501 0D                    1594 	.db 0x0d
      004502 50 52 45 53 53 20 57  1595 	.ascii "PRESS W FOR WRITE BYTE"
             20 46 4F 52 20 57 52
             49 54 45 20 42 59 54
             45
      004518 0A                    1596 	.db 0x0a
      004519 0D                    1597 	.db 0x0d
      00451A 50 52 45 53 53 20 52  1598 	.ascii "PRESS R FOR RANDOM READ"
             20 46 4F 52 20 52 41
             4E 44 4F 4D 20 52 45
             41 44
      004531 0A                    1599 	.db 0x0a
      004532 0D                    1600 	.db 0x0d
      004533 50 52 45 53 53 20 53  1601 	.ascii "PRESS S FOR HEX DUMP"
             20 46 4F 52 20 48 45
             58 20 44 55 4D 50
      004547 0A                    1602 	.db 0x0a
      004548 0D                    1603 	.db 0x0d
      004549 50 52 45 53 53 20 58  1604 	.ascii "PRESS X FOR EEPROM RESET"
             20 46 4F 52 20 45 45
             50 52 4F 4D 20 52 45
             53 45 54
      004561 0A                    1605 	.db 0x0a
      004562 0D                    1606 	.db 0x0d
      004563 00                    1607 	.db 0x00
                                   1608 	.area CSEG    (CODE)
                                   1609 	.area CONST   (CODE)
      004564                       1610 ___str_7:
      004564 45 4E 54 45 52 20 41  1611 	.ascii "ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER A"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 57
             52 49 54 54 45 4E 20
             2C 41 44 44 52 45 53
             53 20 49 4E 43 4C 55
             44 45 53 20 42 4C 4F
             43 4B 20 4E 55 4D 42
             45 52 20 41
      0045A0 4E 44 20 57 4F 52 44  1612 	.ascii "ND WORD ADRRESS TOGETHER IN HEX"
             20 41 44 52 52 45 53
             53 20 54 4F 47 45 54
             48 45 52 20 49 4E 20
             48 45 58
      0045BF 0A                    1613 	.db 0x0a
      0045C0 0D                    1614 	.db 0x0d
      0045C1 00                    1615 	.db 0x00
                                   1616 	.area CSEG    (CODE)
                                   1617 	.area CONST   (CODE)
      0045C2                       1618 ___str_8:
      0045C2 45 4E 54 45 52 20 41  1619 	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 52
             45 41 44 2C 41 44 44
             52 45 53 53 20 49 4E
             43 4C 55 44 45 53 20
             42 4C 4F 43 4B 20 4E
             55 4D 42 45 52 20 41
             4E 44 20 57
      0045FE 4F 52 44 20 41 44 52  1620 	.ascii "ORD ADRRESS TOGETHER in HEX"
             52 45 53 53 20 54 4F
             47 45 54 48 45 52 20
             69 6E 20 48 45 58
      004619 0A                    1621 	.db 0x0a
      00461A 0D                    1622 	.db 0x0d
      00461B 00                    1623 	.db 0x00
                                   1624 	.area CSEG    (CODE)
                                   1625 	.area CONST   (CODE)
      00461C                       1626 ___str_9:
      00461C 52 65 61 64 20 76 61  1627 	.ascii "Read value is 0x%X"
             6C 75 65 20 69 73 20
             30 78 25 58
      00462E 0A                    1628 	.db 0x0a
      00462F 0D                    1629 	.db 0x0d
      004630 00                    1630 	.db 0x00
                                   1631 	.area CSEG    (CODE)
                                   1632 	.area CONST   (CODE)
      004631                       1633 ___str_10:
      004631 45 6E 74 65 72 20 66  1634 	.ascii "Enter first address"
             69 72 73 74 20 61 64
             64 72 65 73 73
      004644 0A                    1635 	.db 0x0a
      004645 0D                    1636 	.db 0x0d
      004646 00                    1637 	.db 0x00
                                   1638 	.area CSEG    (CODE)
                                   1639 	.area CONST   (CODE)
      004647                       1640 ___str_11:
      004647 45 72 72 6F 72 20 69  1641 	.ascii "Error in input"
             6E 20 69 6E 70 75 74
      004655 00                    1642 	.db 0x00
                                   1643 	.area CSEG    (CODE)
                                   1644 	.area CONST   (CODE)
      004656                       1645 ___str_12:
      004656 45 6E 74 65 72 20 73  1646 	.ascii "Enter second address"
             65 63 6F 6E 64 20 61
             64 64 72 65 73 73
      00466A 0A                    1647 	.db 0x0a
      00466B 0D                    1648 	.db 0x0d
      00466C 00                    1649 	.db 0x00
                                   1650 	.area CSEG    (CODE)
                                   1651 	.area CONST   (CODE)
      00466D                       1652 ___str_13:
      00466D 42 6C 6F 63 6B 20 6E  1653 	.ascii "Block numbers are invalid"
             75 6D 62 65 72 73 20
             61 72 65 20 69 6E 76
             61 6C 69 64
      004686 0A                    1654 	.db 0x0a
      004687 0D                    1655 	.db 0x0d
      004688 00                    1656 	.db 0x00
                                   1657 	.area CSEG    (CODE)
                                   1658 	.area CONST   (CODE)
      004689                       1659 ___str_14:
      004689 49 6E 69 74 69 61 6C  1660 	.ascii "Initial address is greater than Second address"
             20 61 64 64 72 65 73
             73 20 69 73 20 67 72
             65 61 74 65 72 20 74
             68 61 6E 20 53 65 63
             6F 6E 64 20 61 64 64
             72 65 73 73
      0046B7 0A                    1661 	.db 0x0a
      0046B8 0D                    1662 	.db 0x0d
      0046B9 00                    1663 	.db 0x00
                                   1664 	.area CSEG    (CODE)
                                   1665 	.area CONST   (CODE)
      0046BA                       1666 ___str_15:
      0046BA 4E 6F 20 66 75 6E 63  1667 	.ascii "No function attached to input"
             74 69 6F 6E 20 61 74
             74 61 63 68 65 64 20
             74 6F 20 69 6E 70 75
             74
      0046D7 0D                    1668 	.db 0x0d
      0046D8 0A                    1669 	.db 0x0a
      0046D9 00                    1670 	.db 0x00
                                   1671 	.area CSEG    (CODE)
                                   1672 	.area XINIT   (CODE)
      0046E5                       1673 __xinit__flag_inputcheck:
      0046E5 00 00                 1674 	.byte #0x00, #0x00	;  0
      0046E7                       1675 __xinit__control:
      0046E7 A0                    1676 	.db #0xa0	; 160
      0046E8                       1677 __xinit__errorflag:
      0046E8 00                    1678 	.db #0x00	; 0
                                   1679 	.area CABS    (ABS,CODE)
