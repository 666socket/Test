   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 44 uint8_t ITC_GetCPUCC(void)
  43                     ; 45 {
  44                     	switch	.text
  45  0000               f_ITC_GetCPUCC:
  49                     ; 47   _asm("push cc");
  52  0000 8a            push cc
  54                     ; 48   _asm("pop a");
  57  0001 84            pop a
  59                     ; 49   return; /* Ignore compiler warning, the returned value is in A register */
  62  0002 87            	retf
  84                     ; 74 void ITC_DeInit(void)
  84                     ; 75 {
  85                     	switch	.text
  86  0003               f_ITC_DeInit:
  90                     ; 76     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  92  0003 35ff7f70      	mov	32624,#255
  93                     ; 77     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  95  0007 35ff7f71      	mov	32625,#255
  96                     ; 78     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  98  000b 35ff7f72      	mov	32626,#255
  99                     ; 79     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 101  000f 35ff7f73      	mov	32627,#255
 102                     ; 80     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 104  0013 35ff7f74      	mov	32628,#255
 105                     ; 81     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 107  0017 35ff7f75      	mov	32629,#255
 108                     ; 82     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 110  001b 35ff7f76      	mov	32630,#255
 111                     ; 83     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 113  001f 35ff7f77      	mov	32631,#255
 114                     ; 84 }
 117  0023 87            	retf
 141                     ; 91 uint8_t ITC_GetSoftIntStatus(void)
 141                     ; 92 {
 142                     	switch	.text
 143  0024               f_ITC_GetSoftIntStatus:
 147                     ; 93     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 149  0024 8d000000      	callf	f_ITC_GetCPUCC
 151  0028 a428          	and	a,#40
 154  002a 87            	retf
 412                     ; 101 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 412                     ; 102 {
 413                     	switch	.text
 414  002b               f_ITC_GetSoftwarePriority:
 416  002b 88            	push	a
 417  002c 89            	pushw	x
 418       00000002      OFST:	set	2
 421                     ; 104     uint8_t Value = 0;
 423  002d 0f02          	clr	(OFST+0,sp)
 424                     ; 105     uint8_t Mask = 0;
 426                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 428                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 430  002f a403          	and	a,#3
 431  0031 48            	sll	a
 432  0032 5f            	clrw	x
 433  0033 97            	ld	xl,a
 434  0034 a603          	ld	a,#3
 435  0036 5d            	tnzw	x
 436  0037 2704          	jreq	L41
 437  0039               L61:
 438  0039 48            	sll	a
 439  003a 5a            	decw	x
 440  003b 26fc          	jrne	L61
 441  003d               L41:
 442  003d 6b01          	ld	(OFST-1,sp),a
 443                     ; 113     switch (IrqNum)
 445  003f 7b03          	ld	a,(OFST+1,sp)
 447                     ; 185     default:
 447                     ; 186         break;
 448  0041 a119          	cp	a,#25
 449  0043 2436          	jruge	L02
 450  0045 8d000000      	callf	d_jctab
 452  0049               L22:
 453  0049 0034          	dc.w	L14-L22
 454  004b 0034          	dc.w	L14-L22
 455  004d 0034          	dc.w	L14-L22
 456  004f 0034          	dc.w	L14-L22
 457  0051 003d          	dc.w	L34-L22
 458  0053 003d          	dc.w	L34-L22
 459  0055 003d          	dc.w	L34-L22
 460  0057 003d          	dc.w	L34-L22
 461  0059 0071          	dc.w	L302-L22
 462  005b 0071          	dc.w	L302-L22
 463  005d 0046          	dc.w	L54-L22
 464  005f 0046          	dc.w	L54-L22
 465  0061 004f          	dc.w	L74-L22
 466  0063 004f          	dc.w	L74-L22
 467  0065 004f          	dc.w	L74-L22
 468  0067 004f          	dc.w	L74-L22
 469  0069 0058          	dc.w	L15-L22
 470  006b 0058          	dc.w	L15-L22
 471  006d 0058          	dc.w	L15-L22
 472  006f 0058          	dc.w	L15-L22
 473  0071 0061          	dc.w	L35-L22
 474  0073 0061          	dc.w	L35-L22
 475  0075 0061          	dc.w	L35-L22
 476  0077 0061          	dc.w	L35-L22
 477  0079 006a          	dc.w	L55-L22
 478  007b               L02:
 479  007b 203d          	jra	L302
 480  007d               L14:
 481                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 481                     ; 116     case ITC_IRQ_AWU:
 481                     ; 117     case ITC_IRQ_CLK:
 481                     ; 118     case ITC_IRQ_PORTA:
 481                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 483  007d c67f70        	ld	a,32624
 484  0080 1401          	and	a,(OFST-1,sp)
 485  0082 6b02          	ld	(OFST+0,sp),a
 486                     ; 120         break;
 488  0084 2034          	jra	L302
 489  0086               L34:
 490                     ; 121     case ITC_IRQ_PORTB:
 490                     ; 122     case ITC_IRQ_PORTC:
 490                     ; 123     case ITC_IRQ_PORTD:
 490                     ; 124     case ITC_IRQ_PORTE:
 490                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 492  0086 c67f71        	ld	a,32625
 493  0089 1401          	and	a,(OFST-1,sp)
 494  008b 6b02          	ld	(OFST+0,sp),a
 495                     ; 126         break;
 497  008d 202b          	jra	L302
 498  008f               L54:
 499                     ; 136     case ITC_IRQ_SPI:
 499                     ; 137     case ITC_IRQ_TIM1_OVF:
 499                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 501  008f c67f72        	ld	a,32626
 502  0092 1401          	and	a,(OFST-1,sp)
 503  0094 6b02          	ld	(OFST+0,sp),a
 504                     ; 139         break;
 506  0096 2022          	jra	L302
 507  0098               L74:
 508                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 508                     ; 141 #ifdef STM8S903
 508                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 508                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 508                     ; 144 #else
 508                     ; 145     case ITC_IRQ_TIM2_OVF:
 508                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 508                     ; 147 #endif /*STM8S903*/
 508                     ; 148 
 508                     ; 149     case ITC_IRQ_TIM3_OVF:
 508                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 510  0098 c67f73        	ld	a,32627
 511  009b 1401          	and	a,(OFST-1,sp)
 512  009d 6b02          	ld	(OFST+0,sp),a
 513                     ; 151         break;
 515  009f 2019          	jra	L302
 516  00a1               L15:
 517                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 517                     ; 153     case ITC_IRQ_UART1_TX:
 517                     ; 154     case ITC_IRQ_UART1_RX:
 517                     ; 155     case ITC_IRQ_I2C:
 517                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 519  00a1 c67f74        	ld	a,32628
 520  00a4 1401          	and	a,(OFST-1,sp)
 521  00a6 6b02          	ld	(OFST+0,sp),a
 522                     ; 157         break;
 524  00a8 2010          	jra	L302
 525  00aa               L35:
 526                     ; 159     case ITC_IRQ_UART2_TX:
 526                     ; 160     case ITC_IRQ_UART2_RX:
 526                     ; 161 #endif /*STM8S105 or STM8AF626x*/
 526                     ; 162 
 526                     ; 163 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 526                     ; 164     defined(STM8AF62Ax)
 526                     ; 165     case ITC_IRQ_UART3_TX:
 526                     ; 166     case ITC_IRQ_UART3_RX:
 526                     ; 167     case ITC_IRQ_ADC2:
 526                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 526                     ; 169 
 526                     ; 170 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 526                     ; 171     defined(STM8S903) || defined(STM8AF626x)
 526                     ; 172     case ITC_IRQ_ADC1:
 526                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 526                     ; 174 
 526                     ; 175 #ifdef STM8S903
 526                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 526                     ; 177 #else
 526                     ; 178     case ITC_IRQ_TIM4_OVF:
 526                     ; 179 #endif /*STM8S903*/
 526                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 528  00aa c67f75        	ld	a,32629
 529  00ad 1401          	and	a,(OFST-1,sp)
 530  00af 6b02          	ld	(OFST+0,sp),a
 531                     ; 181         break;
 533  00b1 2007          	jra	L302
 534  00b3               L55:
 535                     ; 182     case ITC_IRQ_EEPROM_EEC:
 535                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 537  00b3 c67f76        	ld	a,32630
 538  00b6 1401          	and	a,(OFST-1,sp)
 539  00b8 6b02          	ld	(OFST+0,sp),a
 540                     ; 184         break;
 542  00ba               L75:
 543                     ; 185     default:
 543                     ; 186         break;
 545  00ba               L302:
 546                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 548  00ba 7b03          	ld	a,(OFST+1,sp)
 549  00bc a403          	and	a,#3
 550  00be 48            	sll	a
 551  00bf 5f            	clrw	x
 552  00c0 97            	ld	xl,a
 553  00c1 7b02          	ld	a,(OFST+0,sp)
 554  00c3 5d            	tnzw	x
 555  00c4 2704          	jreq	L42
 556  00c6               L62:
 557  00c6 44            	srl	a
 558  00c7 5a            	decw	x
 559  00c8 26fc          	jrne	L62
 560  00ca               L42:
 561  00ca 6b02          	ld	(OFST+0,sp),a
 562                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 564  00cc 7b02          	ld	a,(OFST+0,sp)
 567  00ce 5b03          	addw	sp,#3
 568  00d0 87            	retf
 627                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 627                     ; 209 {
 628                     	switch	.text
 629  00d1               f_ITC_SetSoftwarePriority:
 631  00d1 89            	pushw	x
 632  00d2 89            	pushw	x
 633       00000002      OFST:	set	2
 636                     ; 211     uint8_t Mask = 0;
 638                     ; 212     uint8_t NewPriority = 0;
 640                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 642                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 644                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 646                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 648  00d3 9e            	ld	a,xh
 649  00d4 a403          	and	a,#3
 650  00d6 48            	sll	a
 651  00d7 5f            	clrw	x
 652  00d8 97            	ld	xl,a
 653  00d9 a603          	ld	a,#3
 654  00db 5d            	tnzw	x
 655  00dc 2704          	jreq	L23
 656  00de               L43:
 657  00de 48            	sll	a
 658  00df 5a            	decw	x
 659  00e0 26fc          	jrne	L43
 660  00e2               L23:
 661  00e2 43            	cpl	a
 662  00e3 6b01          	ld	(OFST-1,sp),a
 663                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 665  00e5 7b03          	ld	a,(OFST+1,sp)
 666  00e7 a403          	and	a,#3
 667  00e9 48            	sll	a
 668  00ea 5f            	clrw	x
 669  00eb 97            	ld	xl,a
 670  00ec 7b04          	ld	a,(OFST+2,sp)
 671  00ee 5d            	tnzw	x
 672  00ef 2704          	jreq	L63
 673  00f1               L04:
 674  00f1 48            	sll	a
 675  00f2 5a            	decw	x
 676  00f3 26fc          	jrne	L04
 677  00f5               L63:
 678  00f5 6b02          	ld	(OFST+0,sp),a
 679                     ; 228     switch (IrqNum)
 681  00f7 7b03          	ld	a,(OFST+1,sp)
 683                     ; 314     default:
 683                     ; 315         break;
 684  00f9 a119          	cp	a,#25
 685  00fb 2436          	jruge	L24
 686  00fd 8d000000      	callf	d_jctab
 688  0101               L44:
 689  0101 0034          	dc.w	L502-L44
 690  0103 0034          	dc.w	L502-L44
 691  0105 0034          	dc.w	L502-L44
 692  0107 0034          	dc.w	L502-L44
 693  0109 0046          	dc.w	L702-L44
 694  010b 0046          	dc.w	L702-L44
 695  010d 0046          	dc.w	L702-L44
 696  010f 0046          	dc.w	L702-L44
 697  0111 00b0          	dc.w	L552-L44
 698  0113 00b0          	dc.w	L552-L44
 699  0115 0058          	dc.w	L112-L44
 700  0117 0058          	dc.w	L112-L44
 701  0119 006a          	dc.w	L312-L44
 702  011b 006a          	dc.w	L312-L44
 703  011d 006a          	dc.w	L312-L44
 704  011f 006a          	dc.w	L312-L44
 705  0121 007c          	dc.w	L512-L44
 706  0123 007c          	dc.w	L512-L44
 707  0125 007c          	dc.w	L512-L44
 708  0127 007c          	dc.w	L512-L44
 709  0129 008e          	dc.w	L712-L44
 710  012b 008e          	dc.w	L712-L44
 711  012d 008e          	dc.w	L712-L44
 712  012f 008e          	dc.w	L712-L44
 713  0131 00a0          	dc.w	L122-L44
 714  0133               L24:
 715  0133 207c          	jra	L552
 716  0135               L502:
 717                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 717                     ; 232     case ITC_IRQ_AWU:
 717                     ; 233     case ITC_IRQ_CLK:
 717                     ; 234     case ITC_IRQ_PORTA:
 717                     ; 235         ITC->ISPR1 &= Mask;
 719  0135 c67f70        	ld	a,32624
 720  0138 1401          	and	a,(OFST-1,sp)
 721  013a c77f70        	ld	32624,a
 722                     ; 236         ITC->ISPR1 |= NewPriority;
 724  013d c67f70        	ld	a,32624
 725  0140 1a02          	or	a,(OFST+0,sp)
 726  0142 c77f70        	ld	32624,a
 727                     ; 237         break;
 729  0145 206a          	jra	L552
 730  0147               L702:
 731                     ; 239     case ITC_IRQ_PORTB:
 731                     ; 240     case ITC_IRQ_PORTC:
 731                     ; 241     case ITC_IRQ_PORTD:
 731                     ; 242     case ITC_IRQ_PORTE:
 731                     ; 243         ITC->ISPR2 &= Mask;
 733  0147 c67f71        	ld	a,32625
 734  014a 1401          	and	a,(OFST-1,sp)
 735  014c c77f71        	ld	32625,a
 736                     ; 244         ITC->ISPR2 |= NewPriority;
 738  014f c67f71        	ld	a,32625
 739  0152 1a02          	or	a,(OFST+0,sp)
 740  0154 c77f71        	ld	32625,a
 741                     ; 245         break;
 743  0157 2058          	jra	L552
 744  0159               L112:
 745                     ; 255     case ITC_IRQ_SPI:
 745                     ; 256     case ITC_IRQ_TIM1_OVF:
 745                     ; 257         ITC->ISPR3 &= Mask;
 747  0159 c67f72        	ld	a,32626
 748  015c 1401          	and	a,(OFST-1,sp)
 749  015e c77f72        	ld	32626,a
 750                     ; 258         ITC->ISPR3 |= NewPriority;
 752  0161 c67f72        	ld	a,32626
 753  0164 1a02          	or	a,(OFST+0,sp)
 754  0166 c77f72        	ld	32626,a
 755                     ; 259         break;
 757  0169 2046          	jra	L552
 758  016b               L312:
 759                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 759                     ; 262 #ifdef STM8S903
 759                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 759                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 759                     ; 265 #else
 759                     ; 266     case ITC_IRQ_TIM2_OVF:
 759                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 759                     ; 268 #endif /*STM8S903*/
 759                     ; 269 
 759                     ; 270     case ITC_IRQ_TIM3_OVF:
 759                     ; 271         ITC->ISPR4 &= Mask;
 761  016b c67f73        	ld	a,32627
 762  016e 1401          	and	a,(OFST-1,sp)
 763  0170 c77f73        	ld	32627,a
 764                     ; 272         ITC->ISPR4 |= NewPriority;
 766  0173 c67f73        	ld	a,32627
 767  0176 1a02          	or	a,(OFST+0,sp)
 768  0178 c77f73        	ld	32627,a
 769                     ; 273         break;
 771  017b 2034          	jra	L552
 772  017d               L512:
 773                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 773                     ; 276     case ITC_IRQ_UART1_TX:
 773                     ; 277     case ITC_IRQ_UART1_RX:
 773                     ; 278     case ITC_IRQ_I2C:
 773                     ; 279         ITC->ISPR5 &= Mask;
 775  017d c67f74        	ld	a,32628
 776  0180 1401          	and	a,(OFST-1,sp)
 777  0182 c77f74        	ld	32628,a
 778                     ; 280         ITC->ISPR5 |= NewPriority;
 780  0185 c67f74        	ld	a,32628
 781  0188 1a02          	or	a,(OFST+0,sp)
 782  018a c77f74        	ld	32628,a
 783                     ; 281         break;
 785  018d 2022          	jra	L552
 786  018f               L712:
 787                     ; 284     case ITC_IRQ_UART2_TX:
 787                     ; 285     case ITC_IRQ_UART2_RX:
 787                     ; 286 #endif /*STM8S105 or STM8AF626x */
 787                     ; 287 
 787                     ; 288 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 787                     ; 289     defined(STM8AF62Ax)
 787                     ; 290     case ITC_IRQ_UART3_TX:
 787                     ; 291     case ITC_IRQ_UART3_RX:
 787                     ; 292     case ITC_IRQ_ADC2:
 787                     ; 293 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 787                     ; 294 
 787                     ; 295 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 787                     ; 296     defined(STM8S903) || defined(STM8AF626x)
 787                     ; 297     case ITC_IRQ_ADC1:
 787                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 787                     ; 299 
 787                     ; 300 #ifdef STM8S903
 787                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 787                     ; 302 #else
 787                     ; 303     case ITC_IRQ_TIM4_OVF:
 787                     ; 304 #endif /*STM8S903*/
 787                     ; 305         ITC->ISPR6 &= Mask;
 789  018f c67f75        	ld	a,32629
 790  0192 1401          	and	a,(OFST-1,sp)
 791  0194 c77f75        	ld	32629,a
 792                     ; 306         ITC->ISPR6 |= NewPriority;
 794  0197 c67f75        	ld	a,32629
 795  019a 1a02          	or	a,(OFST+0,sp)
 796  019c c77f75        	ld	32629,a
 797                     ; 307         break;
 799  019f 2010          	jra	L552
 800  01a1               L122:
 801                     ; 309     case ITC_IRQ_EEPROM_EEC:
 801                     ; 310         ITC->ISPR7 &= Mask;
 803  01a1 c67f76        	ld	a,32630
 804  01a4 1401          	and	a,(OFST-1,sp)
 805  01a6 c77f76        	ld	32630,a
 806                     ; 311         ITC->ISPR7 |= NewPriority;
 808  01a9 c67f76        	ld	a,32630
 809  01ac 1a02          	or	a,(OFST+0,sp)
 810  01ae c77f76        	ld	32630,a
 811                     ; 312         break;
 813  01b1               L322:
 814                     ; 314     default:
 814                     ; 315         break;
 816  01b1               L552:
 817                     ; 319 }
 820  01b1 5b04          	addw	sp,#4
 821  01b3 87            	retf
 833                     	xdef	f_ITC_GetSoftwarePriority
 834                     	xdef	f_ITC_SetSoftwarePriority
 835                     	xdef	f_ITC_GetSoftIntStatus
 836                     	xdef	f_ITC_DeInit
 837                     	xdef	f_ITC_GetCPUCC
 838                     	xref.b	c_x
 857                     	xref	d_jctab
 858                     	end
