                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _delay
                                    208 	.globl _i2c_reset
                                    209 	.globl _i2c_start
                                    210 	.globl _i2c_stop
                                    211 	.globl _long_delay
                                    212 	.globl _restart_i2c
                                    213 	.globl _i2c_write
                                    214 	.globl _i2c_ack
                                    215 	.globl _i2c_nack
                                    216 	.globl _i2c_read
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0	=	0x0080
                           000081   223 _SP	=	0x0081
                           000082   224 _DPL	=	0x0082
                           000083   225 _DPH	=	0x0083
                           000087   226 _PCON	=	0x0087
                           000088   227 _TCON	=	0x0088
                           000089   228 _TMOD	=	0x0089
                           00008A   229 _TL0	=	0x008a
                           00008B   230 _TL1	=	0x008b
                           00008C   231 _TH0	=	0x008c
                           00008D   232 _TH1	=	0x008d
                           000090   233 _P1	=	0x0090
                           000098   234 _SCON	=	0x0098
                           000099   235 _SBUF	=	0x0099
                           0000A0   236 _P2	=	0x00a0
                           0000A8   237 _IE	=	0x00a8
                           0000B0   238 _P3	=	0x00b0
                           0000B8   239 _IP	=	0x00b8
                           0000D0   240 _PSW	=	0x00d0
                           0000E0   241 _ACC	=	0x00e0
                           0000F0   242 _B	=	0x00f0
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                                    294 ;--------------------------------------------------------
                                    295 ; special function bits
                                    296 ;--------------------------------------------------------
                                    297 	.area RSEG    (ABS,DATA)
      000000                        298 	.org 0x0000
                           000080   299 _P0_0	=	0x0080
                           000081   300 _P0_1	=	0x0081
                           000082   301 _P0_2	=	0x0082
                           000083   302 _P0_3	=	0x0083
                           000084   303 _P0_4	=	0x0084
                           000085   304 _P0_5	=	0x0085
                           000086   305 _P0_6	=	0x0086
                           000087   306 _P0_7	=	0x0087
                           000088   307 _IT0	=	0x0088
                           000089   308 _IE0	=	0x0089
                           00008A   309 _IT1	=	0x008a
                           00008B   310 _IE1	=	0x008b
                           00008C   311 _TR0	=	0x008c
                           00008D   312 _TF0	=	0x008d
                           00008E   313 _TR1	=	0x008e
                           00008F   314 _TF1	=	0x008f
                           000090   315 _P1_0	=	0x0090
                           000091   316 _P1_1	=	0x0091
                           000092   317 _P1_2	=	0x0092
                           000093   318 _P1_3	=	0x0093
                           000094   319 _P1_4	=	0x0094
                           000095   320 _P1_5	=	0x0095
                           000096   321 _P1_6	=	0x0096
                           000097   322 _P1_7	=	0x0097
                           000098   323 _RI	=	0x0098
                           000099   324 _TI	=	0x0099
                           00009A   325 _RB8	=	0x009a
                           00009B   326 _TB8	=	0x009b
                           00009C   327 _REN	=	0x009c
                           00009D   328 _SM2	=	0x009d
                           00009E   329 _SM1	=	0x009e
                           00009F   330 _SM0	=	0x009f
                           0000A0   331 _P2_0	=	0x00a0
                           0000A1   332 _P2_1	=	0x00a1
                           0000A2   333 _P2_2	=	0x00a2
                           0000A3   334 _P2_3	=	0x00a3
                           0000A4   335 _P2_4	=	0x00a4
                           0000A5   336 _P2_5	=	0x00a5
                           0000A6   337 _P2_6	=	0x00a6
                           0000A7   338 _P2_7	=	0x00a7
                           0000A8   339 _EX0	=	0x00a8
                           0000A9   340 _ET0	=	0x00a9
                           0000AA   341 _EX1	=	0x00aa
                           0000AB   342 _ET1	=	0x00ab
                           0000AC   343 _ES	=	0x00ac
                           0000AF   344 _EA	=	0x00af
                           0000B0   345 _P3_0	=	0x00b0
                           0000B1   346 _P3_1	=	0x00b1
                           0000B2   347 _P3_2	=	0x00b2
                           0000B3   348 _P3_3	=	0x00b3
                           0000B4   349 _P3_4	=	0x00b4
                           0000B5   350 _P3_5	=	0x00b5
                           0000B6   351 _P3_6	=	0x00b6
                           0000B7   352 _P3_7	=	0x00b7
                           0000B0   353 _RXD	=	0x00b0
                           0000B1   354 _TXD	=	0x00b1
                           0000B2   355 _INT0	=	0x00b2
                           0000B3   356 _INT1	=	0x00b3
                           0000B4   357 _T0	=	0x00b4
                           0000B5   358 _T1	=	0x00b5
                           0000B6   359 _WR	=	0x00b6
                           0000B7   360 _RD	=	0x00b7
                           0000B8   361 _PX0	=	0x00b8
                           0000B9   362 _PT0	=	0x00b9
                           0000BA   363 _PX1	=	0x00ba
                           0000BB   364 _PT1	=	0x00bb
                           0000BC   365 _PS	=	0x00bc
                           0000D0   366 _P	=	0x00d0
                           0000D1   367 _F1	=	0x00d1
                           0000D2   368 _OV	=	0x00d2
                           0000D3   369 _RS0	=	0x00d3
                           0000D4   370 _RS1	=	0x00d4
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 _CY	=	0x00d7
                           0000AD   374 _ET2	=	0x00ad
                           0000BD   375 _PT2	=	0x00bd
                           0000C8   376 _T2CON_0	=	0x00c8
                           0000C9   377 _T2CON_1	=	0x00c9
                           0000CA   378 _T2CON_2	=	0x00ca
                           0000CB   379 _T2CON_3	=	0x00cb
                           0000CC   380 _T2CON_4	=	0x00cc
                           0000CD   381 _T2CON_5	=	0x00cd
                           0000CE   382 _T2CON_6	=	0x00ce
                           0000CF   383 _T2CON_7	=	0x00cf
                           0000C8   384 _CP_RL2	=	0x00c8
                           0000C9   385 _C_T2	=	0x00c9
                           0000CA   386 _TR2	=	0x00ca
                           0000CB   387 _EXEN2	=	0x00cb
                           0000CC   388 _TCLK	=	0x00cc
                           0000CD   389 _RCLK	=	0x00cd
                           0000CE   390 _EXF2	=	0x00ce
                           0000CF   391 _TF2	=	0x00cf
                           0000DF   392 _CF	=	0x00df
                           0000DE   393 _CR	=	0x00de
                           0000DC   394 _CCF4	=	0x00dc
                           0000DB   395 _CCF3	=	0x00db
                           0000DA   396 _CCF2	=	0x00da
                           0000D9   397 _CCF1	=	0x00d9
                           0000D8   398 _CCF0	=	0x00d8
                           0000AE   399 _EC	=	0x00ae
                           0000BE   400 _PPCL	=	0x00be
                           0000BD   401 _PT2L	=	0x00bd
                           0000BC   402 _PSL	=	0x00bc
                           0000BB   403 _PT1L	=	0x00bb
                           0000BA   404 _PX1L	=	0x00ba
                           0000B9   405 _PT0L	=	0x00b9
                           0000B8   406 _PX0L	=	0x00b8
                           0000C0   407 _P4_0	=	0x00c0
                           0000C1   408 _P4_1	=	0x00c1
                           0000C2   409 _P4_2	=	0x00c2
                           0000C3   410 _P4_3	=	0x00c3
                           0000C4   411 _P4_4	=	0x00c4
                           0000C5   412 _P4_5	=	0x00c5
                           0000C6   413 _P4_6	=	0x00c6
                           0000C7   414 _P4_7	=	0x00c7
                           0000E8   415 _P5_0	=	0x00e8
                           0000E9   416 _P5_1	=	0x00e9
                           0000EA   417 _P5_2	=	0x00ea
                           0000EB   418 _P5_3	=	0x00eb
                           0000EC   419 _P5_4	=	0x00ec
                           0000ED   420 _P5_5	=	0x00ed
                           0000EE   421 _P5_6	=	0x00ee
                           0000EF   422 _P5_7	=	0x00ef
                                    423 ;--------------------------------------------------------
                                    424 ; overlayable register banks
                                    425 ;--------------------------------------------------------
                                    426 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        427 	.ds 8
                                    428 ;--------------------------------------------------------
                                    429 ; internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area DSEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable items in internal ram 
                                    434 ;--------------------------------------------------------
                                    435 ;--------------------------------------------------------
                                    436 ; indirectly addressable internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area ISEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
                                    448 ;--------------------------------------------------------
                                    449 ; paged external ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area PSEG    (PAG,XDATA)
                                    452 ;--------------------------------------------------------
                                    453 ; external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area XSEG    (XDATA)
      000012                        456 _i2c_write_k_65536_72:
      000012                        457 	.ds 2
      000014                        458 _i2c_read_reader_65536_81:
      000014                        459 	.ds 2
                                    460 ;--------------------------------------------------------
                                    461 ; absolute external ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XABS    (ABS,XDATA)
                                    464 ;--------------------------------------------------------
                                    465 ; external initialized ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XISEG   (XDATA)
                                    468 	.area HOME    (CODE)
                                    469 	.area GSINIT0 (CODE)
                                    470 	.area GSINIT1 (CODE)
                                    471 	.area GSINIT2 (CODE)
                                    472 	.area GSINIT3 (CODE)
                                    473 	.area GSINIT4 (CODE)
                                    474 	.area GSINIT5 (CODE)
                                    475 	.area GSINIT  (CODE)
                                    476 	.area GSFINAL (CODE)
                                    477 	.area CSEG    (CODE)
                                    478 ;--------------------------------------------------------
                                    479 ; global & static initialisations
                                    480 ;--------------------------------------------------------
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.area GSFINAL (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; Home
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
                                    489 	.area HOME    (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; code
                                    492 ;--------------------------------------------------------
                                    493 	.area CSEG    (CODE)
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'delay'
                                    496 ;------------------------------------------------------------
                                    497 ;	i2c.c:3: void delay()
                                    498 ;	-----------------------------------------
                                    499 ;	 function delay
                                    500 ;	-----------------------------------------
      003099                        501 _delay:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
                                    510 ;	i2c.c:10: __endasm;
      003099 74 03            [12]  511 	mov	a,#3
      00309B                        512 	    l1:
      00309B 14               [12]  513 	dec	a
      00309C B4 00 FC         [24]  514 	cjne	a,#0,l1
                                    515 ;	i2c.c:11: }
      00309F 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'i2c_reset'
                                    519 ;------------------------------------------------------------
                                    520 ;	i2c.c:12: void i2c_reset() //setting both lines to high to go into normal condition
                                    521 ;	-----------------------------------------
                                    522 ;	 function i2c_reset
                                    523 ;	-----------------------------------------
      0030A0                        524 _i2c_reset:
                                    525 ;	i2c.c:14: clearSCL;
                                    526 ;	assignBit
      0030A0 C2 94            [12]  527 	clr	_P1_4
                                    528 ;	i2c.c:15: clearSDA;
                                    529 ;	assignBit
      0030A2 C2 95            [12]  530 	clr	_P1_5
                                    531 ;	i2c.c:17: setSDA;
                                    532 ;	assignBit
      0030A4 D2 95            [12]  533 	setb	_P1_5
                                    534 ;	i2c.c:18: setSCL;
                                    535 ;	assignBit
      0030A6 D2 94            [12]  536 	setb	_P1_4
                                    537 ;	i2c.c:19: delay();
                                    538 ;	i2c.c:20: }
      0030A8 02 30 99         [24]  539 	ljmp	_delay
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'i2c_start'
                                    542 ;------------------------------------------------------------
                                    543 ;	i2c.c:21: void i2c_start()
                                    544 ;	-----------------------------------------
                                    545 ;	 function i2c_start
                                    546 ;	-----------------------------------------
      0030AB                        547 _i2c_start:
                                    548 ;	i2c.c:23: clearSDA;
                                    549 ;	assignBit
      0030AB C2 95            [12]  550 	clr	_P1_5
                                    551 ;	i2c.c:24: delay();
      0030AD 12 30 99         [24]  552 	lcall	_delay
                                    553 ;	i2c.c:25: clearSCL;
                                    554 ;	assignBit
      0030B0 C2 94            [12]  555 	clr	_P1_4
                                    556 ;	i2c.c:26: delay();
                                    557 ;	i2c.c:28: }
      0030B2 02 30 99         [24]  558 	ljmp	_delay
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'i2c_stop'
                                    561 ;------------------------------------------------------------
                                    562 ;	i2c.c:29: void i2c_stop()
                                    563 ;	-----------------------------------------
                                    564 ;	 function i2c_stop
                                    565 ;	-----------------------------------------
      0030B5                        566 _i2c_stop:
                                    567 ;	i2c.c:31: clearSDA;
                                    568 ;	assignBit
      0030B5 C2 95            [12]  569 	clr	_P1_5
                                    570 ;	i2c.c:32: setSCL;
                                    571 ;	assignBit
      0030B7 D2 94            [12]  572 	setb	_P1_4
                                    573 ;	i2c.c:33: delay();
      0030B9 12 30 99         [24]  574 	lcall	_delay
                                    575 ;	i2c.c:34: setSDA; //low to high transition of sda marks stop
                                    576 ;	assignBit
      0030BC D2 95            [12]  577 	setb	_P1_5
                                    578 ;	i2c.c:35: delay();
                                    579 ;	i2c.c:37: }
      0030BE 02 30 99         [24]  580 	ljmp	_delay
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'long_delay'
                                    583 ;------------------------------------------------------------
                                    584 ;i                         Allocated with name '_long_delay_i_131072_69'
                                    585 ;------------------------------------------------------------
                                    586 ;	i2c.c:38: void long_delay()
                                    587 ;	-----------------------------------------
                                    588 ;	 function long_delay
                                    589 ;	-----------------------------------------
      0030C1                        590 _long_delay:
                                    591 ;	i2c.c:40: for(uint16_t i=800;i!=0;i--)
      0030C1 7E 20            [12]  592 	mov	r6,#0x20
      0030C3 7F 03            [12]  593 	mov	r7,#0x03
      0030C5                        594 00103$:
      0030C5 EE               [12]  595 	mov	a,r6
      0030C6 4F               [12]  596 	orl	a,r7
      0030C7 60 12            [24]  597 	jz	00105$
                                    598 ;	i2c.c:42: delay();
      0030C9 C0 07            [24]  599 	push	ar7
      0030CB C0 06            [24]  600 	push	ar6
      0030CD 12 30 99         [24]  601 	lcall	_delay
      0030D0 D0 06            [24]  602 	pop	ar6
      0030D2 D0 07            [24]  603 	pop	ar7
                                    604 ;	i2c.c:40: for(uint16_t i=800;i!=0;i--)
      0030D4 1E               [12]  605 	dec	r6
      0030D5 BE FF 01         [24]  606 	cjne	r6,#0xff,00117$
      0030D8 1F               [12]  607 	dec	r7
      0030D9                        608 00117$:
      0030D9 80 EA            [24]  609 	sjmp	00103$
      0030DB                        610 00105$:
                                    611 ;	i2c.c:44: }
      0030DB 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'restart_i2c'
                                    615 ;------------------------------------------------------------
                                    616 ;	i2c.c:45: void restart_i2c()
                                    617 ;	-----------------------------------------
                                    618 ;	 function restart_i2c
                                    619 ;	-----------------------------------------
      0030DC                        620 _restart_i2c:
                                    621 ;	i2c.c:47: setSCL;
                                    622 ;	assignBit
      0030DC D2 94            [12]  623 	setb	_P1_4
                                    624 ;	i2c.c:48: clearSDA;
                                    625 ;	assignBit
      0030DE C2 95            [12]  626 	clr	_P1_5
                                    627 ;	i2c.c:49: delay();
      0030E0 12 30 99         [24]  628 	lcall	_delay
                                    629 ;	i2c.c:50: clearSCL;
                                    630 ;	assignBit
      0030E3 C2 94            [12]  631 	clr	_P1_4
                                    632 ;	i2c.c:51: }
      0030E5 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'i2c_write'
                                    636 ;------------------------------------------------------------
                                    637 ;k                         Allocated with name '_i2c_write_k_65536_72'
                                    638 ;i                         Allocated with name '_i2c_write_i_131072_74'
                                    639 ;ack_check                 Allocated with name '_i2c_write_ack_check_65537_78'
                                    640 ;------------------------------------------------------------
                                    641 ;	i2c.c:53: int i2c_write(int k)
                                    642 ;	-----------------------------------------
                                    643 ;	 function i2c_write
                                    644 ;	-----------------------------------------
      0030E6                        645 _i2c_write:
      0030E6 AF 83            [24]  646 	mov	r7,dph
      0030E8 E5 82            [12]  647 	mov	a,dpl
      0030EA 90 00 12         [24]  648 	mov	dptr,#_i2c_write_k_65536_72
      0030ED F0               [24]  649 	movx	@dptr,a
      0030EE EF               [12]  650 	mov	a,r7
      0030EF A3               [24]  651 	inc	dptr
      0030F0 F0               [24]  652 	movx	@dptr,a
                                    653 ;	i2c.c:57: for(int i=0; i<8; i++)
      0030F1 7E 00            [12]  654 	mov	r6,#0x00
      0030F3 7F 00            [12]  655 	mov	r7,#0x00
      0030F5                        656 00106$:
      0030F5 C3               [12]  657 	clr	c
      0030F6 EE               [12]  658 	mov	a,r6
      0030F7 94 08            [12]  659 	subb	a,#0x08
      0030F9 EF               [12]  660 	mov	a,r7
      0030FA 64 80            [12]  661 	xrl	a,#0x80
      0030FC 94 80            [12]  662 	subb	a,#0x80
      0030FE 50 57            [24]  663 	jnc	00104$
                                    664 ;	i2c.c:60: if(k & 128)
      003100 90 00 12         [24]  665 	mov	dptr,#_i2c_write_k_65536_72
      003103 E0               [24]  666 	movx	a,@dptr
      003104 FC               [12]  667 	mov	r4,a
      003105 A3               [24]  668 	inc	dptr
      003106 E0               [24]  669 	movx	a,@dptr
      003107 EC               [12]  670 	mov	a,r4
      003108 30 E7 13         [24]  671 	jnb	acc.7,00102$
                                    672 ;	i2c.c:62: setSDA;
                                    673 ;	assignBit
      00310B D2 95            [12]  674 	setb	_P1_5
                                    675 ;	i2c.c:63: setSCL;
                                    676 ;	assignBit
      00310D D2 94            [12]  677 	setb	_P1_4
                                    678 ;	i2c.c:64: delay();
      00310F C0 07            [24]  679 	push	ar7
      003111 C0 06            [24]  680 	push	ar6
      003113 12 30 99         [24]  681 	lcall	_delay
      003116 D0 06            [24]  682 	pop	ar6
      003118 D0 07            [24]  683 	pop	ar7
                                    684 ;	i2c.c:65: clearSCL;
                                    685 ;	assignBit
      00311A C2 94            [12]  686 	clr	_P1_4
      00311C 80 11            [24]  687 	sjmp	00103$
      00311E                        688 00102$:
                                    689 ;	i2c.c:72: clearSDA;
                                    690 ;	assignBit
      00311E C2 95            [12]  691 	clr	_P1_5
                                    692 ;	i2c.c:73: setSCL;
                                    693 ;	assignBit
      003120 D2 94            [12]  694 	setb	_P1_4
                                    695 ;	i2c.c:74: delay();
      003122 C0 07            [24]  696 	push	ar7
      003124 C0 06            [24]  697 	push	ar6
      003126 12 30 99         [24]  698 	lcall	_delay
      003129 D0 06            [24]  699 	pop	ar6
      00312B D0 07            [24]  700 	pop	ar7
                                    701 ;	i2c.c:75: clearSCL;
                                    702 ;	assignBit
      00312D C2 94            [12]  703 	clr	_P1_4
      00312F                        704 00103$:
                                    705 ;	i2c.c:83: delay();
      00312F C0 07            [24]  706 	push	ar7
      003131 C0 06            [24]  707 	push	ar6
      003133 12 30 99         [24]  708 	lcall	_delay
      003136 D0 06            [24]  709 	pop	ar6
      003138 D0 07            [24]  710 	pop	ar7
                                    711 ;	i2c.c:84: k<<=1;
      00313A 90 00 12         [24]  712 	mov	dptr,#_i2c_write_k_65536_72
      00313D E0               [24]  713 	movx	a,@dptr
      00313E FC               [12]  714 	mov	r4,a
      00313F A3               [24]  715 	inc	dptr
      003140 E0               [24]  716 	movx	a,@dptr
      003141 FD               [12]  717 	mov	r5,a
      003142 EC               [12]  718 	mov	a,r4
      003143 2C               [12]  719 	add	a,r4
      003144 FC               [12]  720 	mov	r4,a
      003145 ED               [12]  721 	mov	a,r5
      003146 33               [12]  722 	rlc	a
      003147 FD               [12]  723 	mov	r5,a
      003148 90 00 12         [24]  724 	mov	dptr,#_i2c_write_k_65536_72
      00314B EC               [12]  725 	mov	a,r4
      00314C F0               [24]  726 	movx	@dptr,a
      00314D ED               [12]  727 	mov	a,r5
      00314E A3               [24]  728 	inc	dptr
      00314F F0               [24]  729 	movx	@dptr,a
                                    730 ;	i2c.c:57: for(int i=0; i<8; i++)
      003150 0E               [12]  731 	inc	r6
      003151 BE 00 A1         [24]  732 	cjne	r6,#0x00,00106$
      003154 0F               [12]  733 	inc	r7
      003155 80 9E            [24]  734 	sjmp	00106$
      003157                        735 00104$:
                                    736 ;	i2c.c:87: setSDA;
                                    737 ;	assignBit
      003157 D2 95            [12]  738 	setb	_P1_5
                                    739 ;	i2c.c:90: __endasm;
      003159 00               [12]  740 	nop
                                    741 ;	i2c.c:91: setSCL;
                                    742 ;	assignBit
      00315A D2 94            [12]  743 	setb	_P1_4
                                    744 ;	i2c.c:93: ack_check |=P1_5;
      00315C A2 95            [12]  745 	mov	c,_P1_5
      00315E E4               [12]  746 	clr	a
      00315F 33               [12]  747 	rlc	a
      003160 FE               [12]  748 	mov	r6,a
      003161 7F 00            [12]  749 	mov	r7,#0x00
                                    750 ;	i2c.c:95: delay();
      003163 C0 07            [24]  751 	push	ar7
      003165 C0 06            [24]  752 	push	ar6
      003167 12 30 99         [24]  753 	lcall	_delay
      00316A D0 06            [24]  754 	pop	ar6
      00316C D0 07            [24]  755 	pop	ar7
                                    756 ;	i2c.c:96: clearSCL;
                                    757 ;	assignBit
      00316E C2 94            [12]  758 	clr	_P1_4
                                    759 ;	i2c.c:97: return ack_check;
      003170 8E 82            [24]  760 	mov	dpl,r6
      003172 8F 83            [24]  761 	mov	dph,r7
                                    762 ;	i2c.c:98: }
      003174 22               [24]  763 	ret
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'i2c_ack'
                                    766 ;------------------------------------------------------------
                                    767 ;	i2c.c:99: void i2c_ack()
                                    768 ;	-----------------------------------------
                                    769 ;	 function i2c_ack
                                    770 ;	-----------------------------------------
      003175                        771 _i2c_ack:
                                    772 ;	i2c.c:101: clearSDA;
                                    773 ;	assignBit
      003175 C2 95            [12]  774 	clr	_P1_5
                                    775 ;	i2c.c:102: delay();
      003177 12 30 99         [24]  776 	lcall	_delay
                                    777 ;	i2c.c:103: setSCL;
                                    778 ;	assignBit
      00317A D2 94            [12]  779 	setb	_P1_4
                                    780 ;	i2c.c:104: delay();
      00317C 12 30 99         [24]  781 	lcall	_delay
                                    782 ;	i2c.c:105: clearSCL;
                                    783 ;	assignBit
      00317F C2 94            [12]  784 	clr	_P1_4
                                    785 ;	i2c.c:106: setSDA;
                                    786 ;	assignBit
      003181 D2 95            [12]  787 	setb	_P1_5
                                    788 ;	i2c.c:107: }
      003183 22               [24]  789 	ret
                                    790 ;------------------------------------------------------------
                                    791 ;Allocation info for local variables in function 'i2c_nack'
                                    792 ;------------------------------------------------------------
                                    793 ;	i2c.c:108: void i2c_nack()
                                    794 ;	-----------------------------------------
                                    795 ;	 function i2c_nack
                                    796 ;	-----------------------------------------
      003184                        797 _i2c_nack:
                                    798 ;	i2c.c:110: setSCL;
                                    799 ;	assignBit
      003184 D2 94            [12]  800 	setb	_P1_4
                                    801 ;	i2c.c:111: delay();
      003186 12 30 99         [24]  802 	lcall	_delay
                                    803 ;	i2c.c:112: setSDA;
                                    804 ;	assignBit
      003189 D2 95            [12]  805 	setb	_P1_5
                                    806 ;	i2c.c:113: clearSCL;
                                    807 ;	assignBit
      00318B C2 94            [12]  808 	clr	_P1_4
                                    809 ;	i2c.c:114: delay();
                                    810 ;	i2c.c:115: }
      00318D 02 30 99         [24]  811 	ljmp	_delay
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'i2c_read'
                                    814 ;------------------------------------------------------------
                                    815 ;reader                    Allocated with name '_i2c_read_reader_65536_81'
                                    816 ;i                         Allocated with name '_i2c_read_i_131072_82'
                                    817 ;------------------------------------------------------------
                                    818 ;	i2c.c:116: int i2c_read()
                                    819 ;	-----------------------------------------
                                    820 ;	 function i2c_read
                                    821 ;	-----------------------------------------
      003190                        822 _i2c_read:
                                    823 ;	i2c.c:118: int reader=0;
      003190 90 00 14         [24]  824 	mov	dptr,#_i2c_read_reader_65536_81
      003193 E4               [12]  825 	clr	a
      003194 F0               [24]  826 	movx	@dptr,a
      003195 A3               [24]  827 	inc	dptr
      003196 F0               [24]  828 	movx	@dptr,a
                                    829 ;	i2c.c:119: setSDA;
                                    830 ;	assignBit
      003197 D2 95            [12]  831 	setb	_P1_5
                                    832 ;	i2c.c:121: for (int i=0; i<8; i++)
      003199 7E 00            [12]  833 	mov	r6,#0x00
      00319B 7F 00            [12]  834 	mov	r7,#0x00
      00319D                        835 00103$:
      00319D C3               [12]  836 	clr	c
      00319E EE               [12]  837 	mov	a,r6
      00319F 94 08            [12]  838 	subb	a,#0x08
      0031A1 EF               [12]  839 	mov	a,r7
      0031A2 64 80            [12]  840 	xrl	a,#0x80
      0031A4 94 80            [12]  841 	subb	a,#0x80
      0031A6 50 48            [24]  842 	jnc	00101$
                                    843 ;	i2c.c:123: reader<<=1;
      0031A8 90 00 14         [24]  844 	mov	dptr,#_i2c_read_reader_65536_81
      0031AB E0               [24]  845 	movx	a,@dptr
      0031AC FC               [12]  846 	mov	r4,a
      0031AD A3               [24]  847 	inc	dptr
      0031AE E0               [24]  848 	movx	a,@dptr
      0031AF FD               [12]  849 	mov	r5,a
      0031B0 EC               [12]  850 	mov	a,r4
      0031B1 2C               [12]  851 	add	a,r4
      0031B2 FC               [12]  852 	mov	r4,a
      0031B3 ED               [12]  853 	mov	a,r5
      0031B4 33               [12]  854 	rlc	a
      0031B5 FD               [12]  855 	mov	r5,a
      0031B6 90 00 14         [24]  856 	mov	dptr,#_i2c_read_reader_65536_81
      0031B9 EC               [12]  857 	mov	a,r4
      0031BA F0               [24]  858 	movx	@dptr,a
      0031BB ED               [12]  859 	mov	a,r5
      0031BC A3               [24]  860 	inc	dptr
      0031BD F0               [24]  861 	movx	@dptr,a
                                    862 ;	i2c.c:124: setSCL;
                                    863 ;	assignBit
      0031BE D2 94            [12]  864 	setb	_P1_4
                                    865 ;	i2c.c:125: delay();
      0031C0 C0 07            [24]  866 	push	ar7
      0031C2 C0 06            [24]  867 	push	ar6
      0031C4 12 30 99         [24]  868 	lcall	_delay
                                    869 ;	i2c.c:126: reader |=P1_5;
      0031C7 90 00 14         [24]  870 	mov	dptr,#_i2c_read_reader_65536_81
      0031CA E0               [24]  871 	movx	a,@dptr
      0031CB FC               [12]  872 	mov	r4,a
      0031CC A3               [24]  873 	inc	dptr
      0031CD E0               [24]  874 	movx	a,@dptr
      0031CE FD               [12]  875 	mov	r5,a
      0031CF A2 95            [12]  876 	mov	c,_P1_5
      0031D1 E4               [12]  877 	clr	a
      0031D2 33               [12]  878 	rlc	a
      0031D3 FA               [12]  879 	mov	r2,a
      0031D4 7B 00            [12]  880 	mov	r3,#0x00
      0031D6 90 00 14         [24]  881 	mov	dptr,#_i2c_read_reader_65536_81
      0031D9 EA               [12]  882 	mov	a,r2
      0031DA 4C               [12]  883 	orl	a,r4
      0031DB F0               [24]  884 	movx	@dptr,a
      0031DC EB               [12]  885 	mov	a,r3
      0031DD 4D               [12]  886 	orl	a,r5
      0031DE A3               [24]  887 	inc	dptr
      0031DF F0               [24]  888 	movx	@dptr,a
                                    889 ;	i2c.c:127: clearSCL;
                                    890 ;	assignBit
      0031E0 C2 94            [12]  891 	clr	_P1_4
                                    892 ;	i2c.c:128: delay();
      0031E2 12 30 99         [24]  893 	lcall	_delay
      0031E5 D0 06            [24]  894 	pop	ar6
      0031E7 D0 07            [24]  895 	pop	ar7
                                    896 ;	i2c.c:121: for (int i=0; i<8; i++)
      0031E9 0E               [12]  897 	inc	r6
      0031EA BE 00 B0         [24]  898 	cjne	r6,#0x00,00103$
      0031ED 0F               [12]  899 	inc	r7
      0031EE 80 AD            [24]  900 	sjmp	00103$
      0031F0                        901 00101$:
                                    902 ;	i2c.c:134: return reader;
      0031F0 90 00 14         [24]  903 	mov	dptr,#_i2c_read_reader_65536_81
      0031F3 E0               [24]  904 	movx	a,@dptr
      0031F4 FE               [12]  905 	mov	r6,a
      0031F5 A3               [24]  906 	inc	dptr
      0031F6 E0               [24]  907 	movx	a,@dptr
                                    908 ;	i2c.c:136: }
      0031F7 8E 82            [24]  909 	mov	dpl,r6
      0031F9 F5 83            [12]  910 	mov	dph,a
      0031FB 22               [24]  911 	ret
                                    912 	.area CSEG    (CODE)
                                    913 	.area CONST   (CODE)
                                    914 	.area XINIT   (CODE)
                                    915 	.area CABS    (ABS,CODE)
