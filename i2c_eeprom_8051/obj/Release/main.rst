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
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable items in internal ram 
                                    456 ;--------------------------------------------------------
                                    457 ;--------------------------------------------------------
                                    458 ; Stack segment in internal ram 
                                    459 ;--------------------------------------------------------
                                    460 	.area	SSEG
      000018                        461 __start__stack:
      000018                        462 	.ds	1
                                    463 
                                    464 ;--------------------------------------------------------
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
                                    477 ;--------------------------------------------------------
                                    478 ; paged external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area PSEG    (PAG,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XSEG    (XDATA)
      00001A                        485 _inputchecker_r_65536_90:
      00001A                        486 	.ds 3
      00001D                        487 _addressreceiver::
      00001D                        488 	.ds 4
      000021                        489 _putchar_c_65536_94:
      000021                        490 	.ds 2
      000023                        491 _putstr_s_65536_98:
      000023                        492 	.ds 3
      000026                        493 _menuselect::
      000026                        494 	.ds 2
      000028                        495 _writebytehandler_receiver_65536_103:
      000028                        496 	.ds 3
      00002B                        497 _randomread_handler_receiver_65536_110:
      00002B                        498 	.ds 3
      00002E                        499 _output::
      00002E                        500 	.ds 1
      00002F                        501 _main_addressreceiver1_196609_120:
      00002F                        502 	.ds 4
      000033                        503 _main_addressreceiver2_196610_122:
      000033                        504 	.ds 4
                                    505 ;--------------------------------------------------------
                                    506 ; absolute external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XABS    (ABS,XDATA)
                                    509 ;--------------------------------------------------------
                                    510 ; external initialized ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area XISEG   (XDATA)
      00007E                        513 _flag_inputcheck::
      00007E                        514 	.ds 2
      000080                        515 _control::
      000080                        516 	.ds 1
      000081                        517 _errorflag::
      000081                        518 	.ds 1
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT0 (CODE)
                                    521 	.area GSINIT1 (CODE)
                                    522 	.area GSINIT2 (CODE)
                                    523 	.area GSINIT3 (CODE)
                                    524 	.area GSINIT4 (CODE)
                                    525 	.area GSINIT5 (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area CSEG    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; interrupt vector 
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
      002564                        533 __interrupt_vect:
      002564 02 25 6A         [24]  534 	ljmp	__sdcc_gsinit_startup
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.globl __sdcc_gsinit_startup
                                    543 	.globl __sdcc_program_startup
                                    544 	.globl __start__stack
                                    545 	.globl __mcs51_genXINIT
                                    546 	.globl __mcs51_genXRAMCLEAR
                                    547 	.globl __mcs51_genRAMCLEAR
                                    548 	.area GSFINAL (CODE)
      0025C3 02 25 67         [24]  549 	ljmp	__sdcc_program_startup
                                    550 ;--------------------------------------------------------
                                    551 ; Home
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area HOME    (CODE)
      002567                        555 __sdcc_program_startup:
      002567 02 33 83         [24]  556 	ljmp	_main
                                    557 ;	return from main will return to caller
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'inputchecker'
                                    564 ;------------------------------------------------------------
                                    565 ;sloc0                     Allocated with name '_inputchecker_sloc0_1_0'
                                    566 ;sloc1                     Allocated with name '_inputchecker_sloc1_1_0'
                                    567 ;r                         Allocated with name '_inputchecker_r_65536_90'
                                    568 ;i                         Allocated with name '_inputchecker_i_65536_91'
                                    569 ;------------------------------------------------------------
                                    570 ;	main.c:13: void inputchecker(char *r)
                                    571 ;	-----------------------------------------
                                    572 ;	 function inputchecker
                                    573 ;	-----------------------------------------
      0030CA                        574 _inputchecker:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
      0030CA AF F0            [24]  583 	mov	r7,b
      0030CC AE 83            [24]  584 	mov	r6,dph
      0030CE E5 82            [12]  585 	mov	a,dpl
      0030D0 90 00 1A         [24]  586 	mov	dptr,#_inputchecker_r_65536_90
      0030D3 F0               [24]  587 	movx	@dptr,a
      0030D4 EE               [12]  588 	mov	a,r6
      0030D5 A3               [24]  589 	inc	dptr
      0030D6 F0               [24]  590 	movx	@dptr,a
      0030D7 EF               [12]  591 	mov	a,r7
      0030D8 A3               [24]  592 	inc	dptr
      0030D9 F0               [24]  593 	movx	@dptr,a
                                    594 ;	main.c:16: flag_inputcheck=0;
      0030DA 90 00 7E         [24]  595 	mov	dptr,#_flag_inputcheck
      0030DD E4               [12]  596 	clr	a
      0030DE F0               [24]  597 	movx	@dptr,a
      0030DF A3               [24]  598 	inc	dptr
      0030E0 F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:17: while(r[i]!='\0')
      0030E1 90 00 1A         [24]  601 	mov	dptr,#_inputchecker_r_65536_90
      0030E4 E0               [24]  602 	movx	a,@dptr
      0030E5 FD               [12]  603 	mov	r5,a
      0030E6 A3               [24]  604 	inc	dptr
      0030E7 E0               [24]  605 	movx	a,@dptr
      0030E8 FE               [12]  606 	mov	r6,a
      0030E9 A3               [24]  607 	inc	dptr
      0030EA E0               [24]  608 	movx	a,@dptr
      0030EB FF               [12]  609 	mov	r7,a
      0030EC 8D 02            [24]  610 	mov	ar2,r5
      0030EE 8E 03            [24]  611 	mov	ar3,r6
      0030F0 8F 04            [24]  612 	mov	ar4,r7
      0030F2 8D 08            [24]  613 	mov	_inputchecker_sloc0_1_0,r5
      0030F4 8E 09            [24]  614 	mov	(_inputchecker_sloc0_1_0 + 1),r6
      0030F6 8F 0A            [24]  615 	mov	(_inputchecker_sloc0_1_0 + 2),r7
      0030F8 78 00            [12]  616 	mov	r0,#0x00
      0030FA 79 00            [12]  617 	mov	r1,#0x00
      0030FC                        618 00109$:
      0030FC C0 02            [24]  619 	push	ar2
      0030FE C0 03            [24]  620 	push	ar3
      003100 C0 04            [24]  621 	push	ar4
      003102 E8               [12]  622 	mov	a,r0
      003103 25 08            [12]  623 	add	a,_inputchecker_sloc0_1_0
      003105 FA               [12]  624 	mov	r2,a
      003106 E9               [12]  625 	mov	a,r1
      003107 35 09            [12]  626 	addc	a,(_inputchecker_sloc0_1_0 + 1)
      003109 FB               [12]  627 	mov	r3,a
      00310A AC 0A            [24]  628 	mov	r4,(_inputchecker_sloc0_1_0 + 2)
      00310C 8A 82            [24]  629 	mov	dpl,r2
      00310E 8B 83            [24]  630 	mov	dph,r3
      003110 8C F0            [24]  631 	mov	b,r4
      003112 12 43 D3         [24]  632 	lcall	__gptrget
      003115 F5 0B            [12]  633 	mov	_inputchecker_sloc1_1_0,a
      003117 D0 04            [24]  634 	pop	ar4
      003119 D0 03            [24]  635 	pop	ar3
      00311B D0 02            [24]  636 	pop	ar2
      00311D E5 0B            [12]  637 	mov	a,_inputchecker_sloc1_1_0
      00311F 70 01            [24]  638 	jnz	00134$
      003121 22               [24]  639 	ret
      003122                        640 00134$:
                                    641 ;	main.c:19: if(((r[i]>='0')&&(r[i]<='9'))||((r[i]>='a')&&(r[i]<='f'))||((r[i]>='A')&&(r[i]<='F')))
      003122 74 D0            [12]  642 	mov	a,#0x100 - 0x30
      003124 25 0B            [12]  643 	add	a,_inputchecker_sloc1_1_0
      003126 50 06            [24]  644 	jnc	00106$
      003128 E5 0B            [12]  645 	mov	a,_inputchecker_sloc1_1_0
      00312A 24 C6            [12]  646 	add	a,#0xff - 0x39
      00312C 50 54            [24]  647 	jnc	00101$
      00312E                        648 00106$:
      00312E C0 02            [24]  649 	push	ar2
      003130 C0 03            [24]  650 	push	ar3
      003132 C0 04            [24]  651 	push	ar4
      003134 E8               [12]  652 	mov	a,r0
      003135 2D               [12]  653 	add	a,r5
      003136 FA               [12]  654 	mov	r2,a
      003137 E9               [12]  655 	mov	a,r1
      003138 3E               [12]  656 	addc	a,r6
      003139 FB               [12]  657 	mov	r3,a
      00313A 8F 04            [24]  658 	mov	ar4,r7
      00313C 8A 82            [24]  659 	mov	dpl,r2
      00313E 8B 83            [24]  660 	mov	dph,r3
      003140 8C F0            [24]  661 	mov	b,r4
      003142 12 43 D3         [24]  662 	lcall	__gptrget
      003145 F5 0B            [12]  663 	mov	_inputchecker_sloc1_1_0,a
      003147 C3               [12]  664 	clr	c
      003148 94 61            [12]  665 	subb	a,#0x61
      00314A D0 04            [24]  666 	pop	ar4
      00314C D0 03            [24]  667 	pop	ar3
      00314E D0 02            [24]  668 	pop	ar2
      003150 40 06            [24]  669 	jc	00108$
      003152 E5 0B            [12]  670 	mov	a,_inputchecker_sloc1_1_0
      003154 24 99            [12]  671 	add	a,#0xff - 0x66
      003156 50 2A            [24]  672 	jnc	00101$
      003158                        673 00108$:
      003158 C0 05            [24]  674 	push	ar5
      00315A C0 06            [24]  675 	push	ar6
      00315C C0 07            [24]  676 	push	ar7
      00315E E8               [12]  677 	mov	a,r0
      00315F 2A               [12]  678 	add	a,r2
      003160 FD               [12]  679 	mov	r5,a
      003161 E9               [12]  680 	mov	a,r1
      003162 3B               [12]  681 	addc	a,r3
      003163 FE               [12]  682 	mov	r6,a
      003164 8C 07            [24]  683 	mov	ar7,r4
      003166 8D 82            [24]  684 	mov	dpl,r5
      003168 8E 83            [24]  685 	mov	dph,r6
      00316A 8F F0            [24]  686 	mov	b,r7
      00316C 12 43 D3         [24]  687 	lcall	__gptrget
      00316F F5 0B            [12]  688 	mov	_inputchecker_sloc1_1_0,a
      003171 C3               [12]  689 	clr	c
      003172 94 41            [12]  690 	subb	a,#0x41
      003174 D0 07            [24]  691 	pop	ar7
      003176 D0 06            [24]  692 	pop	ar6
      003178 D0 05            [24]  693 	pop	ar5
      00317A 40 0E            [24]  694 	jc	00102$
      00317C E5 0B            [12]  695 	mov	a,_inputchecker_sloc1_1_0
      00317E 24 B9            [12]  696 	add	a,#0xff - 0x46
      003180 40 08            [24]  697 	jc	00102$
      003182                        698 00101$:
                                    699 ;	main.c:20: i++;
      003182 08               [12]  700 	inc	r0
      003183 B8 00 01         [24]  701 	cjne	r0,#0x00,00141$
      003186 09               [12]  702 	inc	r1
      003187                        703 00141$:
      003187 02 30 FC         [24]  704 	ljmp	00109$
      00318A                        705 00102$:
                                    706 ;	main.c:25: printf_tiny("Invalid character entered Please retry\n\r");
      00318A 74 05            [12]  707 	mov	a,#___str_0
      00318C C0 E0            [24]  708 	push	acc
      00318E 74 44            [12]  709 	mov	a,#(___str_0 >> 8)
      003190 C0 E0            [24]  710 	push	acc
      003192 12 37 FF         [24]  711 	lcall	_printf_tiny
      003195 15 81            [12]  712 	dec	sp
      003197 15 81            [12]  713 	dec	sp
                                    714 ;	main.c:26: flag_inputcheck=1;
      003199 90 00 7E         [24]  715 	mov	dptr,#_flag_inputcheck
      00319C 74 01            [12]  716 	mov	a,#0x01
      00319E F0               [24]  717 	movx	@dptr,a
      00319F E4               [12]  718 	clr	a
      0031A0 A3               [24]  719 	inc	dptr
      0031A1 F0               [24]  720 	movx	@dptr,a
                                    721 ;	main.c:27: return;
                                    722 ;	main.c:31: }
      0031A2 22               [24]  723 	ret
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'putchar'
                                    726 ;------------------------------------------------------------
                                    727 ;c                         Allocated with name '_putchar_c_65536_94'
                                    728 ;------------------------------------------------------------
                                    729 ;	main.c:36: int putchar (int c)//serial outps char value
                                    730 ;	-----------------------------------------
                                    731 ;	 function putchar
                                    732 ;	-----------------------------------------
      0031A3                        733 _putchar:
      0031A3 AF 83            [24]  734 	mov	r7,dph
      0031A5 E5 82            [12]  735 	mov	a,dpl
      0031A7 90 00 21         [24]  736 	mov	dptr,#_putchar_c_65536_94
      0031AA F0               [24]  737 	movx	@dptr,a
      0031AB EF               [12]  738 	mov	a,r7
      0031AC A3               [24]  739 	inc	dptr
      0031AD F0               [24]  740 	movx	@dptr,a
                                    741 ;	main.c:38: while (!TI);				// compare asm code generated for these three lines
      0031AE                        742 00101$:
      0031AE 30 99 FD         [24]  743 	jnb	_TI,00101$
                                    744 ;	main.c:39: while (TI == 0);
      0031B1                        745 00104$:
      0031B1 30 99 FD         [24]  746 	jnb	_TI,00104$
                                    747 ;	main.c:40: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0031B4                        748 00107$:
      0031B4 E5 98            [12]  749 	mov	a,_SCON
      0031B6 30 E1 FB         [24]  750 	jnb	acc.1,00107$
                                    751 ;	main.c:41: SBUF = c;  	// load serial port with transmit value
      0031B9 90 00 21         [24]  752 	mov	dptr,#_putchar_c_65536_94
      0031BC E0               [24]  753 	movx	a,@dptr
      0031BD FE               [12]  754 	mov	r6,a
      0031BE A3               [24]  755 	inc	dptr
      0031BF E0               [24]  756 	movx	a,@dptr
      0031C0 8E 99            [24]  757 	mov	_SBUF,r6
                                    758 ;	main.c:42: TI = 0;  	// clear TI flag
                                    759 ;	assignBit
      0031C2 C2 99            [12]  760 	clr	_TI
                                    761 ;	main.c:43: return 0;
      0031C4 90 00 00         [24]  762 	mov	dptr,#0x0000
                                    763 ;	main.c:44: }
      0031C7 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'getchar'
                                    767 ;------------------------------------------------------------
                                    768 ;	main.c:47: int getchar(void)//reads char value from serial
                                    769 ;	-----------------------------------------
                                    770 ;	 function getchar
                                    771 ;	-----------------------------------------
      0031C8                        772 _getchar:
                                    773 ;	main.c:50: while (!RI);                // compare asm code generated for these three lines
      0031C8                        774 00101$:
      0031C8 30 98 FD         [24]  775 	jnb	_RI,00101$
                                    776 ;	main.c:51: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      0031CB                        777 00104$:
      0031CB E5 98            [12]  778 	mov	a,_SCON
      0031CD 30 E0 FB         [24]  779 	jnb	acc.0,00104$
                                    780 ;	main.c:52: while (RI == 0);
      0031D0                        781 00107$:
                                    782 ;	main.c:53: RI = 0;			// clear RI flag
                                    783 ;	assignBit
      0031D0 10 98 02         [24]  784 	jbc	_RI,00130$
      0031D3 80 FB            [24]  785 	sjmp	00107$
      0031D5                        786 00130$:
                                    787 ;	main.c:54: return SBUF;  	// return character from SBUF
      0031D5 AE 99            [24]  788 	mov	r6,_SBUF
      0031D7 7F 00            [12]  789 	mov	r7,#0x00
      0031D9 8E 82            [24]  790 	mov	dpl,r6
      0031DB 8F 83            [24]  791 	mov	dph,r7
                                    792 ;	main.c:55: }
      0031DD 22               [24]  793 	ret
                                    794 ;------------------------------------------------------------
                                    795 ;Allocation info for local variables in function 'putstr'
                                    796 ;------------------------------------------------------------
                                    797 ;s                         Allocated with name '_putstr_s_65536_98'
                                    798 ;i                         Allocated with name '_putstr_i_65536_99'
                                    799 ;------------------------------------------------------------
                                    800 ;	main.c:56: int putstr (char *s)//outputs string to serial
                                    801 ;	-----------------------------------------
                                    802 ;	 function putstr
                                    803 ;	-----------------------------------------
      0031DE                        804 _putstr:
      0031DE AF F0            [24]  805 	mov	r7,b
      0031E0 AE 83            [24]  806 	mov	r6,dph
      0031E2 E5 82            [12]  807 	mov	a,dpl
      0031E4 90 00 23         [24]  808 	mov	dptr,#_putstr_s_65536_98
      0031E7 F0               [24]  809 	movx	@dptr,a
      0031E8 EE               [12]  810 	mov	a,r6
      0031E9 A3               [24]  811 	inc	dptr
      0031EA F0               [24]  812 	movx	@dptr,a
      0031EB EF               [12]  813 	mov	a,r7
      0031EC A3               [24]  814 	inc	dptr
      0031ED F0               [24]  815 	movx	@dptr,a
                                    816 ;	main.c:59: while (*s) 			// output characters until NULL found
      0031EE 90 00 23         [24]  817 	mov	dptr,#_putstr_s_65536_98
      0031F1 E0               [24]  818 	movx	a,@dptr
      0031F2 FD               [12]  819 	mov	r5,a
      0031F3 A3               [24]  820 	inc	dptr
      0031F4 E0               [24]  821 	movx	a,@dptr
      0031F5 FE               [12]  822 	mov	r6,a
      0031F6 A3               [24]  823 	inc	dptr
      0031F7 E0               [24]  824 	movx	a,@dptr
      0031F8 FF               [12]  825 	mov	r7,a
      0031F9 7B 00            [12]  826 	mov	r3,#0x00
      0031FB 7C 00            [12]  827 	mov	r4,#0x00
      0031FD                        828 00101$:
      0031FD 8D 82            [24]  829 	mov	dpl,r5
      0031FF 8E 83            [24]  830 	mov	dph,r6
      003201 8F F0            [24]  831 	mov	b,r7
      003203 12 43 D3         [24]  832 	lcall	__gptrget
      003206 FA               [12]  833 	mov	r2,a
      003207 60 36            [24]  834 	jz	00108$
                                    835 ;	main.c:61: putchar(*s++);
      003209 0D               [12]  836 	inc	r5
      00320A BD 00 01         [24]  837 	cjne	r5,#0x00,00116$
      00320D 0E               [12]  838 	inc	r6
      00320E                        839 00116$:
      00320E 90 00 23         [24]  840 	mov	dptr,#_putstr_s_65536_98
      003211 ED               [12]  841 	mov	a,r5
      003212 F0               [24]  842 	movx	@dptr,a
      003213 EE               [12]  843 	mov	a,r6
      003214 A3               [24]  844 	inc	dptr
      003215 F0               [24]  845 	movx	@dptr,a
      003216 EF               [12]  846 	mov	a,r7
      003217 A3               [24]  847 	inc	dptr
      003218 F0               [24]  848 	movx	@dptr,a
      003219 8A 01            [24]  849 	mov	ar1,r2
      00321B 7A 00            [12]  850 	mov	r2,#0x00
      00321D 89 82            [24]  851 	mov	dpl,r1
      00321F 8A 83            [24]  852 	mov	dph,r2
      003221 C0 07            [24]  853 	push	ar7
      003223 C0 06            [24]  854 	push	ar6
      003225 C0 05            [24]  855 	push	ar5
      003227 C0 04            [24]  856 	push	ar4
      003229 C0 03            [24]  857 	push	ar3
      00322B 12 31 A3         [24]  858 	lcall	_putchar
      00322E D0 03            [24]  859 	pop	ar3
      003230 D0 04            [24]  860 	pop	ar4
      003232 D0 05            [24]  861 	pop	ar5
      003234 D0 06            [24]  862 	pop	ar6
      003236 D0 07            [24]  863 	pop	ar7
                                    864 ;	main.c:62: i++;
      003238 0B               [12]  865 	inc	r3
      003239 BB 00 C1         [24]  866 	cjne	r3,#0x00,00101$
      00323C 0C               [12]  867 	inc	r4
      00323D 80 BE            [24]  868 	sjmp	00101$
      00323F                        869 00108$:
      00323F 90 00 23         [24]  870 	mov	dptr,#_putstr_s_65536_98
      003242 ED               [12]  871 	mov	a,r5
      003243 F0               [24]  872 	movx	@dptr,a
      003244 EE               [12]  873 	mov	a,r6
      003245 A3               [24]  874 	inc	dptr
      003246 F0               [24]  875 	movx	@dptr,a
      003247 EF               [12]  876 	mov	a,r7
      003248 A3               [24]  877 	inc	dptr
      003249 F0               [24]  878 	movx	@dptr,a
                                    879 ;	main.c:65: return i+1;
      00324A 0B               [12]  880 	inc	r3
      00324B BB 00 01         [24]  881 	cjne	r3,#0x00,00118$
      00324E 0C               [12]  882 	inc	r4
      00324F                        883 00118$:
      00324F 8B 82            [24]  884 	mov	dpl,r3
      003251 8C 83            [24]  885 	mov	dph,r4
                                    886 ;	main.c:66: }
      003253 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'readint'
                                    890 ;------------------------------------------------------------
                                    891 ;reader                    Allocated with name '_readint_reader_65536_101'
                                    892 ;number                    Allocated with name '_readint_number_65537_102'
                                    893 ;------------------------------------------------------------
                                    894 ;	main.c:68: int readint()//reads  char string as integer
                                    895 ;	-----------------------------------------
                                    896 ;	 function readint
                                    897 ;	-----------------------------------------
      003254                        898 _readint:
                                    899 ;	main.c:71: gets(reader);
      003254 90 00 00         [24]  900 	mov	dptr,#0x0000
      003257 75 F0 00         [24]  901 	mov	b,#0x00
      00325A 12 36 FA         [24]  902 	lcall	_gets
                                    903 ;	main.c:72: int number=atoi(reader);
      00325D 90 00 00         [24]  904 	mov	dptr,#0x0000
      003260 75 F0 00         [24]  905 	mov	b,#0x00
                                    906 ;	main.c:73: return number;
                                    907 ;	main.c:74: }
      003263 02 35 DA         [24]  908 	ljmp	_atoi
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'writebytehandler'
                                    911 ;------------------------------------------------------------
                                    912 ;receiver                  Allocated with name '_writebytehandler_receiver_65536_103'
                                    913 ;t                         Allocated with name '_writebytehandler_t_65536_104'
                                    914 ;blockno                   Allocated with name '_writebytehandler_blockno_65536_104'
                                    915 ;address                   Allocated with name '_writebytehandler_address_65537_107'
                                    916 ;data                      Allocated with name '_writebytehandler_data_65538_108'
                                    917 ;------------------------------------------------------------
                                    918 ;	main.c:83: void writebytehandler(char *receiver)
                                    919 ;	-----------------------------------------
                                    920 ;	 function writebytehandler
                                    921 ;	-----------------------------------------
      003266                        922 _writebytehandler:
      003266 AF F0            [24]  923 	mov	r7,b
      003268 AE 83            [24]  924 	mov	r6,dph
      00326A E5 82            [12]  925 	mov	a,dpl
      00326C 90 00 28         [24]  926 	mov	dptr,#_writebytehandler_receiver_65536_103
      00326F F0               [24]  927 	movx	@dptr,a
      003270 EE               [12]  928 	mov	a,r6
      003271 A3               [24]  929 	inc	dptr
      003272 F0               [24]  930 	movx	@dptr,a
      003273 EF               [12]  931 	mov	a,r7
      003274 A3               [24]  932 	inc	dptr
      003275 F0               [24]  933 	movx	@dptr,a
                                    934 ;	main.c:85: uint16_t t=strtohex(receiver);
      003276 90 00 28         [24]  935 	mov	dptr,#_writebytehandler_receiver_65536_103
      003279 E0               [24]  936 	movx	a,@dptr
      00327A FD               [12]  937 	mov	r5,a
      00327B A3               [24]  938 	inc	dptr
      00327C E0               [24]  939 	movx	a,@dptr
      00327D FE               [12]  940 	mov	r6,a
      00327E A3               [24]  941 	inc	dptr
      00327F E0               [24]  942 	movx	a,@dptr
      003280 FF               [12]  943 	mov	r7,a
      003281 8D 82            [24]  944 	mov	dpl,r5
      003283 8E 83            [24]  945 	mov	dph,r6
      003285 8F F0            [24]  946 	mov	b,r7
      003287 12 25 C6         [24]  947 	lcall	_strtohex
      00328A AE 82            [24]  948 	mov	r6,dpl
      00328C AF 83            [24]  949 	mov	r7,dph
                                    950 ;	main.c:86: uint8_t blockno=(t & 0xE00)>>8;
      00328E 7C 00            [12]  951 	mov	r4,#0x00
      003290 74 0E            [12]  952 	mov	a,#0x0e
      003292 5F               [12]  953 	anl	a,r7
      003293 FD               [12]  954 	mov	r5,a
                                    955 ;	main.c:88: if(blockno<8)
      003294 BD 08 00         [24]  956 	cjne	r5,#0x08,00116$
      003297                        957 00116$:
      003297 50 08            [24]  958 	jnc	00102$
                                    959 ;	main.c:91: control |=blockno;
      003299 90 00 80         [24]  960 	mov	dptr,#_control
      00329C E0               [24]  961 	movx	a,@dptr
      00329D 4D               [12]  962 	orl	a,r5
      00329E F0               [24]  963 	movx	@dptr,a
      00329F 80 09            [24]  964 	sjmp	00103$
      0032A1                        965 00102$:
                                    966 ;	main.c:98: putstr("\n\rInvalid block no.\n\r");
      0032A1 90 44 2E         [24]  967 	mov	dptr,#___str_1
      0032A4 75 F0 80         [24]  968 	mov	b,#0x80
                                    969 ;	main.c:99: return;
      0032A7 02 31 DE         [24]  970 	ljmp	_putstr
      0032AA                        971 00103$:
                                    972 ;	main.c:102: uint8_t address=(t&0x0FF);
                                    973 ;	main.c:105: putstr("Enter data to be written\n\r");
      0032AA 90 44 44         [24]  974 	mov	dptr,#___str_2
      0032AD 75 F0 80         [24]  975 	mov	b,#0x80
      0032B0 C0 06            [24]  976 	push	ar6
      0032B2 12 31 DE         [24]  977 	lcall	_putstr
                                    978 ;	main.c:107: gets(addressreceiver);
      0032B5 90 00 1D         [24]  979 	mov	dptr,#_addressreceiver
      0032B8 75 F0 00         [24]  980 	mov	b,#0x00
      0032BB 12 36 FA         [24]  981 	lcall	_gets
                                    982 ;	main.c:108: inputchecker(addressreceiver);
      0032BE 90 00 1D         [24]  983 	mov	dptr,#_addressreceiver
      0032C1 75 F0 00         [24]  984 	mov	b,#0x00
      0032C4 12 30 CA         [24]  985 	lcall	_inputchecker
      0032C7 D0 06            [24]  986 	pop	ar6
                                    987 ;	main.c:109: if(!flag_inputcheck)
      0032C9 90 00 7E         [24]  988 	mov	dptr,#_flag_inputcheck
      0032CC E0               [24]  989 	movx	a,@dptr
      0032CD F5 F0            [12]  990 	mov	b,a
      0032CF A3               [24]  991 	inc	dptr
      0032D0 E0               [24]  992 	movx	a,@dptr
      0032D1 45 F0            [12]  993 	orl	a,b
      0032D3 70 3E            [24]  994 	jnz	00106$
                                    995 ;	main.c:111: putstr("data is ");
      0032D5 90 44 5F         [24]  996 	mov	dptr,#___str_3
      0032D8 75 F0 80         [24]  997 	mov	b,#0x80
      0032DB C0 06            [24]  998 	push	ar6
      0032DD 12 31 DE         [24]  999 	lcall	_putstr
                                   1000 ;	main.c:112: putstr(addressreceiver);
      0032E0 90 00 1D         [24] 1001 	mov	dptr,#_addressreceiver
      0032E3 75 F0 00         [24] 1002 	mov	b,#0x00
      0032E6 12 31 DE         [24] 1003 	lcall	_putstr
                                   1004 ;	main.c:113: putstr(newl);
      0032E9 90 44 68         [24] 1005 	mov	dptr,#___str_4
      0032EC 75 F0 80         [24] 1006 	mov	b,#0x80
      0032EF 12 31 DE         [24] 1007 	lcall	_putstr
                                   1008 ;	main.c:114: data=strtohex(addressreceiver);
      0032F2 90 00 1D         [24] 1009 	mov	dptr,#_addressreceiver
      0032F5 75 F0 00         [24] 1010 	mov	b,#0x00
      0032F8 12 25 C6         [24] 1011 	lcall	_strtohex
      0032FB AD 82            [24] 1012 	mov	r5,dpl
      0032FD D0 06            [24] 1013 	pop	ar6
                                   1014 ;	main.c:115: byte_write(control,address,data);
      0032FF 90 00 80         [24] 1015 	mov	dptr,#_control
      003302 E0               [24] 1016 	movx	a,@dptr
      003303 FF               [12] 1017 	mov	r7,a
      003304 90 00 0A         [24] 1018 	mov	dptr,#_byte_write_PARM_2
      003307 EE               [12] 1019 	mov	a,r6
      003308 F0               [24] 1020 	movx	@dptr,a
      003309 90 00 0B         [24] 1021 	mov	dptr,#_byte_write_PARM_3
      00330C ED               [12] 1022 	mov	a,r5
      00330D F0               [24] 1023 	movx	@dptr,a
      00330E 8F 82            [24] 1024 	mov	dpl,r7
                                   1025 ;	main.c:118: }
      003310 02 2C 73         [24] 1026 	ljmp	_byte_write
      003313                       1027 00106$:
      003313 22               [24] 1028 	ret
                                   1029 ;------------------------------------------------------------
                                   1030 ;Allocation info for local variables in function 'randomread_handler'
                                   1031 ;------------------------------------------------------------
                                   1032 ;receiver                  Allocated with name '_randomread_handler_receiver_65536_110'
                                   1033 ;t                         Allocated with name '_randomread_handler_t_65536_111'
                                   1034 ;blockno                   Allocated with name '_randomread_handler_blockno_65536_111'
                                   1035 ;address                   Allocated with name '_randomread_handler_address_131072_114'
                                   1036 ;result                    Allocated with name '_randomread_handler_result_131072_114'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	main.c:120: int randomread_handler(char *receiver)
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function randomread_handler
                                   1041 ;	-----------------------------------------
      003314                       1042 _randomread_handler:
      003314 AF F0            [24] 1043 	mov	r7,b
      003316 AE 83            [24] 1044 	mov	r6,dph
      003318 E5 82            [12] 1045 	mov	a,dpl
      00331A 90 00 2B         [24] 1046 	mov	dptr,#_randomread_handler_receiver_65536_110
      00331D F0               [24] 1047 	movx	@dptr,a
      00331E EE               [12] 1048 	mov	a,r6
      00331F A3               [24] 1049 	inc	dptr
      003320 F0               [24] 1050 	movx	@dptr,a
      003321 EF               [12] 1051 	mov	a,r7
      003322 A3               [24] 1052 	inc	dptr
      003323 F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	main.c:122: uint16_t t=strtohex(receiver);
      003324 90 00 2B         [24] 1055 	mov	dptr,#_randomread_handler_receiver_65536_110
      003327 E0               [24] 1056 	movx	a,@dptr
      003328 FD               [12] 1057 	mov	r5,a
      003329 A3               [24] 1058 	inc	dptr
      00332A E0               [24] 1059 	movx	a,@dptr
      00332B FE               [12] 1060 	mov	r6,a
      00332C A3               [24] 1061 	inc	dptr
      00332D E0               [24] 1062 	movx	a,@dptr
      00332E FF               [12] 1063 	mov	r7,a
      00332F 8D 82            [24] 1064 	mov	dpl,r5
      003331 8E 83            [24] 1065 	mov	dph,r6
      003333 8F F0            [24] 1066 	mov	b,r7
      003335 12 25 C6         [24] 1067 	lcall	_strtohex
      003338 AE 82            [24] 1068 	mov	r6,dpl
      00333A AF 83            [24] 1069 	mov	r7,dph
                                   1070 ;	main.c:123: uint8_t blockno=(t & 0xE00)>>8;
      00333C 74 0E            [12] 1071 	mov	a,#0x0e
      00333E 5F               [12] 1072 	anl	a,r7
      00333F FD               [12] 1073 	mov	r5,a
                                   1074 ;	main.c:124: if(blockno<7)
      003340 BD 07 00         [24] 1075 	cjne	r5,#0x07,00117$
      003343                       1076 00117$:
      003343 50 08            [24] 1077 	jnc	00102$
                                   1078 ;	main.c:127: control |=blockno;
      003345 90 00 80         [24] 1079 	mov	dptr,#_control
      003348 E0               [24] 1080 	movx	a,@dptr
      003349 4D               [12] 1081 	orl	a,r5
      00334A F0               [24] 1082 	movx	@dptr,a
      00334B 80 06            [24] 1083 	sjmp	00103$
      00334D                       1084 00102$:
                                   1085 ;	main.c:132: errorflag=1;
      00334D 90 00 81         [24] 1086 	mov	dptr,#_errorflag
      003350 74 01            [12] 1087 	mov	a,#0x01
      003352 F0               [24] 1088 	movx	@dptr,a
      003353                       1089 00103$:
                                   1090 ;	main.c:133: if(errorflag)
      003353 90 00 81         [24] 1091 	mov	dptr,#_errorflag
      003356 E0               [24] 1092 	movx	a,@dptr
      003357 60 0D            [24] 1093 	jz	00105$
                                   1094 ;	main.c:135: putstr("Wrong block number. \n\r");
      003359 90 44 6B         [24] 1095 	mov	dptr,#___str_5
      00335C 75 F0 80         [24] 1096 	mov	b,#0x80
      00335F 12 31 DE         [24] 1097 	lcall	_putstr
                                   1098 ;	main.c:136: return -1;
      003362 90 FF FF         [24] 1099 	mov	dptr,#0xffff
      003365 22               [24] 1100 	ret
      003366                       1101 00105$:
                                   1102 ;	main.c:141: uint8_t address=(t&0x0FF);
                                   1103 ;	main.c:142: int result =random_read(control,address);
      003366 90 00 80         [24] 1104 	mov	dptr,#_control
      003369 E0               [24] 1105 	movx	a,@dptr
      00336A FF               [12] 1106 	mov	r7,a
      00336B 90 00 0F         [24] 1107 	mov	dptr,#_random_read_PARM_2
      00336E EE               [12] 1108 	mov	a,r6
      00336F F0               [24] 1109 	movx	@dptr,a
      003370 8F 82            [24] 1110 	mov	dpl,r7
      003372 12 2D 01         [24] 1111 	lcall	_random_read
      003375 AE 82            [24] 1112 	mov	r6,dpl
      003377 AF 83            [24] 1113 	mov	r7,dph
                                   1114 ;	main.c:143: errorflag=0;
      003379 90 00 81         [24] 1115 	mov	dptr,#_errorflag
      00337C E4               [12] 1116 	clr	a
      00337D F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	main.c:144: return result;
      00337E 8E 82            [24] 1119 	mov	dpl,r6
      003380 8F 83            [24] 1120 	mov	dph,r7
                                   1121 ;	main.c:147: }
      003382 22               [24] 1122 	ret
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'main'
                                   1125 ;------------------------------------------------------------
                                   1126 ;addressreceiver1          Allocated with name '_main_addressreceiver1_196609_120'
                                   1127 ;address1                  Allocated with name '_main_address1_196610_122'
                                   1128 ;block1                    Allocated with name '_main_block1_196610_122'
                                   1129 ;startaddress              Allocated with name '_main_startaddress_196610_122'
                                   1130 ;addressreceiver2          Allocated with name '_main_addressreceiver2_196610_122'
                                   1131 ;address2                  Allocated with name '_main_address2_196611_124'
                                   1132 ;block2                    Allocated with name '_main_block2_196611_124'
                                   1133 ;endaddress                Allocated with name '_main_endaddress_196611_124'
                                   1134 ;------------------------------------------------------------
                                   1135 ;	main.c:149: void main(void)
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function main
                                   1138 ;	-----------------------------------------
      003383                       1139 _main:
                                   1140 ;	main.c:151: i2c_reset();
      003383 12 2F 6E         [24] 1141 	lcall	_i2c_reset
                                   1142 ;	main.c:152: while(1)
      003386                       1143 00123$:
                                   1144 ;	main.c:156: errorflag=0;
      003386 90 00 81         [24] 1145 	mov	dptr,#_errorflag
      003389 E4               [12] 1146 	clr	a
      00338A F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	main.c:157: putstr("*************************\n\rMENU FOR TESTING I2C FUNCTIONS\n\rPRESS W FOR WRITE BYTE\n\rPRESS R FOR RANDOM READ\n\rPRESS S FOR HEX DUMP\n\rPRESS X FOR EEPROM RESET\n\r");
      00338B 90 44 82         [24] 1149 	mov	dptr,#___str_6
      00338E 75 F0 80         [24] 1150 	mov	b,#0x80
      003391 12 31 DE         [24] 1151 	lcall	_putstr
                                   1152 ;	main.c:158: menuselect=getchar();
      003394 12 31 C8         [24] 1153 	lcall	_getchar
      003397 AE 82            [24] 1154 	mov	r6,dpl
      003399 AF 83            [24] 1155 	mov	r7,dph
      00339B 90 00 26         [24] 1156 	mov	dptr,#_menuselect
      00339E EE               [12] 1157 	mov	a,r6
      00339F F0               [24] 1158 	movx	@dptr,a
      0033A0 EF               [12] 1159 	mov	a,r7
      0033A1 A3               [24] 1160 	inc	dptr
      0033A2 F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	main.c:160: putchar(menuselect);
      0033A3 8E 82            [24] 1163 	mov	dpl,r6
      0033A5 8F 83            [24] 1164 	mov	dph,r7
      0033A7 12 31 A3         [24] 1165 	lcall	_putchar
                                   1166 ;	main.c:161: putstr("\n\r");
      0033AA 90 44 68         [24] 1167 	mov	dptr,#___str_4
      0033AD 75 F0 80         [24] 1168 	mov	b,#0x80
      0033B0 12 31 DE         [24] 1169 	lcall	_putstr
                                   1170 ;	main.c:163: switch(toupper(menuselect))
      0033B3 90 00 26         [24] 1171 	mov	dptr,#_menuselect
      0033B6 E0               [24] 1172 	movx	a,@dptr
      0033B7 FE               [12] 1173 	mov	r6,a
      0033B8 A3               [24] 1174 	inc	dptr
      0033B9 E0               [24] 1175 	movx	a,@dptr
      0033BA FF               [12] 1176 	mov	r7,a
      0033BB 8E 82            [24] 1177 	mov	dpl,r6
      0033BD 8F 83            [24] 1178 	mov	dph,r7
      0033BF 12 39 28         [24] 1179 	lcall	_toupper
      0033C2 AE 82            [24] 1180 	mov	r6,dpl
      0033C4 AF 83            [24] 1181 	mov	r7,dph
      0033C6 BE 52 05         [24] 1182 	cjne	r6,#0x52,00175$
      0033C9 BF 00 02         [24] 1183 	cjne	r7,#0x00,00175$
      0033CC 80 55            [24] 1184 	sjmp	00104$
      0033CE                       1185 00175$:
      0033CE BE 53 06         [24] 1186 	cjne	r6,#0x53,00176$
      0033D1 BF 00 03         [24] 1187 	cjne	r7,#0x00,00176$
      0033D4 02 34 8A         [24] 1188 	ljmp	00109$
      0033D7                       1189 00176$:
      0033D7 BE 57 05         [24] 1190 	cjne	r6,#0x57,00177$
      0033DA BF 00 02         [24] 1191 	cjne	r7,#0x00,00177$
      0033DD 80 0C            [24] 1192 	sjmp	00101$
      0033DF                       1193 00177$:
      0033DF BE 58 06         [24] 1194 	cjne	r6,#0x58,00178$
      0033E2 BF 00 03         [24] 1195 	cjne	r7,#0x00,00178$
      0033E5 02 35 AD         [24] 1196 	ljmp	00119$
      0033E8                       1197 00178$:
      0033E8 02 35 C2         [24] 1198 	ljmp	00120$
                                   1199 ;	main.c:166: case 'W':
      0033EB                       1200 00101$:
                                   1201 ;	main.c:167: putstr("ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER IN HEX\n\r");
      0033EB 90 45 1F         [24] 1202 	mov	dptr,#___str_7
      0033EE 75 F0 80         [24] 1203 	mov	b,#0x80
      0033F1 12 31 DE         [24] 1204 	lcall	_putstr
                                   1205 ;	main.c:169: gets(addressreceiver);
      0033F4 90 00 1D         [24] 1206 	mov	dptr,#_addressreceiver
      0033F7 75 F0 00         [24] 1207 	mov	b,#0x00
      0033FA 12 36 FA         [24] 1208 	lcall	_gets
                                   1209 ;	main.c:170: inputchecker(addressreceiver);
      0033FD 90 00 1D         [24] 1210 	mov	dptr,#_addressreceiver
      003400 75 F0 00         [24] 1211 	mov	b,#0x00
      003403 12 30 CA         [24] 1212 	lcall	_inputchecker
                                   1213 ;	main.c:171: if(!flag_inputcheck)
      003406 90 00 7E         [24] 1214 	mov	dptr,#_flag_inputcheck
      003409 E0               [24] 1215 	movx	a,@dptr
      00340A F5 F0            [12] 1216 	mov	b,a
      00340C A3               [24] 1217 	inc	dptr
      00340D E0               [24] 1218 	movx	a,@dptr
      00340E 45 F0            [12] 1219 	orl	a,b
                                   1220 ;	main.c:172: writebytehandler(addressreceiver);
      003410 70 08            [24] 1221 	jnz	00103$
      003412 90 00 1D         [24] 1222 	mov	dptr,#_addressreceiver
      003415 F5 F0            [12] 1223 	mov	b,a
      003417 12 32 66         [24] 1224 	lcall	_writebytehandler
      00341A                       1225 00103$:
                                   1226 ;	main.c:173: control=0xA0;
      00341A 90 00 80         [24] 1227 	mov	dptr,#_control
      00341D 74 A0            [12] 1228 	mov	a,#0xa0
      00341F F0               [24] 1229 	movx	@dptr,a
                                   1230 ;	main.c:174: break;
      003420 02 33 86         [24] 1231 	ljmp	00123$
                                   1232 ;	main.c:176: case 'R':
      003423                       1233 00104$:
                                   1234 ;	main.c:177: putstr("ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND WORD ADRRESS TOGETHER in HEX\n\r");
      003423 90 45 7D         [24] 1235 	mov	dptr,#___str_8
      003426 75 F0 80         [24] 1236 	mov	b,#0x80
      003429 12 31 DE         [24] 1237 	lcall	_putstr
                                   1238 ;	main.c:178: gets(addressreceiver);
      00342C 90 00 1D         [24] 1239 	mov	dptr,#_addressreceiver
      00342F 75 F0 00         [24] 1240 	mov	b,#0x00
      003432 12 36 FA         [24] 1241 	lcall	_gets
                                   1242 ;	main.c:179: inputchecker(addressreceiver);
      003435 90 00 1D         [24] 1243 	mov	dptr,#_addressreceiver
      003438 75 F0 00         [24] 1244 	mov	b,#0x00
      00343B 12 30 CA         [24] 1245 	lcall	_inputchecker
                                   1246 ;	main.c:180: if(!flag_inputcheck)
      00343E 90 00 7E         [24] 1247 	mov	dptr,#_flag_inputcheck
      003441 E0               [24] 1248 	movx	a,@dptr
      003442 F5 F0            [12] 1249 	mov	b,a
      003444 A3               [24] 1250 	inc	dptr
      003445 E0               [24] 1251 	movx	a,@dptr
      003446 45 F0            [12] 1252 	orl	a,b
                                   1253 ;	main.c:183: output=randomread_handler(addressreceiver);
      003448 70 37            [24] 1254 	jnz	00108$
      00344A 90 00 1D         [24] 1255 	mov	dptr,#_addressreceiver
      00344D F5 F0            [12] 1256 	mov	b,a
      00344F 12 33 14         [24] 1257 	lcall	_randomread_handler
      003452 AE 82            [24] 1258 	mov	r6,dpl
      003454 AF 83            [24] 1259 	mov	r7,dph
      003456 90 00 2E         [24] 1260 	mov	dptr,#_output
      003459 EE               [12] 1261 	mov	a,r6
      00345A F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	main.c:184: if(errorflag==0)
      00345B 90 00 81         [24] 1264 	mov	dptr,#_errorflag
      00345E E0               [24] 1265 	movx	a,@dptr
      00345F 70 20            [24] 1266 	jnz	00108$
                                   1267 ;	main.c:185: printf("Read value is 0x%X\n\r",output);
      003461 90 00 2E         [24] 1268 	mov	dptr,#_output
      003464 E0               [24] 1269 	movx	a,@dptr
      003465 FF               [12] 1270 	mov	r7,a
      003466 7E 00            [12] 1271 	mov	r6,#0x00
      003468 C0 07            [24] 1272 	push	ar7
      00346A C0 06            [24] 1273 	push	ar6
      00346C 74 D7            [12] 1274 	mov	a,#___str_9
      00346E C0 E0            [24] 1275 	push	acc
      003470 74 45            [12] 1276 	mov	a,#(___str_9 >> 8)
      003472 C0 E0            [24] 1277 	push	acc
      003474 74 80            [12] 1278 	mov	a,#0x80
      003476 C0 E0            [24] 1279 	push	acc
      003478 12 39 B1         [24] 1280 	lcall	_printf
      00347B E5 81            [12] 1281 	mov	a,sp
      00347D 24 FB            [12] 1282 	add	a,#0xfb
      00347F F5 81            [12] 1283 	mov	sp,a
      003481                       1284 00108$:
                                   1285 ;	main.c:187: control=0xA0;
      003481 90 00 80         [24] 1286 	mov	dptr,#_control
      003484 74 A0            [12] 1287 	mov	a,#0xa0
      003486 F0               [24] 1288 	movx	@dptr,a
                                   1289 ;	main.c:189: break;
      003487 02 33 86         [24] 1290 	ljmp	00123$
                                   1291 ;	main.c:190: case 'S':
      00348A                       1292 00109$:
                                   1293 ;	main.c:191: putstr("\n\r");
      00348A 90 44 68         [24] 1294 	mov	dptr,#___str_4
      00348D 75 F0 80         [24] 1295 	mov	b,#0x80
      003490 12 31 DE         [24] 1296 	lcall	_putstr
                                   1297 ;	main.c:194: putstr("Enter first address\n\r");
      003493 90 45 EC         [24] 1298 	mov	dptr,#___str_10
      003496 75 F0 80         [24] 1299 	mov	b,#0x80
      003499 12 31 DE         [24] 1300 	lcall	_putstr
                                   1301 ;	main.c:195: gets(addressreceiver1);
      00349C 90 00 2F         [24] 1302 	mov	dptr,#_main_addressreceiver1_196609_120
      00349F 75 F0 00         [24] 1303 	mov	b,#0x00
      0034A2 12 36 FA         [24] 1304 	lcall	_gets
                                   1305 ;	main.c:196: inputchecker(addressreceiver1);
      0034A5 90 00 2F         [24] 1306 	mov	dptr,#_main_addressreceiver1_196609_120
      0034A8 75 F0 00         [24] 1307 	mov	b,#0x00
      0034AB 12 30 CA         [24] 1308 	lcall	_inputchecker
                                   1309 ;	main.c:197: if(flag_inputcheck)
      0034AE 90 00 7E         [24] 1310 	mov	dptr,#_flag_inputcheck
      0034B1 E0               [24] 1311 	movx	a,@dptr
      0034B2 F5 F0            [12] 1312 	mov	b,a
      0034B4 A3               [24] 1313 	inc	dptr
      0034B5 E0               [24] 1314 	movx	a,@dptr
      0034B6 45 F0            [12] 1315 	orl	a,b
      0034B8 60 15            [24] 1316 	jz	00111$
                                   1317 ;	main.c:199: putstr("Error in input");
      0034BA 90 46 02         [24] 1318 	mov	dptr,#___str_11
      0034BD 75 F0 80         [24] 1319 	mov	b,#0x80
      0034C0 12 31 DE         [24] 1320 	lcall	_putstr
                                   1321 ;	main.c:200: putstr(newl);
      0034C3 90 44 68         [24] 1322 	mov	dptr,#___str_4
      0034C6 75 F0 80         [24] 1323 	mov	b,#0x80
      0034C9 12 31 DE         [24] 1324 	lcall	_putstr
                                   1325 ;	main.c:201: break;
      0034CC 02 33 86         [24] 1326 	ljmp	00123$
      0034CF                       1327 00111$:
                                   1328 ;	main.c:205: uint16_t address1=strtohex(addressreceiver1);
      0034CF 90 00 2F         [24] 1329 	mov	dptr,#_main_addressreceiver1_196609_120
      0034D2 75 F0 00         [24] 1330 	mov	b,#0x00
      0034D5 12 25 C6         [24] 1331 	lcall	_strtohex
      0034D8 AE 82            [24] 1332 	mov	r6,dpl
      0034DA AF 83            [24] 1333 	mov	r7,dph
                                   1334 ;	main.c:207: uint8_t block1=(address1 & 0xE00)>>8;
      0034DC 74 0E            [12] 1335 	mov	a,#0x0e
      0034DE 5F               [12] 1336 	anl	a,r7
      0034DF FD               [12] 1337 	mov	r5,a
                                   1338 ;	main.c:208: uint8_t startaddress=(address1&0x0FF);
      0034E0 8E 04            [24] 1339 	mov	ar4,r6
                                   1340 ;	main.c:213: putstr("Enter second address\n\r");
      0034E2 90 46 11         [24] 1341 	mov	dptr,#___str_12
      0034E5 75 F0 80         [24] 1342 	mov	b,#0x80
      0034E8 C0 07            [24] 1343 	push	ar7
      0034EA C0 06            [24] 1344 	push	ar6
      0034EC C0 05            [24] 1345 	push	ar5
      0034EE C0 04            [24] 1346 	push	ar4
      0034F0 12 31 DE         [24] 1347 	lcall	_putstr
                                   1348 ;	main.c:214: gets(addressreceiver2);
      0034F3 90 00 33         [24] 1349 	mov	dptr,#_main_addressreceiver2_196610_122
      0034F6 75 F0 00         [24] 1350 	mov	b,#0x00
      0034F9 12 36 FA         [24] 1351 	lcall	_gets
                                   1352 ;	main.c:215: inputchecker(addressreceiver2);
      0034FC 90 00 33         [24] 1353 	mov	dptr,#_main_addressreceiver2_196610_122
      0034FF 75 F0 00         [24] 1354 	mov	b,#0x00
      003502 12 30 CA         [24] 1355 	lcall	_inputchecker
      003505 D0 04            [24] 1356 	pop	ar4
      003507 D0 05            [24] 1357 	pop	ar5
      003509 D0 06            [24] 1358 	pop	ar6
      00350B D0 07            [24] 1359 	pop	ar7
                                   1360 ;	main.c:216: if(flag_inputcheck)
      00350D 90 00 7E         [24] 1361 	mov	dptr,#_flag_inputcheck
      003510 E0               [24] 1362 	movx	a,@dptr
      003511 F5 F0            [12] 1363 	mov	b,a
      003513 A3               [24] 1364 	inc	dptr
      003514 E0               [24] 1365 	movx	a,@dptr
      003515 45 F0            [12] 1366 	orl	a,b
      003517 60 15            [24] 1367 	jz	00113$
                                   1368 ;	main.c:218: putstr("Error in input");
      003519 90 46 02         [24] 1369 	mov	dptr,#___str_11
      00351C 75 F0 80         [24] 1370 	mov	b,#0x80
      00351F 12 31 DE         [24] 1371 	lcall	_putstr
                                   1372 ;	main.c:219: putstr(newl);
      003522 90 44 68         [24] 1373 	mov	dptr,#___str_4
      003525 75 F0 80         [24] 1374 	mov	b,#0x80
      003528 12 31 DE         [24] 1375 	lcall	_putstr
                                   1376 ;	main.c:220: break;
      00352B 02 33 86         [24] 1377 	ljmp	00123$
      00352E                       1378 00113$:
                                   1379 ;	main.c:224: uint16_t address2=strtohex(addressreceiver2);
      00352E 90 00 33         [24] 1380 	mov	dptr,#_main_addressreceiver2_196610_122
      003531 75 F0 00         [24] 1381 	mov	b,#0x00
      003534 C0 07            [24] 1382 	push	ar7
      003536 C0 06            [24] 1383 	push	ar6
      003538 C0 05            [24] 1384 	push	ar5
      00353A C0 04            [24] 1385 	push	ar4
      00353C 12 25 C6         [24] 1386 	lcall	_strtohex
      00353F AA 82            [24] 1387 	mov	r2,dpl
      003541 AB 83            [24] 1388 	mov	r3,dph
      003543 D0 04            [24] 1389 	pop	ar4
      003545 D0 05            [24] 1390 	pop	ar5
      003547 D0 06            [24] 1391 	pop	ar6
      003549 D0 07            [24] 1392 	pop	ar7
                                   1393 ;	main.c:225: uint8_t block2=(address2 & 0xE00)>>8;
      00354B 74 0E            [12] 1394 	mov	a,#0x0e
      00354D 5B               [12] 1395 	anl	a,r3
      00354E F9               [12] 1396 	mov	r1,a
                                   1397 ;	main.c:226: uint8_t endaddress=(address2&0x0FF);
      00354F 8A 00            [24] 1398 	mov	ar0,r2
                                   1399 ;	main.c:228: if(block1>7 || block2>7)
      003551 ED               [12] 1400 	mov	a,r5
      003552 24 F8            [12] 1401 	add	a,#0xff - 0x07
      003554 40 05            [24] 1402 	jc	00114$
      003556 E9               [12] 1403 	mov	a,r1
      003557 24 F8            [12] 1404 	add	a,#0xff - 0x07
      003559 50 0C            [24] 1405 	jnc	00115$
      00355B                       1406 00114$:
                                   1407 ;	main.c:231: putstr("Block numbers are invalid\n\r");
      00355B 90 46 28         [24] 1408 	mov	dptr,#___str_13
      00355E 75 F0 80         [24] 1409 	mov	b,#0x80
      003561 12 31 DE         [24] 1410 	lcall	_putstr
                                   1411 ;	main.c:232: break;
      003564 02 33 86         [24] 1412 	ljmp	00123$
      003567                       1413 00115$:
                                   1414 ;	main.c:234: if(address1>address2)
      003567 C3               [12] 1415 	clr	c
      003568 EA               [12] 1416 	mov	a,r2
      003569 9E               [12] 1417 	subb	a,r6
      00356A EB               [12] 1418 	mov	a,r3
      00356B 9F               [12] 1419 	subb	a,r7
      00356C 50 18            [24] 1420 	jnc	00118$
                                   1421 ;	main.c:236: printf("Initial address is greater than Second address\n\r");
      00356E 74 44            [12] 1422 	mov	a,#___str_14
      003570 C0 E0            [24] 1423 	push	acc
      003572 74 46            [12] 1424 	mov	a,#(___str_14 >> 8)
      003574 C0 E0            [24] 1425 	push	acc
      003576 74 80            [12] 1426 	mov	a,#0x80
      003578 C0 E0            [24] 1427 	push	acc
      00357A 12 39 B1         [24] 1428 	lcall	_printf
      00357D 15 81            [12] 1429 	dec	sp
      00357F 15 81            [12] 1430 	dec	sp
      003581 15 81            [12] 1431 	dec	sp
                                   1432 ;	main.c:237: break;
      003583 02 33 86         [24] 1433 	ljmp	00123$
      003586                       1434 00118$:
                                   1435 ;	main.c:243: seq_read(control,startaddress,endaddress,block1,block2);
      003586 90 00 80         [24] 1436 	mov	dptr,#_control
      003589 E0               [24] 1437 	movx	a,@dptr
      00358A FF               [12] 1438 	mov	r7,a
      00358B 90 00 11         [24] 1439 	mov	dptr,#_seq_read_PARM_2
      00358E EC               [12] 1440 	mov	a,r4
      00358F F0               [24] 1441 	movx	@dptr,a
      003590 90 00 12         [24] 1442 	mov	dptr,#_seq_read_PARM_3
      003593 E8               [12] 1443 	mov	a,r0
      003594 F0               [24] 1444 	movx	@dptr,a
      003595 90 00 13         [24] 1445 	mov	dptr,#_seq_read_PARM_4
      003598 ED               [12] 1446 	mov	a,r5
      003599 F0               [24] 1447 	movx	@dptr,a
      00359A 90 00 14         [24] 1448 	mov	dptr,#_seq_read_PARM_5
      00359D E9               [12] 1449 	mov	a,r1
      00359E F0               [24] 1450 	movx	@dptr,a
      00359F 8F 82            [24] 1451 	mov	dpl,r7
      0035A1 12 2D 60         [24] 1452 	lcall	_seq_read
                                   1453 ;	main.c:249: control=0xA0;
      0035A4 90 00 80         [24] 1454 	mov	dptr,#_control
      0035A7 74 A0            [12] 1455 	mov	a,#0xa0
      0035A9 F0               [24] 1456 	movx	@dptr,a
                                   1457 ;	main.c:251: break;
      0035AA 02 33 86         [24] 1458 	ljmp	00123$
                                   1459 ;	main.c:252: case 'X':
      0035AD                       1460 00119$:
                                   1461 ;	main.c:253: restart_i2c();
      0035AD 12 2F AA         [24] 1462 	lcall	_restart_i2c
                                   1463 ;	main.c:254: i2c_write(0xFF);
      0035B0 90 00 FF         [24] 1464 	mov	dptr,#0x00ff
      0035B3 12 2F B4         [24] 1465 	lcall	_i2c_write
                                   1466 ;	main.c:255: i2c_nack();
      0035B6 12 30 52         [24] 1467 	lcall	_i2c_nack
                                   1468 ;	main.c:256: restart_i2c();
      0035B9 12 2F AA         [24] 1469 	lcall	_restart_i2c
                                   1470 ;	main.c:257: i2c_stop();
      0035BC 12 2F 83         [24] 1471 	lcall	_i2c_stop
                                   1472 ;	main.c:258: break;
      0035BF 02 33 86         [24] 1473 	ljmp	00123$
                                   1474 ;	main.c:259: default:
      0035C2                       1475 00120$:
                                   1476 ;	main.c:260: printf("No function attached to input\r\n");
      0035C2 74 75            [12] 1477 	mov	a,#___str_15
      0035C4 C0 E0            [24] 1478 	push	acc
      0035C6 74 46            [12] 1479 	mov	a,#(___str_15 >> 8)
      0035C8 C0 E0            [24] 1480 	push	acc
      0035CA 74 80            [12] 1481 	mov	a,#0x80
      0035CC C0 E0            [24] 1482 	push	acc
      0035CE 12 39 B1         [24] 1483 	lcall	_printf
      0035D1 15 81            [12] 1484 	dec	sp
      0035D3 15 81            [12] 1485 	dec	sp
      0035D5 15 81            [12] 1486 	dec	sp
                                   1487 ;	main.c:273: }
                                   1488 ;	main.c:277: }
      0035D7 02 33 86         [24] 1489 	ljmp	00123$
                                   1490 	.area CSEG    (CODE)
                                   1491 	.area CONST   (CODE)
                                   1492 	.area CONST   (CODE)
      004405                       1493 ___str_0:
      004405 49 6E 76 61 6C 69 64  1494 	.ascii "Invalid character entered Please retry"
             20 63 68 61 72 61 63
             74 65 72 20 65 6E 74
             65 72 65 64 20 50 6C
             65 61 73 65 20 72 65
             74 72 79
      00442B 0A                    1495 	.db 0x0a
      00442C 0D                    1496 	.db 0x0d
      00442D 00                    1497 	.db 0x00
                                   1498 	.area CSEG    (CODE)
                                   1499 	.area CONST   (CODE)
      00442E                       1500 ___str_1:
      00442E 0A                    1501 	.db 0x0a
      00442F 0D                    1502 	.db 0x0d
      004430 49 6E 76 61 6C 69 64  1503 	.ascii "Invalid block no."
             20 62 6C 6F 63 6B 20
             6E 6F 2E
      004441 0A                    1504 	.db 0x0a
      004442 0D                    1505 	.db 0x0d
      004443 00                    1506 	.db 0x00
                                   1507 	.area CSEG    (CODE)
                                   1508 	.area CONST   (CODE)
      004444                       1509 ___str_2:
      004444 45 6E 74 65 72 20 64  1510 	.ascii "Enter data to be written"
             61 74 61 20 74 6F 20
             62 65 20 77 72 69 74
             74 65 6E
      00445C 0A                    1511 	.db 0x0a
      00445D 0D                    1512 	.db 0x0d
      00445E 00                    1513 	.db 0x00
                                   1514 	.area CSEG    (CODE)
                                   1515 	.area CONST   (CODE)
      00445F                       1516 ___str_3:
      00445F 64 61 74 61 20 69 73  1517 	.ascii "data is "
             20
      004467 00                    1518 	.db 0x00
                                   1519 	.area CSEG    (CODE)
                                   1520 	.area CONST   (CODE)
      004468                       1521 ___str_4:
      004468 0A                    1522 	.db 0x0a
      004469 0D                    1523 	.db 0x0d
      00446A 00                    1524 	.db 0x00
                                   1525 	.area CSEG    (CODE)
                                   1526 	.area CONST   (CODE)
      00446B                       1527 ___str_5:
      00446B 57 72 6F 6E 67 20 62  1528 	.ascii "Wrong block number. "
             6C 6F 63 6B 20 6E 75
             6D 62 65 72 2E 20
      00447F 0A                    1529 	.db 0x0a
      004480 0D                    1530 	.db 0x0d
      004481 00                    1531 	.db 0x00
                                   1532 	.area CSEG    (CODE)
                                   1533 	.area CONST   (CODE)
      004482                       1534 ___str_6:
      004482 2A 2A 2A 2A 2A 2A 2A  1535 	.ascii "*************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      00449B 0A                    1536 	.db 0x0a
      00449C 0D                    1537 	.db 0x0d
      00449D 4D 45 4E 55 20 46 4F  1538 	.ascii "MENU FOR TESTING I2C FUNCTIONS"
             52 20 54 45 53 54 49
             4E 47 20 49 32 43 20
             46 55 4E 43 54 49 4F
             4E 53
      0044BB 0A                    1539 	.db 0x0a
      0044BC 0D                    1540 	.db 0x0d
      0044BD 50 52 45 53 53 20 57  1541 	.ascii "PRESS W FOR WRITE BYTE"
             20 46 4F 52 20 57 52
             49 54 45 20 42 59 54
             45
      0044D3 0A                    1542 	.db 0x0a
      0044D4 0D                    1543 	.db 0x0d
      0044D5 50 52 45 53 53 20 52  1544 	.ascii "PRESS R FOR RANDOM READ"
             20 46 4F 52 20 52 41
             4E 44 4F 4D 20 52 45
             41 44
      0044EC 0A                    1545 	.db 0x0a
      0044ED 0D                    1546 	.db 0x0d
      0044EE 50 52 45 53 53 20 53  1547 	.ascii "PRESS S FOR HEX DUMP"
             20 46 4F 52 20 48 45
             58 20 44 55 4D 50
      004502 0A                    1548 	.db 0x0a
      004503 0D                    1549 	.db 0x0d
      004504 50 52 45 53 53 20 58  1550 	.ascii "PRESS X FOR EEPROM RESET"
             20 46 4F 52 20 45 45
             50 52 4F 4D 20 52 45
             53 45 54
      00451C 0A                    1551 	.db 0x0a
      00451D 0D                    1552 	.db 0x0d
      00451E 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area CONST   (CODE)
      00451F                       1556 ___str_7:
      00451F 45 4E 54 45 52 20 41  1557 	.ascii "ENTER ADDRESS TO BE WRITTEN ,ADDRESS INCLUDES BLOCK NUMBER A"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 57
             52 49 54 54 45 4E 20
             2C 41 44 44 52 45 53
             53 20 49 4E 43 4C 55
             44 45 53 20 42 4C 4F
             43 4B 20 4E 55 4D 42
             45 52 20 41
      00455B 4E 44 20 57 4F 52 44  1558 	.ascii "ND WORD ADRRESS TOGETHER IN HEX"
             20 41 44 52 52 45 53
             53 20 54 4F 47 45 54
             48 45 52 20 49 4E 20
             48 45 58
      00457A 0A                    1559 	.db 0x0a
      00457B 0D                    1560 	.db 0x0d
      00457C 00                    1561 	.db 0x00
                                   1562 	.area CSEG    (CODE)
                                   1563 	.area CONST   (CODE)
      00457D                       1564 ___str_8:
      00457D 45 4E 54 45 52 20 41  1565 	.ascii "ENTER ADDRESS TO BE READ,ADDRESS INCLUDES BLOCK NUMBER AND W"
             44 44 52 45 53 53 20
             54 4F 20 42 45 20 52
             45 41 44 2C 41 44 44
             52 45 53 53 20 49 4E
             43 4C 55 44 45 53 20
             42 4C 4F 43 4B 20 4E
             55 4D 42 45 52 20 41
             4E 44 20 57
      0045B9 4F 52 44 20 41 44 52  1566 	.ascii "ORD ADRRESS TOGETHER in HEX"
             52 45 53 53 20 54 4F
             47 45 54 48 45 52 20
             69 6E 20 48 45 58
      0045D4 0A                    1567 	.db 0x0a
      0045D5 0D                    1568 	.db 0x0d
      0045D6 00                    1569 	.db 0x00
                                   1570 	.area CSEG    (CODE)
                                   1571 	.area CONST   (CODE)
      0045D7                       1572 ___str_9:
      0045D7 52 65 61 64 20 76 61  1573 	.ascii "Read value is 0x%X"
             6C 75 65 20 69 73 20
             30 78 25 58
      0045E9 0A                    1574 	.db 0x0a
      0045EA 0D                    1575 	.db 0x0d
      0045EB 00                    1576 	.db 0x00
                                   1577 	.area CSEG    (CODE)
                                   1578 	.area CONST   (CODE)
      0045EC                       1579 ___str_10:
      0045EC 45 6E 74 65 72 20 66  1580 	.ascii "Enter first address"
             69 72 73 74 20 61 64
             64 72 65 73 73
      0045FF 0A                    1581 	.db 0x0a
      004600 0D                    1582 	.db 0x0d
      004601 00                    1583 	.db 0x00
                                   1584 	.area CSEG    (CODE)
                                   1585 	.area CONST   (CODE)
      004602                       1586 ___str_11:
      004602 45 72 72 6F 72 20 69  1587 	.ascii "Error in input"
             6E 20 69 6E 70 75 74
      004610 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area CONST   (CODE)
      004611                       1591 ___str_12:
      004611 45 6E 74 65 72 20 73  1592 	.ascii "Enter second address"
             65 63 6F 6E 64 20 61
             64 64 72 65 73 73
      004625 0A                    1593 	.db 0x0a
      004626 0D                    1594 	.db 0x0d
      004627 00                    1595 	.db 0x00
                                   1596 	.area CSEG    (CODE)
                                   1597 	.area CONST   (CODE)
      004628                       1598 ___str_13:
      004628 42 6C 6F 63 6B 20 6E  1599 	.ascii "Block numbers are invalid"
             75 6D 62 65 72 73 20
             61 72 65 20 69 6E 76
             61 6C 69 64
      004641 0A                    1600 	.db 0x0a
      004642 0D                    1601 	.db 0x0d
      004643 00                    1602 	.db 0x00
                                   1603 	.area CSEG    (CODE)
                                   1604 	.area CONST   (CODE)
      004644                       1605 ___str_14:
      004644 49 6E 69 74 69 61 6C  1606 	.ascii "Initial address is greater than Second address"
             20 61 64 64 72 65 73
             73 20 69 73 20 67 72
             65 61 74 65 72 20 74
             68 61 6E 20 53 65 63
             6F 6E 64 20 61 64 64
             72 65 73 73
      004672 0A                    1607 	.db 0x0a
      004673 0D                    1608 	.db 0x0d
      004674 00                    1609 	.db 0x00
                                   1610 	.area CSEG    (CODE)
                                   1611 	.area CONST   (CODE)
      004675                       1612 ___str_15:
      004675 4E 6F 20 66 75 6E 63  1613 	.ascii "No function attached to input"
             74 69 6F 6E 20 61 74
             74 61 63 68 65 64 20
             74 6F 20 69 6E 70 75
             74
      004692 0D                    1614 	.db 0x0d
      004693 0A                    1615 	.db 0x0a
      004694 00                    1616 	.db 0x00
                                   1617 	.area CSEG    (CODE)
                                   1618 	.area XINIT   (CODE)
      0046A0                       1619 __xinit__flag_inputcheck:
      0046A0 00 00                 1620 	.byte #0x00, #0x00	;  0
      0046A2                       1621 __xinit__control:
      0046A2 A0                    1622 	.db #0xa0	; 160
      0046A3                       1623 __xinit__errorflag:
      0046A3 00                    1624 	.db #0x00	; 0
                                   1625 	.area CABS    (ABS,CODE)
