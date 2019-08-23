   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 130                     ; 28 void main(void)
 130                     ; 29 {
 131                     	switch	.text
 132  0000               f_main:
 134  0000 520a          	subw	sp,#10
 135       0000000a      OFST:	set	10
 138                     ; 32   uint8_t rdata = 1;
 140                     ; 34   BSP_Initializes();
 142  0002 8d000000      	callf	f_BSP_Initializes
 144                     ; 38   soft_IIC_init();
 146  0006 8d000000      	callf	f_soft_IIC_init
 148                     ; 40 	tr_iic.addr = slaver_addr;
 150  000a a6a0          	ld	a,#160
 151  000c 6b02          	ld	(OFST-8,sp),a
 152                     ; 41 	tr_iic.reg_addr = 0xF0;
 154  000e a6f0          	ld	a,#240
 155  0010 6b04          	ld	(OFST-6,sp),a
 156                     ; 42 	tr_iic.rw_flag = write; //write
 158  0012 0f03          	clr	(OFST-7,sp)
 159                     ; 43 	tr_iic.value = 0x13;
 161  0014 a613          	ld	a,#19
 162  0016 6b0a          	ld	(OFST+0,sp),a
 163                     ; 44 	soft_iic_transfer(&tr_iic);
 165  0018 96            	ldw	x,sp
 166  0019 1c0002        	addw	x,#OFST-8
 167  001c 8d000000      	callf	f_soft_iic_transfer
 169                     ; 46 	Timer1_Delay_1ms(1000);
 171  0020 ae03e8        	ldw	x,#1000
 172  0023 8d000000      	callf	f_Timer1_Delay_1ms
 174                     ; 48 	tr_iic.addr = slaver_addr;
 176  0027 a6a0          	ld	a,#160
 177  0029 6b02          	ld	(OFST-8,sp),a
 178                     ; 49 	tr_iic.reg_addr = 0xF3;
 180  002b a6f3          	ld	a,#243
 181  002d 6b04          	ld	(OFST-6,sp),a
 182                     ; 50 	tr_iic.rw_flag = read; //read
 184  002f a601          	ld	a,#1
 185  0031 6b03          	ld	(OFST-7,sp),a
 186                     ; 51 	rdata = soft_iic_transfer(&tr_iic);
 188  0033 96            	ldw	x,sp
 189  0034 1c0002        	addw	x,#OFST-8
 190  0037 8d000000      	callf	f_soft_iic_transfer
 192  003b 6b01          	ld	(OFST-9,sp),a
 193  003d               L75:
 194                     ; 54 		if(rdata == 0x03)
 196  003d 7b01          	ld	a,(OFST-9,sp)
 197  003f a103          	cp	a,#3
 198  0041 26fa          	jrne	L75
 199                     ; 56 			LED_On();
 201  0043 8d000000      	callf	f_LED_On
 203                     ; 57 			Timer1_Delay_1ms(200);
 205  0047 ae00c8        	ldw	x,#200
 206  004a 8d000000      	callf	f_Timer1_Delay_1ms
 208                     ; 58 			LED_Off();
 210  004e 8d000000      	callf	f_LED_Off
 212                     ; 59 			Timer1_Delay_1ms(300);
 214  0052 ae012c        	ldw	x,#300
 215  0055 8d000000      	callf	f_Timer1_Delay_1ms
 217  0059 20e2          	jra	L75
 229                     	xdef	f_main
 230                     	xref	f_Timer1_Delay_1ms
 231                     	xref	f_BSP_Initializes
 232                     	xref	f_soft_iic_transfer
 233                     	xref	f_soft_IIC_init
 234                     	xref	f_LED_Off
 235                     	xref	f_LED_On
 254                     	end
