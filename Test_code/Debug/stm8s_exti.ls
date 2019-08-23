   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 47 void EXTI_DeInit(void)
  43                     ; 48 {
  44                     	switch	.text
  45  0000               f_EXTI_DeInit:
  49                     ; 49     EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  51  0000 725f50a0      	clr	20640
  52                     ; 50     EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  54  0004 725f50a1      	clr	20641
  55                     ; 51 }
  58  0008 87            	retf
 182                     ; 64 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 182                     ; 65 {
 183                     	switch	.text
 184  0009               f_EXTI_SetExtIntSensitivity:
 186  0009 89            	pushw	x
 187       00000000      OFST:	set	0
 190                     ; 68     assert_param(IS_EXTI_PORT_OK(Port));
 192                     ; 69     assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 194                     ; 72     switch (Port)
 196  000a 9e            	ld	a,xh
 198                     ; 94     default:
 198                     ; 95         break;
 199  000b 4d            	tnz	a
 200  000c 270e          	jreq	L12
 201  000e 4a            	dec	a
 202  000f 271d          	jreq	L32
 203  0011 4a            	dec	a
 204  0012 272e          	jreq	L52
 205  0014 4a            	dec	a
 206  0015 2742          	jreq	L72
 207  0017 4a            	dec	a
 208  0018 2756          	jreq	L13
 209  001a 2064          	jra	L311
 210  001c               L12:
 211                     ; 74     case EXTI_PORT_GPIOA:
 211                     ; 75         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 213  001c c650a0        	ld	a,20640
 214  001f a4fc          	and	a,#252
 215  0021 c750a0        	ld	20640,a
 216                     ; 76         EXTI->CR1 |= (uint8_t)(SensitivityValue);
 218  0024 c650a0        	ld	a,20640
 219  0027 1a02          	or	a,(OFST+2,sp)
 220  0029 c750a0        	ld	20640,a
 221                     ; 77         break;
 223  002c 2052          	jra	L311
 224  002e               L32:
 225                     ; 78     case EXTI_PORT_GPIOB:
 225                     ; 79         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 227  002e c650a0        	ld	a,20640
 228  0031 a4f3          	and	a,#243
 229  0033 c750a0        	ld	20640,a
 230                     ; 80         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 232  0036 7b02          	ld	a,(OFST+2,sp)
 233  0038 48            	sll	a
 234  0039 48            	sll	a
 235  003a ca50a0        	or	a,20640
 236  003d c750a0        	ld	20640,a
 237                     ; 81         break;
 239  0040 203e          	jra	L311
 240  0042               L52:
 241                     ; 82     case EXTI_PORT_GPIOC:
 241                     ; 83         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 243  0042 c650a0        	ld	a,20640
 244  0045 a4cf          	and	a,#207
 245  0047 c750a0        	ld	20640,a
 246                     ; 84         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 248  004a 7b02          	ld	a,(OFST+2,sp)
 249  004c 97            	ld	xl,a
 250  004d a610          	ld	a,#16
 251  004f 42            	mul	x,a
 252  0050 9f            	ld	a,xl
 253  0051 ca50a0        	or	a,20640
 254  0054 c750a0        	ld	20640,a
 255                     ; 85         break;
 257  0057 2027          	jra	L311
 258  0059               L72:
 259                     ; 86     case EXTI_PORT_GPIOD:
 259                     ; 87         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 261  0059 c650a0        	ld	a,20640
 262  005c a43f          	and	a,#63
 263  005e c750a0        	ld	20640,a
 264                     ; 88         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 266  0061 7b02          	ld	a,(OFST+2,sp)
 267  0063 97            	ld	xl,a
 268  0064 a640          	ld	a,#64
 269  0066 42            	mul	x,a
 270  0067 9f            	ld	a,xl
 271  0068 ca50a0        	or	a,20640
 272  006b c750a0        	ld	20640,a
 273                     ; 89         break;
 275  006e 2010          	jra	L311
 276  0070               L13:
 277                     ; 90     case EXTI_PORT_GPIOE:
 277                     ; 91         EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 279  0070 c650a1        	ld	a,20641
 280  0073 a4fc          	and	a,#252
 281  0075 c750a1        	ld	20641,a
 282                     ; 92         EXTI->CR2 |= (uint8_t)(SensitivityValue);
 284  0078 c650a1        	ld	a,20641
 285  007b 1a02          	or	a,(OFST+2,sp)
 286  007d c750a1        	ld	20641,a
 287                     ; 93         break;
 289  0080               L33:
 290                     ; 94     default:
 290                     ; 95         break;
 292  0080               L311:
 293                     ; 97 }
 296  0080 85            	popw	x
 297  0081 87            	retf
 354                     ; 106 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 354                     ; 107 {
 355                     	switch	.text
 356  0082               f_EXTI_SetTLISensitivity:
 360                     ; 109     assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 362                     ; 112     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 364  0082 721550a1      	bres	20641,#2
 365                     ; 113     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 367  0086 ca50a1        	or	a,20641
 368  0089 c750a1        	ld	20641,a
 369                     ; 114 }
 372  008c 87            	retf
 415                     ; 121 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 415                     ; 122 {
 416                     	switch	.text
 417  008d               f_EXTI_GetExtIntSensitivity:
 419  008d 88            	push	a
 420       00000001      OFST:	set	1
 423                     ; 123     uint8_t value = 0;
 425  008e 0f01          	clr	(OFST+0,sp)
 426                     ; 126     assert_param(IS_EXTI_PORT_OK(Port));
 428                     ; 128     switch (Port)
 431                     ; 145     default:
 431                     ; 146         break;
 432  0090 4d            	tnz	a
 433  0091 270e          	jreq	L341
 434  0093 4a            	dec	a
 435  0094 2714          	jreq	L541
 436  0096 4a            	dec	a
 437  0097 271c          	jreq	L741
 438  0099 4a            	dec	a
 439  009a 2725          	jreq	L151
 440  009c 4a            	dec	a
 441  009d 2730          	jreq	L351
 442  009f 2035          	jra	L102
 443  00a1               L341:
 444                     ; 130     case EXTI_PORT_GPIOA:
 444                     ; 131         value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 446  00a1 c650a0        	ld	a,20640
 447  00a4 a403          	and	a,#3
 448  00a6 6b01          	ld	(OFST+0,sp),a
 449                     ; 132         break;
 451  00a8 202c          	jra	L102
 452  00aa               L541:
 453                     ; 133     case EXTI_PORT_GPIOB:
 453                     ; 134         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 455  00aa c650a0        	ld	a,20640
 456  00ad a40c          	and	a,#12
 457  00af 44            	srl	a
 458  00b0 44            	srl	a
 459  00b1 6b01          	ld	(OFST+0,sp),a
 460                     ; 135         break;
 462  00b3 2021          	jra	L102
 463  00b5               L741:
 464                     ; 136     case EXTI_PORT_GPIOC:
 464                     ; 137         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 466  00b5 c650a0        	ld	a,20640
 467  00b8 a430          	and	a,#48
 468  00ba 4e            	swap	a
 469  00bb a40f          	and	a,#15
 470  00bd 6b01          	ld	(OFST+0,sp),a
 471                     ; 138         break;
 473  00bf 2015          	jra	L102
 474  00c1               L151:
 475                     ; 139     case EXTI_PORT_GPIOD:
 475                     ; 140         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 477  00c1 c650a0        	ld	a,20640
 478  00c4 a4c0          	and	a,#192
 479  00c6 4e            	swap	a
 480  00c7 44            	srl	a
 481  00c8 44            	srl	a
 482  00c9 a403          	and	a,#3
 483  00cb 6b01          	ld	(OFST+0,sp),a
 484                     ; 141         break;
 486  00cd 2007          	jra	L102
 487  00cf               L351:
 488                     ; 142     case EXTI_PORT_GPIOE:
 488                     ; 143         value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 490  00cf c650a1        	ld	a,20641
 491  00d2 a403          	and	a,#3
 492  00d4 6b01          	ld	(OFST+0,sp),a
 493                     ; 144         break;
 495  00d6               L551:
 496                     ; 145     default:
 496                     ; 146         break;
 498  00d6               L102:
 499                     ; 149     return((EXTI_Sensitivity_TypeDef)value);
 501  00d6 7b01          	ld	a,(OFST+0,sp)
 504  00d8 5b01          	addw	sp,#1
 505  00da 87            	retf
 538                     ; 157 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 538                     ; 158 {
 539                     	switch	.text
 540  00db               f_EXTI_GetTLISensitivity:
 542  00db 88            	push	a
 543       00000001      OFST:	set	1
 546                     ; 160     uint8_t value = 0;
 548                     ; 163     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 550  00dc c650a1        	ld	a,20641
 551  00df a404          	and	a,#4
 552  00e1 6b01          	ld	(OFST+0,sp),a
 553                     ; 165     return((EXTI_TLISensitivity_TypeDef)value);
 555  00e3 7b01          	ld	a,(OFST+0,sp)
 558  00e5 5b01          	addw	sp,#1
 559  00e7 87            	retf
 571                     	xdef	f_EXTI_GetTLISensitivity
 572                     	xdef	f_EXTI_GetExtIntSensitivity
 573                     	xdef	f_EXTI_SetTLISensitivity
 574                     	xdef	f_EXTI_SetExtIntSensitivity
 575                     	xdef	f_EXTI_DeInit
 594                     	end
