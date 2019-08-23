   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 47 void UART2_DeInit(void)
  43                     ; 48 {
  44                     	switch	.text
  45  0000               f_UART2_DeInit:
  49                     ; 51     (void) UART2->SR;
  51  0000 c65240        	ld	a,21056
  52                     ; 52     (void)UART2->DR;
  54  0003 c65241        	ld	a,21057
  55                     ; 54     UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
  57  0006 725f5243      	clr	21059
  58                     ; 55     UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
  60  000a 725f5242      	clr	21058
  61                     ; 57     UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
  63  000e 725f5244      	clr	21060
  64                     ; 58     UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
  66  0012 725f5245      	clr	21061
  67                     ; 59     UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
  69  0016 725f5246      	clr	21062
  70                     ; 60     UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
  72  001a 725f5247      	clr	21063
  73                     ; 61     UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
  75  001e 725f5248      	clr	21064
  76                     ; 62     UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
  78  0022 725f5249      	clr	21065
  79                     ; 64 }
  82  0026 87            	retf
 392                     .const:	section	.text
 393  0000               L01:
 394  0000 00000064      	dc.l	100
 395                     ; 80 void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 395                     ; 81 {
 396                     	switch	.text
 397  0027               f_UART2_Init:
 399  0027 520e          	subw	sp,#14
 400       0000000e      OFST:	set	14
 403                     ; 82     uint8_t BRR2_1 = 0, BRR2_2 = 0;
 407                     ; 83     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 411                     ; 86     assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 413                     ; 87     assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 415                     ; 88     assert_param(IS_UART2_STOPBITS_OK(StopBits));
 417                     ; 89     assert_param(IS_UART2_PARITY_OK(Parity));
 419                     ; 90     assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
 421                     ; 91     assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
 423                     ; 94     UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
 425  0029 72195244      	bres	21060,#4
 426                     ; 96     UART2->CR1 |= (uint8_t)WordLength; 
 428  002d c65244        	ld	a,21060
 429  0030 1a16          	or	a,(OFST+8,sp)
 430  0032 c75244        	ld	21060,a
 431                     ; 99     UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
 433  0035 c65246        	ld	a,21062
 434  0038 a4cf          	and	a,#207
 435  003a c75246        	ld	21062,a
 436                     ; 101     UART2->CR3 |= (uint8_t)StopBits; 
 438  003d c65246        	ld	a,21062
 439  0040 1a17          	or	a,(OFST+9,sp)
 440  0042 c75246        	ld	21062,a
 441                     ; 104     UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
 443  0045 c65244        	ld	a,21060
 444  0048 a4f9          	and	a,#249
 445  004a c75244        	ld	21060,a
 446                     ; 106     UART2->CR1 |= (uint8_t)Parity;
 448  004d c65244        	ld	a,21060
 449  0050 1a18          	or	a,(OFST+10,sp)
 450  0052 c75244        	ld	21060,a
 451                     ; 109     UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
 453  0055 725f5242      	clr	21058
 454                     ; 111     UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
 456  0059 c65243        	ld	a,21059
 457  005c a40f          	and	a,#15
 458  005e c75243        	ld	21059,a
 459                     ; 113     UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
 461  0061 c65243        	ld	a,21059
 462  0064 a4f0          	and	a,#240
 463  0066 c75243        	ld	21059,a
 464                     ; 116     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 466  0069 96            	ldw	x,sp
 467  006a 1c0012        	addw	x,#OFST+4
 468  006d 8d000000      	callf	d_ltor
 470  0071 a604          	ld	a,#4
 471  0073 8d000000      	callf	d_llsh
 473  0077 96            	ldw	x,sp
 474  0078 1c0001        	addw	x,#OFST-13
 475  007b 8d000000      	callf	d_rtol
 477  007f 8d000000      	callf	f_CLK_GetClockFreq
 479  0083 96            	ldw	x,sp
 480  0084 1c0001        	addw	x,#OFST-13
 481  0087 8d000000      	callf	d_ludv
 483  008b 96            	ldw	x,sp
 484  008c 1c000b        	addw	x,#OFST-3
 485  008f 8d000000      	callf	d_rtol
 487                     ; 117     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 489  0093 96            	ldw	x,sp
 490  0094 1c0012        	addw	x,#OFST+4
 491  0097 8d000000      	callf	d_ltor
 493  009b a604          	ld	a,#4
 494  009d 8d000000      	callf	d_llsh
 496  00a1 96            	ldw	x,sp
 497  00a2 1c0001        	addw	x,#OFST-13
 498  00a5 8d000000      	callf	d_rtol
 500  00a9 8d000000      	callf	f_CLK_GetClockFreq
 502  00ad a664          	ld	a,#100
 503  00af 8d000000      	callf	d_smul
 505  00b3 96            	ldw	x,sp
 506  00b4 1c0001        	addw	x,#OFST-13
 507  00b7 8d000000      	callf	d_ludv
 509  00bb 96            	ldw	x,sp
 510  00bc 1c0007        	addw	x,#OFST-7
 511  00bf 8d000000      	callf	d_rtol
 513                     ; 121     BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 513                     ; 122                         << 4) / 100) & (uint8_t)0x0F); 
 515  00c3 96            	ldw	x,sp
 516  00c4 1c000b        	addw	x,#OFST-3
 517  00c7 8d000000      	callf	d_ltor
 519  00cb a664          	ld	a,#100
 520  00cd 8d000000      	callf	d_smul
 522  00d1 96            	ldw	x,sp
 523  00d2 1c0001        	addw	x,#OFST-13
 524  00d5 8d000000      	callf	d_rtol
 526  00d9 96            	ldw	x,sp
 527  00da 1c0007        	addw	x,#OFST-7
 528  00dd 8d000000      	callf	d_ltor
 530  00e1 96            	ldw	x,sp
 531  00e2 1c0001        	addw	x,#OFST-13
 532  00e5 8d000000      	callf	d_lsub
 534  00e9 a604          	ld	a,#4
 535  00eb 8d000000      	callf	d_llsh
 537  00ef ae0000        	ldw	x,#L01
 538  00f2 8d000000      	callf	d_ludv
 540  00f6 b603          	ld	a,c_lreg+3
 541  00f8 a40f          	and	a,#15
 542  00fa 6b05          	ld	(OFST-9,sp),a
 543                     ; 123     BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 545  00fc 96            	ldw	x,sp
 546  00fd 1c000b        	addw	x,#OFST-3
 547  0100 8d000000      	callf	d_ltor
 549  0104 a604          	ld	a,#4
 550  0106 8d000000      	callf	d_lursh
 552  010a b603          	ld	a,c_lreg+3
 553  010c a4f0          	and	a,#240
 554  010e b703          	ld	c_lreg+3,a
 555  0110 3f02          	clr	c_lreg+2
 556  0112 3f01          	clr	c_lreg+1
 557  0114 3f00          	clr	c_lreg
 558  0116 b603          	ld	a,c_lreg+3
 559  0118 6b06          	ld	(OFST-8,sp),a
 560                     ; 125     UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 562  011a 7b05          	ld	a,(OFST-9,sp)
 563  011c 1a06          	or	a,(OFST-8,sp)
 564  011e c75243        	ld	21059,a
 565                     ; 127     UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
 567  0121 7b0e          	ld	a,(OFST+0,sp)
 568  0123 c75242        	ld	21058,a
 569                     ; 130     UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
 571  0126 c65245        	ld	a,21061
 572  0129 a4f3          	and	a,#243
 573  012b c75245        	ld	21061,a
 574                     ; 132     UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
 576  012e c65246        	ld	a,21062
 577  0131 a4f8          	and	a,#248
 578  0133 c75246        	ld	21062,a
 579                     ; 134     UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
 579                     ; 135                                               UART2_CR3_CPHA | UART2_CR3_LBCL));
 581  0136 7b19          	ld	a,(OFST+11,sp)
 582  0138 a407          	and	a,#7
 583  013a ca5246        	or	a,21062
 584  013d c75246        	ld	21062,a
 585                     ; 137     if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
 587  0140 7b1a          	ld	a,(OFST+12,sp)
 588  0142 a504          	bcp	a,#4
 589  0144 2706          	jreq	L171
 590                     ; 140         UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
 592  0146 72165245      	bset	21061,#3
 594  014a 2004          	jra	L371
 595  014c               L171:
 596                     ; 145         UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
 598  014c 72175245      	bres	21061,#3
 599  0150               L371:
 600                     ; 147     if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
 602  0150 7b1a          	ld	a,(OFST+12,sp)
 603  0152 a508          	bcp	a,#8
 604  0154 2706          	jreq	L571
 605                     ; 150         UART2->CR2 |= (uint8_t)UART2_CR2_REN;
 607  0156 72145245      	bset	21061,#2
 609  015a 2004          	jra	L771
 610  015c               L571:
 611                     ; 155         UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
 613  015c 72155245      	bres	21061,#2
 614  0160               L771:
 615                     ; 159     if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
 617  0160 7b19          	ld	a,(OFST+11,sp)
 618  0162 a580          	bcp	a,#128
 619  0164 2706          	jreq	L102
 620                     ; 162         UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
 622  0166 72175246      	bres	21062,#3
 624  016a 200a          	jra	L302
 625  016c               L102:
 626                     ; 166         UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
 628  016c 7b19          	ld	a,(OFST+11,sp)
 629  016e a408          	and	a,#8
 630  0170 ca5246        	or	a,21062
 631  0173 c75246        	ld	21062,a
 632  0176               L302:
 633                     ; 168 }
 636  0176 5b0e          	addw	sp,#14
 637  0178 87            	retf
 691                     ; 176 void UART2_Cmd(FunctionalState NewState)
 691                     ; 177 {
 692                     	switch	.text
 693  0179               f_UART2_Cmd:
 697                     ; 179     if (NewState != DISABLE)
 699  0179 4d            	tnz	a
 700  017a 2706          	jreq	L332
 701                     ; 182         UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
 703  017c 721b5244      	bres	21060,#5
 705  0180 2004          	jra	L532
 706  0182               L332:
 707                     ; 187         UART2->CR1 |= UART2_CR1_UARTD; 
 709  0182 721a5244      	bset	21060,#5
 710  0186               L532:
 711                     ; 189 }
 714  0186 87            	retf
 841                     ; 206 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
 841                     ; 207 {
 842                     	switch	.text
 843  0187               f_UART2_ITConfig:
 845  0187 89            	pushw	x
 846  0188 89            	pushw	x
 847       00000002      OFST:	set	2
 850                     ; 208     uint8_t uartreg = 0, itpos = 0x00;
 854                     ; 211     assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
 856                     ; 212     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 858                     ; 215     uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
 860  0189 9e            	ld	a,xh
 861  018a 6b01          	ld	(OFST-1,sp),a
 862                     ; 218     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
 864  018c 9f            	ld	a,xl
 865  018d a40f          	and	a,#15
 866  018f 5f            	clrw	x
 867  0190 97            	ld	xl,a
 868  0191 a601          	ld	a,#1
 869  0193 5d            	tnzw	x
 870  0194 2704          	jreq	L61
 871  0196               L02:
 872  0196 48            	sll	a
 873  0197 5a            	decw	x
 874  0198 26fc          	jrne	L02
 875  019a               L61:
 876  019a 6b02          	ld	(OFST+0,sp),a
 877                     ; 220     if (NewState != DISABLE)
 879  019c 0d08          	tnz	(OFST+6,sp)
 880  019e 273a          	jreq	L313
 881                     ; 223         if (uartreg == 0x01)
 883  01a0 7b01          	ld	a,(OFST-1,sp)
 884  01a2 a101          	cp	a,#1
 885  01a4 260a          	jrne	L513
 886                     ; 225             UART2->CR1 |= itpos;
 888  01a6 c65244        	ld	a,21060
 889  01a9 1a02          	or	a,(OFST+0,sp)
 890  01ab c75244        	ld	21060,a
 892  01ae 2066          	jra	L133
 893  01b0               L513:
 894                     ; 227         else if (uartreg == 0x02)
 896  01b0 7b01          	ld	a,(OFST-1,sp)
 897  01b2 a102          	cp	a,#2
 898  01b4 260a          	jrne	L123
 899                     ; 229             UART2->CR2 |= itpos;
 901  01b6 c65245        	ld	a,21061
 902  01b9 1a02          	or	a,(OFST+0,sp)
 903  01bb c75245        	ld	21061,a
 905  01be 2056          	jra	L133
 906  01c0               L123:
 907                     ; 231         else if (uartreg == 0x03)
 909  01c0 7b01          	ld	a,(OFST-1,sp)
 910  01c2 a103          	cp	a,#3
 911  01c4 260a          	jrne	L523
 912                     ; 233             UART2->CR4 |= itpos;
 914  01c6 c65247        	ld	a,21063
 915  01c9 1a02          	or	a,(OFST+0,sp)
 916  01cb c75247        	ld	21063,a
 918  01ce 2046          	jra	L133
 919  01d0               L523:
 920                     ; 237             UART2->CR6 |= itpos;
 922  01d0 c65249        	ld	a,21065
 923  01d3 1a02          	or	a,(OFST+0,sp)
 924  01d5 c75249        	ld	21065,a
 925  01d8 203c          	jra	L133
 926  01da               L313:
 927                     ; 243         if (uartreg == 0x01)
 929  01da 7b01          	ld	a,(OFST-1,sp)
 930  01dc a101          	cp	a,#1
 931  01de 260b          	jrne	L333
 932                     ; 245             UART2->CR1 &= (uint8_t)(~itpos);
 934  01e0 7b02          	ld	a,(OFST+0,sp)
 935  01e2 43            	cpl	a
 936  01e3 c45244        	and	a,21060
 937  01e6 c75244        	ld	21060,a
 939  01e9 202b          	jra	L133
 940  01eb               L333:
 941                     ; 247         else if (uartreg == 0x02)
 943  01eb 7b01          	ld	a,(OFST-1,sp)
 944  01ed a102          	cp	a,#2
 945  01ef 260b          	jrne	L733
 946                     ; 249             UART2->CR2 &= (uint8_t)(~itpos);
 948  01f1 7b02          	ld	a,(OFST+0,sp)
 949  01f3 43            	cpl	a
 950  01f4 c45245        	and	a,21061
 951  01f7 c75245        	ld	21061,a
 953  01fa 201a          	jra	L133
 954  01fc               L733:
 955                     ; 251         else if (uartreg == 0x03)
 957  01fc 7b01          	ld	a,(OFST-1,sp)
 958  01fe a103          	cp	a,#3
 959  0200 260b          	jrne	L343
 960                     ; 253             UART2->CR4 &= (uint8_t)(~itpos);
 962  0202 7b02          	ld	a,(OFST+0,sp)
 963  0204 43            	cpl	a
 964  0205 c45247        	and	a,21063
 965  0208 c75247        	ld	21063,a
 967  020b 2009          	jra	L133
 968  020d               L343:
 969                     ; 257             UART2->CR6 &= (uint8_t)(~itpos);
 971  020d 7b02          	ld	a,(OFST+0,sp)
 972  020f 43            	cpl	a
 973  0210 c45249        	and	a,21065
 974  0213 c75249        	ld	21065,a
 975  0216               L133:
 976                     ; 260 }
 979  0216 5b04          	addw	sp,#4
 980  0218 87            	retf
1036                     ; 267 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1036                     ; 268 {
1037                     	switch	.text
1038  0219               f_UART2_IrDAConfig:
1042                     ; 269     assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1044                     ; 271     if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1046  0219 4d            	tnz	a
1047  021a 2706          	jreq	L573
1048                     ; 273         UART2->CR5 |= UART2_CR5_IRLP;
1050  021c 72145248      	bset	21064,#2
1052  0220 2004          	jra	L773
1053  0222               L573:
1054                     ; 277         UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
1056  0222 72155248      	bres	21064,#2
1057  0226               L773:
1058                     ; 279 }
1061  0226 87            	retf
1095                     ; 287 void UART2_IrDACmd(FunctionalState NewState)
1095                     ; 288 {
1096                     	switch	.text
1097  0227               f_UART2_IrDACmd:
1101                     ; 290     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1103                     ; 292     if (NewState != DISABLE)
1105  0227 4d            	tnz	a
1106  0228 2706          	jreq	L714
1107                     ; 295         UART2->CR5 |= UART2_CR5_IREN;
1109  022a 72125248      	bset	21064,#1
1111  022e 2004          	jra	L124
1112  0230               L714:
1113                     ; 300         UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
1115  0230 72135248      	bres	21064,#1
1116  0234               L124:
1117                     ; 302 }
1120  0234 87            	retf
1178                     ; 311 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1178                     ; 312 {
1179                     	switch	.text
1180  0235               f_UART2_LINBreakDetectionConfig:
1184                     ; 314     assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1186                     ; 316     if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1188  0235 4d            	tnz	a
1189  0236 2706          	jreq	L154
1190                     ; 318         UART2->CR4 |= UART2_CR4_LBDL;
1192  0238 721a5247      	bset	21063,#5
1194  023c 2004          	jra	L354
1195  023e               L154:
1196                     ; 322         UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
1198  023e 721b5247      	bres	21063,#5
1199  0242               L354:
1200                     ; 324 }
1203  0242 87            	retf
1323                     ; 336 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
1323                     ; 337                      UART2_LinAutosync_TypeDef UART2_Autosync, 
1323                     ; 338                      UART2_LinDivUp_TypeDef UART2_DivUp)
1323                     ; 339 {
1324                     	switch	.text
1325  0243               f_UART2_LINConfig:
1327  0243 89            	pushw	x
1328       00000000      OFST:	set	0
1331                     ; 341     assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1333                     ; 342     assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1335                     ; 343     assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1337                     ; 345     if (UART2_Mode != UART2_LIN_MODE_MASTER)
1339  0244 9e            	ld	a,xh
1340  0245 4d            	tnz	a
1341  0246 2706          	jreq	L335
1342                     ; 347         UART2->CR6 |=  UART2_CR6_LSLV;
1344  0248 721a5249      	bset	21065,#5
1346  024c 2004          	jra	L535
1347  024e               L335:
1348                     ; 351         UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
1350  024e 721b5249      	bres	21065,#5
1351  0252               L535:
1352                     ; 354     if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1354  0252 0d02          	tnz	(OFST+2,sp)
1355  0254 2706          	jreq	L735
1356                     ; 356         UART2->CR6 |=  UART2_CR6_LASE ;
1358  0256 72185249      	bset	21065,#4
1360  025a 2004          	jra	L145
1361  025c               L735:
1362                     ; 360         UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
1364  025c 72195249      	bres	21065,#4
1365  0260               L145:
1366                     ; 363     if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1368  0260 0d06          	tnz	(OFST+6,sp)
1369  0262 2706          	jreq	L345
1370                     ; 365         UART2->CR6 |=  UART2_CR6_LDUM;
1372  0264 721e5249      	bset	21065,#7
1374  0268 2004          	jra	L545
1375  026a               L345:
1376                     ; 369         UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
1378  026a 721f5249      	bres	21065,#7
1379  026e               L545:
1380                     ; 371 }
1383  026e 85            	popw	x
1384  026f 87            	retf
1418                     ; 379 void UART2_LINCmd(FunctionalState NewState)
1418                     ; 380 {
1419                     	switch	.text
1420  0270               f_UART2_LINCmd:
1424                     ; 381     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1426                     ; 383     if (NewState != DISABLE)
1428  0270 4d            	tnz	a
1429  0271 2706          	jreq	L565
1430                     ; 386         UART2->CR3 |= UART2_CR3_LINEN;
1432  0273 721c5246      	bset	21062,#6
1434  0277 2004          	jra	L765
1435  0279               L565:
1436                     ; 391         UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
1438  0279 721d5246      	bres	21062,#6
1439  027d               L765:
1440                     ; 393 }
1443  027d 87            	retf
1477                     ; 400 void UART2_SmartCardCmd(FunctionalState NewState)
1477                     ; 401 {
1478                     	switch	.text
1479  027e               f_UART2_SmartCardCmd:
1483                     ; 403     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1485                     ; 405     if (NewState != DISABLE)
1487  027e 4d            	tnz	a
1488  027f 2706          	jreq	L706
1489                     ; 408         UART2->CR5 |= UART2_CR5_SCEN;
1491  0281 721a5248      	bset	21064,#5
1493  0285 2004          	jra	L116
1494  0287               L706:
1495                     ; 413         UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
1497  0287 721b5248      	bres	21064,#5
1498  028b               L116:
1499                     ; 415 }
1502  028b 87            	retf
1537                     ; 423 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1537                     ; 424 {
1538                     	switch	.text
1539  028c               f_UART2_SmartCardNACKCmd:
1543                     ; 426     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1545                     ; 428     if (NewState != DISABLE)
1547  028c 4d            	tnz	a
1548  028d 2706          	jreq	L136
1549                     ; 431         UART2->CR5 |= UART2_CR5_NACK;
1551  028f 72185248      	bset	21064,#4
1553  0293 2004          	jra	L336
1554  0295               L136:
1555                     ; 436         UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
1557  0295 72195248      	bres	21064,#4
1558  0299               L336:
1559                     ; 438 }
1562  0299 87            	retf
1618                     ; 446 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
1618                     ; 447 {
1619                     	switch	.text
1620  029a               f_UART2_WakeUpConfig:
1624                     ; 448     assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
1626                     ; 450     UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
1628  029a 72175244      	bres	21060,#3
1629                     ; 451     UART2->CR1 |= (uint8_t)UART2_WakeUp;
1631  029e ca5244        	or	a,21060
1632  02a1 c75244        	ld	21060,a
1633                     ; 452 }
1636  02a4 87            	retf
1671                     ; 460 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
1671                     ; 461 {
1672                     	switch	.text
1673  02a5               f_UART2_ReceiverWakeUpCmd:
1677                     ; 462     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1679                     ; 464     if (NewState != DISABLE)
1681  02a5 4d            	tnz	a
1682  02a6 2706          	jreq	L107
1683                     ; 467         UART2->CR2 |= UART2_CR2_RWU;
1685  02a8 72125245      	bset	21061,#1
1687  02ac 2004          	jra	L307
1688  02ae               L107:
1689                     ; 472         UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
1691  02ae 72135245      	bres	21061,#1
1692  02b2               L307:
1693                     ; 474 }
1696  02b2 87            	retf
1718                     ; 481 uint8_t UART2_ReceiveData8(void)
1718                     ; 482 {
1719                     	switch	.text
1720  02b3               f_UART2_ReceiveData8:
1724                     ; 483     return ((uint8_t)UART2->DR);
1726  02b3 c65241        	ld	a,21057
1729  02b6 87            	retf
1760                     ; 491 uint16_t UART2_ReceiveData9(void)
1760                     ; 492 {
1761                     	switch	.text
1762  02b7               f_UART2_ReceiveData9:
1764  02b7 89            	pushw	x
1765       00000002      OFST:	set	2
1768                     ; 493   uint16_t temp = 0;
1770                     ; 495   temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
1772  02b8 c65244        	ld	a,21060
1773  02bb 5f            	clrw	x
1774  02bc a480          	and	a,#128
1775  02be 5f            	clrw	x
1776  02bf 02            	rlwa	x,a
1777  02c0 58            	sllw	x
1778  02c1 1f01          	ldw	(OFST-1,sp),x
1779                     ; 497   return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
1781  02c3 c65241        	ld	a,21057
1782  02c6 5f            	clrw	x
1783  02c7 97            	ld	xl,a
1784  02c8 01            	rrwa	x,a
1785  02c9 1a02          	or	a,(OFST+0,sp)
1786  02cb 01            	rrwa	x,a
1787  02cc 1a01          	or	a,(OFST-1,sp)
1788  02ce 01            	rrwa	x,a
1789  02cf 01            	rrwa	x,a
1790  02d0 a4ff          	and	a,#255
1791  02d2 01            	rrwa	x,a
1792  02d3 a401          	and	a,#1
1793  02d5 01            	rrwa	x,a
1796  02d6 5b02          	addw	sp,#2
1797  02d8 87            	retf
1828                     ; 505 void UART2_SendData8(uint8_t Data)
1828                     ; 506 {
1829                     	switch	.text
1830  02d9               f_UART2_SendData8:
1834                     ; 508     UART2->DR = Data;
1836  02d9 c75241        	ld	21057,a
1837                     ; 509 }
1840  02dc 87            	retf
1871                     ; 516 void UART2_SendData9(uint16_t Data)
1871                     ; 517 {
1872                     	switch	.text
1873  02dd               f_UART2_SendData9:
1875  02dd 89            	pushw	x
1876       00000000      OFST:	set	0
1879                     ; 519     UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
1881  02de 721d5244      	bres	21060,#6
1882                     ; 522     UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
1884  02e2 54            	srlw	x
1885  02e3 54            	srlw	x
1886  02e4 9f            	ld	a,xl
1887  02e5 a440          	and	a,#64
1888  02e7 ca5244        	or	a,21060
1889  02ea c75244        	ld	21060,a
1890                     ; 525     UART2->DR   = (uint8_t)(Data);                    
1892  02ed 7b02          	ld	a,(OFST+2,sp)
1893  02ef c75241        	ld	21057,a
1894                     ; 527 }
1897  02f2 85            	popw	x
1898  02f3 87            	retf
1920                     ; 534 void UART2_SendBreak(void)
1920                     ; 535 {
1921                     	switch	.text
1922  02f4               f_UART2_SendBreak:
1926                     ; 536     UART2->CR2 |= UART2_CR2_SBK;
1928  02f4 72105245      	bset	21061,#0
1929                     ; 537 }
1932  02f8 87            	retf
1963                     ; 544 void UART2_SetAddress(uint8_t UART2_Address)
1963                     ; 545 {
1964                     	switch	.text
1965  02f9               f_UART2_SetAddress:
1967  02f9 88            	push	a
1968       00000000      OFST:	set	0
1971                     ; 547     assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
1973                     ; 550     UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
1975  02fa c65247        	ld	a,21063
1976  02fd a4f0          	and	a,#240
1977  02ff c75247        	ld	21063,a
1978                     ; 552     UART2->CR4 |= UART2_Address;
1980  0302 c65247        	ld	a,21063
1981  0305 1a01          	or	a,(OFST+1,sp)
1982  0307 c75247        	ld	21063,a
1983                     ; 553 }
1986  030a 84            	pop	a
1987  030b 87            	retf
2018                     ; 561 void UART2_SetGuardTime(uint8_t UART2_GuardTime)
2018                     ; 562 {
2019                     	switch	.text
2020  030c               f_UART2_SetGuardTime:
2024                     ; 564     UART2->GTR = UART2_GuardTime;
2026  030c c7524a        	ld	21066,a
2027                     ; 565 }
2030  030f 87            	retf
2061                     ; 589 void UART2_SetPrescaler(uint8_t UART2_Prescaler)
2061                     ; 590 {
2062                     	switch	.text
2063  0310               f_UART2_SetPrescaler:
2067                     ; 592     UART2->PSCR = UART2_Prescaler;
2069  0310 c7524b        	ld	21067,a
2070                     ; 593 }
2073  0313 87            	retf
2229                     ; 601 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2229                     ; 602 {
2230                     	switch	.text
2231  0314               f_UART2_GetFlagStatus:
2233  0314 89            	pushw	x
2234  0315 88            	push	a
2235       00000001      OFST:	set	1
2238                     ; 603     FlagStatus status = RESET;
2240                     ; 606     assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2242                     ; 609     if (UART2_FLAG == UART2_FLAG_LBDF)
2244  0316 a30210        	cpw	x,#528
2245  0319 2610          	jrne	L3211
2246                     ; 611         if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2248  031b 9f            	ld	a,xl
2249  031c c45247        	and	a,21063
2250  031f 2706          	jreq	L5211
2251                     ; 614             status = SET;
2253  0321 a601          	ld	a,#1
2254  0323 6b01          	ld	(OFST+0,sp),a
2256  0325 2039          	jra	L1311
2257  0327               L5211:
2258                     ; 619             status = RESET;
2260  0327 0f01          	clr	(OFST+0,sp)
2261  0329 2035          	jra	L1311
2262  032b               L3211:
2263                     ; 622     else if (UART2_FLAG == UART2_FLAG_SBK)
2265  032b 1e02          	ldw	x,(OFST+1,sp)
2266  032d a30101        	cpw	x,#257
2267  0330 2611          	jrne	L3311
2268                     ; 624         if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2270  0332 c65245        	ld	a,21061
2271  0335 1503          	bcp	a,(OFST+2,sp)
2272  0337 2706          	jreq	L5311
2273                     ; 627             status = SET;
2275  0339 a601          	ld	a,#1
2276  033b 6b01          	ld	(OFST+0,sp),a
2278  033d 2021          	jra	L1311
2279  033f               L5311:
2280                     ; 632             status = RESET;
2282  033f 0f01          	clr	(OFST+0,sp)
2283  0341 201d          	jra	L1311
2284  0343               L3311:
2285                     ; 635     else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2287  0343 1e02          	ldw	x,(OFST+1,sp)
2288  0345 a30302        	cpw	x,#770
2289  0348 2707          	jreq	L5411
2291  034a 1e02          	ldw	x,(OFST+1,sp)
2292  034c a30301        	cpw	x,#769
2293  034f 2614          	jrne	L3411
2294  0351               L5411:
2295                     ; 637         if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2297  0351 c65249        	ld	a,21065
2298  0354 1503          	bcp	a,(OFST+2,sp)
2299  0356 2706          	jreq	L7411
2300                     ; 640             status = SET;
2302  0358 a601          	ld	a,#1
2303  035a 6b01          	ld	(OFST+0,sp),a
2305  035c 2002          	jra	L1311
2306  035e               L7411:
2307                     ; 645             status = RESET;
2309  035e 0f01          	clr	(OFST+0,sp)
2310  0360               L1311:
2311                     ; 663     return  status;
2313  0360 7b01          	ld	a,(OFST+0,sp)
2316  0362 5b03          	addw	sp,#3
2317  0364 87            	retf
2318  0365               L3411:
2319                     ; 650         if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2321  0365 c65240        	ld	a,21056
2322  0368 1503          	bcp	a,(OFST+2,sp)
2323  036a 2706          	jreq	L5511
2324                     ; 653             status = SET;
2326  036c a601          	ld	a,#1
2327  036e 6b01          	ld	(OFST+0,sp),a
2329  0370 20ee          	jra	L1311
2330  0372               L5511:
2331                     ; 658             status = RESET;
2333  0372 0f01          	clr	(OFST+0,sp)
2334  0374 20ea          	jra	L1311
2368                     ; 693 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2368                     ; 694 {
2369                     	switch	.text
2370  0376               f_UART2_ClearFlag:
2372  0376 89            	pushw	x
2373       00000000      OFST:	set	0
2376                     ; 695     assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2378                     ; 698     if (UART2_FLAG == UART2_FLAG_RXNE)
2380  0377 a30020        	cpw	x,#32
2381  037a 2606          	jrne	L7711
2382                     ; 700         UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2384  037c 35df5240      	mov	21056,#223
2386  0380 201e          	jra	L1021
2387  0382               L7711:
2388                     ; 703     else if (UART2_FLAG == UART2_FLAG_LBDF)
2390  0382 1e01          	ldw	x,(OFST+1,sp)
2391  0384 a30210        	cpw	x,#528
2392  0387 2606          	jrne	L3021
2393                     ; 705         UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
2395  0389 72195247      	bres	21063,#4
2397  038d 2011          	jra	L1021
2398  038f               L3021:
2399                     ; 708     else if (UART2_FLAG == UART2_FLAG_LHDF)
2401  038f 1e01          	ldw	x,(OFST+1,sp)
2402  0391 a30302        	cpw	x,#770
2403  0394 2606          	jrne	L7021
2404                     ; 710         UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2406  0396 72135249      	bres	21065,#1
2408  039a 2004          	jra	L1021
2409  039c               L7021:
2410                     ; 715         UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
2412  039c 72115249      	bres	21065,#0
2413  03a0               L1021:
2414                     ; 717 }
2417  03a0 85            	popw	x
2418  03a1 87            	retf
2491                     ; 732 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
2491                     ; 733 {
2492                     	switch	.text
2493  03a2               f_UART2_GetITStatus:
2495  03a2 89            	pushw	x
2496  03a3 89            	pushw	x
2497       00000002      OFST:	set	2
2500                     ; 734     ITStatus pendingbitstatus = RESET;
2502                     ; 735     uint8_t itpos = 0;
2504                     ; 736     uint8_t itmask1 = 0;
2506                     ; 737     uint8_t itmask2 = 0;
2508                     ; 738     uint8_t enablestatus = 0;
2510                     ; 741     assert_param(IS_UART2_GET_IT_OK(UART2_IT));
2512                     ; 744     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
2514  03a4 9f            	ld	a,xl
2515  03a5 a40f          	and	a,#15
2516  03a7 5f            	clrw	x
2517  03a8 97            	ld	xl,a
2518  03a9 a601          	ld	a,#1
2519  03ab 5d            	tnzw	x
2520  03ac 2704          	jreq	L27
2521  03ae               L47:
2522  03ae 48            	sll	a
2523  03af 5a            	decw	x
2524  03b0 26fc          	jrne	L47
2525  03b2               L27:
2526  03b2 6b01          	ld	(OFST-1,sp),a
2527                     ; 746     itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
2529  03b4 7b04          	ld	a,(OFST+2,sp)
2530  03b6 4e            	swap	a
2531  03b7 a40f          	and	a,#15
2532  03b9 6b02          	ld	(OFST+0,sp),a
2533                     ; 748     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2535  03bb 7b02          	ld	a,(OFST+0,sp)
2536  03bd 5f            	clrw	x
2537  03be 97            	ld	xl,a
2538  03bf a601          	ld	a,#1
2539  03c1 5d            	tnzw	x
2540  03c2 2704          	jreq	L67
2541  03c4               L001:
2542  03c4 48            	sll	a
2543  03c5 5a            	decw	x
2544  03c6 26fc          	jrne	L001
2545  03c8               L67:
2546  03c8 6b02          	ld	(OFST+0,sp),a
2547                     ; 751     if (UART2_IT == UART2_IT_PE)
2549  03ca 1e03          	ldw	x,(OFST+1,sp)
2550  03cc a30100        	cpw	x,#256
2551  03cf 261c          	jrne	L5421
2552                     ; 754         enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
2554  03d1 c65244        	ld	a,21060
2555  03d4 1402          	and	a,(OFST+0,sp)
2556  03d6 6b02          	ld	(OFST+0,sp),a
2557                     ; 757         if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
2559  03d8 c65240        	ld	a,21056
2560  03db 1501          	bcp	a,(OFST-1,sp)
2561  03dd 270a          	jreq	L7421
2563  03df 0d02          	tnz	(OFST+0,sp)
2564  03e1 2706          	jreq	L7421
2565                     ; 760             pendingbitstatus = SET;
2567  03e3 a601          	ld	a,#1
2568  03e5 6b02          	ld	(OFST+0,sp),a
2570  03e7 2064          	jra	L3521
2571  03e9               L7421:
2572                     ; 765             pendingbitstatus = RESET;
2574  03e9 0f02          	clr	(OFST+0,sp)
2575  03eb 2060          	jra	L3521
2576  03ed               L5421:
2577                     ; 768     else if (UART2_IT == UART2_IT_LBDF)
2579  03ed 1e03          	ldw	x,(OFST+1,sp)
2580  03ef a30346        	cpw	x,#838
2581  03f2 261c          	jrne	L5521
2582                     ; 771         enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
2584  03f4 c65247        	ld	a,21063
2585  03f7 1402          	and	a,(OFST+0,sp)
2586  03f9 6b02          	ld	(OFST+0,sp),a
2587                     ; 773         if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2589  03fb c65247        	ld	a,21063
2590  03fe 1501          	bcp	a,(OFST-1,sp)
2591  0400 270a          	jreq	L7521
2593  0402 0d02          	tnz	(OFST+0,sp)
2594  0404 2706          	jreq	L7521
2595                     ; 776             pendingbitstatus = SET;
2597  0406 a601          	ld	a,#1
2598  0408 6b02          	ld	(OFST+0,sp),a
2600  040a 2041          	jra	L3521
2601  040c               L7521:
2602                     ; 781             pendingbitstatus = RESET;
2604  040c 0f02          	clr	(OFST+0,sp)
2605  040e 203d          	jra	L3521
2606  0410               L5521:
2607                     ; 784     else if (UART2_IT == UART2_IT_LHDF)
2609  0410 1e03          	ldw	x,(OFST+1,sp)
2610  0412 a30412        	cpw	x,#1042
2611  0415 261c          	jrne	L5621
2612                     ; 787         enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
2614  0417 c65249        	ld	a,21065
2615  041a 1402          	and	a,(OFST+0,sp)
2616  041c 6b02          	ld	(OFST+0,sp),a
2617                     ; 789         if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2619  041e c65249        	ld	a,21065
2620  0421 1501          	bcp	a,(OFST-1,sp)
2621  0423 270a          	jreq	L7621
2623  0425 0d02          	tnz	(OFST+0,sp)
2624  0427 2706          	jreq	L7621
2625                     ; 792             pendingbitstatus = SET;
2627  0429 a601          	ld	a,#1
2628  042b 6b02          	ld	(OFST+0,sp),a
2630  042d 201e          	jra	L3521
2631  042f               L7621:
2632                     ; 797             pendingbitstatus = RESET;
2634  042f 0f02          	clr	(OFST+0,sp)
2635  0431 201a          	jra	L3521
2636  0433               L5621:
2637                     ; 803         enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
2639  0433 c65245        	ld	a,21061
2640  0436 1402          	and	a,(OFST+0,sp)
2641  0438 6b02          	ld	(OFST+0,sp),a
2642                     ; 805         if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
2644  043a c65240        	ld	a,21056
2645  043d 1501          	bcp	a,(OFST-1,sp)
2646  043f 270a          	jreq	L5721
2648  0441 0d02          	tnz	(OFST+0,sp)
2649  0443 2706          	jreq	L5721
2650                     ; 808             pendingbitstatus = SET;
2652  0445 a601          	ld	a,#1
2653  0447 6b02          	ld	(OFST+0,sp),a
2655  0449 2002          	jra	L3521
2656  044b               L5721:
2657                     ; 813             pendingbitstatus = RESET;
2659  044b 0f02          	clr	(OFST+0,sp)
2660  044d               L3521:
2661                     ; 817     return  pendingbitstatus;
2663  044d 7b02          	ld	a,(OFST+0,sp)
2666  044f 5b04          	addw	sp,#4
2667  0451 87            	retf
2702                     ; 846 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
2702                     ; 847 {
2703                     	switch	.text
2704  0452               f_UART2_ClearITPendingBit:
2706  0452 89            	pushw	x
2707       00000000      OFST:	set	0
2710                     ; 848     assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
2712                     ; 851     if (UART2_IT == UART2_IT_RXNE)
2714  0453 a30255        	cpw	x,#597
2715  0456 2606          	jrne	L7131
2716                     ; 853         UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2718  0458 35df5240      	mov	21056,#223
2720  045c 2011          	jra	L1231
2721  045e               L7131:
2722                     ; 856     else if (UART2_IT == UART2_IT_LBDF)
2724  045e 1e01          	ldw	x,(OFST+1,sp)
2725  0460 a30346        	cpw	x,#838
2726  0463 2606          	jrne	L3231
2727                     ; 858         UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
2729  0465 72195247      	bres	21063,#4
2731  0469 2004          	jra	L1231
2732  046b               L3231:
2733                     ; 863         UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2735  046b 72135249      	bres	21065,#1
2736  046f               L1231:
2737                     ; 865 }
2740  046f 85            	popw	x
2741  0470 87            	retf
2753                     	xdef	f_UART2_ClearITPendingBit
2754                     	xdef	f_UART2_GetITStatus
2755                     	xdef	f_UART2_ClearFlag
2756                     	xdef	f_UART2_GetFlagStatus
2757                     	xdef	f_UART2_SetPrescaler
2758                     	xdef	f_UART2_SetGuardTime
2759                     	xdef	f_UART2_SetAddress
2760                     	xdef	f_UART2_SendBreak
2761                     	xdef	f_UART2_SendData9
2762                     	xdef	f_UART2_SendData8
2763                     	xdef	f_UART2_ReceiveData9
2764                     	xdef	f_UART2_ReceiveData8
2765                     	xdef	f_UART2_ReceiverWakeUpCmd
2766                     	xdef	f_UART2_WakeUpConfig
2767                     	xdef	f_UART2_SmartCardNACKCmd
2768                     	xdef	f_UART2_SmartCardCmd
2769                     	xdef	f_UART2_LINCmd
2770                     	xdef	f_UART2_LINConfig
2771                     	xdef	f_UART2_LINBreakDetectionConfig
2772                     	xdef	f_UART2_IrDACmd
2773                     	xdef	f_UART2_IrDAConfig
2774                     	xdef	f_UART2_ITConfig
2775                     	xdef	f_UART2_Cmd
2776                     	xdef	f_UART2_Init
2777                     	xdef	f_UART2_DeInit
2778                     	xref	f_CLK_GetClockFreq
2779                     	xref.b	c_lreg
2780                     	xref.b	c_x
2799                     	xref	d_lursh
2800                     	xref	d_lsub
2801                     	xref	d_smul
2802                     	xref	d_ludv
2803                     	xref	d_rtol
2804                     	xref	d_llsh
2805                     	xref	d_ltor
2806                     	end
