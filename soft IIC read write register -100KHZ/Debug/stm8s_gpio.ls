   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 109                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 109                     ; 48 {
 110                     	switch	.text
 111  0000               f_GPIO_DeInit:
 115                     ; 49     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 117  0000 7f            	clr	(x)
 118                     ; 50     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 120  0001 6f02          	clr	(2,x)
 121                     ; 51     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 123  0003 6f03          	clr	(3,x)
 124                     ; 52     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 126  0005 6f04          	clr	(4,x)
 127                     ; 53 }
 130  0007 87            	retf
 369                     ; 65 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 369                     ; 66 {
 370                     	switch	.text
 371  0008               f_GPIO_Init:
 373  0008 89            	pushw	x
 374       00000000      OFST:	set	0
 377                     ; 71     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 379                     ; 72     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 381                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 383  0009 7b06          	ld	a,(OFST+6,sp)
 384  000b 43            	cpl	a
 385  000c e404          	and	a,(4,x)
 386  000e e704          	ld	(4,x),a
 387                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 389  0010 7b07          	ld	a,(OFST+7,sp)
 390  0012 a580          	bcp	a,#128
 391  0014 271d          	jreq	L771
 392                     ; 83         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 394  0016 7b07          	ld	a,(OFST+7,sp)
 395  0018 a510          	bcp	a,#16
 396  001a 2706          	jreq	L102
 397                     ; 85             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 399  001c f6            	ld	a,(x)
 400  001d 1a06          	or	a,(OFST+6,sp)
 401  001f f7            	ld	(x),a
 403  0020 2007          	jra	L302
 404  0022               L102:
 405                     ; 89             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 407  0022 1e01          	ldw	x,(OFST+1,sp)
 408  0024 7b06          	ld	a,(OFST+6,sp)
 409  0026 43            	cpl	a
 410  0027 f4            	and	a,(x)
 411  0028 f7            	ld	(x),a
 412  0029               L302:
 413                     ; 92         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 415  0029 1e01          	ldw	x,(OFST+1,sp)
 416  002b e602          	ld	a,(2,x)
 417  002d 1a06          	or	a,(OFST+6,sp)
 418  002f e702          	ld	(2,x),a
 420  0031 2009          	jra	L502
 421  0033               L771:
 422                     ; 97         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 424  0033 1e01          	ldw	x,(OFST+1,sp)
 425  0035 7b06          	ld	a,(OFST+6,sp)
 426  0037 43            	cpl	a
 427  0038 e402          	and	a,(2,x)
 428  003a e702          	ld	(2,x),a
 429  003c               L502:
 430                     ; 104     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 432  003c 7b07          	ld	a,(OFST+7,sp)
 433  003e a540          	bcp	a,#64
 434  0040 270a          	jreq	L702
 435                     ; 106         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 437  0042 1e01          	ldw	x,(OFST+1,sp)
 438  0044 e603          	ld	a,(3,x)
 439  0046 1a06          	or	a,(OFST+6,sp)
 440  0048 e703          	ld	(3,x),a
 442  004a 2009          	jra	L112
 443  004c               L702:
 444                     ; 110         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 446  004c 1e01          	ldw	x,(OFST+1,sp)
 447  004e 7b06          	ld	a,(OFST+6,sp)
 448  0050 43            	cpl	a
 449  0051 e403          	and	a,(3,x)
 450  0053 e703          	ld	(3,x),a
 451  0055               L112:
 452                     ; 117     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 454  0055 7b07          	ld	a,(OFST+7,sp)
 455  0057 a520          	bcp	a,#32
 456  0059 270a          	jreq	L312
 457                     ; 119         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 459  005b 1e01          	ldw	x,(OFST+1,sp)
 460  005d e604          	ld	a,(4,x)
 461  005f 1a06          	or	a,(OFST+6,sp)
 462  0061 e704          	ld	(4,x),a
 464  0063 2009          	jra	L512
 465  0065               L312:
 466                     ; 123         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 468  0065 1e01          	ldw	x,(OFST+1,sp)
 469  0067 7b06          	ld	a,(OFST+6,sp)
 470  0069 43            	cpl	a
 471  006a e404          	and	a,(4,x)
 472  006c e704          	ld	(4,x),a
 473  006e               L512:
 474                     ; 125 }
 477  006e 85            	popw	x
 478  006f 87            	retf
 521                     ; 135 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 521                     ; 136 {
 522                     	switch	.text
 523  0070               f_GPIO_Write:
 525  0070 89            	pushw	x
 526       00000000      OFST:	set	0
 529                     ; 137     GPIOx->ODR = PortVal;
 531  0071 7b06          	ld	a,(OFST+6,sp)
 532  0073 1e01          	ldw	x,(OFST+1,sp)
 533  0075 f7            	ld	(x),a
 534                     ; 138 }
 537  0076 85            	popw	x
 538  0077 87            	retf
 584                     ; 148 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 584                     ; 149 {
 585                     	switch	.text
 586  0078               f_GPIO_WriteHigh:
 588  0078 89            	pushw	x
 589       00000000      OFST:	set	0
 592                     ; 150     GPIOx->ODR |= (uint8_t)PortPins;
 594  0079 f6            	ld	a,(x)
 595  007a 1a06          	or	a,(OFST+6,sp)
 596  007c f7            	ld	(x),a
 597                     ; 151 }
 600  007d 85            	popw	x
 601  007e 87            	retf
 647                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 647                     ; 162 {
 648                     	switch	.text
 649  007f               f_GPIO_WriteLow:
 651  007f 89            	pushw	x
 652       00000000      OFST:	set	0
 655                     ; 163     GPIOx->ODR &= (uint8_t)(~PortPins);
 657  0080 7b06          	ld	a,(OFST+6,sp)
 658  0082 43            	cpl	a
 659  0083 f4            	and	a,(x)
 660  0084 f7            	ld	(x),a
 661                     ; 164 }
 664  0085 85            	popw	x
 665  0086 87            	retf
 711                     ; 174 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 711                     ; 175 {
 712                     	switch	.text
 713  0087               f_GPIO_WriteReverse:
 715  0087 89            	pushw	x
 716       00000000      OFST:	set	0
 719                     ; 176     GPIOx->ODR ^= (uint8_t)PortPins;
 721  0088 f6            	ld	a,(x)
 722  0089 1806          	xor	a,	(OFST+6,sp)
 723  008b f7            	ld	(x),a
 724                     ; 177 }
 727  008c 85            	popw	x
 728  008d 87            	retf
 765                     ; 185 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 765                     ; 186 {
 766                     	switch	.text
 767  008e               f_GPIO_ReadOutputData:
 771                     ; 187     return ((uint8_t)GPIOx->ODR);
 773  008e f6            	ld	a,(x)
 776  008f 87            	retf
 812                     ; 196 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 812                     ; 197 {
 813                     	switch	.text
 814  0090               f_GPIO_ReadInputData:
 818                     ; 198     return ((uint8_t)GPIOx->IDR);
 820  0090 e601          	ld	a,(1,x)
 823  0092 87            	retf
 890                     ; 207 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 890                     ; 208 {
 891                     	switch	.text
 892  0093               f_GPIO_ReadInputPin:
 894  0093 89            	pushw	x
 895       00000000      OFST:	set	0
 898                     ; 209     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 900  0094 e601          	ld	a,(1,x)
 901  0096 1406          	and	a,(OFST+6,sp)
 904  0098 85            	popw	x
 905  0099 87            	retf
 982                     ; 219 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
 982                     ; 220 {
 983                     	switch	.text
 984  009a               f_GPIO_ExternalPullUpConfig:
 986  009a 89            	pushw	x
 987       00000000      OFST:	set	0
 990                     ; 222     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 992                     ; 223     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 994                     ; 225     if (NewState != DISABLE) /* External Pull-Up Set*/
 996  009b 0d07          	tnz	(OFST+7,sp)
 997  009d 2708          	jreq	L174
 998                     ; 227         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1000  009f e603          	ld	a,(3,x)
1001  00a1 1a06          	or	a,(OFST+6,sp)
1002  00a3 e703          	ld	(3,x),a
1004  00a5 2009          	jra	L374
1005  00a7               L174:
1006                     ; 230         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1008  00a7 1e01          	ldw	x,(OFST+1,sp)
1009  00a9 7b06          	ld	a,(OFST+6,sp)
1010  00ab 43            	cpl	a
1011  00ac e403          	and	a,(3,x)
1012  00ae e703          	ld	(3,x),a
1013  00b0               L374:
1014                     ; 232 }
1017  00b0 85            	popw	x
1018  00b1 87            	retf
1030                     	xdef	f_GPIO_ExternalPullUpConfig
1031                     	xdef	f_GPIO_ReadInputPin
1032                     	xdef	f_GPIO_ReadOutputData
1033                     	xdef	f_GPIO_ReadInputData
1034                     	xdef	f_GPIO_WriteReverse
1035                     	xdef	f_GPIO_WriteLow
1036                     	xdef	f_GPIO_WriteHigh
1037                     	xdef	f_GPIO_Write
1038                     	xdef	f_GPIO_Init
1039                     	xdef	f_GPIO_DeInit
1058                     	end
