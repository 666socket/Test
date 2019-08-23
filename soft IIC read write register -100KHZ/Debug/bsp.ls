   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 22 void CLK_Configuration(void)
  44                     ; 23 {
  45                     	switch	.text
  46  0000               f_CLK_Configuration:
  50                     ; 24   CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); //Internal high speed clock 
  52  0000 4f            	clr	a
  53  0001 8d000000      	callf	f_CLK_HSIPrescalerConfig
  55                     ; 25 }
  58  0005 87            	retf
  86                     ; 32 void ClockSwitch_HSE()
  86                     ; 33 {
  87                     	switch	.text
  88  0006               f_ClockSwitch_HSE:
  92                     ; 34   CLK_HSECmd(ENABLE);//enable HSE 
  94  0006 a601          	ld	a,#1
  95  0008 8d000000      	callf	f_CLK_HSECmd
  98  000c               L33:
  99                     ; 35   while(CLK_GetFlagStatus(CLK_FLAG_HSERDY)== RESET);  //waite HSE  for ready
 101  000c ae0202        	ldw	x,#514
 102  000f 8d000000      	callf	f_CLK_GetFlagStatus
 104  0013 4d            	tnz	a
 105  0014 27f6          	jreq	L33
 106                     ; 36   CLK_ClockSwitchCmd(ENABLE);   //enable clock switch
 108  0016 a601          	ld	a,#1
 109  0018 8d000000      	callf	f_CLK_ClockSwitchCmd
 111                     ; 37   CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO ,    
 111                     ; 38                 CLK_SOURCE_HSE ,            //choose external clock
 111                     ; 39                 DISABLE ,                   //turn off clock switch interrupt
 111                     ; 40                 CLK_CURRENTCLOCKSTATE_ENABLE //enable crystal
 111                     ; 41                 );
 113  001c 4b01          	push	#1
 114  001e 4b00          	push	#0
 115  0020 ae00b4        	ldw	x,#180
 116  0023 a601          	ld	a,#1
 117  0025 95            	ld	xh,a
 118  0026 8d000000      	callf	f_CLK_ClockSwitchConfig
 120  002a 85            	popw	x
 122  002b               L14:
 123                     ; 43   while(CLK_GetFlagStatus(CLK_FLAG_SWBSY) != RESET);
 125  002b ae0301        	ldw	x,#769
 126  002e 8d000000      	callf	f_CLK_GetFlagStatus
 128  0032 4d            	tnz	a
 129  0033 26f6          	jrne	L14
 130                     ; 44   CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV2);   //if switch succeed the cpu clock set 1 divider used eternal 16M as system clock
 132  0035 a681          	ld	a,#129
 133  0037 8d000000      	callf	f_CLK_SYSCLKConfig
 135                     ; 46   CLK_ClockSwitchCmd(DISABLE);     //turn off switch
 137  003b 4f            	clr	a
 138  003c 8d000000      	callf	f_CLK_ClockSwitchCmd
 140                     ; 47   CLK_HSICmd(DISABLE);    //turn off HSI
 142  0040 4f            	clr	a
 143  0041 8d000000      	callf	f_CLK_HSICmd
 145                     ; 48 }
 148  0045 87            	retf
 175                     ; 55 void Sys_Timer1_Configuration(void)
 175                     ; 56 {
 176                     	switch	.text
 177  0046               f_Sys_Timer1_Configuration:
 181                     ; 57   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
 183  0046 ae0001        	ldw	x,#1
 184  0049 a607          	ld	a,#7
 185  004b 95            	ld	xh,a
 186  004c 8d000000      	callf	f_CLK_PeripheralClockConfig
 188                     ; 59   TIM1_TimeBaseInit(0,TIM1_COUNTERMODE_UP,16000,0);	/* one frequency divide ,16M/16000 timer 1ms */
 190  0050 4b00          	push	#0
 191  0052 ae3e80        	ldw	x,#16000
 192  0055 89            	pushw	x
 193  0056 4b00          	push	#0
 194  0058 5f            	clrw	x
 195  0059 8d000000      	callf	f_TIM1_TimeBaseInit
 197  005d 5b04          	addw	sp,#4
 198                     ; 60   TIM1_ARRPreloadConfig(ENABLE);	/* enable auto reload */
 200  005f a601          	ld	a,#1
 201  0061 8d000000      	callf	f_TIM1_ARRPreloadConfig
 203                     ; 61   TIM1_Cmd(ENABLE);	/* turn on timer */
 205  0065 a601          	ld	a,#1
 206  0067 8d000000      	callf	f_TIM1_Cmd
 208                     ; 62 }
 211  006b 87            	retf
 239                     ; 68 void Sys_iic_Configuration(void)
 239                     ; 69 {
 240                     	switch	.text
 241  006c               f_Sys_iic_Configuration:
 245                     ; 70   CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
 247  006c ae0001        	ldw	x,#1
 248  006f 4f            	clr	a
 249  0070 95            	ld	xh,a
 250  0071 8d000000      	callf	f_CLK_PeripheralClockConfig
 252                     ; 71   I2C_Init(100000, 0xA0, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, 1);
 254  0075 4b01          	push	#1
 255  0077 4b00          	push	#0
 256  0079 4b01          	push	#1
 257  007b 4b00          	push	#0
 258  007d ae00a0        	ldw	x,#160
 259  0080 89            	pushw	x
 260  0081 ae86a0        	ldw	x,#34464
 261  0084 89            	pushw	x
 262  0085 ae0001        	ldw	x,#1
 263  0088 89            	pushw	x
 264  0089 8d000000      	callf	f_I2C_Init
 266  008d 5b0a          	addw	sp,#10
 267                     ; 72   I2C_StretchClockCmd(DISABLE);
 269  008f 4f            	clr	a
 270  0090 8d000000      	callf	f_I2C_StretchClockCmd
 272                     ; 73   I2C_ITConfig(I2C_IT_BUF|I2C_IT_EVT, ENABLE);
 274  0094 ae0001        	ldw	x,#1
 275  0097 a606          	ld	a,#6
 276  0099 95            	ld	xh,a
 277  009a 8d000000      	callf	f_I2C_ITConfig
 279                     ; 74   I2C_Cmd(ENABLE);
 281  009e a601          	ld	a,#1
 282  00a0 8d000000      	callf	f_I2C_Cmd
 284                     ; 75 }
 287  00a4 87            	retf
 315                     ; 81 void BSP_Initializes(void)
 315                     ; 82 {
 316                     	switch	.text
 317  00a5               f_BSP_Initializes:
 321                     ; 83 	LED_Init();
 323  00a5 8d000000      	callf	f_LED_Init
 325                     ; 85 	ClockSwitch_HSE();
 327  00a9 8d060006      	callf	f_ClockSwitch_HSE
 329                     ; 86   Sys_Timer1_Configuration();
 331  00ad 8d460046      	callf	f_Sys_Timer1_Configuration
 333                     ; 87 	TIM2_Init();
 335  00b1 8dbb00bb      	callf	f_TIM2_Init
 337                     ; 88   Sys_iic_Configuration();
 339  00b5 8d6c006c      	callf	f_Sys_iic_Configuration
 341                     ; 89   enableInterrupts();
 344  00b9 9a            rim
 346                     ; 90 }
 350  00ba 87            	retf
 374                     ; 97 void TIM2_Init()
 374                     ; 98 {
 375                     	switch	.text
 376  00bb               f_TIM2_Init:
 380                     ; 99   TIM2_TimeBaseInit(TIM2_PRESCALER_1 ,  ///* TIM2 one frequency divide ,16M/16000 timer 1ms */
 380                     ; 100                     16000                //set 1ms auto reload 16000
 380                     ; 101                     );
 382  00bb ae3e80        	ldw	x,#16000
 383  00be 89            	pushw	x
 384  00bf 4f            	clr	a
 385  00c0 8d000000      	callf	f_TIM2_TimeBaseInit
 387  00c4 85            	popw	x
 388                     ; 102   TIM2_ARRPreloadConfig(ENABLE);        //Allow automatic arbitration
 390  00c5 a601          	ld	a,#1
 391  00c7 8d000000      	callf	f_TIM2_ARRPreloadConfig
 393                     ; 103 }
 396  00cb 87            	retf
 430                     ; 109 void TIM2_DelayMs(unsigned int ms)
 430                     ; 110 { 
 431                     	switch	.text
 432  00cc               f_TIM2_DelayMs:
 434  00cc 89            	pushw	x
 435       00000000      OFST:	set	0
 438                     ; 111     TIM2_Cmd(ENABLE);        //enable TIM2
 440  00cd a601          	ld	a,#1
 441  00cf 8d000000      	callf	f_TIM2_Cmd
 444  00d3 2011          	jra	L321
 445  00d5               L131:
 446                     ; 114       while( TIM2_GetFlagStatus(TIM2_FLAG_UPDATE) == RESET); //wait counter reath to 1ms 
 448  00d5 ae0001        	ldw	x,#1
 449  00d8 8d000000      	callf	f_TIM2_GetFlagStatus
 451  00dc 4d            	tnz	a
 452  00dd 27f6          	jreq	L131
 453                     ; 115       TIM2_ClearFlag(TIM2_FLAG_UPDATE);  //Count completed 1 ms, clear the flags
 455  00df ae0001        	ldw	x,#1
 456  00e2 8d000000      	callf	f_TIM2_ClearFlag
 458  00e6               L321:
 459                     ; 112     while(ms--)
 461  00e6 1e01          	ldw	x,(OFST+1,sp)
 462  00e8 1d0001        	subw	x,#1
 463  00eb 1f01          	ldw	(OFST+1,sp),x
 464  00ed 1c0001        	addw	x,#1
 465  00f0 a30000        	cpw	x,#0
 466  00f3 26e0          	jrne	L131
 467                     ; 117     TIM2_Cmd(DISABLE);       //disable TIM2
 469  00f5 4f            	clr	a
 470  00f6 8d000000      	callf	f_TIM2_Cmd
 472                     ; 118 }
 475  00fa 85            	popw	x
 476  00fb 87            	retf
 510                     ; 125 void Timer1_Delay_1ms(unsigned int ms)
 510                     ; 126 {
 511                     	switch	.text
 512  00fc               f_Timer1_Delay_1ms:
 514  00fc 89            	pushw	x
 515       00000000      OFST:	set	0
 518                     ; 127 	TIM1_Cmd(ENABLE);
 520  00fd a601          	ld	a,#1
 521  00ff 8d000000      	callf	f_TIM1_Cmd
 524  0103 2011          	jra	L351
 525  0105               L161:
 526                     ; 130 		while(TIM1_GetFlagStatus(TIM1_FLAG_UPDATE) == RESET);/* wait the count reach to 1ms */
 528  0105 ae0001        	ldw	x,#1
 529  0108 8d000000      	callf	f_TIM1_GetFlagStatus
 531  010c 4d            	tnz	a
 532  010d 27f6          	jreq	L161
 533                     ; 131 		TIM1_ClearFlag(TIM1_FLAG_UPDATE); /* count complete, clear the flag bit */
 535  010f ae0001        	ldw	x,#1
 536  0112 8d000000      	callf	f_TIM1_ClearFlag
 538  0116               L351:
 539                     ; 128 	while( ms -- )
 541  0116 1e01          	ldw	x,(OFST+1,sp)
 542  0118 1d0001        	subw	x,#1
 543  011b 1f01          	ldw	(OFST+1,sp),x
 544  011d 1c0001        	addw	x,#1
 545  0120 a30000        	cpw	x,#0
 546  0123 26e0          	jrne	L161
 547                     ; 133 	TIM1_Cmd(DISABLE);
 549  0125 4f            	clr	a
 550  0126 8d000000      	callf	f_TIM1_Cmd
 552                     ; 134 }
 555  012a 85            	popw	x
 556  012b 87            	retf
 568                     	xdef	f_Sys_iic_Configuration
 569                     	xdef	f_Timer1_Delay_1ms
 570                     	xdef	f_Sys_Timer1_Configuration
 571                     	xdef	f_BSP_Initializes
 572                     	xdef	f_ClockSwitch_HSE
 573                     	xdef	f_CLK_Configuration
 574                     	xdef	f_TIM2_DelayMs
 575                     	xdef	f_TIM2_Init
 576                     	xref	f_LED_Init
 577                     	xref	f_TIM2_ClearFlag
 578                     	xref	f_TIM2_GetFlagStatus
 579                     	xref	f_TIM2_ARRPreloadConfig
 580                     	xref	f_TIM2_Cmd
 581                     	xref	f_TIM2_TimeBaseInit
 582                     	xref	f_TIM1_ClearFlag
 583                     	xref	f_TIM1_GetFlagStatus
 584                     	xref	f_TIM1_ARRPreloadConfig
 585                     	xref	f_TIM1_Cmd
 586                     	xref	f_TIM1_TimeBaseInit
 587                     	xref	f_I2C_ITConfig
 588                     	xref	f_I2C_StretchClockCmd
 589                     	xref	f_I2C_Cmd
 590                     	xref	f_I2C_Init
 591                     	xref	f_CLK_GetFlagStatus
 592                     	xref	f_CLK_SYSCLKConfig
 593                     	xref	f_CLK_HSIPrescalerConfig
 594                     	xref	f_CLK_ClockSwitchConfig
 595                     	xref	f_CLK_PeripheralClockConfig
 596                     	xref	f_CLK_ClockSwitchCmd
 597                     	xref	f_CLK_HSICmd
 598                     	xref	f_CLK_HSECmd
 617                     	end
