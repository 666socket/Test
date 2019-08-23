   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  69                     ; 30 void Write_Ds1307(uint8_t addr , uint8_t reg_addr , uint8_t send_data )
  69                     ; 31 {
  70                     	switch	.text
  71  0000               f_Write_Ds1307:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 32 	Soft_iic_Start();
  79  0001 8d000000      	callf	f_Soft_iic_Start
  81                     ; 33 	Soft_iic_Write_Byte(addr);
  83  0005 7b01          	ld	a,(OFST+1,sp)
  84  0007 8d000000      	callf	f_Soft_iic_Write_Byte
  86                     ; 34 	Soft_iic_Write_Byte(reg_addr);
  88  000b 7b02          	ld	a,(OFST+2,sp)
  89  000d 8d000000      	callf	f_Soft_iic_Write_Byte
  91                     ; 35 	Soft_iic_Write_Byte(send_data);
  93  0011 7b06          	ld	a,(OFST+6,sp)
  94  0013 8d000000      	callf	f_Soft_iic_Write_Byte
  96                     ; 36 	Soft_iic_Stop();
  98  0017 8d000000      	callf	f_Soft_iic_Stop
 100                     ; 37 }
 103  001b 85            	popw	x
 104  001c 87            	retf
 153                     ; 44 uint8_t Read_Ds1307(uint8_t addr , uint8_t reg_addr)
 153                     ; 45 {
 154                     	switch	.text
 155  001d               f_Read_Ds1307:
 157  001d 89            	pushw	x
 158  001e 88            	push	a
 159       00000001      OFST:	set	1
 162                     ; 46 	uint8_t data = 0;
 164                     ; 47 	Soft_iic_Start();
 166  001f 8d000000      	callf	f_Soft_iic_Start
 168                     ; 48 	Soft_iic_Write_Byte(addr);
 170  0023 7b02          	ld	a,(OFST+1,sp)
 171  0025 8d000000      	callf	f_Soft_iic_Write_Byte
 173                     ; 49 	Soft_iic_Write_Byte(reg_addr);
 175  0029 7b03          	ld	a,(OFST+2,sp)
 176  002b 8d000000      	callf	f_Soft_iic_Write_Byte
 178                     ; 51 	Soft_iic_Start();
 180  002f 8d000000      	callf	f_Soft_iic_Start
 182                     ; 52 	Soft_iic_Write_Byte(addr | 0x01);
 184  0033 7b02          	ld	a,(OFST+1,sp)
 185  0035 aa01          	or	a,#1
 186  0037 8d000000      	callf	f_Soft_iic_Write_Byte
 188                     ; 53 	data = Soft_iic_Read_Byte(0);
 190  003b 4f            	clr	a
 191  003c 8d000000      	callf	f_Soft_iic_Read_Byte
 193  0040 6b01          	ld	(OFST+0,sp),a
 194                     ; 54 	Soft_iic_Stop();
 196  0042 8d000000      	callf	f_Soft_iic_Stop
 198                     ; 55 	return data;
 200  0046 7b01          	ld	a,(OFST+0,sp)
 203  0048 5b03          	addw	sp,#3
 204  004a 87            	retf
 216                     	xdef	f_Read_Ds1307
 217                     	xdef	f_Write_Ds1307
 218                     	xref	f_Soft_iic_Read_Byte
 219                     	xref	f_Soft_iic_Write_Byte
 220                     	xref	f_Soft_iic_Stop
 221                     	xref	f_Soft_iic_Start
 240                     	end
