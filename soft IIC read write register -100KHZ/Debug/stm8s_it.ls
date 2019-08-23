   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 54 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  44                     ; 55 {
  45                     	switch	.text
  46  0000               f_NonHandledInterrupt:
  50                     ; 59 }
  53  0000 80            	iret
  75                     ; 67 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  75                     ; 68 {
  76                     	switch	.text
  77  0001               f_TRAP_IRQHandler:
  81                     ; 72 }
  84  0001 80            	iret
 106                     ; 79 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 106                     ; 80 
 106                     ; 81 {
 107                     	switch	.text
 108  0002               f_TLI_IRQHandler:
 112                     ; 85 }
 115  0002 80            	iret
 137                     ; 92 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 137                     ; 93 {
 138                     	switch	.text
 139  0003               f_AWU_IRQHandler:
 143                     ; 97 }
 146  0003 80            	iret
 168                     ; 104 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 168                     ; 105 {
 169                     	switch	.text
 170  0004               f_CLK_IRQHandler:
 174                     ; 109 }
 177  0004 80            	iret
 200                     ; 116 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 200                     ; 117 {
 201                     	switch	.text
 202  0005               f_EXTI_PORTA_IRQHandler:
 206                     ; 121 }
 209  0005 80            	iret
 232                     ; 128 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 232                     ; 129 {
 233                     	switch	.text
 234  0006               f_EXTI_PORTB_IRQHandler:
 238                     ; 133 }
 241  0006 80            	iret
 264                     ; 140 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 264                     ; 141 {
 265                     	switch	.text
 266  0007               f_EXTI_PORTC_IRQHandler:
 270                     ; 145 }
 273  0007 80            	iret
 296                     ; 152 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 296                     ; 153 {
 297                     	switch	.text
 298  0008               f_EXTI_PORTD_IRQHandler:
 302                     ; 157 }
 305  0008 80            	iret
 328                     ; 164 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 328                     ; 165 {
 329                     	switch	.text
 330  0009               f_EXTI_PORTE_IRQHandler:
 334                     ; 169 }
 337  0009 80            	iret
 359                     ; 216 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 359                     ; 217 {
 360                     	switch	.text
 361  000a               f_SPI_IRQHandler:
 365                     ; 221 }
 368  000a 80            	iret
 391                     ; 228 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 391                     ; 229 {/*
 392                     	switch	.text
 393  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 397                     ; 233 }
 400  000b 80            	iret
 423                     ; 240 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 423                     ; 241 {
 424                     	switch	.text
 425  000c               f_TIM1_CAP_COM_IRQHandler:
 429                     ; 245 }
 432  000c 80            	iret
 455                     ; 278  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 455                     ; 279  {
 456                     	switch	.text
 457  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 461                     ; 283  }
 464  000d 80            	iret
 487                     ; 290  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 487                     ; 291  {
 488                     	switch	.text
 489  000e               f_TIM2_CAP_COM_IRQHandler:
 493                     ; 295  }
 496  000e 80            	iret
 519                     ; 305  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 519                     ; 306  {
 520                     	switch	.text
 521  000f               f_TIM3_UPD_OVF_BRK_IRQHandler:
 525                     ; 310  }
 528  000f 80            	iret
 551                     ; 317  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 551                     ; 318  {
 552                     	switch	.text
 553  0010               f_TIM3_CAP_COM_IRQHandler:
 557                     ; 322  }
 560  0010 80            	iret
 562                     	switch	.bss
 563  0000               L122_addr_flag:
 564  0000 00            	ds.b	1
 565  0001               L322_rw_flag:
 566  0001 00            	ds.b	1
 567  0002               L522_reg_addr:
 568  0002 00            	ds.b	1
 569  0003               L722_value:
 570  0003 00            	ds.b	1
 672                     ; 386 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 672                     ; 387 {
 673                     	switch	.text
 674  0011               f_I2C_IRQHandler:
 676       00000001      OFST:	set	1
 677  0011 3b0002        	push	c_x+2
 678  0014 be00          	ldw	x,c_x
 679  0016 89            	pushw	x
 680  0017 3b0002        	push	c_y+2
 681  001a be00          	ldw	x,c_y
 682  001c 89            	pushw	x
 683  001d 88            	push	a
 686                     ; 397   flag_status = I2C_GetFlagStatus(I2C_FLAG_ADDRESSSENTMATCHED);// IIC address match 
 688  001e ae0102        	ldw	x,#258
 689  0021 8d000000      	callf	f_I2C_GetFlagStatus
 691  0025 6b01          	ld	(OFST+0,sp),a
 692                     ; 398   if(SET == flag_status)
 694  0027 7b01          	ld	a,(OFST+0,sp)
 695  0029 a101          	cp	a,#1
 696  002b 261e          	jrne	L372
 697                     ; 400     flag_status = I2C_GetFlagStatus(I2C_FLAG_TRANSMITTERRECEIVER);
 699  002d ae0304        	ldw	x,#772
 700  0030 8d000000      	callf	f_I2C_GetFlagStatus
 702  0034 6b01          	ld	(OFST+0,sp),a
 703                     ; 401     I2C_AcknowledgeConfig(I2C_ACK_CURR);   
 705  0036 a601          	ld	a,#1
 706  0038 8d000000      	callf	f_I2C_AcknowledgeConfig
 708                     ; 403     rw_flag = flag_status;// judge read or write flag 
 710  003c 7b01          	ld	a,(OFST+0,sp)
 711  003e c70001        	ld	L322_rw_flag,a
 712                     ; 404     if(0 == rw_flag)
 714  0041 725d0001      	tnz	L322_rw_flag
 715  0045 2604          	jrne	L372
 716                     ; 406       addr_flag = 0;
 718  0047 725f0000      	clr	L122_addr_flag
 719  004b               L372:
 720                     ; 410   flag_status = I2C_GetFlagStatus(I2C_FLAG_RXNOTEMPTY);//Receive :by judge flag 
 722  004b ae0140        	ldw	x,#320
 723  004e 8d000000      	callf	f_I2C_GetFlagStatus
 725  0052 6b01          	ld	(OFST+0,sp),a
 726                     ; 411   if(SET == flag_status)
 728  0054 7b01          	ld	a,(OFST+0,sp)
 729  0056 a101          	cp	a,#1
 730  0058 2641          	jrne	L772
 731                     ; 414     revData = I2C_ReceiveData();
 733  005a 8d000000      	callf	f_I2C_ReceiveData
 735  005e 6b01          	ld	(OFST+0,sp),a
 736                     ; 415     if(0 == addr_flag)
 738  0060 725d0000      	tnz	L122_addr_flag
 739  0064 2611          	jrne	L103
 740                     ; 417       addr_flag = 1;
 742  0066 35010000      	mov	L122_addr_flag,#1
 743                     ; 418       reg_addr = revData;	//reveive register address
 745  006a 7b01          	ld	a,(OFST+0,sp)
 746  006c c70002        	ld	L522_reg_addr,a
 747                     ; 419       I2C_AcknowledgeConfig(I2C_ACK_CURR);
 749  006f a601          	ld	a,#1
 750  0071 8d000000      	callf	f_I2C_AcknowledgeConfig
 753  0075 2024          	jra	L772
 754  0077               L103:
 755                     ; 421     else if((1 == addr_flag)&&(0 == rw_flag))
 757  0077 c60000        	ld	a,L122_addr_flag
 758  007a a101          	cp	a,#1
 759  007c 261d          	jrne	L772
 761  007e 725d0001      	tnz	L322_rw_flag
 762  0082 2617          	jrne	L772
 763                     ; 423 			value = revData;	//reveive the value
 765  0084 7b01          	ld	a,(OFST+0,sp)
 766  0086 c70003        	ld	L722_value,a
 767                     ; 424 			I2C_AcknowledgeConfig(I2C_ACK_CURR);
 769  0089 a601          	ld	a,#1
 770  008b 8d000000      	callf	f_I2C_AcknowledgeConfig
 772                     ; 425 			Write_reg(reg_addr,value);
 774  008f c60003        	ld	a,L722_value
 775  0092 97            	ld	xl,a
 776  0093 c60002        	ld	a,L522_reg_addr
 777  0096 95            	ld	xh,a
 778  0097 8d000000      	callf	f_Write_reg
 780  009b               L772:
 781                     ; 430   if((1 == addr_flag)&&(1 == rw_flag))//read out
 783  009b c60000        	ld	a,L122_addr_flag
 784  009e a101          	cp	a,#1
 785  00a0 2625          	jrne	L703
 787  00a2 c60001        	ld	a,L322_rw_flag
 788  00a5 a101          	cp	a,#1
 789  00a7 261e          	jrne	L703
 790                     ; 432     flag_status = I2C_GetFlagStatus(I2C_FLAG_TRANSMITTERRECEIVER);//judge send flag
 792  00a9 ae0304        	ldw	x,#772
 793  00ac 8d000000      	callf	f_I2C_GetFlagStatus
 795  00b0 6b01          	ld	(OFST+0,sp),a
 796                     ; 433     if(SET == flag_status)
 798  00b2 7b01          	ld	a,(OFST+0,sp)
 799  00b4 a101          	cp	a,#1
 800  00b6 260f          	jrne	L703
 801                     ; 436 			txData = Read_reg(reg_addr);
 803  00b8 c60002        	ld	a,L522_reg_addr
 804  00bb 8d000000      	callf	f_Read_reg
 806  00bf 6b01          	ld	(OFST+0,sp),a
 807                     ; 437       I2C_SendData(txData);
 809  00c1 7b01          	ld	a,(OFST+0,sp)
 810  00c3 8d000000      	callf	f_I2C_SendData
 812  00c7               L703:
 813                     ; 441   flag_status = I2C_GetFlagStatus(I2C_FLAG_STOPDETECTION);//judge stop condition
 815  00c7 ae0110        	ldw	x,#272
 816  00ca 8d000000      	callf	f_I2C_GetFlagStatus
 818  00ce 6b01          	ld	(OFST+0,sp),a
 819                     ; 442   if(SET == flag_status)
 821  00d0 7b01          	ld	a,(OFST+0,sp)
 822  00d2 a101          	cp	a,#1
 823  00d4 260b          	jrne	L313
 824                     ; 444     I2C_GenerateSTOP(DISABLE);
 826  00d6 4f            	clr	a
 827  00d7 8d000000      	callf	f_I2C_GenerateSTOP
 829                     ; 445     I2C_AcknowledgeConfig(I2C_ACK_CURR); 
 831  00db a601          	ld	a,#1
 832  00dd 8d000000      	callf	f_I2C_AcknowledgeConfig
 834  00e1               L313:
 835                     ; 447 }
 838  00e1 84            	pop	a
 839  00e2 85            	popw	x
 840  00e3 bf00          	ldw	c_y,x
 841  00e5 320002        	pop	c_y+2
 842  00e8 85            	popw	x
 843  00e9 bf00          	ldw	c_x,x
 844  00eb 320002        	pop	c_x+2
 845  00ee 80            	iret
 868                     ; 455  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 868                     ; 456  {
 869                     	switch	.text
 870  00ef               f_UART2_TX_IRQHandler:
 874                     ; 460  }
 877  00ef 80            	iret
 900                     ; 467  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 900                     ; 468  {
 901                     	switch	.text
 902  00f0               f_UART2_RX_IRQHandler:
 906                     ; 472  }
 909  00f0 80            	iret
 931                     ; 521  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 931                     ; 522  {
 932                     	switch	.text
 933  00f1               f_ADC1_IRQHandler:
 937                     ; 526  }
 940  00f1 80            	iret
 963                     ; 547  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 963                     ; 548  {
 964                     	switch	.text
 965  00f2               f_TIM4_UPD_OVF_IRQHandler:
 969                     ; 552  }
 972  00f2 80            	iret
 995                     ; 560 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 995                     ; 561 {
 996                     	switch	.text
 997  00f3               f_EEPROM_EEC_IRQHandler:
1001                     ; 565 }
1004  00f3 80            	iret
1016                     	xref	f_Read_reg
1017                     	xref	f_Write_reg
1018                     	xdef	f_EEPROM_EEC_IRQHandler
1019                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1020                     	xdef	f_ADC1_IRQHandler
1021                     	xdef	f_UART2_TX_IRQHandler
1022                     	xdef	f_UART2_RX_IRQHandler
1023                     	xdef	f_I2C_IRQHandler
1024                     	xdef	f_TIM3_CAP_COM_IRQHandler
1025                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
1026                     	xdef	f_TIM2_CAP_COM_IRQHandler
1027                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1028                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1029                     	xdef	f_TIM1_CAP_COM_IRQHandler
1030                     	xdef	f_SPI_IRQHandler
1031                     	xdef	f_EXTI_PORTE_IRQHandler
1032                     	xdef	f_EXTI_PORTD_IRQHandler
1033                     	xdef	f_EXTI_PORTC_IRQHandler
1034                     	xdef	f_EXTI_PORTB_IRQHandler
1035                     	xdef	f_EXTI_PORTA_IRQHandler
1036                     	xdef	f_CLK_IRQHandler
1037                     	xdef	f_AWU_IRQHandler
1038                     	xdef	f_TLI_IRQHandler
1039                     	xdef	f_TRAP_IRQHandler
1040                     	xdef	f_NonHandledInterrupt
1041                     	xref	f_I2C_GetFlagStatus
1042                     	xref	f_I2C_SendData
1043                     	xref	f_I2C_ReceiveData
1044                     	xref	f_I2C_AcknowledgeConfig
1045                     	xref	f_I2C_GenerateSTOP
1046                     	xref.b	c_x
1047                     	xref.b	c_y
1066                     	end
