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
                                     11 	.globl _strtohex
                                     12 	.globl _i2c_read
                                     13 	.globl _i2c_nack
                                     14 	.globl _i2c_ack
                                     15 	.globl _i2c_write
                                     16 	.globl _restart_i2c
                                     17 	.globl _long_delay
                                     18 	.globl _i2c_stop
                                     19 	.globl _delay
                                     20 	.globl _gets
                                     21 	.globl _printf
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
                                    218 	.globl _random_read_PARM_2
                                    219 	.globl _byte_write_PARM_3
                                    220 	.globl _byte_write_PARM_2
                                    221 	.globl _byte_write
                                    222 	.globl _random_read
                                    223 	.globl _seq_read
                                    224 ;--------------------------------------------------------
                                    225 ; special function registers
                                    226 ;--------------------------------------------------------
                                    227 	.area RSEG    (ABS,DATA)
      000000                        228 	.org 0x0000
                           000080   229 _P0	=	0x0080
                           000081   230 _SP	=	0x0081
                           000082   231 _DPL	=	0x0082
                           000083   232 _DPH	=	0x0083
                           000087   233 _PCON	=	0x0087
                           000088   234 _TCON	=	0x0088
                           000089   235 _TMOD	=	0x0089
                           00008A   236 _TL0	=	0x008a
                           00008B   237 _TL1	=	0x008b
                           00008C   238 _TH0	=	0x008c
                           00008D   239 _TH1	=	0x008d
                           000090   240 _P1	=	0x0090
                           000098   241 _SCON	=	0x0098
                           000099   242 _SBUF	=	0x0099
                           0000A0   243 _P2	=	0x00a0
                           0000A8   244 _IE	=	0x00a8
                           0000B0   245 _P3	=	0x00b0
                           0000B8   246 _IP	=	0x00b8
                           0000D0   247 _PSW	=	0x00d0
                           0000E0   248 _ACC	=	0x00e0
                           0000F0   249 _B	=	0x00f0
                           0000C8   250 _T2CON	=	0x00c8
                           0000CA   251 _RCAP2L	=	0x00ca
                           0000CB   252 _RCAP2H	=	0x00cb
                           0000CC   253 _TL2	=	0x00cc
                           0000CD   254 _TH2	=	0x00cd
                           00008E   255 _AUXR	=	0x008e
                           0000A2   256 _AUXR1	=	0x00a2
                           000097   257 _CKRL	=	0x0097
                           00008F   258 _CKCON0	=	0x008f
                           0000AF   259 _CKCON1	=	0x00af
                           0000FA   260 _CCAP0H	=	0x00fa
                           0000FB   261 _CCAP1H	=	0x00fb
                           0000FC   262 _CCAP2H	=	0x00fc
                           0000FD   263 _CCAP3H	=	0x00fd
                           0000FE   264 _CCAP4H	=	0x00fe
                           0000EA   265 _CCAP0L	=	0x00ea
                           0000EB   266 _CCAP1L	=	0x00eb
                           0000EC   267 _CCAP2L	=	0x00ec
                           0000ED   268 _CCAP3L	=	0x00ed
                           0000EE   269 _CCAP4L	=	0x00ee
                           0000DA   270 _CCAPM0	=	0x00da
                           0000DB   271 _CCAPM1	=	0x00db
                           0000DC   272 _CCAPM2	=	0x00dc
                           0000DD   273 _CCAPM3	=	0x00dd
                           0000DE   274 _CCAPM4	=	0x00de
                           0000D8   275 _CCON	=	0x00d8
                           0000F9   276 _CH	=	0x00f9
                           0000E9   277 _CL	=	0x00e9
                           0000D9   278 _CMOD	=	0x00d9
                           0000A8   279 _IEN0	=	0x00a8
                           0000B1   280 _IEN1	=	0x00b1
                           0000B8   281 _IPL0	=	0x00b8
                           0000B7   282 _IPH0	=	0x00b7
                           0000B2   283 _IPL1	=	0x00b2
                           0000B3   284 _IPH1	=	0x00b3
                           0000C0   285 _P4	=	0x00c0
                           0000E8   286 _P5	=	0x00e8
                           0000A6   287 _WDTRST	=	0x00a6
                           0000A7   288 _WDTPRG	=	0x00a7
                           0000A9   289 _SADDR	=	0x00a9
                           0000B9   290 _SADEN	=	0x00b9
                           0000C3   291 _SPCON	=	0x00c3
                           0000C4   292 _SPSTA	=	0x00c4
                           0000C5   293 _SPDAT	=	0x00c5
                           0000C9   294 _T2MOD	=	0x00c9
                           00009B   295 _BDRCON	=	0x009b
                           00009A   296 _BRL	=	0x009a
                           00009C   297 _KBLS	=	0x009c
                           00009D   298 _KBE	=	0x009d
                           00009E   299 _KBF	=	0x009e
                           0000D2   300 _EECON	=	0x00d2
                                    301 ;--------------------------------------------------------
                                    302 ; special function bits
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 _P0_0	=	0x0080
                           000081   307 _P0_1	=	0x0081
                           000082   308 _P0_2	=	0x0082
                           000083   309 _P0_3	=	0x0083
                           000084   310 _P0_4	=	0x0084
                           000085   311 _P0_5	=	0x0085
                           000086   312 _P0_6	=	0x0086
                           000087   313 _P0_7	=	0x0087
                           000088   314 _IT0	=	0x0088
                           000089   315 _IE0	=	0x0089
                           00008A   316 _IT1	=	0x008a
                           00008B   317 _IE1	=	0x008b
                           00008C   318 _TR0	=	0x008c
                           00008D   319 _TF0	=	0x008d
                           00008E   320 _TR1	=	0x008e
                           00008F   321 _TF1	=	0x008f
                           000090   322 _P1_0	=	0x0090
                           000091   323 _P1_1	=	0x0091
                           000092   324 _P1_2	=	0x0092
                           000093   325 _P1_3	=	0x0093
                           000094   326 _P1_4	=	0x0094
                           000095   327 _P1_5	=	0x0095
                           000096   328 _P1_6	=	0x0096
                           000097   329 _P1_7	=	0x0097
                           000098   330 _RI	=	0x0098
                           000099   331 _TI	=	0x0099
                           00009A   332 _RB8	=	0x009a
                           00009B   333 _TB8	=	0x009b
                           00009C   334 _REN	=	0x009c
                           00009D   335 _SM2	=	0x009d
                           00009E   336 _SM1	=	0x009e
                           00009F   337 _SM0	=	0x009f
                           0000A0   338 _P2_0	=	0x00a0
                           0000A1   339 _P2_1	=	0x00a1
                           0000A2   340 _P2_2	=	0x00a2
                           0000A3   341 _P2_3	=	0x00a3
                           0000A4   342 _P2_4	=	0x00a4
                           0000A5   343 _P2_5	=	0x00a5
                           0000A6   344 _P2_6	=	0x00a6
                           0000A7   345 _P2_7	=	0x00a7
                           0000A8   346 _EX0	=	0x00a8
                           0000A9   347 _ET0	=	0x00a9
                           0000AA   348 _EX1	=	0x00aa
                           0000AB   349 _ET1	=	0x00ab
                           0000AC   350 _ES	=	0x00ac
                           0000AF   351 _EA	=	0x00af
                           0000B0   352 _P3_0	=	0x00b0
                           0000B1   353 _P3_1	=	0x00b1
                           0000B2   354 _P3_2	=	0x00b2
                           0000B3   355 _P3_3	=	0x00b3
                           0000B4   356 _P3_4	=	0x00b4
                           0000B5   357 _P3_5	=	0x00b5
                           0000B6   358 _P3_6	=	0x00b6
                           0000B7   359 _P3_7	=	0x00b7
                           0000B0   360 _RXD	=	0x00b0
                           0000B1   361 _TXD	=	0x00b1
                           0000B2   362 _INT0	=	0x00b2
                           0000B3   363 _INT1	=	0x00b3
                           0000B4   364 _T0	=	0x00b4
                           0000B5   365 _T1	=	0x00b5
                           0000B6   366 _WR	=	0x00b6
                           0000B7   367 _RD	=	0x00b7
                           0000B8   368 _PX0	=	0x00b8
                           0000B9   369 _PT0	=	0x00b9
                           0000BA   370 _PX1	=	0x00ba
                           0000BB   371 _PT1	=	0x00bb
                           0000BC   372 _PS	=	0x00bc
                           0000D0   373 _P	=	0x00d0
                           0000D1   374 _F1	=	0x00d1
                           0000D2   375 _OV	=	0x00d2
                           0000D3   376 _RS0	=	0x00d3
                           0000D4   377 _RS1	=	0x00d4
                           0000D5   378 _F0	=	0x00d5
                           0000D6   379 _AC	=	0x00d6
                           0000D7   380 _CY	=	0x00d7
                           0000AD   381 _ET2	=	0x00ad
                           0000BD   382 _PT2	=	0x00bd
                           0000C8   383 _T2CON_0	=	0x00c8
                           0000C9   384 _T2CON_1	=	0x00c9
                           0000CA   385 _T2CON_2	=	0x00ca
                           0000CB   386 _T2CON_3	=	0x00cb
                           0000CC   387 _T2CON_4	=	0x00cc
                           0000CD   388 _T2CON_5	=	0x00cd
                           0000CE   389 _T2CON_6	=	0x00ce
                           0000CF   390 _T2CON_7	=	0x00cf
                           0000C8   391 _CP_RL2	=	0x00c8
                           0000C9   392 _C_T2	=	0x00c9
                           0000CA   393 _TR2	=	0x00ca
                           0000CB   394 _EXEN2	=	0x00cb
                           0000CC   395 _TCLK	=	0x00cc
                           0000CD   396 _RCLK	=	0x00cd
                           0000CE   397 _EXF2	=	0x00ce
                           0000CF   398 _TF2	=	0x00cf
                           0000DF   399 _CF	=	0x00df
                           0000DE   400 _CR	=	0x00de
                           0000DC   401 _CCF4	=	0x00dc
                           0000DB   402 _CCF3	=	0x00db
                           0000DA   403 _CCF2	=	0x00da
                           0000D9   404 _CCF1	=	0x00d9
                           0000D8   405 _CCF0	=	0x00d8
                           0000AE   406 _EC	=	0x00ae
                           0000BE   407 _PPCL	=	0x00be
                           0000BD   408 _PT2L	=	0x00bd
                           0000BC   409 _PSL	=	0x00bc
                           0000BB   410 _PT1L	=	0x00bb
                           0000BA   411 _PX1L	=	0x00ba
                           0000B9   412 _PT0L	=	0x00b9
                           0000B8   413 _PX0L	=	0x00b8
                           0000C0   414 _P4_0	=	0x00c0
                           0000C1   415 _P4_1	=	0x00c1
                           0000C2   416 _P4_2	=	0x00c2
                           0000C3   417 _P4_3	=	0x00c3
                           0000C4   418 _P4_4	=	0x00c4
                           0000C5   419 _P4_5	=	0x00c5
                           0000C6   420 _P4_6	=	0x00c6
                           0000C7   421 _P4_7	=	0x00c7
                           0000E8   422 _P5_0	=	0x00e8
                           0000E9   423 _P5_1	=	0x00e9
                           0000EA   424 _P5_2	=	0x00ea
                           0000EB   425 _P5_3	=	0x00eb
                           0000EC   426 _P5_4	=	0x00ec
                           0000ED   427 _P5_5	=	0x00ed
                           0000EE   428 _P5_6	=	0x00ee
                           0000EF   429 _P5_7	=	0x00ef
                                    430 ;--------------------------------------------------------
                                    431 ; overlayable register banks
                                    432 ;--------------------------------------------------------
                                    433 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        434 	.ds 8
                                    435 ;--------------------------------------------------------
                                    436 ; internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area DSEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable items in internal ram 
                                    441 ;--------------------------------------------------------
                                    442 ;--------------------------------------------------------
                                    443 ; indirectly addressable internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area ISEG    (DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area IABS    (ABS,DATA)
                                    450 	.area IABS    (ABS,DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; bit data
                                    453 ;--------------------------------------------------------
                                    454 	.area BSEG    (BIT)
                                    455 ;--------------------------------------------------------
                                    456 ; paged external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area PSEG    (PAG,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XSEG    (XDATA)
      00000A                        463 _byte_write_PARM_2:
      00000A                        464 	.ds 1
      00000B                        465 _byte_write_PARM_3:
      00000B                        466 	.ds 1
      00000C                        467 _byte_write_controlcode_65536_89:
      00000C                        468 	.ds 1
      00000D                        469 _byte_write_t_65537_91:
      00000D                        470 	.ds 2
      00000F                        471 _random_read_PARM_2:
      00000F                        472 	.ds 1
      000010                        473 _random_read_controlcode_65536_93:
      000010                        474 	.ds 1
      000011                        475 _seq_read_controlcode_65536_96:
      000011                        476 	.ds 1
                                    477 ;--------------------------------------------------------
                                    478 ; absolute external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XABS    (ABS,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external initialized ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XISEG   (XDATA)
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT0 (CODE)
                                    487 	.area GSINIT1 (CODE)
                                    488 	.area GSINIT2 (CODE)
                                    489 	.area GSINIT3 (CODE)
                                    490 	.area GSINIT4 (CODE)
                                    491 	.area GSINIT5 (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area CSEG    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; global & static initialisations
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 	.area GSFINAL (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 ;--------------------------------------------------------
                                    503 ; Home
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
                                    506 	.area HOME    (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; code
                                    509 ;--------------------------------------------------------
                                    510 	.area CSEG    (CODE)
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'byte_write'
                                    513 ;------------------------------------------------------------
                                    514 ;byte_address              Allocated with name '_byte_write_PARM_2'
                                    515 ;writedata                 Allocated with name '_byte_write_PARM_3'
                                    516 ;controlcode               Allocated with name '_byte_write_controlcode_65536_89'
                                    517 ;t                         Allocated with name '_byte_write_t_65537_91'
                                    518 ;------------------------------------------------------------
                                    519 ;	eeprom.c:4: void byte_write(uint8_t controlcode,uint8_t byte_address,char writedata)
                                    520 ;	-----------------------------------------
                                    521 ;	 function byte_write
                                    522 ;	-----------------------------------------
      002C2F                        523 _byte_write:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
      002C2F E5 82            [12]  532 	mov	a,dpl
      002C31 90 00 0C         [24]  533 	mov	dptr,#_byte_write_controlcode_65536_89
      002C34 F0               [24]  534 	movx	@dptr,a
                                    535 ;	eeprom.c:6: restart_i2c();
      002C35 12 30 DC         [24]  536 	lcall	_restart_i2c
                                    537 ;	eeprom.c:7: i2c_write(controlcode);
      002C38 90 00 0C         [24]  538 	mov	dptr,#_byte_write_controlcode_65536_89
      002C3B E0               [24]  539 	movx	a,@dptr
      002C3C FE               [12]  540 	mov	r6,a
      002C3D 7F 00            [12]  541 	mov	r7,#0x00
      002C3F 8E 82            [24]  542 	mov	dpl,r6
      002C41 8F 83            [24]  543 	mov	dph,r7
      002C43 C0 07            [24]  544 	push	ar7
      002C45 C0 06            [24]  545 	push	ar6
      002C47 12 30 E6         [24]  546 	lcall	_i2c_write
                                    547 ;	eeprom.c:8: delay();
      002C4A 12 30 99         [24]  548 	lcall	_delay
                                    549 ;	eeprom.c:9: i2c_write(byte_address);
      002C4D 90 00 0A         [24]  550 	mov	dptr,#_byte_write_PARM_2
      002C50 E0               [24]  551 	movx	a,@dptr
      002C51 FD               [12]  552 	mov	r5,a
      002C52 7C 00            [12]  553 	mov	r4,#0x00
      002C54 8D 82            [24]  554 	mov	dpl,r5
      002C56 8C 83            [24]  555 	mov	dph,r4
      002C58 12 30 E6         [24]  556 	lcall	_i2c_write
                                    557 ;	eeprom.c:10: delay();
      002C5B 12 30 99         [24]  558 	lcall	_delay
                                    559 ;	eeprom.c:11: i2c_write(writedata);
      002C5E 90 00 0B         [24]  560 	mov	dptr,#_byte_write_PARM_3
      002C61 E0               [24]  561 	movx	a,@dptr
      002C62 FD               [12]  562 	mov	r5,a
      002C63 7C 00            [12]  563 	mov	r4,#0x00
      002C65 8D 82            [24]  564 	mov	dpl,r5
      002C67 8C 83            [24]  565 	mov	dph,r4
      002C69 12 30 E6         [24]  566 	lcall	_i2c_write
                                    567 ;	eeprom.c:12: delay();
      002C6C 12 30 99         [24]  568 	lcall	_delay
                                    569 ;	eeprom.c:13: i2c_stop();
      002C6F 12 30 B5         [24]  570 	lcall	_i2c_stop
                                    571 ;	eeprom.c:14: long_delay();
      002C72 12 30 C1         [24]  572 	lcall	_long_delay
      002C75 D0 06            [24]  573 	pop	ar6
      002C77 D0 07            [24]  574 	pop	ar7
                                    575 ;	eeprom.c:16: int t=1;
      002C79 90 00 0D         [24]  576 	mov	dptr,#_byte_write_t_65537_91
      002C7C 74 01            [12]  577 	mov	a,#0x01
      002C7E F0               [24]  578 	movx	@dptr,a
      002C7F E4               [12]  579 	clr	a
      002C80 A3               [24]  580 	inc	dptr
      002C81 F0               [24]  581 	movx	@dptr,a
                                    582 ;	eeprom.c:17: while(t) //ack polling
      002C82                        583 00101$:
      002C82 90 00 0D         [24]  584 	mov	dptr,#_byte_write_t_65537_91
      002C85 E0               [24]  585 	movx	a,@dptr
      002C86 F5 F0            [12]  586 	mov	b,a
      002C88 A3               [24]  587 	inc	dptr
      002C89 E0               [24]  588 	movx	a,@dptr
      002C8A 45 F0            [12]  589 	orl	a,b
      002C8C 60 2C            [24]  590 	jz	00103$
                                    591 ;	eeprom.c:20: restart_i2c();
      002C8E C0 07            [24]  592 	push	ar7
      002C90 C0 06            [24]  593 	push	ar6
      002C92 12 30 DC         [24]  594 	lcall	_restart_i2c
      002C95 D0 06            [24]  595 	pop	ar6
      002C97 D0 07            [24]  596 	pop	ar7
                                    597 ;	eeprom.c:21: t=i2c_write(controlcode);
      002C99 8E 82            [24]  598 	mov	dpl,r6
      002C9B 8F 83            [24]  599 	mov	dph,r7
      002C9D C0 07            [24]  600 	push	ar7
      002C9F C0 06            [24]  601 	push	ar6
      002CA1 12 30 E6         [24]  602 	lcall	_i2c_write
      002CA4 E5 82            [12]  603 	mov	a,dpl
      002CA6 85 83 F0         [24]  604 	mov	b,dph
      002CA9 90 00 0D         [24]  605 	mov	dptr,#_byte_write_t_65537_91
      002CAC F0               [24]  606 	movx	@dptr,a
      002CAD E5 F0            [12]  607 	mov	a,b
      002CAF A3               [24]  608 	inc	dptr
      002CB0 F0               [24]  609 	movx	@dptr,a
                                    610 ;	eeprom.c:22: delay();
      002CB1 12 30 99         [24]  611 	lcall	_delay
      002CB4 D0 06            [24]  612 	pop	ar6
      002CB6 D0 07            [24]  613 	pop	ar7
      002CB8 80 C8            [24]  614 	sjmp	00101$
      002CBA                        615 00103$:
                                    616 ;	eeprom.c:25: i2c_stop();
                                    617 ;	eeprom.c:26: }
      002CBA 02 30 B5         [24]  618 	ljmp	_i2c_stop
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'random_read'
                                    621 ;------------------------------------------------------------
                                    622 ;byte_address              Allocated with name '_random_read_PARM_2'
                                    623 ;controlcode               Allocated with name '_random_read_controlcode_65536_93'
                                    624 ;s                         Allocated with name '_random_read_s_65537_95'
                                    625 ;------------------------------------------------------------
                                    626 ;	eeprom.c:29: int random_read(uint8_t controlcode,uint8_t byte_address)
                                    627 ;	-----------------------------------------
                                    628 ;	 function random_read
                                    629 ;	-----------------------------------------
      002CBD                        630 _random_read:
      002CBD E5 82            [12]  631 	mov	a,dpl
      002CBF 90 00 10         [24]  632 	mov	dptr,#_random_read_controlcode_65536_93
      002CC2 F0               [24]  633 	movx	@dptr,a
                                    634 ;	eeprom.c:31: restart_i2c();
      002CC3 12 30 DC         [24]  635 	lcall	_restart_i2c
                                    636 ;	eeprom.c:32: i2c_write(controlcode);
      002CC6 90 00 10         [24]  637 	mov	dptr,#_random_read_controlcode_65536_93
      002CC9 E0               [24]  638 	movx	a,@dptr
      002CCA FF               [12]  639 	mov	r7,a
      002CCB 7E 00            [12]  640 	mov	r6,#0x00
      002CCD 8F 82            [24]  641 	mov	dpl,r7
      002CCF 8E 83            [24]  642 	mov	dph,r6
      002CD1 C0 07            [24]  643 	push	ar7
      002CD3 C0 06            [24]  644 	push	ar6
      002CD5 12 30 E6         [24]  645 	lcall	_i2c_write
                                    646 ;	eeprom.c:33: delay();
      002CD8 12 30 99         [24]  647 	lcall	_delay
                                    648 ;	eeprom.c:34: i2c_write(byte_address);
      002CDB 90 00 0F         [24]  649 	mov	dptr,#_random_read_PARM_2
      002CDE E0               [24]  650 	movx	a,@dptr
      002CDF FD               [12]  651 	mov	r5,a
      002CE0 7C 00            [12]  652 	mov	r4,#0x00
      002CE2 8D 82            [24]  653 	mov	dpl,r5
      002CE4 8C 83            [24]  654 	mov	dph,r4
      002CE6 12 30 E6         [24]  655 	lcall	_i2c_write
                                    656 ;	eeprom.c:35: delay();
      002CE9 12 30 99         [24]  657 	lcall	_delay
                                    658 ;	eeprom.c:36: restart_i2c();
      002CEC 12 30 DC         [24]  659 	lcall	_restart_i2c
      002CEF D0 06            [24]  660 	pop	ar6
      002CF1 D0 07            [24]  661 	pop	ar7
                                    662 ;	eeprom.c:37: i2c_write((controlcode+1)); //change to read operation
      002CF3 0F               [12]  663 	inc	r7
      002CF4 BF 00 01         [24]  664 	cjne	r7,#0x00,00103$
      002CF7 0E               [12]  665 	inc	r6
      002CF8                        666 00103$:
      002CF8 8F 82            [24]  667 	mov	dpl,r7
      002CFA 8E 83            [24]  668 	mov	dph,r6
      002CFC 12 30 E6         [24]  669 	lcall	_i2c_write
                                    670 ;	eeprom.c:39: s=i2c_read();
      002CFF 12 31 90         [24]  671 	lcall	_i2c_read
      002D02 AE 82            [24]  672 	mov	r6,dpl
      002D04 AF 83            [24]  673 	mov	r7,dph
                                    674 ;	eeprom.c:40: i2c_nack();
      002D06 C0 07            [24]  675 	push	ar7
      002D08 C0 06            [24]  676 	push	ar6
      002D0A 12 31 84         [24]  677 	lcall	_i2c_nack
                                    678 ;	eeprom.c:42: i2c_stop();
      002D0D 12 30 B5         [24]  679 	lcall	_i2c_stop
                                    680 ;	eeprom.c:45: long_delay();
      002D10 12 30 C1         [24]  681 	lcall	_long_delay
      002D13 D0 06            [24]  682 	pop	ar6
      002D15 D0 07            [24]  683 	pop	ar7
                                    684 ;	eeprom.c:46: return s;
      002D17 8E 82            [24]  685 	mov	dpl,r6
      002D19 8F 83            [24]  686 	mov	dph,r7
                                    687 ;	eeprom.c:48: }
      002D1B 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'seq_read'
                                    691 ;------------------------------------------------------------
                                    692 ;controlcode               Allocated with name '_seq_read_controlcode_65536_96'
                                    693 ;addressreceiver1          Allocated with name '_seq_read_addressreceiver1_65536_97'
                                    694 ;address1                  Allocated with name '_seq_read_address1_65537_98'
                                    695 ;address2                  Allocated with name '_seq_read_address2_65538_99'
                                    696 ;s                         Allocated with name '_seq_read_s_65539_100'
                                    697 ;k                         Allocated with name '_seq_read_k_65539_100'
                                    698 ;t                         Allocated with name '_seq_read_t_65540_101'
                                    699 ;------------------------------------------------------------
                                    700 ;	eeprom.c:49: void seq_read(uint8_t controlcode)
                                    701 ;	-----------------------------------------
                                    702 ;	 function seq_read
                                    703 ;	-----------------------------------------
      002D1C                        704 _seq_read:
      002D1C E5 82            [12]  705 	mov	a,dpl
      002D1E 90 00 11         [24]  706 	mov	dptr,#_seq_read_controlcode_65536_96
      002D21 F0               [24]  707 	movx	@dptr,a
                                    708 ;	eeprom.c:53: printf("Enter first address\n\r");
      002D22 74 7C            [12]  709 	mov	a,#___str_0
      002D24 C0 E0            [24]  710 	push	acc
      002D26 74 43            [12]  711 	mov	a,#(___str_0 >> 8)
      002D28 C0 E0            [24]  712 	push	acc
      002D2A 74 80            [12]  713 	mov	a,#0x80
      002D2C C0 E0            [24]  714 	push	acc
      002D2E 12 39 3A         [24]  715 	lcall	_printf
      002D31 15 81            [12]  716 	dec	sp
      002D33 15 81            [12]  717 	dec	sp
      002D35 15 81            [12]  718 	dec	sp
                                    719 ;	eeprom.c:54: gets(addressreceiver1);
      002D37 90 00 00         [24]  720 	mov	dptr,#0x0000
      002D3A 75 F0 00         [24]  721 	mov	b,#0x00
      002D3D 12 36 78         [24]  722 	lcall	_gets
                                    723 ;	eeprom.c:55: uint16_t address1=strtohex(addressreceiver1);
      002D40 90 00 00         [24]  724 	mov	dptr,#0x0000
      002D43 75 F0 00         [24]  725 	mov	b,#0x00
      002D46 12 25 C6         [24]  726 	lcall	_strtohex
      002D49 AE 82            [24]  727 	mov	r6,dpl
      002D4B AF 83            [24]  728 	mov	r7,dph
                                    729 ;	eeprom.c:56: printf("%address 1d\n\r",address1);
      002D4D C0 07            [24]  730 	push	ar7
      002D4F C0 06            [24]  731 	push	ar6
      002D51 C0 06            [24]  732 	push	ar6
      002D53 C0 07            [24]  733 	push	ar7
      002D55 74 92            [12]  734 	mov	a,#___str_1
      002D57 C0 E0            [24]  735 	push	acc
      002D59 74 43            [12]  736 	mov	a,#(___str_1 >> 8)
      002D5B C0 E0            [24]  737 	push	acc
      002D5D 74 80            [12]  738 	mov	a,#0x80
      002D5F C0 E0            [24]  739 	push	acc
      002D61 12 39 3A         [24]  740 	lcall	_printf
      002D64 E5 81            [12]  741 	mov	a,sp
      002D66 24 FB            [12]  742 	add	a,#0xfb
      002D68 F5 81            [12]  743 	mov	sp,a
                                    744 ;	eeprom.c:57: printf("Enter second address\n\r");
      002D6A 74 A0            [12]  745 	mov	a,#___str_2
      002D6C C0 E0            [24]  746 	push	acc
      002D6E 74 43            [12]  747 	mov	a,#(___str_2 >> 8)
      002D70 C0 E0            [24]  748 	push	acc
      002D72 74 80            [12]  749 	mov	a,#0x80
      002D74 C0 E0            [24]  750 	push	acc
      002D76 12 39 3A         [24]  751 	lcall	_printf
      002D79 15 81            [12]  752 	dec	sp
      002D7B 15 81            [12]  753 	dec	sp
      002D7D 15 81            [12]  754 	dec	sp
                                    755 ;	eeprom.c:58: gets(addressreceiver1);
      002D7F 90 00 00         [24]  756 	mov	dptr,#0x0000
      002D82 75 F0 00         [24]  757 	mov	b,#0x00
      002D85 12 36 78         [24]  758 	lcall	_gets
                                    759 ;	eeprom.c:59: uint16_t address2=strtohex(addressreceiver1);
      002D88 90 00 00         [24]  760 	mov	dptr,#0x0000
      002D8B 75 F0 00         [24]  761 	mov	b,#0x00
      002D8E 12 25 C6         [24]  762 	lcall	_strtohex
      002D91 AC 82            [24]  763 	mov	r4,dpl
      002D93 AD 83            [24]  764 	mov	r5,dph
                                    765 ;	eeprom.c:60: printf("%address 1d\n\r",address2);
      002D95 C0 05            [24]  766 	push	ar5
      002D97 C0 04            [24]  767 	push	ar4
      002D99 C0 04            [24]  768 	push	ar4
      002D9B C0 05            [24]  769 	push	ar5
      002D9D 74 92            [12]  770 	mov	a,#___str_1
      002D9F C0 E0            [24]  771 	push	acc
      002DA1 74 43            [12]  772 	mov	a,#(___str_1 >> 8)
      002DA3 C0 E0            [24]  773 	push	acc
      002DA5 74 80            [12]  774 	mov	a,#0x80
      002DA7 C0 E0            [24]  775 	push	acc
      002DA9 12 39 3A         [24]  776 	lcall	_printf
      002DAC E5 81            [12]  777 	mov	a,sp
      002DAE 24 FB            [12]  778 	add	a,#0xfb
      002DB0 F5 81            [12]  779 	mov	sp,a
      002DB2 D0 04            [24]  780 	pop	ar4
      002DB4 D0 05            [24]  781 	pop	ar5
      002DB6 D0 06            [24]  782 	pop	ar6
      002DB8 D0 07            [24]  783 	pop	ar7
                                    784 ;	eeprom.c:61: printf("%d %d\n\r",address1,address2);
      002DBA C0 07            [24]  785 	push	ar7
      002DBC C0 06            [24]  786 	push	ar6
      002DBE C0 05            [24]  787 	push	ar5
      002DC0 C0 04            [24]  788 	push	ar4
      002DC2 C0 04            [24]  789 	push	ar4
      002DC4 C0 05            [24]  790 	push	ar5
      002DC6 C0 06            [24]  791 	push	ar6
      002DC8 C0 07            [24]  792 	push	ar7
      002DCA 74 B7            [12]  793 	mov	a,#___str_3
      002DCC C0 E0            [24]  794 	push	acc
      002DCE 74 43            [12]  795 	mov	a,#(___str_3 >> 8)
      002DD0 C0 E0            [24]  796 	push	acc
      002DD2 74 80            [12]  797 	mov	a,#0x80
      002DD4 C0 E0            [24]  798 	push	acc
      002DD6 12 39 3A         [24]  799 	lcall	_printf
      002DD9 E5 81            [12]  800 	mov	a,sp
      002DDB 24 F9            [12]  801 	add	a,#0xf9
      002DDD F5 81            [12]  802 	mov	sp,a
      002DDF D0 04            [24]  803 	pop	ar4
      002DE1 D0 05            [24]  804 	pop	ar5
      002DE3 D0 06            [24]  805 	pop	ar6
      002DE5 D0 07            [24]  806 	pop	ar7
                                    807 ;	eeprom.c:62: printf("Starter: %d Ender %d\n\r",address1,address2);
      002DE7 C0 07            [24]  808 	push	ar7
      002DE9 C0 06            [24]  809 	push	ar6
      002DEB C0 05            [24]  810 	push	ar5
      002DED C0 04            [24]  811 	push	ar4
      002DEF C0 04            [24]  812 	push	ar4
      002DF1 C0 05            [24]  813 	push	ar5
      002DF3 C0 06            [24]  814 	push	ar6
      002DF5 C0 07            [24]  815 	push	ar7
      002DF7 74 BF            [12]  816 	mov	a,#___str_4
      002DF9 C0 E0            [24]  817 	push	acc
      002DFB 74 43            [12]  818 	mov	a,#(___str_4 >> 8)
      002DFD C0 E0            [24]  819 	push	acc
      002DFF 74 80            [12]  820 	mov	a,#0x80
      002E01 C0 E0            [24]  821 	push	acc
      002E03 12 39 3A         [24]  822 	lcall	_printf
      002E06 E5 81            [12]  823 	mov	a,sp
      002E08 24 F9            [12]  824 	add	a,#0xf9
      002E0A F5 81            [12]  825 	mov	sp,a
      002E0C D0 04            [24]  826 	pop	ar4
      002E0E D0 05            [24]  827 	pop	ar5
      002E10 D0 06            [24]  828 	pop	ar6
      002E12 D0 07            [24]  829 	pop	ar7
                                    830 ;	eeprom.c:63: printf("difference is %d\n\r",address2-address1);
      002E14 EC               [12]  831 	mov	a,r4
      002E15 C3               [12]  832 	clr	c
      002E16 9E               [12]  833 	subb	a,r6
      002E17 FA               [12]  834 	mov	r2,a
      002E18 ED               [12]  835 	mov	a,r5
      002E19 9F               [12]  836 	subb	a,r7
      002E1A FB               [12]  837 	mov	r3,a
      002E1B C0 07            [24]  838 	push	ar7
      002E1D C0 06            [24]  839 	push	ar6
      002E1F C0 05            [24]  840 	push	ar5
      002E21 C0 04            [24]  841 	push	ar4
      002E23 C0 02            [24]  842 	push	ar2
      002E25 C0 03            [24]  843 	push	ar3
      002E27 74 D6            [12]  844 	mov	a,#___str_5
      002E29 C0 E0            [24]  845 	push	acc
      002E2B 74 43            [12]  846 	mov	a,#(___str_5 >> 8)
      002E2D C0 E0            [24]  847 	push	acc
      002E2F 74 80            [12]  848 	mov	a,#0x80
      002E31 C0 E0            [24]  849 	push	acc
      002E33 12 39 3A         [24]  850 	lcall	_printf
      002E36 E5 81            [12]  851 	mov	a,sp
      002E38 24 FB            [12]  852 	add	a,#0xfb
      002E3A F5 81            [12]  853 	mov	sp,a
                                    854 ;	eeprom.c:67: restart_i2c();
      002E3C 12 30 DC         [24]  855 	lcall	_restart_i2c
                                    856 ;	eeprom.c:68: i2c_write(0xFF);
      002E3F 90 00 FF         [24]  857 	mov	dptr,#0x00ff
      002E42 12 30 E6         [24]  858 	lcall	_i2c_write
                                    859 ;	eeprom.c:69: i2c_nack();
      002E45 12 31 84         [24]  860 	lcall	_i2c_nack
                                    861 ;	eeprom.c:70: restart_i2c();
      002E48 12 30 DC         [24]  862 	lcall	_restart_i2c
                                    863 ;	eeprom.c:71: i2c_stop();
      002E4B 12 30 B5         [24]  864 	lcall	_i2c_stop
                                    865 ;	eeprom.c:72: restart_i2c();
      002E4E 12 30 DC         [24]  866 	lcall	_restart_i2c
                                    867 ;	eeprom.c:73: i2c_write(controlcode);
      002E51 90 00 11         [24]  868 	mov	dptr,#_seq_read_controlcode_65536_96
      002E54 E0               [24]  869 	movx	a,@dptr
      002E55 FB               [12]  870 	mov	r3,a
      002E56 7A 00            [12]  871 	mov	r2,#0x00
      002E58 8B 82            [24]  872 	mov	dpl,r3
      002E5A 8A 83            [24]  873 	mov	dph,r2
      002E5C C0 03            [24]  874 	push	ar3
      002E5E C0 02            [24]  875 	push	ar2
      002E60 12 30 E6         [24]  876 	lcall	_i2c_write
                                    877 ;	eeprom.c:74: delay();
      002E63 12 30 99         [24]  878 	lcall	_delay
      002E66 D0 02            [24]  879 	pop	ar2
      002E68 D0 03            [24]  880 	pop	ar3
      002E6A D0 04            [24]  881 	pop	ar4
      002E6C D0 05            [24]  882 	pop	ar5
      002E6E D0 06            [24]  883 	pop	ar6
      002E70 D0 07            [24]  884 	pop	ar7
                                    885 ;	eeprom.c:75: i2c_write(address1);
      002E72 8E 82            [24]  886 	mov	dpl,r6
      002E74 8F 83            [24]  887 	mov	dph,r7
      002E76 C0 07            [24]  888 	push	ar7
      002E78 C0 06            [24]  889 	push	ar6
      002E7A C0 05            [24]  890 	push	ar5
      002E7C C0 04            [24]  891 	push	ar4
      002E7E C0 03            [24]  892 	push	ar3
      002E80 C0 02            [24]  893 	push	ar2
      002E82 12 30 E6         [24]  894 	lcall	_i2c_write
                                    895 ;	eeprom.c:76: delay();
      002E85 12 30 99         [24]  896 	lcall	_delay
                                    897 ;	eeprom.c:77: restart_i2c();
      002E88 12 30 DC         [24]  898 	lcall	_restart_i2c
      002E8B D0 02            [24]  899 	pop	ar2
      002E8D D0 03            [24]  900 	pop	ar3
      002E8F D0 04            [24]  901 	pop	ar4
      002E91 D0 05            [24]  902 	pop	ar5
      002E93 D0 06            [24]  903 	pop	ar6
      002E95 D0 07            [24]  904 	pop	ar7
                                    905 ;	eeprom.c:80: i2c_write((controlcode+1));//change to read operation
      002E97 0B               [12]  906 	inc	r3
      002E98 BB 00 01         [24]  907 	cjne	r3,#0x00,00127$
      002E9B 0A               [12]  908 	inc	r2
      002E9C                        909 00127$:
      002E9C 8B 82            [24]  910 	mov	dpl,r3
      002E9E 8A 83            [24]  911 	mov	dph,r2
      002EA0 C0 07            [24]  912 	push	ar7
      002EA2 C0 06            [24]  913 	push	ar6
      002EA4 C0 05            [24]  914 	push	ar5
      002EA6 C0 04            [24]  915 	push	ar4
      002EA8 12 30 E6         [24]  916 	lcall	_i2c_write
      002EAB D0 04            [24]  917 	pop	ar4
      002EAD D0 05            [24]  918 	pop	ar5
      002EAF D0 06            [24]  919 	pop	ar6
      002EB1 D0 07            [24]  920 	pop	ar7
                                    921 ;	eeprom.c:87: while(t<(address2))
      002EB3 7A 00            [12]  922 	mov	r2,#0x00
      002EB5 7B 00            [12]  923 	mov	r3,#0x00
      002EB7                        924 00103$:
      002EB7 C3               [12]  925 	clr	c
      002EB8 EE               [12]  926 	mov	a,r6
      002EB9 9C               [12]  927 	subb	a,r4
      002EBA EF               [12]  928 	mov	a,r7
      002EBB 9D               [12]  929 	subb	a,r5
      002EBC 40 03            [24]  930 	jc	00128$
      002EBE 02 2F B8         [24]  931 	ljmp	00105$
      002EC1                        932 00128$:
                                    933 ;	eeprom.c:89: if(k%16==0)
      002EC1 90 00 36         [24]  934 	mov	dptr,#__modsint_PARM_2
      002EC4 74 10            [12]  935 	mov	a,#0x10
      002EC6 F0               [24]  936 	movx	@dptr,a
      002EC7 E4               [12]  937 	clr	a
      002EC8 A3               [24]  938 	inc	dptr
      002EC9 F0               [24]  939 	movx	@dptr,a
      002ECA 8A 82            [24]  940 	mov	dpl,r2
      002ECC 8B 83            [24]  941 	mov	dph,r3
      002ECE C0 07            [24]  942 	push	ar7
      002ED0 C0 06            [24]  943 	push	ar6
      002ED2 C0 05            [24]  944 	push	ar5
      002ED4 C0 04            [24]  945 	push	ar4
      002ED6 C0 03            [24]  946 	push	ar3
      002ED8 C0 02            [24]  947 	push	ar2
      002EDA 12 37 9D         [24]  948 	lcall	__modsint
      002EDD E5 82            [12]  949 	mov	a,dpl
      002EDF 85 83 F0         [24]  950 	mov	b,dph
      002EE2 D0 02            [24]  951 	pop	ar2
      002EE4 D0 03            [24]  952 	pop	ar3
      002EE6 D0 04            [24]  953 	pop	ar4
      002EE8 D0 05            [24]  954 	pop	ar5
      002EEA D0 06            [24]  955 	pop	ar6
      002EEC D0 07            [24]  956 	pop	ar7
      002EEE 45 F0            [12]  957 	orl	a,b
      002EF0 70 5E            [24]  958 	jnz	00102$
                                    959 ;	eeprom.c:91: printf("\n\r");
      002EF2 C0 07            [24]  960 	push	ar7
      002EF4 C0 06            [24]  961 	push	ar6
      002EF6 C0 05            [24]  962 	push	ar5
      002EF8 C0 04            [24]  963 	push	ar4
      002EFA C0 03            [24]  964 	push	ar3
      002EFC C0 02            [24]  965 	push	ar2
      002EFE 74 E9            [12]  966 	mov	a,#___str_6
      002F00 C0 E0            [24]  967 	push	acc
      002F02 74 43            [12]  968 	mov	a,#(___str_6 >> 8)
      002F04 C0 E0            [24]  969 	push	acc
      002F06 74 80            [12]  970 	mov	a,#0x80
      002F08 C0 E0            [24]  971 	push	acc
      002F0A 12 39 3A         [24]  972 	lcall	_printf
      002F0D 15 81            [12]  973 	dec	sp
      002F0F 15 81            [12]  974 	dec	sp
      002F11 15 81            [12]  975 	dec	sp
      002F13 D0 02            [24]  976 	pop	ar2
      002F15 D0 03            [24]  977 	pop	ar3
      002F17 D0 04            [24]  978 	pop	ar4
      002F19 D0 05            [24]  979 	pop	ar5
      002F1B D0 06            [24]  980 	pop	ar6
      002F1D D0 07            [24]  981 	pop	ar7
                                    982 ;	eeprom.c:92: printf("%3X:",t);
      002F1F C0 07            [24]  983 	push	ar7
      002F21 C0 06            [24]  984 	push	ar6
      002F23 C0 05            [24]  985 	push	ar5
      002F25 C0 04            [24]  986 	push	ar4
      002F27 C0 03            [24]  987 	push	ar3
      002F29 C0 02            [24]  988 	push	ar2
      002F2B C0 06            [24]  989 	push	ar6
      002F2D C0 07            [24]  990 	push	ar7
      002F2F 74 EC            [12]  991 	mov	a,#___str_7
      002F31 C0 E0            [24]  992 	push	acc
      002F33 74 43            [12]  993 	mov	a,#(___str_7 >> 8)
      002F35 C0 E0            [24]  994 	push	acc
      002F37 74 80            [12]  995 	mov	a,#0x80
      002F39 C0 E0            [24]  996 	push	acc
      002F3B 12 39 3A         [24]  997 	lcall	_printf
      002F3E E5 81            [12]  998 	mov	a,sp
      002F40 24 FB            [12]  999 	add	a,#0xfb
      002F42 F5 81            [12] 1000 	mov	sp,a
      002F44 D0 02            [24] 1001 	pop	ar2
      002F46 D0 03            [24] 1002 	pop	ar3
      002F48 D0 04            [24] 1003 	pop	ar4
      002F4A D0 05            [24] 1004 	pop	ar5
      002F4C D0 06            [24] 1005 	pop	ar6
      002F4E D0 07            [24] 1006 	pop	ar7
      002F50                       1007 00102$:
                                   1008 ;	eeprom.c:94: s=i2c_read();
      002F50 C0 07            [24] 1009 	push	ar7
      002F52 C0 06            [24] 1010 	push	ar6
      002F54 C0 05            [24] 1011 	push	ar5
      002F56 C0 04            [24] 1012 	push	ar4
      002F58 C0 03            [24] 1013 	push	ar3
      002F5A C0 02            [24] 1014 	push	ar2
      002F5C 12 31 90         [24] 1015 	lcall	_i2c_read
      002F5F A8 82            [24] 1016 	mov	r0,dpl
      002F61 A9 83            [24] 1017 	mov	r1,dph
                                   1018 ;	eeprom.c:95: i2c_ack();
      002F63 C0 01            [24] 1019 	push	ar1
      002F65 C0 00            [24] 1020 	push	ar0
      002F67 12 31 75         [24] 1021 	lcall	_i2c_ack
      002F6A D0 00            [24] 1022 	pop	ar0
      002F6C D0 01            [24] 1023 	pop	ar1
      002F6E D0 02            [24] 1024 	pop	ar2
      002F70 D0 03            [24] 1025 	pop	ar3
      002F72 D0 04            [24] 1026 	pop	ar4
      002F74 D0 05            [24] 1027 	pop	ar5
      002F76 D0 06            [24] 1028 	pop	ar6
      002F78 D0 07            [24] 1029 	pop	ar7
                                   1030 ;	eeprom.c:96: k++;
      002F7A 0A               [12] 1031 	inc	r2
      002F7B BA 00 01         [24] 1032 	cjne	r2,#0x00,00130$
      002F7E 0B               [12] 1033 	inc	r3
      002F7F                       1034 00130$:
                                   1035 ;	eeprom.c:97: printf(" %X ",s);
      002F7F C0 07            [24] 1036 	push	ar7
      002F81 C0 06            [24] 1037 	push	ar6
      002F83 C0 05            [24] 1038 	push	ar5
      002F85 C0 04            [24] 1039 	push	ar4
      002F87 C0 03            [24] 1040 	push	ar3
      002F89 C0 02            [24] 1041 	push	ar2
      002F8B C0 00            [24] 1042 	push	ar0
      002F8D C0 01            [24] 1043 	push	ar1
      002F8F 74 F1            [12] 1044 	mov	a,#___str_8
      002F91 C0 E0            [24] 1045 	push	acc
      002F93 74 43            [12] 1046 	mov	a,#(___str_8 >> 8)
      002F95 C0 E0            [24] 1047 	push	acc
      002F97 74 80            [12] 1048 	mov	a,#0x80
      002F99 C0 E0            [24] 1049 	push	acc
      002F9B 12 39 3A         [24] 1050 	lcall	_printf
      002F9E E5 81            [12] 1051 	mov	a,sp
      002FA0 24 FB            [12] 1052 	add	a,#0xfb
      002FA2 F5 81            [12] 1053 	mov	sp,a
      002FA4 D0 02            [24] 1054 	pop	ar2
      002FA6 D0 03            [24] 1055 	pop	ar3
      002FA8 D0 04            [24] 1056 	pop	ar4
      002FAA D0 05            [24] 1057 	pop	ar5
      002FAC D0 06            [24] 1058 	pop	ar6
      002FAE D0 07            [24] 1059 	pop	ar7
                                   1060 ;	eeprom.c:98: t++;
      002FB0 0E               [12] 1061 	inc	r6
      002FB1 BE 00 01         [24] 1062 	cjne	r6,#0x00,00131$
      002FB4 0F               [12] 1063 	inc	r7
      002FB5                       1064 00131$:
      002FB5 02 2E B7         [24] 1065 	ljmp	00103$
      002FB8                       1066 00105$:
                                   1067 ;	eeprom.c:101: s=i2c_read();
      002FB8 C0 07            [24] 1068 	push	ar7
      002FBA C0 06            [24] 1069 	push	ar6
      002FBC C0 03            [24] 1070 	push	ar3
      002FBE C0 02            [24] 1071 	push	ar2
      002FC0 12 31 90         [24] 1072 	lcall	_i2c_read
      002FC3 AC 82            [24] 1073 	mov	r4,dpl
      002FC5 AD 83            [24] 1074 	mov	r5,dph
      002FC7 D0 02            [24] 1075 	pop	ar2
      002FC9 D0 03            [24] 1076 	pop	ar3
                                   1077 ;	eeprom.c:102: i2c_nack();
      002FCB C0 05            [24] 1078 	push	ar5
      002FCD C0 04            [24] 1079 	push	ar4
      002FCF C0 03            [24] 1080 	push	ar3
      002FD1 C0 02            [24] 1081 	push	ar2
      002FD3 12 31 84         [24] 1082 	lcall	_i2c_nack
                                   1083 ;	eeprom.c:103: i2c_stop();
      002FD6 12 30 B5         [24] 1084 	lcall	_i2c_stop
      002FD9 D0 02            [24] 1085 	pop	ar2
      002FDB D0 03            [24] 1086 	pop	ar3
      002FDD D0 04            [24] 1087 	pop	ar4
      002FDF D0 05            [24] 1088 	pop	ar5
      002FE1 D0 06            [24] 1089 	pop	ar6
      002FE3 D0 07            [24] 1090 	pop	ar7
                                   1091 ;	eeprom.c:104: k++;
      002FE5 0A               [12] 1092 	inc	r2
      002FE6 BA 00 01         [24] 1093 	cjne	r2,#0x00,00132$
      002FE9 0B               [12] 1094 	inc	r3
      002FEA                       1095 00132$:
                                   1096 ;	eeprom.c:105: if(k%16==0)
      002FEA 90 00 36         [24] 1097 	mov	dptr,#__modsint_PARM_2
      002FED 74 10            [12] 1098 	mov	a,#0x10
      002FEF F0               [24] 1099 	movx	@dptr,a
      002FF0 E4               [12] 1100 	clr	a
      002FF1 A3               [24] 1101 	inc	dptr
      002FF2 F0               [24] 1102 	movx	@dptr,a
      002FF3 8A 82            [24] 1103 	mov	dpl,r2
      002FF5 8B 83            [24] 1104 	mov	dph,r3
      002FF7 C0 07            [24] 1105 	push	ar7
      002FF9 C0 06            [24] 1106 	push	ar6
      002FFB C0 05            [24] 1107 	push	ar5
      002FFD C0 04            [24] 1108 	push	ar4
      002FFF 12 37 9D         [24] 1109 	lcall	__modsint
      003002 E5 82            [12] 1110 	mov	a,dpl
      003004 85 83 F0         [24] 1111 	mov	b,dph
      003007 D0 04            [24] 1112 	pop	ar4
      003009 D0 05            [24] 1113 	pop	ar5
      00300B D0 06            [24] 1114 	pop	ar6
      00300D D0 07            [24] 1115 	pop	ar7
      00300F 45 F0            [12] 1116 	orl	a,b
      003011 70 46            [24] 1117 	jnz	00107$
                                   1118 ;	eeprom.c:107: printf("\n\r");
      003013 C0 07            [24] 1119 	push	ar7
      003015 C0 06            [24] 1120 	push	ar6
      003017 C0 05            [24] 1121 	push	ar5
      003019 C0 04            [24] 1122 	push	ar4
      00301B 74 E9            [12] 1123 	mov	a,#___str_6
      00301D C0 E0            [24] 1124 	push	acc
      00301F 74 43            [12] 1125 	mov	a,#(___str_6 >> 8)
      003021 C0 E0            [24] 1126 	push	acc
      003023 74 80            [12] 1127 	mov	a,#0x80
      003025 C0 E0            [24] 1128 	push	acc
      003027 12 39 3A         [24] 1129 	lcall	_printf
      00302A 15 81            [12] 1130 	dec	sp
      00302C 15 81            [12] 1131 	dec	sp
      00302E 15 81            [12] 1132 	dec	sp
      003030 D0 04            [24] 1133 	pop	ar4
      003032 D0 05            [24] 1134 	pop	ar5
      003034 D0 06            [24] 1135 	pop	ar6
      003036 D0 07            [24] 1136 	pop	ar7
                                   1137 ;	eeprom.c:108: printf("%X:",t);
      003038 C0 05            [24] 1138 	push	ar5
      00303A C0 04            [24] 1139 	push	ar4
      00303C C0 06            [24] 1140 	push	ar6
      00303E C0 07            [24] 1141 	push	ar7
      003040 74 F6            [12] 1142 	mov	a,#___str_9
      003042 C0 E0            [24] 1143 	push	acc
      003044 74 43            [12] 1144 	mov	a,#(___str_9 >> 8)
      003046 C0 E0            [24] 1145 	push	acc
      003048 74 80            [12] 1146 	mov	a,#0x80
      00304A C0 E0            [24] 1147 	push	acc
      00304C 12 39 3A         [24] 1148 	lcall	_printf
      00304F E5 81            [12] 1149 	mov	a,sp
      003051 24 FB            [12] 1150 	add	a,#0xfb
      003053 F5 81            [12] 1151 	mov	sp,a
      003055 D0 04            [24] 1152 	pop	ar4
      003057 D0 05            [24] 1153 	pop	ar5
      003059                       1154 00107$:
                                   1155 ;	eeprom.c:110: printf(" %X ",s);
      003059 C0 04            [24] 1156 	push	ar4
      00305B C0 05            [24] 1157 	push	ar5
      00305D 74 F1            [12] 1158 	mov	a,#___str_8
      00305F C0 E0            [24] 1159 	push	acc
      003061 74 43            [12] 1160 	mov	a,#(___str_8 >> 8)
      003063 C0 E0            [24] 1161 	push	acc
      003065 74 80            [12] 1162 	mov	a,#0x80
      003067 C0 E0            [24] 1163 	push	acc
      003069 12 39 3A         [24] 1164 	lcall	_printf
      00306C E5 81            [12] 1165 	mov	a,sp
      00306E 24 FB            [12] 1166 	add	a,#0xfb
      003070 F5 81            [12] 1167 	mov	sp,a
                                   1168 ;	eeprom.c:111: printf(newl);
      003072 74 E9            [12] 1169 	mov	a,#___str_6
      003074 C0 E0            [24] 1170 	push	acc
      003076 74 43            [12] 1171 	mov	a,#(___str_6 >> 8)
      003078 C0 E0            [24] 1172 	push	acc
      00307A 74 80            [12] 1173 	mov	a,#0x80
      00307C C0 E0            [24] 1174 	push	acc
      00307E 12 39 3A         [24] 1175 	lcall	_printf
      003081 15 81            [12] 1176 	dec	sp
      003083 15 81            [12] 1177 	dec	sp
      003085 15 81            [12] 1178 	dec	sp
                                   1179 ;	eeprom.c:112: restart_i2c();
      003087 12 30 DC         [24] 1180 	lcall	_restart_i2c
                                   1181 ;	eeprom.c:113: i2c_write(0xFF);
      00308A 90 00 FF         [24] 1182 	mov	dptr,#0x00ff
      00308D 12 30 E6         [24] 1183 	lcall	_i2c_write
                                   1184 ;	eeprom.c:114: i2c_nack();
      003090 12 31 84         [24] 1185 	lcall	_i2c_nack
                                   1186 ;	eeprom.c:115: restart_i2c();
      003093 12 30 DC         [24] 1187 	lcall	_restart_i2c
                                   1188 ;	eeprom.c:116: i2c_stop();
                                   1189 ;	eeprom.c:119: }
      003096 02 30 B5         [24] 1190 	ljmp	_i2c_stop
                                   1191 	.area CSEG    (CODE)
                                   1192 	.area CONST   (CODE)
                                   1193 	.area CONST   (CODE)
      00437C                       1194 ___str_0:
      00437C 45 6E 74 65 72 20 66  1195 	.ascii "Enter first address"
             69 72 73 74 20 61 64
             64 72 65 73 73
      00438F 0A                    1196 	.db 0x0a
      004390 0D                    1197 	.db 0x0d
      004391 00                    1198 	.db 0x00
                                   1199 	.area CSEG    (CODE)
                                   1200 	.area CONST   (CODE)
      004392                       1201 ___str_1:
      004392 25 61 64 64 72 65 73  1202 	.ascii "%address 1d"
             73 20 31 64
      00439D 0A                    1203 	.db 0x0a
      00439E 0D                    1204 	.db 0x0d
      00439F 00                    1205 	.db 0x00
                                   1206 	.area CSEG    (CODE)
                                   1207 	.area CONST   (CODE)
      0043A0                       1208 ___str_2:
      0043A0 45 6E 74 65 72 20 73  1209 	.ascii "Enter second address"
             65 63 6F 6E 64 20 61
             64 64 72 65 73 73
      0043B4 0A                    1210 	.db 0x0a
      0043B5 0D                    1211 	.db 0x0d
      0043B6 00                    1212 	.db 0x00
                                   1213 	.area CSEG    (CODE)
                                   1214 	.area CONST   (CODE)
      0043B7                       1215 ___str_3:
      0043B7 25 64 20 25 64        1216 	.ascii "%d %d"
      0043BC 0A                    1217 	.db 0x0a
      0043BD 0D                    1218 	.db 0x0d
      0043BE 00                    1219 	.db 0x00
                                   1220 	.area CSEG    (CODE)
                                   1221 	.area CONST   (CODE)
      0043BF                       1222 ___str_4:
      0043BF 53 74 61 72 74 65 72  1223 	.ascii "Starter: %d Ender %d"
             3A 20 25 64 20 45 6E
             64 65 72 20 25 64
      0043D3 0A                    1224 	.db 0x0a
      0043D4 0D                    1225 	.db 0x0d
      0043D5 00                    1226 	.db 0x00
                                   1227 	.area CSEG    (CODE)
                                   1228 	.area CONST   (CODE)
      0043D6                       1229 ___str_5:
      0043D6 64 69 66 66 65 72 65  1230 	.ascii "difference is %d"
             6E 63 65 20 69 73 20
             25 64
      0043E6 0A                    1231 	.db 0x0a
      0043E7 0D                    1232 	.db 0x0d
      0043E8 00                    1233 	.db 0x00
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      0043E9                       1236 ___str_6:
      0043E9 0A                    1237 	.db 0x0a
      0043EA 0D                    1238 	.db 0x0d
      0043EB 00                    1239 	.db 0x00
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      0043EC                       1242 ___str_7:
      0043EC 25 33 58 3A           1243 	.ascii "%3X:"
      0043F0 00                    1244 	.db 0x00
                                   1245 	.area CSEG    (CODE)
                                   1246 	.area CONST   (CODE)
      0043F1                       1247 ___str_8:
      0043F1 20 25 58 20           1248 	.ascii " %X "
      0043F5 00                    1249 	.db 0x00
                                   1250 	.area CSEG    (CODE)
                                   1251 	.area CONST   (CODE)
      0043F6                       1252 ___str_9:
      0043F6 25 58 3A              1253 	.ascii "%X:"
      0043F9 00                    1254 	.db 0x00
                                   1255 	.area CSEG    (CODE)
                                   1256 	.area XINIT   (CODE)
                                   1257 	.area CABS    (ABS,CODE)
