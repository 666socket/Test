   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 61 void I2C_DeInit(void)
  43                     ; 62 {
  44                     	switch	.text
  45  0000               f_I2C_DeInit:
  49                     ; 63   I2C->CR1 = I2C_CR1_RESET_VALUE;
  51  0000 725f5210      	clr	21008
  52                     ; 64   I2C->CR2 = I2C_CR2_RESET_VALUE;
  54  0004 725f5211      	clr	21009
  55                     ; 65   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  57  0008 725f5212      	clr	21010
  58                     ; 66   I2C->OARL = I2C_OARL_RESET_VALUE;
  60  000c 725f5213      	clr	21011
  61                     ; 67   I2C->OARH = I2C_OARH_RESET_VALUE;
  63  0010 725f5214      	clr	21012
  64                     ; 68   I2C->ITR = I2C_ITR_RESET_VALUE;
  66  0014 725f521a      	clr	21018
  67                     ; 69   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  69  0018 725f521b      	clr	21019
  70                     ; 70   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  72  001c 725f521c      	clr	21020
  73                     ; 71   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  75  0020 3502521d      	mov	21021,#2
  76                     ; 72 }
  79  0024 87            	retf
 245                     .const:	section	.text
 246  0000               L01:
 247  0000 000186a1      	dc.l	100001
 248  0004               L21:
 249  0004 000f4240      	dc.l	1000000
 250                     ; 90 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 250                     ; 91               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 250                     ; 92               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 250                     ; 93 {
 251                     	switch	.text
 252  0025               f_I2C_Init:
 254  0025 5209          	subw	sp,#9
 255       00000009      OFST:	set	9
 258                     ; 94   uint16_t result = 0x0004;
 260                     ; 95   uint16_t tmpval = 0;
 262                     ; 96   uint8_t tmpccrh = 0;
 264  0027 0f07          	clr	(OFST-2,sp)
 265                     ; 99   assert_param(IS_I2C_ACK_OK(Ack));
 267                     ; 100   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 269                     ; 101   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 271                     ; 102   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 273                     ; 103   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 275                     ; 104   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 277                     ; 109   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 279  0029 c65212        	ld	a,21010
 280  002c a4c0          	and	a,#192
 281  002e c75212        	ld	21010,a
 282                     ; 111   I2C->FREQR |= InputClockFrequencyMHz;
 284  0031 c65212        	ld	a,21010
 285  0034 1a16          	or	a,(OFST+13,sp)
 286  0036 c75212        	ld	21010,a
 287                     ; 115   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 289  0039 72115210      	bres	21008,#0
 290                     ; 118   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 292  003d c6521c        	ld	a,21020
 293  0040 a430          	and	a,#48
 294  0042 c7521c        	ld	21020,a
 295                     ; 119   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 297  0045 725f521b      	clr	21019
 298                     ; 122   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 300  0049 96            	ldw	x,sp
 301  004a 1c000d        	addw	x,#OFST+4
 302  004d 8d000000      	callf	d_ltor
 304  0051 ae0000        	ldw	x,#L01
 305  0054 8d000000      	callf	d_lcmp
 307  0058 2404          	jruge	L41
 308  005a acf300f3      	jpf	L511
 309  005e               L41:
 310                     ; 125     tmpccrh = I2C_CCRH_FS;
 312  005e a680          	ld	a,#128
 313  0060 6b07          	ld	(OFST-2,sp),a
 314                     ; 127     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 316  0062 0d13          	tnz	(OFST+10,sp)
 317  0064 2635          	jrne	L711
 318                     ; 130       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 320  0066 96            	ldw	x,sp
 321  0067 1c000d        	addw	x,#OFST+4
 322  006a 8d000000      	callf	d_ltor
 324  006e a603          	ld	a,#3
 325  0070 8d000000      	callf	d_smul
 327  0074 96            	ldw	x,sp
 328  0075 1c0001        	addw	x,#OFST-8
 329  0078 8d000000      	callf	d_rtol
 331  007c 7b16          	ld	a,(OFST+13,sp)
 332  007e b703          	ld	c_lreg+3,a
 333  0080 3f02          	clr	c_lreg+2
 334  0082 3f01          	clr	c_lreg+1
 335  0084 3f00          	clr	c_lreg
 336  0086 ae0004        	ldw	x,#L21
 337  0089 8d000000      	callf	d_lmul
 339  008d 96            	ldw	x,sp
 340  008e 1c0001        	addw	x,#OFST-8
 341  0091 8d000000      	callf	d_ludv
 343  0095 be02          	ldw	x,c_lreg+2
 344  0097 1f08          	ldw	(OFST-1,sp),x
 346  0099 2039          	jra	L121
 347  009b               L711:
 348                     ; 135       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 350  009b 96            	ldw	x,sp
 351  009c 1c000d        	addw	x,#OFST+4
 352  009f 8d000000      	callf	d_ltor
 354  00a3 a619          	ld	a,#25
 355  00a5 8d000000      	callf	d_smul
 357  00a9 96            	ldw	x,sp
 358  00aa 1c0001        	addw	x,#OFST-8
 359  00ad 8d000000      	callf	d_rtol
 361  00b1 7b16          	ld	a,(OFST+13,sp)
 362  00b3 b703          	ld	c_lreg+3,a
 363  00b5 3f02          	clr	c_lreg+2
 364  00b7 3f01          	clr	c_lreg+1
 365  00b9 3f00          	clr	c_lreg
 366  00bb ae0004        	ldw	x,#L21
 367  00be 8d000000      	callf	d_lmul
 369  00c2 96            	ldw	x,sp
 370  00c3 1c0001        	addw	x,#OFST-8
 371  00c6 8d000000      	callf	d_ludv
 373  00ca be02          	ldw	x,c_lreg+2
 374  00cc 1f08          	ldw	(OFST-1,sp),x
 375                     ; 137       tmpccrh |= I2C_CCRH_DUTY;
 377  00ce 7b07          	ld	a,(OFST-2,sp)
 378  00d0 aa40          	or	a,#64
 379  00d2 6b07          	ld	(OFST-2,sp),a
 380  00d4               L121:
 381                     ; 141     if (result < (uint16_t)0x01)
 383  00d4 1e08          	ldw	x,(OFST-1,sp)
 384  00d6 2605          	jrne	L321
 385                     ; 144       result = (uint16_t)0x0001;
 387  00d8 ae0001        	ldw	x,#1
 388  00db 1f08          	ldw	(OFST-1,sp),x
 389  00dd               L321:
 390                     ; 150     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 392  00dd 7b16          	ld	a,(OFST+13,sp)
 393  00df 97            	ld	xl,a
 394  00e0 a603          	ld	a,#3
 395  00e2 42            	mul	x,a
 396  00e3 a60a          	ld	a,#10
 397  00e5 8d000000      	callf	d_sdivx
 399  00e9 5c            	incw	x
 400  00ea 1f05          	ldw	(OFST-4,sp),x
 401                     ; 151     I2C->TRISER = (uint8_t)tmpval;
 403  00ec 7b06          	ld	a,(OFST-3,sp)
 404  00ee c7521d        	ld	21021,a
 406  00f1 2047          	jra	L521
 407  00f3               L511:
 408                     ; 158     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 410  00f3 96            	ldw	x,sp
 411  00f4 1c000d        	addw	x,#OFST+4
 412  00f7 8d000000      	callf	d_ltor
 414  00fb 3803          	sll	c_lreg+3
 415  00fd 3902          	rlc	c_lreg+2
 416  00ff 3901          	rlc	c_lreg+1
 417  0101 3900          	rlc	c_lreg
 418  0103 96            	ldw	x,sp
 419  0104 1c0001        	addw	x,#OFST-8
 420  0107 8d000000      	callf	d_rtol
 422  010b 7b16          	ld	a,(OFST+13,sp)
 423  010d b703          	ld	c_lreg+3,a
 424  010f 3f02          	clr	c_lreg+2
 425  0111 3f01          	clr	c_lreg+1
 426  0113 3f00          	clr	c_lreg
 427  0115 ae0004        	ldw	x,#L21
 428  0118 8d000000      	callf	d_lmul
 430  011c 96            	ldw	x,sp
 431  011d 1c0001        	addw	x,#OFST-8
 432  0120 8d000000      	callf	d_ludv
 434  0124 be02          	ldw	x,c_lreg+2
 435  0126 1f08          	ldw	(OFST-1,sp),x
 436                     ; 161     if (result < (uint16_t)0x0004)
 438  0128 1e08          	ldw	x,(OFST-1,sp)
 439  012a a30004        	cpw	x,#4
 440  012d 2405          	jruge	L721
 441                     ; 164       result = (uint16_t)0x0004;
 443  012f ae0004        	ldw	x,#4
 444  0132 1f08          	ldw	(OFST-1,sp),x
 445  0134               L721:
 446                     ; 170     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 448  0134 7b16          	ld	a,(OFST+13,sp)
 449  0136 4c            	inc	a
 450  0137 c7521d        	ld	21021,a
 451  013a               L521:
 452                     ; 175   I2C->CCRL = (uint8_t)result;
 454  013a 7b09          	ld	a,(OFST+0,sp)
 455  013c c7521b        	ld	21019,a
 456                     ; 176   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 458  013f 7b08          	ld	a,(OFST-1,sp)
 459  0141 a40f          	and	a,#15
 460  0143 1a07          	or	a,(OFST-2,sp)
 461  0145 c7521c        	ld	21020,a
 462                     ; 179   I2C->CR1 |= I2C_CR1_PE;
 464  0148 72105210      	bset	21008,#0
 465                     ; 182   I2C_AcknowledgeConfig(Ack);
 467  014c 7b14          	ld	a,(OFST+11,sp)
 468  014e 8dc901c9      	callf	f_I2C_AcknowledgeConfig
 470                     ; 185   I2C->OARL = (uint8_t)(OwnAddress);
 472  0152 7b12          	ld	a,(OFST+9,sp)
 473  0154 c75213        	ld	21011,a
 474                     ; 186   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 474                     ; 187                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 476  0157 7b11          	ld	a,(OFST+8,sp)
 477  0159 97            	ld	xl,a
 478  015a 7b12          	ld	a,(OFST+9,sp)
 479  015c 9f            	ld	a,xl
 480  015d a403          	and	a,#3
 481  015f 97            	ld	xl,a
 482  0160 4f            	clr	a
 483  0161 02            	rlwa	x,a
 484  0162 4f            	clr	a
 485  0163 01            	rrwa	x,a
 486  0164 48            	sll	a
 487  0165 59            	rlcw	x
 488  0166 9f            	ld	a,xl
 489  0167 6b04          	ld	(OFST-5,sp),a
 490  0169 7b15          	ld	a,(OFST+12,sp)
 491  016b aa40          	or	a,#64
 492  016d 1a04          	or	a,(OFST-5,sp)
 493  016f c75214        	ld	21012,a
 494                     ; 188 }
 497  0172 5b09          	addw	sp,#9
 498  0174 87            	retf
 552                     ; 196 void I2C_Cmd(FunctionalState NewState)
 552                     ; 197 {
 553                     	switch	.text
 554  0175               f_I2C_Cmd:
 558                     ; 200   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 560                     ; 202   if (NewState != DISABLE)
 562  0175 4d            	tnz	a
 563  0176 2706          	jreq	L751
 564                     ; 205     I2C->CR1 |= I2C_CR1_PE;
 566  0178 72105210      	bset	21008,#0
 568  017c 2004          	jra	L161
 569  017e               L751:
 570                     ; 210     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 572  017e 72115210      	bres	21008,#0
 573  0182               L161:
 574                     ; 212 }
 577  0182 87            	retf
 611                     ; 220 void I2C_GeneralCallCmd(FunctionalState NewState)
 611                     ; 221 {
 612                     	switch	.text
 613  0183               f_I2C_GeneralCallCmd:
 617                     ; 224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 619                     ; 226   if (NewState != DISABLE)
 621  0183 4d            	tnz	a
 622  0184 2706          	jreq	L102
 623                     ; 229     I2C->CR1 |= I2C_CR1_ENGC;
 625  0186 721c5210      	bset	21008,#6
 627  018a 2004          	jra	L302
 628  018c               L102:
 629                     ; 234     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 631  018c 721d5210      	bres	21008,#6
 632  0190               L302:
 633                     ; 236 }
 636  0190 87            	retf
 670                     ; 246 void I2C_GenerateSTART(FunctionalState NewState)
 670                     ; 247 {
 671                     	switch	.text
 672  0191               f_I2C_GenerateSTART:
 676                     ; 250   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 678                     ; 252   if (NewState != DISABLE)
 680  0191 4d            	tnz	a
 681  0192 2706          	jreq	L322
 682                     ; 255     I2C->CR2 |= I2C_CR2_START;
 684  0194 72105211      	bset	21009,#0
 686  0198 2004          	jra	L522
 687  019a               L322:
 688                     ; 260     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 690  019a 72115211      	bres	21009,#0
 691  019e               L522:
 692                     ; 262 }
 695  019e 87            	retf
 729                     ; 270 void I2C_GenerateSTOP(FunctionalState NewState)
 729                     ; 271 {
 730                     	switch	.text
 731  019f               f_I2C_GenerateSTOP:
 735                     ; 274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 737                     ; 276   if (NewState != DISABLE)
 739  019f 4d            	tnz	a
 740  01a0 2706          	jreq	L542
 741                     ; 279     I2C->CR2 |= I2C_CR2_STOP;
 743  01a2 72125211      	bset	21009,#1
 745  01a6 2004          	jra	L742
 746  01a8               L542:
 747                     ; 284     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 749  01a8 72135211      	bres	21009,#1
 750  01ac               L742:
 751                     ; 286 }
 754  01ac 87            	retf
 789                     ; 294 void I2C_SoftwareResetCmd(FunctionalState NewState)
 789                     ; 295 {
 790                     	switch	.text
 791  01ad               f_I2C_SoftwareResetCmd:
 795                     ; 297   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 797                     ; 299   if (NewState != DISABLE)
 799  01ad 4d            	tnz	a
 800  01ae 2706          	jreq	L762
 801                     ; 302     I2C->CR2 |= I2C_CR2_SWRST;
 803  01b0 721e5211      	bset	21009,#7
 805  01b4 2004          	jra	L172
 806  01b6               L762:
 807                     ; 307     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 809  01b6 721f5211      	bres	21009,#7
 810  01ba               L172:
 811                     ; 309 }
 814  01ba 87            	retf
 849                     ; 318 void I2C_StretchClockCmd(FunctionalState NewState)
 849                     ; 319 {
 850                     	switch	.text
 851  01bb               f_I2C_StretchClockCmd:
 855                     ; 321   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 857                     ; 323   if (NewState != DISABLE)
 859  01bb 4d            	tnz	a
 860  01bc 2706          	jreq	L113
 861                     ; 326     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
 863  01be 721f5210      	bres	21008,#7
 865  01c2 2004          	jra	L313
 866  01c4               L113:
 867                     ; 332     I2C->CR1 |= I2C_CR1_NOSTRETCH;
 869  01c4 721e5210      	bset	21008,#7
 870  01c8               L313:
 871                     ; 334 }
 874  01c8 87            	retf
 909                     ; 343 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
 909                     ; 344 {
 910                     	switch	.text
 911  01c9               f_I2C_AcknowledgeConfig:
 913  01c9 88            	push	a
 914       00000000      OFST:	set	0
 917                     ; 347   assert_param(IS_I2C_ACK_OK(Ack));
 919                     ; 349   if (Ack == I2C_ACK_NONE)
 921  01ca 4d            	tnz	a
 922  01cb 2606          	jrne	L333
 923                     ; 352     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
 925  01cd 72155211      	bres	21009,#2
 927  01d1 2014          	jra	L533
 928  01d3               L333:
 929                     ; 357     I2C->CR2 |= I2C_CR2_ACK;
 931  01d3 72145211      	bset	21009,#2
 932                     ; 359     if (Ack == I2C_ACK_CURR)
 934  01d7 7b01          	ld	a,(OFST+1,sp)
 935  01d9 a101          	cp	a,#1
 936  01db 2606          	jrne	L733
 937                     ; 362       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
 939  01dd 72175211      	bres	21009,#3
 941  01e1 2004          	jra	L533
 942  01e3               L733:
 943                     ; 367       I2C->CR2 |= I2C_CR2_POS;
 945  01e3 72165211      	bset	21009,#3
 946  01e7               L533:
 947                     ; 370 }
 950  01e7 84            	pop	a
 951  01e8 87            	retf
1022                     ; 380 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1022                     ; 381 {
1023                     	switch	.text
1024  01e9               f_I2C_ITConfig:
1026  01e9 89            	pushw	x
1027       00000000      OFST:	set	0
1030                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1032                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1034                     ; 387   if (NewState != DISABLE)
1036  01ea 9f            	ld	a,xl
1037  01eb 4d            	tnz	a
1038  01ec 2709          	jreq	L773
1039                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1041  01ee 9e            	ld	a,xh
1042  01ef ca521a        	or	a,21018
1043  01f2 c7521a        	ld	21018,a
1045  01f5 2009          	jra	L104
1046  01f7               L773:
1047                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1049  01f7 7b01          	ld	a,(OFST+1,sp)
1050  01f9 43            	cpl	a
1051  01fa c4521a        	and	a,21018
1052  01fd c7521a        	ld	21018,a
1053  0200               L104:
1054                     ; 397 }
1057  0200 85            	popw	x
1058  0201 87            	retf
1093                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1093                     ; 406 {
1094                     	switch	.text
1095  0202               f_I2C_FastModeDutyCycleConfig:
1099                     ; 409   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1101                     ; 411   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1103  0202 a140          	cp	a,#64
1104  0204 2606          	jrne	L124
1105                     ; 414     I2C->CCRH |= I2C_CCRH_DUTY;
1107  0206 721c521c      	bset	21020,#6
1109  020a 2004          	jra	L324
1110  020c               L124:
1111                     ; 419     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1113  020c 721d521c      	bres	21020,#6
1114  0210               L324:
1115                     ; 421 }
1118  0210 87            	retf
1140                     ; 428 uint8_t I2C_ReceiveData(void)
1140                     ; 429 {
1141                     	switch	.text
1142  0211               f_I2C_ReceiveData:
1146                     ; 431   return ((uint8_t)I2C->DR);
1148  0211 c65216        	ld	a,21014
1151  0214 87            	retf
1213                     ; 441 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1213                     ; 442 {
1214                     	switch	.text
1215  0215               f_I2C_Send7bitAddress:
1217  0215 89            	pushw	x
1218       00000000      OFST:	set	0
1221                     ; 444   assert_param(IS_I2C_ADDRESS_OK(Address));
1223                     ; 445   assert_param(IS_I2C_DIRECTION_OK(Direction));
1225                     ; 448   Address &= (uint8_t)0xFE;
1227  0216 7b01          	ld	a,(OFST+1,sp)
1228  0218 a4fe          	and	a,#254
1229  021a 6b01          	ld	(OFST+1,sp),a
1230                     ; 451   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1232  021c 7b01          	ld	a,(OFST+1,sp)
1233  021e 1a02          	or	a,(OFST+2,sp)
1234  0220 c75216        	ld	21014,a
1235                     ; 452 }
1238  0223 85            	popw	x
1239  0224 87            	retf
1270                     ; 459 void I2C_SendData(uint8_t Data)
1270                     ; 460 {
1271                     	switch	.text
1272  0225               f_I2C_SendData:
1276                     ; 462   I2C->DR = Data;
1278  0225 c75216        	ld	21014,a
1279                     ; 463 }
1282  0228 87            	retf
1501                     ; 579 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1501                     ; 580 {
1502                     	switch	.text
1503  0229               f_I2C_CheckEvent:
1505  0229 89            	pushw	x
1506  022a 5206          	subw	sp,#6
1507       00000006      OFST:	set	6
1510                     ; 581   __IO uint16_t lastevent = 0x00;
1512  022c 5f            	clrw	x
1513  022d 1f04          	ldw	(OFST-2,sp),x
1514                     ; 582   uint8_t flag1 = 0x00 ;
1516                     ; 583   uint8_t flag2 = 0x00;
1518                     ; 584   ErrorStatus status = ERROR;
1520                     ; 587   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1522                     ; 589   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1524  022f 1e07          	ldw	x,(OFST+1,sp)
1525  0231 a30004        	cpw	x,#4
1526  0234 260b          	jrne	L506
1527                     ; 591     lastevent = I2C->SR2 & I2C_SR2_AF;
1529  0236 c65218        	ld	a,21016
1530  0239 a404          	and	a,#4
1531  023b 5f            	clrw	x
1532  023c 97            	ld	xl,a
1533  023d 1f04          	ldw	(OFST-2,sp),x
1535  023f 201f          	jra	L706
1536  0241               L506:
1537                     ; 595     flag1 = I2C->SR1;
1539  0241 c65217        	ld	a,21015
1540  0244 6b03          	ld	(OFST-3,sp),a
1541                     ; 596     flag2 = I2C->SR3;
1543  0246 c65219        	ld	a,21017
1544  0249 6b06          	ld	(OFST+0,sp),a
1545                     ; 597     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1547  024b 7b03          	ld	a,(OFST-3,sp)
1548  024d 5f            	clrw	x
1549  024e 97            	ld	xl,a
1550  024f 1f01          	ldw	(OFST-5,sp),x
1551  0251 7b06          	ld	a,(OFST+0,sp)
1552  0253 5f            	clrw	x
1553  0254 97            	ld	xl,a
1554  0255 4f            	clr	a
1555  0256 02            	rlwa	x,a
1556  0257 01            	rrwa	x,a
1557  0258 1a02          	or	a,(OFST-4,sp)
1558  025a 01            	rrwa	x,a
1559  025b 1a01          	or	a,(OFST-5,sp)
1560  025d 01            	rrwa	x,a
1561  025e 1f04          	ldw	(OFST-2,sp),x
1562  0260               L706:
1563                     ; 600   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1565  0260 1e04          	ldw	x,(OFST-2,sp)
1566  0262 01            	rrwa	x,a
1567  0263 1408          	and	a,(OFST+2,sp)
1568  0265 01            	rrwa	x,a
1569  0266 1407          	and	a,(OFST+1,sp)
1570  0268 01            	rrwa	x,a
1571  0269 1307          	cpw	x,(OFST+1,sp)
1572  026b 2606          	jrne	L116
1573                     ; 603     status = SUCCESS;
1575  026d a601          	ld	a,#1
1576  026f 6b06          	ld	(OFST+0,sp),a
1578  0271 2002          	jra	L316
1579  0273               L116:
1580                     ; 608     status = ERROR;
1582  0273 0f06          	clr	(OFST+0,sp)
1583  0275               L316:
1584                     ; 612   return status;
1586  0275 7b06          	ld	a,(OFST+0,sp)
1589  0277 5b08          	addw	sp,#8
1590  0279 87            	retf
1638                     ; 629 I2C_Event_TypeDef I2C_GetLastEvent(void)
1638                     ; 630 {
1639                     	switch	.text
1640  027a               f_I2C_GetLastEvent:
1642  027a 5206          	subw	sp,#6
1643       00000006      OFST:	set	6
1646                     ; 631   __IO uint16_t lastevent = 0;
1648  027c 5f            	clrw	x
1649  027d 1f05          	ldw	(OFST-1,sp),x
1650                     ; 632   uint16_t flag1 = 0;
1652                     ; 633   uint16_t flag2 = 0;
1654                     ; 635   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1656  027f c65218        	ld	a,21016
1657  0282 a504          	bcp	a,#4
1658  0284 2707          	jreq	L736
1659                     ; 637     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1661  0286 ae0004        	ldw	x,#4
1662  0289 1f05          	ldw	(OFST-1,sp),x
1664  028b 201b          	jra	L146
1665  028d               L736:
1666                     ; 642     flag1 = I2C->SR1;
1668  028d c65217        	ld	a,21015
1669  0290 5f            	clrw	x
1670  0291 97            	ld	xl,a
1671  0292 1f01          	ldw	(OFST-5,sp),x
1672                     ; 643     flag2 = I2C->SR3;
1674  0294 c65219        	ld	a,21017
1675  0297 5f            	clrw	x
1676  0298 97            	ld	xl,a
1677  0299 1f03          	ldw	(OFST-3,sp),x
1678                     ; 646     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1680  029b 1e03          	ldw	x,(OFST-3,sp)
1681  029d 4f            	clr	a
1682  029e 02            	rlwa	x,a
1683  029f 01            	rrwa	x,a
1684  02a0 1a02          	or	a,(OFST-4,sp)
1685  02a2 01            	rrwa	x,a
1686  02a3 1a01          	or	a,(OFST-5,sp)
1687  02a5 01            	rrwa	x,a
1688  02a6 1f05          	ldw	(OFST-1,sp),x
1689  02a8               L146:
1690                     ; 649   return (I2C_Event_TypeDef)lastevent;
1692  02a8 1e05          	ldw	x,(OFST-1,sp)
1695  02aa 5b06          	addw	sp,#6
1696  02ac 87            	retf
1906                     ; 680 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
1906                     ; 681 {
1907                     	switch	.text
1908  02ad               f_I2C_GetFlagStatus:
1910  02ad 89            	pushw	x
1911  02ae 89            	pushw	x
1912       00000002      OFST:	set	2
1915                     ; 682   uint8_t tempreg = 0;
1917  02af 0f02          	clr	(OFST+0,sp)
1918                     ; 683   uint8_t regindex = 0;
1920                     ; 684   FlagStatus bitstatus = RESET;
1922                     ; 687   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
1924                     ; 690   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
1926  02b1 9e            	ld	a,xh
1927  02b2 6b01          	ld	(OFST-1,sp),a
1928                     ; 692   switch (regindex)
1930  02b4 7b01          	ld	a,(OFST-1,sp)
1932                     ; 709     default:
1932                     ; 710       break;
1933  02b6 4a            	dec	a
1934  02b7 2708          	jreq	L346
1935  02b9 4a            	dec	a
1936  02ba 270c          	jreq	L546
1937  02bc 4a            	dec	a
1938  02bd 2710          	jreq	L746
1939  02bf 2013          	jra	L757
1940  02c1               L346:
1941                     ; 695     case 0x01:
1941                     ; 696       tempreg = (uint8_t)I2C->SR1;
1943  02c1 c65217        	ld	a,21015
1944  02c4 6b02          	ld	(OFST+0,sp),a
1945                     ; 697       break;
1947  02c6 200c          	jra	L757
1948  02c8               L546:
1949                     ; 700     case 0x02:
1949                     ; 701       tempreg = (uint8_t)I2C->SR2;
1951  02c8 c65218        	ld	a,21016
1952  02cb 6b02          	ld	(OFST+0,sp),a
1953                     ; 702       break;
1955  02cd 2005          	jra	L757
1956  02cf               L746:
1957                     ; 705     case 0x03:
1957                     ; 706       tempreg = (uint8_t)I2C->SR3;
1959  02cf c65219        	ld	a,21017
1960  02d2 6b02          	ld	(OFST+0,sp),a
1961                     ; 707       break;
1963  02d4               L156:
1964                     ; 709     default:
1964                     ; 710       break;
1966  02d4               L757:
1967                     ; 714   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
1969  02d4 7b04          	ld	a,(OFST+2,sp)
1970  02d6 1502          	bcp	a,(OFST+0,sp)
1971  02d8 2706          	jreq	L167
1972                     ; 717     bitstatus = SET;
1974  02da a601          	ld	a,#1
1975  02dc 6b02          	ld	(OFST+0,sp),a
1977  02de 2002          	jra	L367
1978  02e0               L167:
1979                     ; 722     bitstatus = RESET;
1981  02e0 0f02          	clr	(OFST+0,sp)
1982  02e2               L367:
1983                     ; 725   return bitstatus;
1985  02e2 7b02          	ld	a,(OFST+0,sp)
1988  02e4 5b04          	addw	sp,#4
1989  02e6 87            	retf
2030                     ; 760 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2030                     ; 761 {
2031                     	switch	.text
2032  02e7               f_I2C_ClearFlag:
2034  02e7 89            	pushw	x
2035       00000002      OFST:	set	2
2038                     ; 762   uint16_t flagpos = 0;
2040                     ; 764   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2042                     ; 767   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2044  02e8 01            	rrwa	x,a
2045  02e9 a4ff          	and	a,#255
2046  02eb 5f            	clrw	x
2047  02ec 02            	rlwa	x,a
2048  02ed 1f01          	ldw	(OFST-1,sp),x
2049  02ef 01            	rrwa	x,a
2050                     ; 769   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2052  02f0 7b02          	ld	a,(OFST+0,sp)
2053  02f2 43            	cpl	a
2054  02f3 c75218        	ld	21016,a
2055                     ; 770 }
2058  02f6 85            	popw	x
2059  02f7 87            	retf
2222                     ; 792 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2222                     ; 793 {
2223                     	switch	.text
2224  02f8               f_I2C_GetITStatus:
2226  02f8 89            	pushw	x
2227  02f9 5204          	subw	sp,#4
2228       00000004      OFST:	set	4
2231                     ; 794   ITStatus bitstatus = RESET;
2233                     ; 795   __IO uint8_t enablestatus = 0;
2235  02fb 0f03          	clr	(OFST-1,sp)
2236                     ; 796   uint16_t tempregister = 0;
2238                     ; 799     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2240                     ; 801   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2242  02fd 01            	rrwa	x,a
2243  02fe 9f            	ld	a,xl
2244  02ff a407          	and	a,#7
2245  0301 97            	ld	xl,a
2246  0302 4f            	clr	a
2247  0303 02            	rlwa	x,a
2248  0304 4f            	clr	a
2249  0305 01            	rrwa	x,a
2250  0306 9f            	ld	a,xl
2251  0307 5f            	clrw	x
2252  0308 97            	ld	xl,a
2253  0309 1f01          	ldw	(OFST-3,sp),x
2254                     ; 804   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2256  030b c6521a        	ld	a,21018
2257  030e 1402          	and	a,(OFST-2,sp)
2258  0310 6b03          	ld	(OFST-1,sp),a
2259                     ; 806   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2261  0312 7b05          	ld	a,(OFST+1,sp)
2262  0314 97            	ld	xl,a
2263  0315 7b06          	ld	a,(OFST+2,sp)
2264  0317 9f            	ld	a,xl
2265  0318 a430          	and	a,#48
2266  031a 97            	ld	xl,a
2267  031b 4f            	clr	a
2268  031c 02            	rlwa	x,a
2269  031d a30100        	cpw	x,#256
2270  0320 2615          	jrne	L1701
2271                     ; 809     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2273  0322 c65217        	ld	a,21015
2274  0325 1506          	bcp	a,(OFST+2,sp)
2275  0327 270a          	jreq	L3701
2277  0329 0d03          	tnz	(OFST-1,sp)
2278  032b 2706          	jreq	L3701
2279                     ; 812       bitstatus = SET;
2281  032d a601          	ld	a,#1
2282  032f 6b04          	ld	(OFST+0,sp),a
2284  0331 2017          	jra	L7701
2285  0333               L3701:
2286                     ; 817       bitstatus = RESET;
2288  0333 0f04          	clr	(OFST+0,sp)
2289  0335 2013          	jra	L7701
2290  0337               L1701:
2291                     ; 823     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2293  0337 c65218        	ld	a,21016
2294  033a 1506          	bcp	a,(OFST+2,sp)
2295  033c 270a          	jreq	L1011
2297  033e 0d03          	tnz	(OFST-1,sp)
2298  0340 2706          	jreq	L1011
2299                     ; 826       bitstatus = SET;
2301  0342 a601          	ld	a,#1
2302  0344 6b04          	ld	(OFST+0,sp),a
2304  0346 2002          	jra	L7701
2305  0348               L1011:
2306                     ; 831       bitstatus = RESET;
2308  0348 0f04          	clr	(OFST+0,sp)
2309  034a               L7701:
2310                     ; 835   return  bitstatus;
2312  034a 7b04          	ld	a,(OFST+0,sp)
2315  034c 5b06          	addw	sp,#6
2316  034e 87            	retf
2358                     ; 873 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2358                     ; 874 {
2359                     	switch	.text
2360  034f               f_I2C_ClearITPendingBit:
2362  034f 89            	pushw	x
2363       00000002      OFST:	set	2
2366                     ; 875   uint16_t flagpos = 0;
2368                     ; 878   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2370                     ; 881   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2372  0350 01            	rrwa	x,a
2373  0351 a4ff          	and	a,#255
2374  0353 5f            	clrw	x
2375  0354 02            	rlwa	x,a
2376  0355 1f01          	ldw	(OFST-1,sp),x
2377  0357 01            	rrwa	x,a
2378                     ; 884   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2380  0358 7b02          	ld	a,(OFST+0,sp)
2381  035a 43            	cpl	a
2382  035b c75218        	ld	21016,a
2383                     ; 885 }
2386  035e 85            	popw	x
2387  035f 87            	retf
2399                     	xdef	f_I2C_ClearITPendingBit
2400                     	xdef	f_I2C_GetITStatus
2401                     	xdef	f_I2C_ClearFlag
2402                     	xdef	f_I2C_GetFlagStatus
2403                     	xdef	f_I2C_GetLastEvent
2404                     	xdef	f_I2C_CheckEvent
2405                     	xdef	f_I2C_SendData
2406                     	xdef	f_I2C_Send7bitAddress
2407                     	xdef	f_I2C_ReceiveData
2408                     	xdef	f_I2C_ITConfig
2409                     	xdef	f_I2C_FastModeDutyCycleConfig
2410                     	xdef	f_I2C_AcknowledgeConfig
2411                     	xdef	f_I2C_StretchClockCmd
2412                     	xdef	f_I2C_SoftwareResetCmd
2413                     	xdef	f_I2C_GenerateSTOP
2414                     	xdef	f_I2C_GenerateSTART
2415                     	xdef	f_I2C_GeneralCallCmd
2416                     	xdef	f_I2C_Cmd
2417                     	xdef	f_I2C_Init
2418                     	xdef	f_I2C_DeInit
2419                     	xref.b	c_lreg
2420                     	xref.b	c_x
2439                     	xref	d_sdivx
2440                     	xref	d_ludv
2441                     	xref	d_rtol
2442                     	xref	d_smul
2443                     	xref	d_lmul
2444                     	xref	d_lcmp
2445                     	xref	d_ltor
2446                     	end
