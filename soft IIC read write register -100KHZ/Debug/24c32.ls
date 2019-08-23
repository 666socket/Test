   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  69                     ; 31 void Write_24c32(uint8_t addr , uint8_t reg_addr , uint8_t send_data )
  69                     ; 32 {
  70                     	switch	.text
  71  0000               f_Write_24c32:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 33 	Soft_iic_Start();
  79  0001 8d000000      	callf	f_Soft_iic_Start
  81                     ; 34 	Soft_iic_Write_Byte(addr);
  83  0005 7b01          	ld	a,(OFST+1,sp)
  84  0007 8d000000      	callf	f_Soft_iic_Write_Byte
  86                     ; 35 	Soft_iic_Write_Byte(reg_addr>>8);	/*High address */
  88  000b 4f            	clr	a
  89  000c 8d000000      	callf	f_Soft_iic_Write_Byte
  91                     ; 36 	Soft_iic_Write_Byte(reg_addr%256);	/*Low address */
  93  0010 7b02          	ld	a,(OFST+2,sp)
  94  0012 8d000000      	callf	f_Soft_iic_Write_Byte
  96                     ; 37 	Soft_iic_Write_Byte(send_data);
  98  0016 7b06          	ld	a,(OFST+6,sp)
  99  0018 8d000000      	callf	f_Soft_iic_Write_Byte
 101                     ; 38 	Soft_iic_Stop();
 103  001c 8d000000      	callf	f_Soft_iic_Stop
 105                     ; 39 }
 108  0020 85            	popw	x
 109  0021 87            	retf
 158                     ; 47 uint8_t Read_24c32(uint8_t addr , uint8_t reg_addr)
 158                     ; 48 {
 159                     	switch	.text
 160  0022               f_Read_24c32:
 162  0022 89            	pushw	x
 163  0023 88            	push	a
 164       00000001      OFST:	set	1
 167                     ; 49 	uint8_t data = 0;
 169                     ; 50 	Soft_iic_Start();
 171  0024 8d000000      	callf	f_Soft_iic_Start
 173                     ; 51 	Soft_iic_Write_Byte(addr);
 175  0028 7b02          	ld	a,(OFST+1,sp)
 176  002a 8d000000      	callf	f_Soft_iic_Write_Byte
 178                     ; 52 	Soft_iic_Write_Byte(reg_addr>>8);	/*High address */
 180  002e 4f            	clr	a
 181  002f 8d000000      	callf	f_Soft_iic_Write_Byte
 183                     ; 53 	Soft_iic_Write_Byte(reg_addr%256);	/*Low address */
 185  0033 7b03          	ld	a,(OFST+2,sp)
 186  0035 8d000000      	callf	f_Soft_iic_Write_Byte
 188                     ; 55 	Soft_iic_Start();
 190  0039 8d000000      	callf	f_Soft_iic_Start
 192                     ; 56 	Soft_iic_Write_Byte(addr | 0x01);
 194  003d 7b02          	ld	a,(OFST+1,sp)
 195  003f aa01          	or	a,#1
 196  0041 8d000000      	callf	f_Soft_iic_Write_Byte
 198                     ; 57 	data = Soft_iic_Read_Byte(0);
 200  0045 4f            	clr	a
 201  0046 8d000000      	callf	f_Soft_iic_Read_Byte
 203  004a 6b01          	ld	(OFST+0,sp),a
 204                     ; 58 	Soft_iic_Stop();
 206  004c 8d000000      	callf	f_Soft_iic_Stop
 208                     ; 59 	return data;
 210  0050 7b01          	ld	a,(OFST+0,sp)
 213  0052 5b03          	addw	sp,#3
 214  0054 87            	retf
 251                     ; 68 void Test_24c32(void)
 251                     ; 69 {
 252                     	switch	.text
 253  0055               f_Test_24c32:
 255  0055 88            	push	a
 256       00000001      OFST:	set	1
 259                     ; 71 	Write_24c32(0xA0,0,10);
 261  0056 4b0a          	push	#10
 262  0058 5f            	clrw	x
 263  0059 a6a0          	ld	a,#160
 264  005b 95            	ld	xh,a
 265  005c 8d000000      	callf	f_Write_24c32
 267  0060 84            	pop	a
 268                     ; 72 	Soft_delay_10us(500);  /* need to add delay */
 270  0061 ae01f4        	ldw	x,#500
 271  0064 89            	pushw	x
 272  0065 ae0000        	ldw	x,#0
 273  0068 89            	pushw	x
 274  0069 8d000000      	callf	f_Soft_delay_10us
 276  006d 5b04          	addw	sp,#4
 277                     ; 73 	recv_data = Read_24c32(0xA0,0);
 279  006f 5f            	clrw	x
 280  0070 a6a0          	ld	a,#160
 281  0072 95            	ld	xh,a
 282  0073 8d220022      	callf	f_Read_24c32
 284  0077 6b01          	ld	(OFST+0,sp),a
 285                     ; 75 	if(recv_data == 10)
 287  0079 7b01          	ld	a,(OFST+0,sp)
 288  007b a10a          	cp	a,#10
 289  007d 2616          	jrne	L56
 290                     ; 77 			LED_On();
 292  007f 8d000000      	callf	f_LED_On
 294                     ; 78 			Timer1_Delay_1ms(100);
 296  0083 ae0064        	ldw	x,#100
 297  0086 8d000000      	callf	f_Timer1_Delay_1ms
 299                     ; 79 			LED_Off();
 301  008a 8d000000      	callf	f_LED_Off
 303                     ; 80 			Timer1_Delay_1ms(100);
 305  008e ae0064        	ldw	x,#100
 306  0091 8d000000      	callf	f_Timer1_Delay_1ms
 308  0095               L56:
 309                     ; 82 }
 312  0095 84            	pop	a
 313  0096 87            	retf
 325                     	xdef	f_Test_24c32
 326                     	xdef	f_Read_24c32
 327                     	xdef	f_Write_24c32
 328                     	xref	f_Timer1_Delay_1ms
 329                     	xref	f_Soft_delay_10us
 330                     	xref	f_Soft_iic_Read_Byte
 331                     	xref	f_Soft_iic_Write_Byte
 332                     	xref	f_Soft_iic_Stop
 333                     	xref	f_Soft_iic_Start
 334                     	xref	f_LED_Off
 335                     	xref	f_LED_On
 354                     	end
