   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
  21  0004               _CLKPrescTable:
  22  0004 01            	dc.b	1
  23  0005 02            	dc.b	2
  24  0006 04            	dc.b	4
  25  0007 08            	dc.b	8
  26  0008 0a            	dc.b	10
  27  0009 10            	dc.b	16
  28  000a 14            	dc.b	20
  29  000b 28            	dc.b	40
  58                     ; 66 void CLK_DeInit(void)
  58                     ; 67 {
  59                     	switch	.text
  60  0000               f_CLK_DeInit:
  64                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  66  0000 350150c0      	mov	20672,#1
  67                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  69  0004 725f50c1      	clr	20673
  70                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  72  0008 35e150c4      	mov	20676,#225
  73                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  75  000c 725f50c5      	clr	20677
  76                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  78  0010 351850c6      	mov	20678,#24
  79                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  81  0014 35ff50c7      	mov	20679,#255
  82                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  84  0018 35ff50ca      	mov	20682,#255
  85                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  87  001c 725f50c8      	clr	20680
  88                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  90  0020 725f50c9      	clr	20681
  92  0024               L52:
  93                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  95  0024 c650c9        	ld	a,20681
  96  0027 a501          	bcp	a,#1
  97  0029 26f9          	jrne	L52
  98                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 100  002b 725f50c9      	clr	20681
 101                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 103  002f 725f50cc      	clr	20684
 104                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 106  0033 725f50cd      	clr	20685
 107                     ; 84 }
 110  0037 87            	retf
 165                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 165                     ; 96 {
 166                     	switch	.text
 167  0038               f_CLK_FastHaltWakeUpCmd:
 171                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 173                     ; 101     if (NewState != DISABLE)
 175  0038 4d            	tnz	a
 176  0039 2706          	jreq	L75
 177                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 179  003b 721450c0      	bset	20672,#2
 181  003f 2004          	jra	L16
 182  0041               L75:
 183                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 185  0041 721550c0      	bres	20672,#2
 186  0045               L16:
 187                     ; 112 }
 190  0045 87            	retf
 224                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 224                     ; 120 {
 225                     	switch	.text
 226  0046               f_CLK_HSECmd:
 230                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 232                     ; 125     if (NewState != DISABLE)
 234  0046 4d            	tnz	a
 235  0047 2706          	jreq	L101
 236                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 238  0049 721050c1      	bset	20673,#0
 240  004d 2004          	jra	L301
 241  004f               L101:
 242                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 244  004f 721150c1      	bres	20673,#0
 245  0053               L301:
 246                     ; 136 }
 249  0053 87            	retf
 283                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 283                     ; 144 {
 284                     	switch	.text
 285  0054               f_CLK_HSICmd:
 289                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 291                     ; 149     if (NewState != DISABLE)
 293  0054 4d            	tnz	a
 294  0055 2706          	jreq	L321
 295                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 297  0057 721050c0      	bset	20672,#0
 299  005b 2004          	jra	L521
 300  005d               L321:
 301                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 303  005d 721150c0      	bres	20672,#0
 304  0061               L521:
 305                     ; 160 }
 308  0061 87            	retf
 342                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 342                     ; 168 {
 343                     	switch	.text
 344  0062               f_CLK_LSICmd:
 348                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 350                     ; 173     if (NewState != DISABLE)
 352  0062 4d            	tnz	a
 353  0063 2706          	jreq	L541
 354                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 356  0065 721650c0      	bset	20672,#3
 358  0069 2004          	jra	L741
 359  006b               L541:
 360                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 362  006b 721750c0      	bres	20672,#3
 363  006f               L741:
 364                     ; 184 }
 367  006f 87            	retf
 401                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 401                     ; 193 {
 402                     	switch	.text
 403  0070               f_CLK_CCOCmd:
 407                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 409                     ; 198     if (NewState != DISABLE)
 411  0070 4d            	tnz	a
 412  0071 2706          	jreq	L761
 413                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 415  0073 721050c9      	bset	20681,#0
 417  0077 2004          	jra	L171
 418  0079               L761:
 419                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 421  0079 721150c9      	bres	20681,#0
 422  007d               L171:
 423                     ; 209 }
 426  007d 87            	retf
 460                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 460                     ; 219 {
 461                     	switch	.text
 462  007e               f_CLK_ClockSwitchCmd:
 466                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 468                     ; 224     if (NewState != DISABLE )
 470  007e 4d            	tnz	a
 471  007f 2706          	jreq	L112
 472                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 474  0081 721250c5      	bset	20677,#1
 476  0085 2004          	jra	L312
 477  0087               L112:
 478                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 480  0087 721350c5      	bres	20677,#1
 481  008b               L312:
 482                     ; 235 }
 485  008b 87            	retf
 520                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 520                     ; 246 {
 521                     	switch	.text
 522  008c               f_CLK_SlowActiveHaltWakeUpCmd:
 526                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 528                     ; 251     if (NewState != DISABLE)
 530  008c 4d            	tnz	a
 531  008d 2706          	jreq	L332
 532                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 534  008f 721a50c0      	bset	20672,#5
 536  0093 2004          	jra	L532
 537  0095               L332:
 538                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 540  0095 721b50c0      	bres	20672,#5
 541  0099               L532:
 542                     ; 262 }
 545  0099 87            	retf
 703                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 703                     ; 273 {
 704                     	switch	.text
 705  009a               f_CLK_PeripheralClockConfig:
 707  009a 89            	pushw	x
 708       00000000      OFST:	set	0
 711                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 713                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 715                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 717  009b 9e            	ld	a,xh
 718  009c a510          	bcp	a,#16
 719  009e 2633          	jrne	L123
 720                     ; 281         if (NewState != DISABLE)
 722  00a0 0d02          	tnz	(OFST+2,sp)
 723  00a2 2717          	jreq	L323
 724                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 726  00a4 7b01          	ld	a,(OFST+1,sp)
 727  00a6 a40f          	and	a,#15
 728  00a8 5f            	clrw	x
 729  00a9 97            	ld	xl,a
 730  00aa a601          	ld	a,#1
 731  00ac 5d            	tnzw	x
 732  00ad 2704          	jreq	L62
 733  00af               L03:
 734  00af 48            	sll	a
 735  00b0 5a            	decw	x
 736  00b1 26fc          	jrne	L03
 737  00b3               L62:
 738  00b3 ca50c7        	or	a,20679
 739  00b6 c750c7        	ld	20679,a
 741  00b9 2049          	jra	L723
 742  00bb               L323:
 743                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 745  00bb 7b01          	ld	a,(OFST+1,sp)
 746  00bd a40f          	and	a,#15
 747  00bf 5f            	clrw	x
 748  00c0 97            	ld	xl,a
 749  00c1 a601          	ld	a,#1
 750  00c3 5d            	tnzw	x
 751  00c4 2704          	jreq	L23
 752  00c6               L43:
 753  00c6 48            	sll	a
 754  00c7 5a            	decw	x
 755  00c8 26fc          	jrne	L43
 756  00ca               L23:
 757  00ca 43            	cpl	a
 758  00cb c450c7        	and	a,20679
 759  00ce c750c7        	ld	20679,a
 760  00d1 2031          	jra	L723
 761  00d3               L123:
 762                     ; 294         if (NewState != DISABLE)
 764  00d3 0d02          	tnz	(OFST+2,sp)
 765  00d5 2717          	jreq	L133
 766                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 768  00d7 7b01          	ld	a,(OFST+1,sp)
 769  00d9 a40f          	and	a,#15
 770  00db 5f            	clrw	x
 771  00dc 97            	ld	xl,a
 772  00dd a601          	ld	a,#1
 773  00df 5d            	tnzw	x
 774  00e0 2704          	jreq	L63
 775  00e2               L04:
 776  00e2 48            	sll	a
 777  00e3 5a            	decw	x
 778  00e4 26fc          	jrne	L04
 779  00e6               L63:
 780  00e6 ca50ca        	or	a,20682
 781  00e9 c750ca        	ld	20682,a
 783  00ec 2016          	jra	L723
 784  00ee               L133:
 785                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 787  00ee 7b01          	ld	a,(OFST+1,sp)
 788  00f0 a40f          	and	a,#15
 789  00f2 5f            	clrw	x
 790  00f3 97            	ld	xl,a
 791  00f4 a601          	ld	a,#1
 792  00f6 5d            	tnzw	x
 793  00f7 2704          	jreq	L24
 794  00f9               L44:
 795  00f9 48            	sll	a
 796  00fa 5a            	decw	x
 797  00fb 26fc          	jrne	L44
 798  00fd               L24:
 799  00fd 43            	cpl	a
 800  00fe c450ca        	and	a,20682
 801  0101 c750ca        	ld	20682,a
 802  0104               L723:
 803                     ; 306 }
 806  0104 85            	popw	x
 807  0105 87            	retf
 992                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
 992                     ; 320 {
 993                     	switch	.text
 994  0106               f_CLK_ClockSwitchConfig:
 996  0106 89            	pushw	x
 997  0107 5204          	subw	sp,#4
 998       00000004      OFST:	set	4
1001                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1003  0109 ae0491        	ldw	x,#1169
1004  010c 1f03          	ldw	(OFST-1,sp),x
1005                     ; 324     ErrorStatus Swif = ERROR;
1007                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1009                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1011                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1013                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1015                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1017  010e c650c3        	ld	a,20675
1018  0111 6b01          	ld	(OFST-3,sp),a
1019                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1021  0113 7b05          	ld	a,(OFST+1,sp)
1022  0115 a101          	cp	a,#1
1023  0117 2639          	jrne	L344
1024                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1026  0119 721250c5      	bset	20677,#1
1027                     ; 343         if (ITState != DISABLE)
1029  011d 0d0a          	tnz	(OFST+6,sp)
1030  011f 2706          	jreq	L544
1031                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1033  0121 721450c5      	bset	20677,#2
1035  0125 2004          	jra	L744
1036  0127               L544:
1037                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1039  0127 721550c5      	bres	20677,#2
1040  012b               L744:
1041                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1043  012b 7b06          	ld	a,(OFST+2,sp)
1044  012d c750c4        	ld	20676,a
1046  0130 2007          	jra	L554
1047  0132               L154:
1048                     ; 357             DownCounter--;
1050  0132 1e03          	ldw	x,(OFST-1,sp)
1051  0134 1d0001        	subw	x,#1
1052  0137 1f03          	ldw	(OFST-1,sp),x
1053  0139               L554:
1054                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1056  0139 c650c5        	ld	a,20677
1057  013c a501          	bcp	a,#1
1058  013e 2704          	jreq	L164
1060  0140 1e03          	ldw	x,(OFST-1,sp)
1061  0142 26ee          	jrne	L154
1062  0144               L164:
1063                     ; 360         if (DownCounter != 0)
1065  0144 1e03          	ldw	x,(OFST-1,sp)
1066  0146 2706          	jreq	L364
1067                     ; 362             Swif = SUCCESS;
1069  0148 a601          	ld	a,#1
1070  014a 6b02          	ld	(OFST-2,sp),a
1072  014c 201b          	jra	L764
1073  014e               L364:
1074                     ; 366             Swif = ERROR;
1076  014e 0f02          	clr	(OFST-2,sp)
1077  0150 2017          	jra	L764
1078  0152               L344:
1079                     ; 374         if (ITState != DISABLE)
1081  0152 0d0a          	tnz	(OFST+6,sp)
1082  0154 2706          	jreq	L174
1083                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1085  0156 721450c5      	bset	20677,#2
1087  015a 2004          	jra	L374
1088  015c               L174:
1089                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1091  015c 721550c5      	bres	20677,#2
1092  0160               L374:
1093                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1095  0160 7b06          	ld	a,(OFST+2,sp)
1096  0162 c750c4        	ld	20676,a
1097                     ; 388         Swif = SUCCESS;
1099  0165 a601          	ld	a,#1
1100  0167 6b02          	ld	(OFST-2,sp),a
1101  0169               L764:
1102                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1104  0169 0d0b          	tnz	(OFST+7,sp)
1105  016b 260c          	jrne	L574
1107  016d 7b01          	ld	a,(OFST-3,sp)
1108  016f a1e1          	cp	a,#225
1109  0171 2606          	jrne	L574
1110                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1112  0173 721150c0      	bres	20672,#0
1114  0177 201e          	jra	L774
1115  0179               L574:
1116                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1118  0179 0d0b          	tnz	(OFST+7,sp)
1119  017b 260c          	jrne	L105
1121  017d 7b01          	ld	a,(OFST-3,sp)
1122  017f a1d2          	cp	a,#210
1123  0181 2606          	jrne	L105
1124                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1126  0183 721750c0      	bres	20672,#3
1128  0187 200e          	jra	L774
1129  0189               L105:
1130                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1132  0189 0d0b          	tnz	(OFST+7,sp)
1133  018b 260a          	jrne	L774
1135  018d 7b01          	ld	a,(OFST-3,sp)
1136  018f a1b4          	cp	a,#180
1137  0191 2604          	jrne	L774
1138                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1140  0193 721150c1      	bres	20673,#0
1141  0197               L774:
1142                     ; 406     return(Swif);
1144  0197 7b02          	ld	a,(OFST-2,sp)
1147  0199 5b06          	addw	sp,#6
1148  019b 87            	retf
1285                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1285                     ; 417 {
1286                     	switch	.text
1287  019c               f_CLK_HSIPrescalerConfig:
1289  019c 88            	push	a
1290       00000000      OFST:	set	0
1293                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1295                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1297  019d c650c6        	ld	a,20678
1298  01a0 a4e7          	and	a,#231
1299  01a2 c750c6        	ld	20678,a
1300                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1302  01a5 c650c6        	ld	a,20678
1303  01a8 1a01          	or	a,(OFST+1,sp)
1304  01aa c750c6        	ld	20678,a
1305                     ; 428 }
1308  01ad 84            	pop	a
1309  01ae 87            	retf
1443                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1443                     ; 440 {
1444                     	switch	.text
1445  01af               f_CLK_CCOConfig:
1447  01af 88            	push	a
1448       00000000      OFST:	set	0
1451                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1453                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1455  01b0 c650c9        	ld	a,20681
1456  01b3 a4e1          	and	a,#225
1457  01b5 c750c9        	ld	20681,a
1458                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1460  01b8 c650c9        	ld	a,20681
1461  01bb 1a01          	or	a,(OFST+1,sp)
1462  01bd c750c9        	ld	20681,a
1463                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1465  01c0 721050c9      	bset	20681,#0
1466                     ; 454 }
1469  01c4 84            	pop	a
1470  01c5 87            	retf
1534                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1534                     ; 465 {
1535                     	switch	.text
1536  01c6               f_CLK_ITConfig:
1538  01c6 89            	pushw	x
1539       00000000      OFST:	set	0
1542                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1544                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1546                     ; 471     if (NewState != DISABLE)
1548  01c7 9f            	ld	a,xl
1549  01c8 4d            	tnz	a
1550  01c9 2719          	jreq	L307
1551                     ; 473         switch (CLK_IT)
1553  01cb 9e            	ld	a,xh
1555                     ; 481         default:
1555                     ; 482             break;
1556  01cc a00c          	sub	a,#12
1557  01ce 270a          	jreq	L736
1558  01d0 a010          	sub	a,#16
1559  01d2 2624          	jrne	L117
1560                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1560                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1562  01d4 721450c5      	bset	20677,#2
1563                     ; 477             break;
1565  01d8 201e          	jra	L117
1566  01da               L736:
1567                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1567                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1569  01da 721450c8      	bset	20680,#2
1570                     ; 480             break;
1572  01de 2018          	jra	L117
1573  01e0               L146:
1574                     ; 481         default:
1574                     ; 482             break;
1576  01e0 2016          	jra	L117
1577  01e2               L707:
1579  01e2 2014          	jra	L117
1580  01e4               L307:
1581                     ; 487         switch (CLK_IT)
1583  01e4 7b01          	ld	a,(OFST+1,sp)
1585                     ; 495         default:
1585                     ; 496             break;
1586  01e6 a00c          	sub	a,#12
1587  01e8 270a          	jreq	L546
1588  01ea a010          	sub	a,#16
1589  01ec 260a          	jrne	L117
1590                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1590                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1592  01ee 721550c5      	bres	20677,#2
1593                     ; 491             break;
1595  01f2 2004          	jra	L117
1596  01f4               L546:
1597                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1597                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1599  01f4 721550c8      	bres	20680,#2
1600                     ; 494             break;
1601  01f8               L117:
1602                     ; 500 }
1605  01f8 85            	popw	x
1606  01f9 87            	retf
1607  01fa               L746:
1608                     ; 495         default:
1608                     ; 496             break;
1610  01fa 20fc          	jra	L117
1611  01fc               L517:
1612  01fc 20fa          	jra	L117
1646                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1646                     ; 508 {
1647                     	switch	.text
1648  01fe               f_CLK_SYSCLKConfig:
1650  01fe 88            	push	a
1651       00000000      OFST:	set	0
1654                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1656                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1658  01ff a580          	bcp	a,#128
1659  0201 2614          	jrne	L537
1660                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1662  0203 c650c6        	ld	a,20678
1663  0206 a4e7          	and	a,#231
1664  0208 c750c6        	ld	20678,a
1665                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1667  020b 7b01          	ld	a,(OFST+1,sp)
1668  020d a418          	and	a,#24
1669  020f ca50c6        	or	a,20678
1670  0212 c750c6        	ld	20678,a
1672  0215 2012          	jra	L737
1673  0217               L537:
1674                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1676  0217 c650c6        	ld	a,20678
1677  021a a4f8          	and	a,#248
1678  021c c750c6        	ld	20678,a
1679                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1681  021f 7b01          	ld	a,(OFST+1,sp)
1682  0221 a407          	and	a,#7
1683  0223 ca50c6        	or	a,20678
1684  0226 c750c6        	ld	20678,a
1685  0229               L737:
1686                     ; 524 }
1689  0229 84            	pop	a
1690  022a 87            	retf
1745                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1745                     ; 532 {
1746                     	switch	.text
1747  022b               f_CLK_SWIMConfig:
1751                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1753                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1755  022b 4d            	tnz	a
1756  022c 2706          	jreq	L767
1757                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1759  022e 721050cd      	bset	20685,#0
1761  0232 2004          	jra	L177
1762  0234               L767:
1763                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1765  0234 721150cd      	bres	20685,#0
1766  0238               L177:
1767                     ; 548 }
1770  0238 87            	retf
1793                     ; 557 void CLK_ClockSecuritySystemEnable(void)
1793                     ; 558 {
1794                     	switch	.text
1795  0239               f_CLK_ClockSecuritySystemEnable:
1799                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
1801  0239 721050c8      	bset	20680,#0
1802                     ; 561 }
1805  023d 87            	retf
1829                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1829                     ; 570 {
1830                     	switch	.text
1831  023e               f_CLK_GetSYSCLKSource:
1835                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
1837  023e c650c3        	ld	a,20675
1840  0241 87            	retf
1896                     ; 579 uint32_t CLK_GetClockFreq(void)
1896                     ; 580 {
1897                     	switch	.text
1898  0242               f_CLK_GetClockFreq:
1900  0242 5209          	subw	sp,#9
1901       00000009      OFST:	set	9
1904                     ; 582     uint32_t clockfrequency = 0;
1906                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1908                     ; 584     uint8_t tmp = 0, presc = 0;
1912                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1914  0244 c650c3        	ld	a,20675
1915  0247 6b09          	ld	(OFST+0,sp),a
1916                     ; 589     if (clocksource == CLK_SOURCE_HSI)
1918  0249 7b09          	ld	a,(OFST+0,sp)
1919  024b a1e1          	cp	a,#225
1920  024d 2644          	jrne	L7301
1921                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1923  024f c650c6        	ld	a,20678
1924  0252 a418          	and	a,#24
1925  0254 6b09          	ld	(OFST+0,sp),a
1926                     ; 592         tmp = (uint8_t)(tmp >> 3);
1928  0256 0409          	srl	(OFST+0,sp)
1929  0258 0409          	srl	(OFST+0,sp)
1930  025a 0409          	srl	(OFST+0,sp)
1931                     ; 593         presc = HSIDivFactor[tmp];
1933  025c 7b09          	ld	a,(OFST+0,sp)
1934  025e 5f            	clrw	x
1935  025f 97            	ld	xl,a
1936  0260 d60000        	ld	a,(_HSIDivFactor,x)
1937  0263 6b09          	ld	(OFST+0,sp),a
1938                     ; 594         clockfrequency = HSI_VALUE / presc;
1940  0265 7b09          	ld	a,(OFST+0,sp)
1941  0267 b703          	ld	c_lreg+3,a
1942  0269 3f02          	clr	c_lreg+2
1943  026b 3f01          	clr	c_lreg+1
1944  026d 3f00          	clr	c_lreg
1945  026f 96            	ldw	x,sp
1946  0270 1c0001        	addw	x,#OFST-8
1947  0273 8d000000      	callf	d_rtol
1949  0277 ae2400        	ldw	x,#9216
1950  027a bf02          	ldw	c_lreg+2,x
1951  027c ae00f4        	ldw	x,#244
1952  027f bf00          	ldw	c_lreg,x
1953  0281 96            	ldw	x,sp
1954  0282 1c0001        	addw	x,#OFST-8
1955  0285 8d000000      	callf	d_ludv
1957  0289 96            	ldw	x,sp
1958  028a 1c0005        	addw	x,#OFST-4
1959  028d 8d000000      	callf	d_rtol
1962  0291 201c          	jra	L1401
1963  0293               L7301:
1964                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
1966  0293 7b09          	ld	a,(OFST+0,sp)
1967  0295 a1d2          	cp	a,#210
1968  0297 260c          	jrne	L3401
1969                     ; 598         clockfrequency = LSI_VALUE;
1971  0299 aef400        	ldw	x,#62464
1972  029c 1f07          	ldw	(OFST-2,sp),x
1973  029e ae0001        	ldw	x,#1
1974  02a1 1f05          	ldw	(OFST-4,sp),x
1976  02a3 200a          	jra	L1401
1977  02a5               L3401:
1978                     ; 602         clockfrequency = HSE_VALUE;
1980  02a5 ae2400        	ldw	x,#9216
1981  02a8 1f07          	ldw	(OFST-2,sp),x
1982  02aa ae00f4        	ldw	x,#244
1983  02ad 1f05          	ldw	(OFST-4,sp),x
1984  02af               L1401:
1985                     ; 605     return((uint32_t)clockfrequency);
1987  02af 96            	ldw	x,sp
1988  02b0 1c0005        	addw	x,#OFST-4
1989  02b3 8d000000      	callf	d_ltor
1993  02b7 5b09          	addw	sp,#9
1994  02b9 87            	retf
2092                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2092                     ; 617 {
2093                     	switch	.text
2094  02ba               f_CLK_AdjustHSICalibrationValue:
2096  02ba 88            	push	a
2097       00000000      OFST:	set	0
2100                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2102                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2104  02bb c650cc        	ld	a,20684
2105  02be a4f8          	and	a,#248
2106  02c0 1a01          	or	a,(OFST+1,sp)
2107  02c2 c750cc        	ld	20684,a
2108                     ; 625 }
2111  02c5 84            	pop	a
2112  02c6 87            	retf
2135                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2135                     ; 637 {
2136                     	switch	.text
2137  02c7               f_CLK_SYSCLKEmergencyClear:
2141                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2143  02c7 721150c5      	bres	20677,#0
2144                     ; 639 }
2147  02cb 87            	retf
2295                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2295                     ; 649 {
2296                     	switch	.text
2297  02cc               f_CLK_GetFlagStatus:
2299  02cc 89            	pushw	x
2300  02cd 5203          	subw	sp,#3
2301       00000003      OFST:	set	3
2304                     ; 651     uint16_t statusreg = 0;
2306                     ; 652     uint8_t tmpreg = 0;
2308                     ; 653     FlagStatus bitstatus = RESET;
2310                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2312                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2314  02cf 01            	rrwa	x,a
2315  02d0 9f            	ld	a,xl
2316  02d1 a4ff          	and	a,#255
2317  02d3 97            	ld	xl,a
2318  02d4 4f            	clr	a
2319  02d5 02            	rlwa	x,a
2320  02d6 1f01          	ldw	(OFST-2,sp),x
2321  02d8 01            	rrwa	x,a
2322                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2324  02d9 1e01          	ldw	x,(OFST-2,sp)
2325  02db a30100        	cpw	x,#256
2326  02de 2607          	jrne	L5021
2327                     ; 664         tmpreg = CLK->ICKR;
2329  02e0 c650c0        	ld	a,20672
2330  02e3 6b03          	ld	(OFST+0,sp),a
2332  02e5 202f          	jra	L7021
2333  02e7               L5021:
2334                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2336  02e7 1e01          	ldw	x,(OFST-2,sp)
2337  02e9 a30200        	cpw	x,#512
2338  02ec 2607          	jrne	L1121
2339                     ; 668         tmpreg = CLK->ECKR;
2341  02ee c650c1        	ld	a,20673
2342  02f1 6b03          	ld	(OFST+0,sp),a
2344  02f3 2021          	jra	L7021
2345  02f5               L1121:
2346                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2348  02f5 1e01          	ldw	x,(OFST-2,sp)
2349  02f7 a30300        	cpw	x,#768
2350  02fa 2607          	jrne	L5121
2351                     ; 672         tmpreg = CLK->SWCR;
2353  02fc c650c5        	ld	a,20677
2354  02ff 6b03          	ld	(OFST+0,sp),a
2356  0301 2013          	jra	L7021
2357  0303               L5121:
2358                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2360  0303 1e01          	ldw	x,(OFST-2,sp)
2361  0305 a30400        	cpw	x,#1024
2362  0308 2607          	jrne	L1221
2363                     ; 676         tmpreg = CLK->CSSR;
2365  030a c650c8        	ld	a,20680
2366  030d 6b03          	ld	(OFST+0,sp),a
2368  030f 2005          	jra	L7021
2369  0311               L1221:
2370                     ; 680         tmpreg = CLK->CCOR;
2372  0311 c650c9        	ld	a,20681
2373  0314 6b03          	ld	(OFST+0,sp),a
2374  0316               L7021:
2375                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2377  0316 7b05          	ld	a,(OFST+2,sp)
2378  0318 1503          	bcp	a,(OFST+0,sp)
2379  031a 2706          	jreq	L5221
2380                     ; 685         bitstatus = SET;
2382  031c a601          	ld	a,#1
2383  031e 6b03          	ld	(OFST+0,sp),a
2385  0320 2002          	jra	L7221
2386  0322               L5221:
2387                     ; 689         bitstatus = RESET;
2389  0322 0f03          	clr	(OFST+0,sp)
2390  0324               L7221:
2391                     ; 693     return((FlagStatus)bitstatus);
2393  0324 7b03          	ld	a,(OFST+0,sp)
2396  0326 5b05          	addw	sp,#5
2397  0328 87            	retf
2442                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2442                     ; 704 {
2443                     	switch	.text
2444  0329               f_CLK_GetITStatus:
2446  0329 88            	push	a
2447  032a 88            	push	a
2448       00000001      OFST:	set	1
2451                     ; 706     ITStatus bitstatus = RESET;
2453                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2455                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2457  032b a11c          	cp	a,#28
2458  032d 2611          	jrne	L3521
2459                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2461  032f c450c5        	and	a,20677
2462  0332 a10c          	cp	a,#12
2463  0334 2606          	jrne	L5521
2464                     ; 716             bitstatus = SET;
2466  0336 a601          	ld	a,#1
2467  0338 6b01          	ld	(OFST+0,sp),a
2469  033a 2015          	jra	L1621
2470  033c               L5521:
2471                     ; 720             bitstatus = RESET;
2473  033c 0f01          	clr	(OFST+0,sp)
2474  033e 2011          	jra	L1621
2475  0340               L3521:
2476                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2478  0340 c650c8        	ld	a,20680
2479  0343 1402          	and	a,(OFST+1,sp)
2480  0345 a10c          	cp	a,#12
2481  0347 2606          	jrne	L3621
2482                     ; 728             bitstatus = SET;
2484  0349 a601          	ld	a,#1
2485  034b 6b01          	ld	(OFST+0,sp),a
2487  034d 2002          	jra	L1621
2488  034f               L3621:
2489                     ; 732             bitstatus = RESET;
2491  034f 0f01          	clr	(OFST+0,sp)
2492  0351               L1621:
2493                     ; 737     return bitstatus;
2495  0351 7b01          	ld	a,(OFST+0,sp)
2498  0353 85            	popw	x
2499  0354 87            	retf
2534                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2534                     ; 748 {
2535                     	switch	.text
2536  0355               f_CLK_ClearITPendingBit:
2540                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2542                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2544  0355 a10c          	cp	a,#12
2545  0357 2606          	jrne	L5031
2546                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2548  0359 721750c8      	bres	20680,#3
2550  035d 2004          	jra	L7031
2551  035f               L5031:
2552                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2554  035f 721750c5      	bres	20677,#3
2555  0363               L7031:
2556                     ; 764 }
2559  0363 87            	retf
2593                     	xdef	_CLKPrescTable
2594                     	xdef	_HSIDivFactor
2595                     	xdef	f_CLK_ClearITPendingBit
2596                     	xdef	f_CLK_GetITStatus
2597                     	xdef	f_CLK_GetFlagStatus
2598                     	xdef	f_CLK_GetSYSCLKSource
2599                     	xdef	f_CLK_GetClockFreq
2600                     	xdef	f_CLK_AdjustHSICalibrationValue
2601                     	xdef	f_CLK_SYSCLKEmergencyClear
2602                     	xdef	f_CLK_ClockSecuritySystemEnable
2603                     	xdef	f_CLK_SWIMConfig
2604                     	xdef	f_CLK_SYSCLKConfig
2605                     	xdef	f_CLK_ITConfig
2606                     	xdef	f_CLK_CCOConfig
2607                     	xdef	f_CLK_HSIPrescalerConfig
2608                     	xdef	f_CLK_ClockSwitchConfig
2609                     	xdef	f_CLK_PeripheralClockConfig
2610                     	xdef	f_CLK_SlowActiveHaltWakeUpCmd
2611                     	xdef	f_CLK_FastHaltWakeUpCmd
2612                     	xdef	f_CLK_ClockSwitchCmd
2613                     	xdef	f_CLK_CCOCmd
2614                     	xdef	f_CLK_LSICmd
2615                     	xdef	f_CLK_HSICmd
2616                     	xdef	f_CLK_HSECmd
2617                     	xdef	f_CLK_DeInit
2618                     	xref.b	c_lreg
2619                     	xref.b	c_x
2638                     	xref	d_ltor
2639                     	xref	d_ludv
2640                     	xref	d_rtol
2641                     	end
