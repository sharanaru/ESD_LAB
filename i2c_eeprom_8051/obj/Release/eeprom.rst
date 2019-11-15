                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_read
                                     12 	.globl _i2c_nack
                                     13 	.globl _i2c_ack
                                     14 	.globl _i2c_write
                                     15 	.globl _restart_i2c
                                     16 	.globl _long_delay
                                     17 	.globl _i2c_stop
                                     18 	.globl _delay
                                     19 	.globl _printf
                                     20 	.globl _P5_7
                                     21 	.globl _P5_6
                                     22 	.globl _P5_5
                                     23 	.globl _P5_4
                                     24 	.globl _P5_3
                                     25 	.globl _P5_2
                                     26 	.globl _P5_1
                                     27 	.globl _P5_0
                                     28 	.globl _P4_7
                                     29 	.globl _P4_6
                                     30 	.globl _P4_5
                                     31 	.globl _P4_4
                                     32 	.globl _P4_3
                                     33 	.globl _P4_2
                                     34 	.globl _P4_1
                                     35 	.globl _P4_0
                                     36 	.globl _PX0L
                                     37 	.globl _PT0L
                                     38 	.globl _PX1L
                                     39 	.globl _PT1L
                                     40 	.globl _PSL
                                     41 	.globl _PT2L
                                     42 	.globl _PPCL
                                     43 	.globl _EC
                                     44 	.globl _CCF0
                                     45 	.globl _CCF1
                                     46 	.globl _CCF2
                                     47 	.globl _CCF3
                                     48 	.globl _CCF4
                                     49 	.globl _CR
                                     50 	.globl _CF
                                     51 	.globl _TF2
                                     52 	.globl _EXF2
                                     53 	.globl _RCLK
                                     54 	.globl _TCLK
                                     55 	.globl _EXEN2
                                     56 	.globl _TR2
                                     57 	.globl _C_T2
                                     58 	.globl _CP_RL2
                                     59 	.globl _T2CON_7
                                     60 	.globl _T2CON_6
                                     61 	.globl _T2CON_5
                                     62 	.globl _T2CON_4
                                     63 	.globl _T2CON_3
                                     64 	.globl _T2CON_2
                                     65 	.globl _T2CON_1
                                     66 	.globl _T2CON_0
                                     67 	.globl _PT2
                                     68 	.globl _ET2
                                     69 	.globl _CY
                                     70 	.globl _AC
                                     71 	.globl _F0
                                     72 	.globl _RS1
                                     73 	.globl _RS0
                                     74 	.globl _OV
                                     75 	.globl _F1
                                     76 	.globl _P
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _RD
                                     83 	.globl _WR
                                     84 	.globl _T1
                                     85 	.globl _T0
                                     86 	.globl _INT1
                                     87 	.globl _INT0
                                     88 	.globl _TXD
                                     89 	.globl _RXD
                                     90 	.globl _P3_7
                                     91 	.globl _P3_6
                                     92 	.globl _P3_5
                                     93 	.globl _P3_4
                                     94 	.globl _P3_3
                                     95 	.globl _P3_2
                                     96 	.globl _P3_1
                                     97 	.globl _P3_0
                                     98 	.globl _EA
                                     99 	.globl _ES
                                    100 	.globl _ET1
                                    101 	.globl _EX1
                                    102 	.globl _ET0
                                    103 	.globl _EX0
                                    104 	.globl _P2_7
                                    105 	.globl _P2_6
                                    106 	.globl _P2_5
                                    107 	.globl _P2_4
                                    108 	.globl _P2_3
                                    109 	.globl _P2_2
                                    110 	.globl _P2_1
                                    111 	.globl _P2_0
                                    112 	.globl _SM0
                                    113 	.globl _SM1
                                    114 	.globl _SM2
                                    115 	.globl _REN
                                    116 	.globl _TB8
                                    117 	.globl _RB8
                                    118 	.globl _TI
                                    119 	.globl _RI
                                    120 	.globl _P1_7
                                    121 	.globl _P1_6
                                    122 	.globl _P1_5
                                    123 	.globl _P1_4
                                    124 	.globl _P1_3
                                    125 	.globl _P1_2
                                    126 	.globl _P1_1
                                    127 	.globl _P1_0
                                    128 	.globl _TF1
                                    129 	.globl _TR1
                                    130 	.globl _TF0
                                    131 	.globl _TR0
                                    132 	.globl _IE1
                                    133 	.globl _IT1
                                    134 	.globl _IE0
                                    135 	.globl _IT0
                                    136 	.globl _P0_7
                                    137 	.globl _P0_6
                                    138 	.globl _P0_5
                                    139 	.globl _P0_4
                                    140 	.globl _P0_3
                                    141 	.globl _P0_2
                                    142 	.globl _P0_1
                                    143 	.globl _P0_0
                                    144 	.globl _EECON
                                    145 	.globl _KBF
                                    146 	.globl _KBE
                                    147 	.globl _KBLS
                                    148 	.globl _BRL
                                    149 	.globl _BDRCON
                                    150 	.globl _T2MOD
                                    151 	.globl _SPDAT
                                    152 	.globl _SPSTA
                                    153 	.globl _SPCON
                                    154 	.globl _SADEN
                                    155 	.globl _SADDR
                                    156 	.globl _WDTPRG
                                    157 	.globl _WDTRST
                                    158 	.globl _P5
                                    159 	.globl _P4
                                    160 	.globl _IPH1
                                    161 	.globl _IPL1
                                    162 	.globl _IPH0
                                    163 	.globl _IPL0
                                    164 	.globl _IEN1
                                    165 	.globl _IEN0
                                    166 	.globl _CMOD
                                    167 	.globl _CL
                                    168 	.globl _CH
                                    169 	.globl _CCON
                                    170 	.globl _CCAPM4
                                    171 	.globl _CCAPM3
                                    172 	.globl _CCAPM2
                                    173 	.globl _CCAPM1
                                    174 	.globl _CCAPM0
                                    175 	.globl _CCAP4L
                                    176 	.globl _CCAP3L
                                    177 	.globl _CCAP2L
                                    178 	.globl _CCAP1L
                                    179 	.globl _CCAP0L
                                    180 	.globl _CCAP4H
                                    181 	.globl _CCAP3H
                                    182 	.globl _CCAP2H
                                    183 	.globl _CCAP1H
                                    184 	.globl _CCAP0H
                                    185 	.globl _CKCON1
                                    186 	.globl _CKCON0
                                    187 	.globl _CKRL
                                    188 	.globl _AUXR1
                                    189 	.globl _AUXR
                                    190 	.globl _TH2
                                    191 	.globl _TL2
                                    192 	.globl _RCAP2H
                                    193 	.globl _RCAP2L
                                    194 	.globl _T2CON
                                    195 	.globl _B
                                    196 	.globl _ACC
                                    197 	.globl _PSW
                                    198 	.globl _IP
                                    199 	.globl _P3
                                    200 	.globl _IE
                                    201 	.globl _P2
                                    202 	.globl _SBUF
                                    203 	.globl _SCON
                                    204 	.globl _P1
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TMOD
                                    210 	.globl _TCON
                                    211 	.globl _PCON
                                    212 	.globl _DPH
                                    213 	.globl _DPL
                                    214 	.globl _SP
                                    215 	.globl _P0
                                    216 	.globl _seq_read_PARM_5
                                    217 	.globl _seq_read_PARM_4
                                    218 	.globl _seq_read_PARM_3
                                    219 	.globl _seq_read_PARM_2
                                    220 	.globl _random_read_PARM_2
                                    221 	.globl _byte_write_PARM_3
                                    222 	.globl _byte_write_PARM_2
                                    223 	.globl _byte_write
                                    224 	.globl _random_read
                                    225 	.globl _seq_read
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           000080   231 _P0	=	0x0080
                           000081   232 _SP	=	0x0081
                           000082   233 _DPL	=	0x0082
                           000083   234 _DPH	=	0x0083
                           000087   235 _PCON	=	0x0087
                           000088   236 _TCON	=	0x0088
                           000089   237 _TMOD	=	0x0089
                           00008A   238 _TL0	=	0x008a
                           00008B   239 _TL1	=	0x008b
                           00008C   240 _TH0	=	0x008c
                           00008D   241 _TH1	=	0x008d
                           000090   242 _P1	=	0x0090
                           000098   243 _SCON	=	0x0098
                           000099   244 _SBUF	=	0x0099
                           0000A0   245 _P2	=	0x00a0
                           0000A8   246 _IE	=	0x00a8
                           0000B0   247 _P3	=	0x00b0
                           0000B8   248 _IP	=	0x00b8
                           0000D0   249 _PSW	=	0x00d0
                           0000E0   250 _ACC	=	0x00e0
                           0000F0   251 _B	=	0x00f0
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 _P0_0	=	0x0080
                           000081   309 _P0_1	=	0x0081
                           000082   310 _P0_2	=	0x0082
                           000083   311 _P0_3	=	0x0083
                           000084   312 _P0_4	=	0x0084
                           000085   313 _P0_5	=	0x0085
                           000086   314 _P0_6	=	0x0086
                           000087   315 _P0_7	=	0x0087
                           000088   316 _IT0	=	0x0088
                           000089   317 _IE0	=	0x0089
                           00008A   318 _IT1	=	0x008a
                           00008B   319 _IE1	=	0x008b
                           00008C   320 _TR0	=	0x008c
                           00008D   321 _TF0	=	0x008d
                           00008E   322 _TR1	=	0x008e
                           00008F   323 _TF1	=	0x008f
                           000090   324 _P1_0	=	0x0090
                           000091   325 _P1_1	=	0x0091
                           000092   326 _P1_2	=	0x0092
                           000093   327 _P1_3	=	0x0093
                           000094   328 _P1_4	=	0x0094
                           000095   329 _P1_5	=	0x0095
                           000096   330 _P1_6	=	0x0096
                           000097   331 _P1_7	=	0x0097
                           000098   332 _RI	=	0x0098
                           000099   333 _TI	=	0x0099
                           00009A   334 _RB8	=	0x009a
                           00009B   335 _TB8	=	0x009b
                           00009C   336 _REN	=	0x009c
                           00009D   337 _SM2	=	0x009d
                           00009E   338 _SM1	=	0x009e
                           00009F   339 _SM0	=	0x009f
                           0000A0   340 _P2_0	=	0x00a0
                           0000A1   341 _P2_1	=	0x00a1
                           0000A2   342 _P2_2	=	0x00a2
                           0000A3   343 _P2_3	=	0x00a3
                           0000A4   344 _P2_4	=	0x00a4
                           0000A5   345 _P2_5	=	0x00a5
                           0000A6   346 _P2_6	=	0x00a6
                           0000A7   347 _P2_7	=	0x00a7
                           0000A8   348 _EX0	=	0x00a8
                           0000A9   349 _ET0	=	0x00a9
                           0000AA   350 _EX1	=	0x00aa
                           0000AB   351 _ET1	=	0x00ab
                           0000AC   352 _ES	=	0x00ac
                           0000AF   353 _EA	=	0x00af
                           0000B0   354 _P3_0	=	0x00b0
                           0000B1   355 _P3_1	=	0x00b1
                           0000B2   356 _P3_2	=	0x00b2
                           0000B3   357 _P3_3	=	0x00b3
                           0000B4   358 _P3_4	=	0x00b4
                           0000B5   359 _P3_5	=	0x00b5
                           0000B6   360 _P3_6	=	0x00b6
                           0000B7   361 _P3_7	=	0x00b7
                           0000B0   362 _RXD	=	0x00b0
                           0000B1   363 _TXD	=	0x00b1
                           0000B2   364 _INT0	=	0x00b2
                           0000B3   365 _INT1	=	0x00b3
                           0000B4   366 _T0	=	0x00b4
                           0000B5   367 _T1	=	0x00b5
                           0000B6   368 _WR	=	0x00b6
                           0000B7   369 _RD	=	0x00b7
                           0000B8   370 _PX0	=	0x00b8
                           0000B9   371 _PT0	=	0x00b9
                           0000BA   372 _PX1	=	0x00ba
                           0000BB   373 _PT1	=	0x00bb
                           0000BC   374 _PS	=	0x00bc
                           0000D0   375 _P	=	0x00d0
                           0000D1   376 _F1	=	0x00d1
                           0000D2   377 _OV	=	0x00d2
                           0000D3   378 _RS0	=	0x00d3
                           0000D4   379 _RS1	=	0x00d4
                           0000D5   380 _F0	=	0x00d5
                           0000D6   381 _AC	=	0x00d6
                           0000D7   382 _CY	=	0x00d7
                           0000AD   383 _ET2	=	0x00ad
                           0000BD   384 _PT2	=	0x00bd
                           0000C8   385 _T2CON_0	=	0x00c8
                           0000C9   386 _T2CON_1	=	0x00c9
                           0000CA   387 _T2CON_2	=	0x00ca
                           0000CB   388 _T2CON_3	=	0x00cb
                           0000CC   389 _T2CON_4	=	0x00cc
                           0000CD   390 _T2CON_5	=	0x00cd
                           0000CE   391 _T2CON_6	=	0x00ce
                           0000CF   392 _T2CON_7	=	0x00cf
                           0000C8   393 _CP_RL2	=	0x00c8
                           0000C9   394 _C_T2	=	0x00c9
                           0000CA   395 _TR2	=	0x00ca
                           0000CB   396 _EXEN2	=	0x00cb
                           0000CC   397 _TCLK	=	0x00cc
                           0000CD   398 _RCLK	=	0x00cd
                           0000CE   399 _EXF2	=	0x00ce
                           0000CF   400 _TF2	=	0x00cf
                           0000DF   401 _CF	=	0x00df
                           0000DE   402 _CR	=	0x00de
                           0000DC   403 _CCF4	=	0x00dc
                           0000DB   404 _CCF3	=	0x00db
                           0000DA   405 _CCF2	=	0x00da
                           0000D9   406 _CCF1	=	0x00d9
                           0000D8   407 _CCF0	=	0x00d8
                           0000AE   408 _EC	=	0x00ae
                           0000BE   409 _PPCL	=	0x00be
                           0000BD   410 _PT2L	=	0x00bd
                           0000BC   411 _PSL	=	0x00bc
                           0000BB   412 _PT1L	=	0x00bb
                           0000BA   413 _PX1L	=	0x00ba
                           0000B9   414 _PT0L	=	0x00b9
                           0000B8   415 _PX0L	=	0x00b8
                           0000C0   416 _P4_0	=	0x00c0
                           0000C1   417 _P4_1	=	0x00c1
                           0000C2   418 _P4_2	=	0x00c2
                           0000C3   419 _P4_3	=	0x00c3
                           0000C4   420 _P4_4	=	0x00c4
                           0000C5   421 _P4_5	=	0x00c5
                           0000C6   422 _P4_6	=	0x00c6
                           0000C7   423 _P4_7	=	0x00c7
                           0000E8   424 _P5_0	=	0x00e8
                           0000E9   425 _P5_1	=	0x00e9
                           0000EA   426 _P5_2	=	0x00ea
                           0000EB   427 _P5_3	=	0x00eb
                           0000EC   428 _P5_4	=	0x00ec
                           0000ED   429 _P5_5	=	0x00ed
                           0000EE   430 _P5_6	=	0x00ee
                           0000EF   431 _P5_7	=	0x00ef
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable register banks
                                    434 ;--------------------------------------------------------
                                    435 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        436 	.ds 8
                                    437 ;--------------------------------------------------------
                                    438 ; internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area DSEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable items in internal ram 
                                    443 ;--------------------------------------------------------
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      00000A                        465 _byte_write_PARM_2:
      00000A                        466 	.ds 1
      00000B                        467 _byte_write_PARM_3:
      00000B                        468 	.ds 1
      00000C                        469 _byte_write_controlcode_65536_67:
      00000C                        470 	.ds 1
      00000D                        471 _byte_write_t_65537_69:
      00000D                        472 	.ds 2
      00000F                        473 _random_read_PARM_2:
      00000F                        474 	.ds 1
      000010                        475 _random_read_controlcode_65536_71:
      000010                        476 	.ds 1
      000011                        477 _seq_read_PARM_2:
      000011                        478 	.ds 1
      000012                        479 _seq_read_PARM_3:
      000012                        480 	.ds 1
      000013                        481 _seq_read_PARM_4:
      000013                        482 	.ds 1
      000014                        483 _seq_read_PARM_5:
      000014                        484 	.ds 1
      000015                        485 _seq_read_controlcode_65536_74:
      000015                        486 	.ds 1
                                    487 ;--------------------------------------------------------
                                    488 ; absolute external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XABS    (ABS,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external initialized ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XISEG   (XDATA)
                                    495 	.area HOME    (CODE)
                                    496 	.area GSINIT0 (CODE)
                                    497 	.area GSINIT1 (CODE)
                                    498 	.area GSINIT2 (CODE)
                                    499 	.area GSINIT3 (CODE)
                                    500 	.area GSINIT4 (CODE)
                                    501 	.area GSINIT5 (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area CSEG    (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; global & static initialisations
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; Home
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area HOME    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; code
                                    519 ;--------------------------------------------------------
                                    520 	.area CSEG    (CODE)
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'byte_write'
                                    523 ;------------------------------------------------------------
                                    524 ;byte_address              Allocated with name '_byte_write_PARM_2'
                                    525 ;writedata                 Allocated with name '_byte_write_PARM_3'
                                    526 ;controlcode               Allocated with name '_byte_write_controlcode_65536_67'
                                    527 ;t                         Allocated with name '_byte_write_t_65537_69'
                                    528 ;------------------------------------------------------------
                                    529 ;	eeprom.c:3: void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
                                    530 ;	-----------------------------------------
                                    531 ;	 function byte_write
                                    532 ;	-----------------------------------------
      002C73                        533 _byte_write:
                           000007   534 	ar7 = 0x07
                           000006   535 	ar6 = 0x06
                           000005   536 	ar5 = 0x05
                           000004   537 	ar4 = 0x04
                           000003   538 	ar3 = 0x03
                           000002   539 	ar2 = 0x02
                           000001   540 	ar1 = 0x01
                           000000   541 	ar0 = 0x00
      002C73 E5 82            [12]  542 	mov	a,dpl
      002C75 90 00 0C         [24]  543 	mov	dptr,#_byte_write_controlcode_65536_67
      002C78 F0               [24]  544 	movx	@dptr,a
                                    545 ;	eeprom.c:5: restart_i2c();
      002C79 12 2F AA         [24]  546 	lcall	_restart_i2c
                                    547 ;	eeprom.c:6: i2c_write(controlcode);
      002C7C 90 00 0C         [24]  548 	mov	dptr,#_byte_write_controlcode_65536_67
      002C7F E0               [24]  549 	movx	a,@dptr
      002C80 FE               [12]  550 	mov	r6,a
      002C81 7F 00            [12]  551 	mov	r7,#0x00
      002C83 8E 82            [24]  552 	mov	dpl,r6
      002C85 8F 83            [24]  553 	mov	dph,r7
      002C87 C0 07            [24]  554 	push	ar7
      002C89 C0 06            [24]  555 	push	ar6
      002C8B 12 2F B4         [24]  556 	lcall	_i2c_write
                                    557 ;	eeprom.c:7: delay();
      002C8E 12 2F 67         [24]  558 	lcall	_delay
                                    559 ;	eeprom.c:8: i2c_write(byte_address);
      002C91 90 00 0A         [24]  560 	mov	dptr,#_byte_write_PARM_2
      002C94 E0               [24]  561 	movx	a,@dptr
      002C95 FD               [12]  562 	mov	r5,a
      002C96 7C 00            [12]  563 	mov	r4,#0x00
      002C98 8D 82            [24]  564 	mov	dpl,r5
      002C9A 8C 83            [24]  565 	mov	dph,r4
      002C9C 12 2F B4         [24]  566 	lcall	_i2c_write
                                    567 ;	eeprom.c:9: delay();
      002C9F 12 2F 67         [24]  568 	lcall	_delay
                                    569 ;	eeprom.c:10: i2c_write(writedata);
      002CA2 90 00 0B         [24]  570 	mov	dptr,#_byte_write_PARM_3
      002CA5 E0               [24]  571 	movx	a,@dptr
      002CA6 FD               [12]  572 	mov	r5,a
      002CA7 7C 00            [12]  573 	mov	r4,#0x00
      002CA9 8D 82            [24]  574 	mov	dpl,r5
      002CAB 8C 83            [24]  575 	mov	dph,r4
      002CAD 12 2F B4         [24]  576 	lcall	_i2c_write
                                    577 ;	eeprom.c:11: delay();
      002CB0 12 2F 67         [24]  578 	lcall	_delay
                                    579 ;	eeprom.c:12: i2c_stop();
      002CB3 12 2F 83         [24]  580 	lcall	_i2c_stop
                                    581 ;	eeprom.c:13: long_delay();
      002CB6 12 2F 8F         [24]  582 	lcall	_long_delay
      002CB9 D0 06            [24]  583 	pop	ar6
      002CBB D0 07            [24]  584 	pop	ar7
                                    585 ;	eeprom.c:15: int t=1;
      002CBD 90 00 0D         [24]  586 	mov	dptr,#_byte_write_t_65537_69
      002CC0 74 01            [12]  587 	mov	a,#0x01
      002CC2 F0               [24]  588 	movx	@dptr,a
      002CC3 E4               [12]  589 	clr	a
      002CC4 A3               [24]  590 	inc	dptr
      002CC5 F0               [24]  591 	movx	@dptr,a
                                    592 ;	eeprom.c:16: while(t) //ack polling
      002CC6                        593 00101$:
      002CC6 90 00 0D         [24]  594 	mov	dptr,#_byte_write_t_65537_69
      002CC9 E0               [24]  595 	movx	a,@dptr
      002CCA F5 F0            [12]  596 	mov	b,a
      002CCC A3               [24]  597 	inc	dptr
      002CCD E0               [24]  598 	movx	a,@dptr
      002CCE 45 F0            [12]  599 	orl	a,b
      002CD0 60 2C            [24]  600 	jz	00103$
                                    601 ;	eeprom.c:19: restart_i2c();
      002CD2 C0 07            [24]  602 	push	ar7
      002CD4 C0 06            [24]  603 	push	ar6
      002CD6 12 2F AA         [24]  604 	lcall	_restart_i2c
      002CD9 D0 06            [24]  605 	pop	ar6
      002CDB D0 07            [24]  606 	pop	ar7
                                    607 ;	eeprom.c:20: t=i2c_write(controlcode);
      002CDD 8E 82            [24]  608 	mov	dpl,r6
      002CDF 8F 83            [24]  609 	mov	dph,r7
      002CE1 C0 07            [24]  610 	push	ar7
      002CE3 C0 06            [24]  611 	push	ar6
      002CE5 12 2F B4         [24]  612 	lcall	_i2c_write
      002CE8 E5 82            [12]  613 	mov	a,dpl
      002CEA 85 83 F0         [24]  614 	mov	b,dph
      002CED 90 00 0D         [24]  615 	mov	dptr,#_byte_write_t_65537_69
      002CF0 F0               [24]  616 	movx	@dptr,a
      002CF1 E5 F0            [12]  617 	mov	a,b
      002CF3 A3               [24]  618 	inc	dptr
      002CF4 F0               [24]  619 	movx	@dptr,a
                                    620 ;	eeprom.c:21: delay();
      002CF5 12 2F 67         [24]  621 	lcall	_delay
      002CF8 D0 06            [24]  622 	pop	ar6
      002CFA D0 07            [24]  623 	pop	ar7
      002CFC 80 C8            [24]  624 	sjmp	00101$
      002CFE                        625 00103$:
                                    626 ;	eeprom.c:24: i2c_stop();
                                    627 ;	eeprom.c:25: }
      002CFE 02 2F 83         [24]  628 	ljmp	_i2c_stop
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'random_read'
                                    631 ;------------------------------------------------------------
                                    632 ;byte_address              Allocated with name '_random_read_PARM_2'
                                    633 ;controlcode               Allocated with name '_random_read_controlcode_65536_71'
                                    634 ;s                         Allocated with name '_random_read_s_65537_73'
                                    635 ;------------------------------------------------------------
                                    636 ;	eeprom.c:28: int random_read(uint8_t controlcode,uint8_t byte_address)
                                    637 ;	-----------------------------------------
                                    638 ;	 function random_read
                                    639 ;	-----------------------------------------
      002D01                        640 _random_read:
      002D01 E5 82            [12]  641 	mov	a,dpl
      002D03 90 00 10         [24]  642 	mov	dptr,#_random_read_controlcode_65536_71
      002D06 F0               [24]  643 	movx	@dptr,a
                                    644 ;	eeprom.c:30: restart_i2c();
      002D07 12 2F AA         [24]  645 	lcall	_restart_i2c
                                    646 ;	eeprom.c:31: i2c_write(controlcode);
      002D0A 90 00 10         [24]  647 	mov	dptr,#_random_read_controlcode_65536_71
      002D0D E0               [24]  648 	movx	a,@dptr
      002D0E FF               [12]  649 	mov	r7,a
      002D0F 7E 00            [12]  650 	mov	r6,#0x00
      002D11 8F 82            [24]  651 	mov	dpl,r7
      002D13 8E 83            [24]  652 	mov	dph,r6
      002D15 C0 07            [24]  653 	push	ar7
      002D17 C0 06            [24]  654 	push	ar6
      002D19 12 2F B4         [24]  655 	lcall	_i2c_write
                                    656 ;	eeprom.c:32: delay();
      002D1C 12 2F 67         [24]  657 	lcall	_delay
                                    658 ;	eeprom.c:33: i2c_write(byte_address);
      002D1F 90 00 0F         [24]  659 	mov	dptr,#_random_read_PARM_2
      002D22 E0               [24]  660 	movx	a,@dptr
      002D23 FD               [12]  661 	mov	r5,a
      002D24 7C 00            [12]  662 	mov	r4,#0x00
      002D26 8D 82            [24]  663 	mov	dpl,r5
      002D28 8C 83            [24]  664 	mov	dph,r4
      002D2A 12 2F B4         [24]  665 	lcall	_i2c_write
                                    666 ;	eeprom.c:34: delay();
      002D2D 12 2F 67         [24]  667 	lcall	_delay
                                    668 ;	eeprom.c:35: restart_i2c();
      002D30 12 2F AA         [24]  669 	lcall	_restart_i2c
      002D33 D0 06            [24]  670 	pop	ar6
      002D35 D0 07            [24]  671 	pop	ar7
                                    672 ;	eeprom.c:36: i2c_write((controlcode+1)); //change to read operation
      002D37 0F               [12]  673 	inc	r7
      002D38 BF 00 01         [24]  674 	cjne	r7,#0x00,00103$
      002D3B 0E               [12]  675 	inc	r6
      002D3C                        676 00103$:
      002D3C 8F 82            [24]  677 	mov	dpl,r7
      002D3E 8E 83            [24]  678 	mov	dph,r6
      002D40 12 2F B4         [24]  679 	lcall	_i2c_write
                                    680 ;	eeprom.c:38: s=i2c_read();
      002D43 12 30 5E         [24]  681 	lcall	_i2c_read
      002D46 AE 82            [24]  682 	mov	r6,dpl
      002D48 AF 83            [24]  683 	mov	r7,dph
                                    684 ;	eeprom.c:39: i2c_nack();
      002D4A C0 07            [24]  685 	push	ar7
      002D4C C0 06            [24]  686 	push	ar6
      002D4E 12 30 52         [24]  687 	lcall	_i2c_nack
                                    688 ;	eeprom.c:41: i2c_stop();
      002D51 12 2F 83         [24]  689 	lcall	_i2c_stop
                                    690 ;	eeprom.c:44: long_delay();
      002D54 12 2F 8F         [24]  691 	lcall	_long_delay
      002D57 D0 06            [24]  692 	pop	ar6
      002D59 D0 07            [24]  693 	pop	ar7
                                    694 ;	eeprom.c:45: return s;
      002D5B 8E 82            [24]  695 	mov	dpl,r6
      002D5D 8F 83            [24]  696 	mov	dph,r7
                                    697 ;	eeprom.c:47: }
      002D5F 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'seq_read'
                                    701 ;------------------------------------------------------------
                                    702 ;address1                  Allocated with name '_seq_read_PARM_2'
                                    703 ;address2                  Allocated with name '_seq_read_PARM_3'
                                    704 ;block1                    Allocated with name '_seq_read_PARM_4'
                                    705 ;block2                    Allocated with name '_seq_read_PARM_5'
                                    706 ;controlcode               Allocated with name '_seq_read_controlcode_65536_74'
                                    707 ;blocknumber               Allocated with name '_seq_read_blocknumber_65537_76'
                                    708 ;s                         Allocated with name '_seq_read_s_65537_76'
                                    709 ;starter                   Allocated with name '_seq_read_starter_65538_77'
                                    710 ;ender                     Allocated with name '_seq_read_ender_65539_78'
                                    711 ;k                         Allocated with name '_seq_read_k_65540_79'
                                    712 ;t                         Allocated with name '_seq_read_t_65540_79'
                                    713 ;------------------------------------------------------------
                                    714 ;	eeprom.c:48: void seq_read(uint8_t controlcode,uint8_t address1,uint8_t address2,uint8_t block1,uint8_t block2)
                                    715 ;	-----------------------------------------
                                    716 ;	 function seq_read
                                    717 ;	-----------------------------------------
      002D60                        718 _seq_read:
      002D60 E5 82            [12]  719 	mov	a,dpl
      002D62 90 00 15         [24]  720 	mov	dptr,#_seq_read_controlcode_65536_74
      002D65 F0               [24]  721 	movx	@dptr,a
                                    722 ;	eeprom.c:50: restart_i2c();
      002D66 12 2F AA         [24]  723 	lcall	_restart_i2c
                                    724 ;	eeprom.c:51: i2c_write(0xFF);
      002D69 90 00 FF         [24]  725 	mov	dptr,#0x00ff
      002D6C 12 2F B4         [24]  726 	lcall	_i2c_write
                                    727 ;	eeprom.c:52: i2c_nack();
      002D6F 12 30 52         [24]  728 	lcall	_i2c_nack
                                    729 ;	eeprom.c:53: restart_i2c();
      002D72 12 2F AA         [24]  730 	lcall	_restart_i2c
                                    731 ;	eeprom.c:54: i2c_stop();
      002D75 12 2F 83         [24]  732 	lcall	_i2c_stop
                                    733 ;	eeprom.c:55: restart_i2c();
      002D78 12 2F AA         [24]  734 	lcall	_restart_i2c
                                    735 ;	eeprom.c:56: i2c_write(controlcode);
      002D7B 90 00 15         [24]  736 	mov	dptr,#_seq_read_controlcode_65536_74
      002D7E E0               [24]  737 	movx	a,@dptr
      002D7F FF               [12]  738 	mov	r7,a
      002D80 7E 00            [12]  739 	mov	r6,#0x00
      002D82 8F 82            [24]  740 	mov	dpl,r7
      002D84 8E 83            [24]  741 	mov	dph,r6
      002D86 C0 07            [24]  742 	push	ar7
      002D88 C0 06            [24]  743 	push	ar6
      002D8A 12 2F B4         [24]  744 	lcall	_i2c_write
                                    745 ;	eeprom.c:57: delay();
      002D8D 12 2F 67         [24]  746 	lcall	_delay
                                    747 ;	eeprom.c:58: i2c_write(address1);
      002D90 90 00 11         [24]  748 	mov	dptr,#_seq_read_PARM_2
      002D93 E0               [24]  749 	movx	a,@dptr
      002D94 FD               [12]  750 	mov	r5,a
      002D95 FB               [12]  751 	mov	r3,a
      002D96 7C 00            [12]  752 	mov	r4,#0x00
      002D98 8B 82            [24]  753 	mov	dpl,r3
      002D9A 8C 83            [24]  754 	mov	dph,r4
      002D9C C0 05            [24]  755 	push	ar5
      002D9E 12 2F B4         [24]  756 	lcall	_i2c_write
                                    757 ;	eeprom.c:59: delay();
      002DA1 12 2F 67         [24]  758 	lcall	_delay
                                    759 ;	eeprom.c:60: restart_i2c();
      002DA4 12 2F AA         [24]  760 	lcall	_restart_i2c
      002DA7 D0 05            [24]  761 	pop	ar5
      002DA9 D0 06            [24]  762 	pop	ar6
      002DAB D0 07            [24]  763 	pop	ar7
                                    764 ;	eeprom.c:62: i2c_write((controlcode+1));//change to read operation
      002DAD 0F               [12]  765 	inc	r7
      002DAE BF 00 01         [24]  766 	cjne	r7,#0x00,00127$
      002DB1 0E               [12]  767 	inc	r6
      002DB2                        768 00127$:
      002DB2 8F 82            [24]  769 	mov	dpl,r7
      002DB4 8E 83            [24]  770 	mov	dph,r6
      002DB6 C0 05            [24]  771 	push	ar5
      002DB8 12 2F B4         [24]  772 	lcall	_i2c_write
      002DBB D0 05            [24]  773 	pop	ar5
                                    774 ;	eeprom.c:64: starter|=block1;
      002DBD 90 00 13         [24]  775 	mov	dptr,#_seq_read_PARM_4
      002DC0 E0               [24]  776 	movx	a,@dptr
                                    777 ;	eeprom.c:65: starter=starter<<8;
      002DC1 FE               [12]  778 	mov	r6,a
                                    779 ;	eeprom.c:66: starter|=address1;
      002DC2 E4               [12]  780 	clr	a
      002DC3 FF               [12]  781 	mov	r7,a
      002DC4 FC               [12]  782 	mov	r4,a
      002DC5 ED               [12]  783 	mov	a,r5
      002DC6 42 07            [12]  784 	orl	ar7,a
      002DC8 EC               [12]  785 	mov	a,r4
      002DC9 42 06            [12]  786 	orl	ar6,a
                                    787 ;	eeprom.c:68: ender|=block2;
      002DCB 90 00 14         [24]  788 	mov	dptr,#_seq_read_PARM_5
      002DCE E0               [24]  789 	movx	a,@dptr
                                    790 ;	eeprom.c:69: ender=ender<<8;
      002DCF FC               [12]  791 	mov	r4,a
      002DD0 7D 00            [12]  792 	mov	r5,#0x00
                                    793 ;	eeprom.c:70: ender|=address2;
      002DD2 90 00 12         [24]  794 	mov	dptr,#_seq_read_PARM_3
      002DD5 E0               [24]  795 	movx	a,@dptr
      002DD6 7A 00            [12]  796 	mov	r2,#0x00
      002DD8 42 05            [12]  797 	orl	ar5,a
      002DDA EA               [12]  798 	mov	a,r2
      002DDB 42 04            [12]  799 	orl	ar4,a
                                    800 ;	eeprom.c:74: printf("\n\r");
      002DDD C0 07            [24]  801 	push	ar7
      002DDF C0 06            [24]  802 	push	ar6
      002DE1 C0 05            [24]  803 	push	ar5
      002DE3 C0 04            [24]  804 	push	ar4
      002DE5 74 F4            [12]  805 	mov	a,#___str_0
      002DE7 C0 E0            [24]  806 	push	acc
      002DE9 74 43            [12]  807 	mov	a,#(___str_0 >> 8)
      002DEB C0 E0            [24]  808 	push	acc
      002DED 74 80            [12]  809 	mov	a,#0x80
      002DEF C0 E0            [24]  810 	push	acc
      002DF1 12 39 B1         [24]  811 	lcall	_printf
      002DF4 15 81            [12]  812 	dec	sp
      002DF6 15 81            [12]  813 	dec	sp
      002DF8 15 81            [12]  814 	dec	sp
      002DFA D0 04            [24]  815 	pop	ar4
      002DFC D0 05            [24]  816 	pop	ar5
      002DFE D0 06            [24]  817 	pop	ar6
      002E00 D0 07            [24]  818 	pop	ar7
                                    819 ;	eeprom.c:77: while(t<(ender)){
      002E02 7B 00            [12]  820 	mov	r3,#0x00
      002E04                        821 00103$:
      002E04 C3               [12]  822 	clr	c
      002E05 EF               [12]  823 	mov	a,r7
      002E06 9D               [12]  824 	subb	a,r5
      002E07 EE               [12]  825 	mov	a,r6
      002E08 9C               [12]  826 	subb	a,r4
      002E09 40 03            [24]  827 	jc	00128$
      002E0B 02 2E B7         [24]  828 	ljmp	00105$
      002E0E                        829 00128$:
                                    830 ;	eeprom.c:78: if(k%16==0)
      002E0E 8B 01            [24]  831 	mov	ar1,r3
      002E10 E9               [12]  832 	mov	a,r1
      002E11 54 0F            [12]  833 	anl	a,#0x0f
      002E13 70 56            [24]  834 	jnz	00102$
                                    835 ;	eeprom.c:80: printf("\n\r");
      002E15 C0 07            [24]  836 	push	ar7
      002E17 C0 06            [24]  837 	push	ar6
      002E19 C0 05            [24]  838 	push	ar5
      002E1B C0 04            [24]  839 	push	ar4
      002E1D C0 03            [24]  840 	push	ar3
      002E1F 74 F4            [12]  841 	mov	a,#___str_0
      002E21 C0 E0            [24]  842 	push	acc
      002E23 74 43            [12]  843 	mov	a,#(___str_0 >> 8)
      002E25 C0 E0            [24]  844 	push	acc
      002E27 74 80            [12]  845 	mov	a,#0x80
      002E29 C0 E0            [24]  846 	push	acc
      002E2B 12 39 B1         [24]  847 	lcall	_printf
      002E2E 15 81            [12]  848 	dec	sp
      002E30 15 81            [12]  849 	dec	sp
      002E32 15 81            [12]  850 	dec	sp
      002E34 D0 03            [24]  851 	pop	ar3
      002E36 D0 04            [24]  852 	pop	ar4
      002E38 D0 05            [24]  853 	pop	ar5
      002E3A D0 06            [24]  854 	pop	ar6
      002E3C D0 07            [24]  855 	pop	ar7
                                    856 ;	eeprom.c:81: printf("%3X:",t);
      002E3E C0 07            [24]  857 	push	ar7
      002E40 C0 06            [24]  858 	push	ar6
      002E42 C0 05            [24]  859 	push	ar5
      002E44 C0 04            [24]  860 	push	ar4
      002E46 C0 03            [24]  861 	push	ar3
      002E48 C0 07            [24]  862 	push	ar7
      002E4A C0 06            [24]  863 	push	ar6
      002E4C 74 F7            [12]  864 	mov	a,#___str_1
      002E4E C0 E0            [24]  865 	push	acc
      002E50 74 43            [12]  866 	mov	a,#(___str_1 >> 8)
      002E52 C0 E0            [24]  867 	push	acc
      002E54 74 80            [12]  868 	mov	a,#0x80
      002E56 C0 E0            [24]  869 	push	acc
      002E58 12 39 B1         [24]  870 	lcall	_printf
      002E5B E5 81            [12]  871 	mov	a,sp
      002E5D 24 FB            [12]  872 	add	a,#0xfb
      002E5F F5 81            [12]  873 	mov	sp,a
      002E61 D0 03            [24]  874 	pop	ar3
      002E63 D0 04            [24]  875 	pop	ar4
      002E65 D0 05            [24]  876 	pop	ar5
      002E67 D0 06            [24]  877 	pop	ar6
      002E69 D0 07            [24]  878 	pop	ar7
      002E6B                        879 00102$:
                                    880 ;	eeprom.c:83: s=i2c_read();
      002E6B C0 07            [24]  881 	push	ar7
      002E6D C0 06            [24]  882 	push	ar6
      002E6F C0 05            [24]  883 	push	ar5
      002E71 C0 04            [24]  884 	push	ar4
      002E73 C0 03            [24]  885 	push	ar3
      002E75 12 30 5E         [24]  886 	lcall	_i2c_read
      002E78 A9 82            [24]  887 	mov	r1,dpl
      002E7A AA 83            [24]  888 	mov	r2,dph
                                    889 ;	eeprom.c:84: i2c_ack();
      002E7C C0 02            [24]  890 	push	ar2
      002E7E C0 01            [24]  891 	push	ar1
      002E80 12 30 43         [24]  892 	lcall	_i2c_ack
      002E83 D0 01            [24]  893 	pop	ar1
      002E85 D0 02            [24]  894 	pop	ar2
      002E87 D0 03            [24]  895 	pop	ar3
                                    896 ;	eeprom.c:85: k++;
      002E89 0B               [12]  897 	inc	r3
                                    898 ;	eeprom.c:86: printf(" %X ",s);t++;
      002E8A C0 03            [24]  899 	push	ar3
      002E8C C0 01            [24]  900 	push	ar1
      002E8E C0 02            [24]  901 	push	ar2
      002E90 74 FC            [12]  902 	mov	a,#___str_2
      002E92 C0 E0            [24]  903 	push	acc
      002E94 74 43            [12]  904 	mov	a,#(___str_2 >> 8)
      002E96 C0 E0            [24]  905 	push	acc
      002E98 74 80            [12]  906 	mov	a,#0x80
      002E9A C0 E0            [24]  907 	push	acc
      002E9C 12 39 B1         [24]  908 	lcall	_printf
      002E9F E5 81            [12]  909 	mov	a,sp
      002EA1 24 FB            [12]  910 	add	a,#0xfb
      002EA3 F5 81            [12]  911 	mov	sp,a
      002EA5 D0 03            [24]  912 	pop	ar3
      002EA7 D0 04            [24]  913 	pop	ar4
      002EA9 D0 05            [24]  914 	pop	ar5
      002EAB D0 06            [24]  915 	pop	ar6
      002EAD D0 07            [24]  916 	pop	ar7
      002EAF 0F               [12]  917 	inc	r7
      002EB0 BF 00 01         [24]  918 	cjne	r7,#0x00,00131$
      002EB3 0E               [12]  919 	inc	r6
      002EB4                        920 00131$:
      002EB4 02 2E 04         [24]  921 	ljmp	00103$
      002EB7                        922 00105$:
                                    923 ;	eeprom.c:89: s=i2c_read();
      002EB7 C0 07            [24]  924 	push	ar7
      002EB9 C0 06            [24]  925 	push	ar6
      002EBB C0 03            [24]  926 	push	ar3
      002EBD 12 30 5E         [24]  927 	lcall	_i2c_read
      002EC0 AC 82            [24]  928 	mov	r4,dpl
      002EC2 AD 83            [24]  929 	mov	r5,dph
      002EC4 D0 03            [24]  930 	pop	ar3
                                    931 ;	eeprom.c:90: i2c_nack();
      002EC6 C0 05            [24]  932 	push	ar5
      002EC8 C0 04            [24]  933 	push	ar4
      002ECA C0 03            [24]  934 	push	ar3
      002ECC 12 30 52         [24]  935 	lcall	_i2c_nack
                                    936 ;	eeprom.c:91: i2c_stop();
      002ECF 12 2F 83         [24]  937 	lcall	_i2c_stop
      002ED2 D0 03            [24]  938 	pop	ar3
      002ED4 D0 04            [24]  939 	pop	ar4
      002ED6 D0 05            [24]  940 	pop	ar5
      002ED8 D0 06            [24]  941 	pop	ar6
      002EDA D0 07            [24]  942 	pop	ar7
                                    943 ;	eeprom.c:93: if(k%16==0)
      002EDC EB               [12]  944 	mov	a,r3
      002EDD 54 0F            [12]  945 	anl	a,#0x0f
      002EDF 70 46            [24]  946 	jnz	00107$
                                    947 ;	eeprom.c:95: printf("\n\r");
      002EE1 C0 07            [24]  948 	push	ar7
      002EE3 C0 06            [24]  949 	push	ar6
      002EE5 C0 05            [24]  950 	push	ar5
      002EE7 C0 04            [24]  951 	push	ar4
      002EE9 74 F4            [12]  952 	mov	a,#___str_0
      002EEB C0 E0            [24]  953 	push	acc
      002EED 74 43            [12]  954 	mov	a,#(___str_0 >> 8)
      002EEF C0 E0            [24]  955 	push	acc
      002EF1 74 80            [12]  956 	mov	a,#0x80
      002EF3 C0 E0            [24]  957 	push	acc
      002EF5 12 39 B1         [24]  958 	lcall	_printf
      002EF8 15 81            [12]  959 	dec	sp
      002EFA 15 81            [12]  960 	dec	sp
      002EFC 15 81            [12]  961 	dec	sp
      002EFE D0 04            [24]  962 	pop	ar4
      002F00 D0 05            [24]  963 	pop	ar5
      002F02 D0 06            [24]  964 	pop	ar6
      002F04 D0 07            [24]  965 	pop	ar7
                                    966 ;	eeprom.c:96: printf("%X:",t);
      002F06 C0 05            [24]  967 	push	ar5
      002F08 C0 04            [24]  968 	push	ar4
      002F0A C0 07            [24]  969 	push	ar7
      002F0C C0 06            [24]  970 	push	ar6
      002F0E 74 01            [12]  971 	mov	a,#___str_3
      002F10 C0 E0            [24]  972 	push	acc
      002F12 74 44            [12]  973 	mov	a,#(___str_3 >> 8)
      002F14 C0 E0            [24]  974 	push	acc
      002F16 74 80            [12]  975 	mov	a,#0x80
      002F18 C0 E0            [24]  976 	push	acc
      002F1A 12 39 B1         [24]  977 	lcall	_printf
      002F1D E5 81            [12]  978 	mov	a,sp
      002F1F 24 FB            [12]  979 	add	a,#0xfb
      002F21 F5 81            [12]  980 	mov	sp,a
      002F23 D0 04            [24]  981 	pop	ar4
      002F25 D0 05            [24]  982 	pop	ar5
      002F27                        983 00107$:
                                    984 ;	eeprom.c:98: printf(" %X ",s);
      002F27 C0 04            [24]  985 	push	ar4
      002F29 C0 05            [24]  986 	push	ar5
      002F2B 74 FC            [12]  987 	mov	a,#___str_2
      002F2D C0 E0            [24]  988 	push	acc
      002F2F 74 43            [12]  989 	mov	a,#(___str_2 >> 8)
      002F31 C0 E0            [24]  990 	push	acc
      002F33 74 80            [12]  991 	mov	a,#0x80
      002F35 C0 E0            [24]  992 	push	acc
      002F37 12 39 B1         [24]  993 	lcall	_printf
      002F3A E5 81            [12]  994 	mov	a,sp
      002F3C 24 FB            [12]  995 	add	a,#0xfb
      002F3E F5 81            [12]  996 	mov	sp,a
                                    997 ;	eeprom.c:99: printf(newl);
      002F40 74 F4            [12]  998 	mov	a,#___str_0
      002F42 C0 E0            [24]  999 	push	acc
      002F44 74 43            [12] 1000 	mov	a,#(___str_0 >> 8)
      002F46 C0 E0            [24] 1001 	push	acc
      002F48 74 80            [12] 1002 	mov	a,#0x80
      002F4A C0 E0            [24] 1003 	push	acc
      002F4C 12 39 B1         [24] 1004 	lcall	_printf
      002F4F 15 81            [12] 1005 	dec	sp
      002F51 15 81            [12] 1006 	dec	sp
      002F53 15 81            [12] 1007 	dec	sp
                                   1008 ;	eeprom.c:100: restart_i2c();
      002F55 12 2F AA         [24] 1009 	lcall	_restart_i2c
                                   1010 ;	eeprom.c:101: i2c_write(0xFF);
      002F58 90 00 FF         [24] 1011 	mov	dptr,#0x00ff
      002F5B 12 2F B4         [24] 1012 	lcall	_i2c_write
                                   1013 ;	eeprom.c:102: i2c_nack();
      002F5E 12 30 52         [24] 1014 	lcall	_i2c_nack
                                   1015 ;	eeprom.c:103: restart_i2c();
      002F61 12 2F AA         [24] 1016 	lcall	_restart_i2c
                                   1017 ;	eeprom.c:104: i2c_stop();
                                   1018 ;	eeprom.c:107: }
      002F64 02 2F 83         [24] 1019 	ljmp	_i2c_stop
                                   1020 	.area CSEG    (CODE)
                                   1021 	.area CONST   (CODE)
                                   1022 	.area CONST   (CODE)
      0043F4                       1023 ___str_0:
      0043F4 0A                    1024 	.db 0x0a
      0043F5 0D                    1025 	.db 0x0d
      0043F6 00                    1026 	.db 0x00
                                   1027 	.area CSEG    (CODE)
                                   1028 	.area CONST   (CODE)
      0043F7                       1029 ___str_1:
      0043F7 25 33 58 3A           1030 	.ascii "%3X:"
      0043FB 00                    1031 	.db 0x00
                                   1032 	.area CSEG    (CODE)
                                   1033 	.area CONST   (CODE)
      0043FC                       1034 ___str_2:
      0043FC 20 25 58 20           1035 	.ascii " %X "
      004400 00                    1036 	.db 0x00
                                   1037 	.area CSEG    (CODE)
                                   1038 	.area CONST   (CODE)
      004401                       1039 ___str_3:
      004401 25 58 3A              1040 	.ascii "%X:"
      004404 00                    1041 	.db 0x00
                                   1042 	.area CSEG    (CODE)
                                   1043 	.area XINIT   (CODE)
                                   1044 	.area CABS    (ABS,CODE)
