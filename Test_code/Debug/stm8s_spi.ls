   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 44 void SPI_DeInit(void)
  43                     ; 45 {
  44                     	switch	.text
  45  0000               f_SPI_DeInit:
  49                     ; 46     SPI->CR1    = SPI_CR1_RESET_VALUE;
  51  0000 725f5200      	clr	20992
  52                     ; 47     SPI->CR2    = SPI_CR2_RESET_VALUE;
  54  0004 725f5201      	clr	20993
  55                     ; 48     SPI->ICR    = SPI_ICR_RESET_VALUE;
  57  0008 725f5202      	clr	20994
  58                     ; 49     SPI->SR     = SPI_SR_RESET_VALUE;
  60  000c 35025203      	mov	20995,#2
  61                     ; 50     SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  63  0010 35075205      	mov	20997,#7
  64                     ; 51 }
  67  0014 87            	retf
 380                     ; 72 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 380                     ; 73 {
 381                     	switch	.text
 382  0015               f_SPI_Init:
 384  0015 89            	pushw	x
 385  0016 88            	push	a
 386       00000001      OFST:	set	1
 389                     ; 75     assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 391                     ; 76     assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 393                     ; 77     assert_param(IS_SPI_MODE_OK(Mode));
 395                     ; 78     assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 397                     ; 79     assert_param(IS_SPI_PHASE_OK(ClockPhase));
 399                     ; 80     assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 401                     ; 81     assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 403                     ; 82     assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 405                     ; 85     SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 405                     ; 86                     (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 407  0017 7b08          	ld	a,(OFST+7,sp)
 408  0019 1a09          	or	a,(OFST+8,sp)
 409  001b 6b01          	ld	(OFST+0,sp),a
 410  001d 9f            	ld	a,xl
 411  001e 1a02          	or	a,(OFST+1,sp)
 412  0020 1a01          	or	a,(OFST+0,sp)
 413  0022 c75200        	ld	20992,a
 414                     ; 89     SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 416  0025 7b0a          	ld	a,(OFST+9,sp)
 417  0027 1a0b          	or	a,(OFST+10,sp)
 418  0029 c75201        	ld	20993,a
 419                     ; 91     if (Mode == SPI_MODE_MASTER)
 421  002c 7b07          	ld	a,(OFST+6,sp)
 422  002e a104          	cp	a,#4
 423  0030 2606          	jrne	L102
 424                     ; 93         SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 426  0032 72105201      	bset	20993,#0
 428  0036 2004          	jra	L302
 429  0038               L102:
 430                     ; 97         SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 432  0038 72115201      	bres	20993,#0
 433  003c               L302:
 434                     ; 101     SPI->CR1 |= (uint8_t)(Mode);
 436  003c c65200        	ld	a,20992
 437  003f 1a07          	or	a,(OFST+6,sp)
 438  0041 c75200        	ld	20992,a
 439                     ; 104     SPI->CRCPR = (uint8_t)CRCPolynomial;
 441  0044 7b0c          	ld	a,(OFST+11,sp)
 442  0046 c75205        	ld	20997,a
 443                     ; 105 }
 446  0049 5b03          	addw	sp,#3
 447  004b 87            	retf
 501                     ; 113 void SPI_Cmd(FunctionalState NewState)
 501                     ; 114 {
 502                     	switch	.text
 503  004c               f_SPI_Cmd:
 507                     ; 116     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 509                     ; 118     if (NewState != DISABLE)
 511  004c 4d            	tnz	a
 512  004d 2706          	jreq	L332
 513                     ; 120         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 515  004f 721c5200      	bset	20992,#6
 517  0053 2004          	jra	L532
 518  0055               L332:
 519                     ; 124         SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 521  0055 721d5200      	bres	20992,#6
 522  0059               L532:
 523                     ; 126 }
 526  0059 87            	retf
 632                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 632                     ; 136 {
 633                     	switch	.text
 634  005a               f_SPI_ITConfig:
 636  005a 89            	pushw	x
 637  005b 88            	push	a
 638       00000001      OFST:	set	1
 641                     ; 137     uint8_t itpos = 0;
 643                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 645                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 647                     ; 143     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 649  005c 9e            	ld	a,xh
 650  005d a40f          	and	a,#15
 651  005f 5f            	clrw	x
 652  0060 97            	ld	xl,a
 653  0061 a601          	ld	a,#1
 654  0063 5d            	tnzw	x
 655  0064 2704          	jreq	L41
 656  0066               L61:
 657  0066 48            	sll	a
 658  0067 5a            	decw	x
 659  0068 26fc          	jrne	L61
 660  006a               L41:
 661  006a 6b01          	ld	(OFST+0,sp),a
 662                     ; 145     if (NewState != DISABLE)
 664  006c 0d03          	tnz	(OFST+2,sp)
 665  006e 270a          	jreq	L503
 666                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 668  0070 c65202        	ld	a,20994
 669  0073 1a01          	or	a,(OFST+0,sp)
 670  0075 c75202        	ld	20994,a
 672  0078 2009          	jra	L703
 673  007a               L503:
 674                     ; 151         SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 676  007a 7b01          	ld	a,(OFST+0,sp)
 677  007c 43            	cpl	a
 678  007d c45202        	and	a,20994
 679  0080 c75202        	ld	20994,a
 680  0083               L703:
 681                     ; 153 }
 684  0083 5b03          	addw	sp,#3
 685  0085 87            	retf
 716                     ; 159 void SPI_SendData(uint8_t Data)
 716                     ; 160 {
 717                     	switch	.text
 718  0086               f_SPI_SendData:
 722                     ; 161     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 724  0086 c75204        	ld	20996,a
 725                     ; 162 }
 728  0089 87            	retf
 750                     ; 169 uint8_t SPI_ReceiveData(void)
 750                     ; 170 {
 751                     	switch	.text
 752  008a               f_SPI_ReceiveData:
 756                     ; 171     return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 758  008a c65204        	ld	a,20996
 761  008d 87            	retf
 796                     ; 180 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 796                     ; 181 {
 797                     	switch	.text
 798  008e               f_SPI_NSSInternalSoftwareCmd:
 802                     ; 183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 804                     ; 185     if (NewState != DISABLE)
 806  008e 4d            	tnz	a
 807  008f 2706          	jreq	L353
 808                     ; 187         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 810  0091 72105201      	bset	20993,#0
 812  0095 2004          	jra	L553
 813  0097               L353:
 814                     ; 191         SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 816  0097 72115201      	bres	20993,#0
 817  009b               L553:
 818                     ; 193 }
 821  009b 87            	retf
 843                     ; 200 void SPI_TransmitCRC(void)
 843                     ; 201 {
 844                     	switch	.text
 845  009c               f_SPI_TransmitCRC:
 849                     ; 202     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 851  009c 72185201      	bset	20993,#4
 852                     ; 203 }
 855  00a0 87            	retf
 890                     ; 211 void SPI_CalculateCRCCmd(FunctionalState NewState)
 890                     ; 212 {
 891                     	switch	.text
 892  00a1               f_SPI_CalculateCRCCmd:
 896                     ; 214     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 898                     ; 216     if (NewState != DISABLE)
 900  00a1 4d            	tnz	a
 901  00a2 2706          	jreq	L504
 902                     ; 218         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
 904  00a4 721a5201      	bset	20993,#5
 906  00a8 2004          	jra	L704
 907  00aa               L504:
 908                     ; 222         SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
 910  00aa 721b5201      	bres	20993,#5
 911  00ae               L704:
 912                     ; 224 }
 915  00ae 87            	retf
 976                     ; 231 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
 976                     ; 232 {
 977                     	switch	.text
 978  00af               f_SPI_GetCRC:
 980  00af 88            	push	a
 981       00000001      OFST:	set	1
 984                     ; 233     uint8_t crcreg = 0;
 986                     ; 236     assert_param(IS_SPI_CRC_OK(SPI_CRC));
 988                     ; 238     if (SPI_CRC != SPI_CRC_RX)
 990  00b0 4d            	tnz	a
 991  00b1 2707          	jreq	L144
 992                     ; 240         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
 994  00b3 c65207        	ld	a,20999
 995  00b6 6b01          	ld	(OFST+0,sp),a
 997  00b8 2005          	jra	L344
 998  00ba               L144:
 999                     ; 244         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1001  00ba c65206        	ld	a,20998
1002  00bd 6b01          	ld	(OFST+0,sp),a
1003  00bf               L344:
1004                     ; 248     return crcreg;
1006  00bf 7b01          	ld	a,(OFST+0,sp)
1009  00c1 5b01          	addw	sp,#1
1010  00c3 87            	retf
1034                     ; 256 void SPI_ResetCRC(void)
1034                     ; 257 {
1035                     	switch	.text
1036  00c4               f_SPI_ResetCRC:
1040                     ; 260     SPI_CalculateCRCCmd(ENABLE);
1042  00c4 a601          	ld	a,#1
1043  00c6 8da100a1      	callf	f_SPI_CalculateCRCCmd
1045                     ; 263     SPI_Cmd(ENABLE);
1047  00ca a601          	ld	a,#1
1048  00cc 8d4c004c      	callf	f_SPI_Cmd
1050                     ; 264 }
1053  00d0 87            	retf
1076                     ; 271 uint8_t SPI_GetCRCPolynomial(void)
1076                     ; 272 {
1077                     	switch	.text
1078  00d1               f_SPI_GetCRCPolynomial:
1082                     ; 273     return SPI->CRCPR; /* Return the CRC polynomial register */
1084  00d1 c65205        	ld	a,20997
1087  00d4 87            	retf
1142                     ; 281 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1142                     ; 282 {
1143                     	switch	.text
1144  00d5               f_SPI_BiDirectionalLineConfig:
1148                     ; 284     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1150                     ; 286     if (SPI_Direction != SPI_DIRECTION_RX)
1152  00d5 4d            	tnz	a
1153  00d6 2706          	jreq	L315
1154                     ; 288         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1156  00d8 721c5201      	bset	20993,#6
1158  00dc 2004          	jra	L515
1159  00de               L315:
1160                     ; 292         SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1162  00de 721d5201      	bres	20993,#6
1163  00e2               L515:
1164                     ; 294 }
1167  00e2 87            	retf
1287                     ; 304 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1287                     ; 305 {
1288                     	switch	.text
1289  00e3               f_SPI_GetFlagStatus:
1291  00e3 88            	push	a
1292       00000001      OFST:	set	1
1295                     ; 306     FlagStatus status = RESET;
1297                     ; 308     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1299                     ; 311     if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1301  00e4 c45203        	and	a,20995
1302  00e7 2706          	jreq	L375
1303                     ; 313         status = SET; /* SPI_FLAG is set */
1305  00e9 a601          	ld	a,#1
1306  00eb 6b01          	ld	(OFST+0,sp),a
1308  00ed 2002          	jra	L575
1309  00ef               L375:
1310                     ; 317         status = RESET; /* SPI_FLAG is reset*/
1312  00ef 0f01          	clr	(OFST+0,sp)
1313  00f1               L575:
1314                     ; 321     return status;
1316  00f1 7b01          	ld	a,(OFST+0,sp)
1319  00f3 5b01          	addw	sp,#1
1320  00f5 87            	retf
1354                     ; 339 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1354                     ; 340 {
1355                     	switch	.text
1356  00f6               f_SPI_ClearFlag:
1360                     ; 341     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1362                     ; 343     SPI->SR = (uint8_t)(~SPI_FLAG);
1364  00f6 43            	cpl	a
1365  00f7 c75203        	ld	20995,a
1366                     ; 344 }
1369  00fa 87            	retf
1442                     ; 359 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1442                     ; 360 {
1443                     	switch	.text
1444  00fb               f_SPI_GetITStatus:
1446  00fb 88            	push	a
1447  00fc 89            	pushw	x
1448       00000002      OFST:	set	2
1451                     ; 361     ITStatus pendingbitstatus = RESET;
1453                     ; 362     uint8_t itpos = 0;
1455                     ; 363     uint8_t itmask1 = 0;
1457                     ; 364     uint8_t itmask2 = 0;
1459                     ; 365     uint8_t enablestatus = 0;
1461                     ; 366     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1463                     ; 368     itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1465  00fd a40f          	and	a,#15
1466  00ff 5f            	clrw	x
1467  0100 97            	ld	xl,a
1468  0101 a601          	ld	a,#1
1469  0103 5d            	tnzw	x
1470  0104 2704          	jreq	L05
1471  0106               L25:
1472  0106 48            	sll	a
1473  0107 5a            	decw	x
1474  0108 26fc          	jrne	L25
1475  010a               L05:
1476  010a 6b01          	ld	(OFST-1,sp),a
1477                     ; 371     itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1479  010c 7b03          	ld	a,(OFST+1,sp)
1480  010e 4e            	swap	a
1481  010f a40f          	and	a,#15
1482  0111 6b02          	ld	(OFST+0,sp),a
1483                     ; 373     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1485  0113 7b02          	ld	a,(OFST+0,sp)
1486  0115 5f            	clrw	x
1487  0116 97            	ld	xl,a
1488  0117 a601          	ld	a,#1
1489  0119 5d            	tnzw	x
1490  011a 2704          	jreq	L45
1491  011c               L65:
1492  011c 48            	sll	a
1493  011d 5a            	decw	x
1494  011e 26fc          	jrne	L65
1495  0120               L45:
1496  0120 6b02          	ld	(OFST+0,sp),a
1497                     ; 375     enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1499  0122 c65203        	ld	a,20995
1500  0125 1402          	and	a,(OFST+0,sp)
1501  0127 6b02          	ld	(OFST+0,sp),a
1502                     ; 377     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1504  0129 c65202        	ld	a,20994
1505  012c 1501          	bcp	a,(OFST-1,sp)
1506  012e 270a          	jreq	L746
1508  0130 0d02          	tnz	(OFST+0,sp)
1509  0132 2706          	jreq	L746
1510                     ; 380         pendingbitstatus = SET;
1512  0134 a601          	ld	a,#1
1513  0136 6b02          	ld	(OFST+0,sp),a
1515  0138 2002          	jra	L156
1516  013a               L746:
1517                     ; 385         pendingbitstatus = RESET;
1519  013a 0f02          	clr	(OFST+0,sp)
1520  013c               L156:
1521                     ; 388     return  pendingbitstatus;
1523  013c 7b02          	ld	a,(OFST+0,sp)
1526  013e 5b03          	addw	sp,#3
1527  0140 87            	retf
1569                     ; 404 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1569                     ; 405 {
1570                     	switch	.text
1571  0141               f_SPI_ClearITPendingBit:
1573  0141 88            	push	a
1574       00000001      OFST:	set	1
1577                     ; 406     uint8_t itpos = 0;
1579                     ; 407     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1581                     ; 412     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1583  0142 a4f0          	and	a,#240
1584  0144 4e            	swap	a
1585  0145 a40f          	and	a,#15
1586  0147 5f            	clrw	x
1587  0148 97            	ld	xl,a
1588  0149 a601          	ld	a,#1
1589  014b 5d            	tnzw	x
1590  014c 2704          	jreq	L26
1591  014e               L46:
1592  014e 48            	sll	a
1593  014f 5a            	decw	x
1594  0150 26fc          	jrne	L46
1595  0152               L26:
1596  0152 6b01          	ld	(OFST+0,sp),a
1597                     ; 414     SPI->SR = (uint8_t)(~itpos);
1599  0154 7b01          	ld	a,(OFST+0,sp)
1600  0156 43            	cpl	a
1601  0157 c75203        	ld	20995,a
1602                     ; 416 }
1605  015a 84            	pop	a
1606  015b 87            	retf
1618                     	xdef	f_SPI_ClearITPendingBit
1619                     	xdef	f_SPI_GetITStatus
1620                     	xdef	f_SPI_ClearFlag
1621                     	xdef	f_SPI_GetFlagStatus
1622                     	xdef	f_SPI_BiDirectionalLineConfig
1623                     	xdef	f_SPI_GetCRCPolynomial
1624                     	xdef	f_SPI_ResetCRC
1625                     	xdef	f_SPI_GetCRC
1626                     	xdef	f_SPI_CalculateCRCCmd
1627                     	xdef	f_SPI_TransmitCRC
1628                     	xdef	f_SPI_NSSInternalSoftwareCmd
1629                     	xdef	f_SPI_ReceiveData
1630                     	xdef	f_SPI_SendData
1631                     	xdef	f_SPI_ITConfig
1632                     	xdef	f_SPI_Cmd
1633                     	xdef	f_SPI_Init
1634                     	xdef	f_SPI_DeInit
1653                     	end
