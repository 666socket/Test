   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 28 void LED_Init(void)
  44                     ; 29 {
  45                     	switch	.text
  46  0000               f_LED_Init:
  50                     ; 30 	GPIO_Init(GPIOD , GPIO_PIN_0 , GPIO_MODE_OUT_PP_LOW_FAST);
  52  0000 4be0          	push	#224
  53  0002 4b01          	push	#1
  54  0004 ae500f        	ldw	x,#20495
  55  0007 8d000000      	callf	f_GPIO_Init
  57  000b 85            	popw	x
  58                     ; 34 }
  61  000c 87            	retf
  84                     ; 41 void LED_On(void)
  84                     ; 42 {
  85                     	switch	.text
  86  000d               f_LED_On:
  90                     ; 43 	GPIO_WriteLow(GPIOD , GPIO_PIN_0);
  92  000d 4b01          	push	#1
  93  000f ae500f        	ldw	x,#20495
  94  0012 8d000000      	callf	f_GPIO_WriteLow
  96  0016 84            	pop	a
  97                     ; 44 }
 100  0017 87            	retf
 123                     ; 51 void LED_Off(void)
 123                     ; 52 {
 124                     	switch	.text
 125  0018               f_LED_Off:
 129                     ; 53 	GPIO_WriteHigh(GPIOD , GPIO_PIN_0);
 131  0018 4b01          	push	#1
 132  001a ae500f        	ldw	x,#20495
 133  001d 8d000000      	callf	f_GPIO_WriteHigh
 135  0021 84            	pop	a
 136                     ; 54 }
 139  0022 87            	retf
 151                     	xdef	f_LED_Off
 152                     	xdef	f_LED_On
 153                     	xdef	f_LED_Init
 154                     	xref	f_GPIO_WriteLow
 155                     	xref	f_GPIO_WriteHigh
 156                     	xref	f_GPIO_Init
 175                     	end
