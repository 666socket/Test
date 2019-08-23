   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _Init_arry:
  17  0000 f0            	dc.b	240
  18  0001 07            	dc.b	7
  19  0002 07            	dc.b	7
  20  0003 87            	dc.b	135
  21  0004 07            	dc.b	7
  22  0005 f1            	dc.b	241
  23  0006 00            	dc.b	0
  24  0007 c7            	dc.b	199
  25  0008 c7            	dc.b	199
  26  0009 00            	dc.b	0
  27  000a f2            	dc.b	242
  28  000b 00            	dc.b	0
  29  000c 07            	dc.b	7
  30  000d 07            	dc.b	7
  31  000e 00            	dc.b	0
  32  000f f3            	dc.b	243
  33  0010 03            	dc.b	3
  34  0011 00            	dc.b	0
  35  0012 00            	dc.b	0
  36  0013 03            	dc.b	3
  37  0014 f4            	dc.b	244
  38  0015 00            	dc.b	0
  39  0016 0f            	dc.b	15
  40  0017 0f            	dc.b	15
  41  0018 00            	dc.b	0
  42  0019 f5            	dc.b	245
  43  001a 00            	dc.b	0
  44  001b 0f            	dc.b	15
  45  001c 0f            	dc.b	15
  46  001d 00            	dc.b	0
  47  001e f6            	dc.b	246
  48  001f 00            	dc.b	0
  49  0020 01            	dc.b	1
  50  0021 01            	dc.b	1
  51  0022 00            	dc.b	0
 104                     ; 36 void Write_reg( uint8_t addr , uint8_t new_value)
 104                     ; 37 {
 105                     	switch	.text
 106  0000               f_Write_reg:
 108  0000 89            	pushw	x
 109  0001 5204          	subw	sp,#4
 110       00000004      OFST:	set	4
 113                     ; 38 	uint8_t i = 0;
 115                     ; 39 	for(i = 0;i < loop_num;i ++)
 117  0003 0f04          	clr	(OFST+0,sp)
 118  0005               L13:
 119                     ; 41 		if(addr == Init_arry[i].reg_addr)
 121  0005 7b04          	ld	a,(OFST+0,sp)
 122  0007 97            	ld	xl,a
 123  0008 a605          	ld	a,#5
 124  000a 42            	mul	x,a
 125  000b d60000        	ld	a,(_Init_arry,x)
 126  000e 1105          	cp	a,(OFST+1,sp)
 127  0010 2708          	jreq	L53
 128                     ; 42 			break;
 130                     ; 39 	for(i = 0;i < loop_num;i ++)
 132  0012 0c04          	inc	(OFST+0,sp)
 135  0014 7b04          	ld	a,(OFST+0,sp)
 136  0016 a107          	cp	a,#7
 137  0018 25eb          	jrult	L13
 138  001a               L53:
 139                     ; 44 	Init_arry[i].result = ((Init_arry[i].old_value) & (Init_arry[i].used_bit ^ Init_arry[i].rw_ctrl)) | (new_value & Init_arry[i].rw_ctrl);
 141  001a 7b04          	ld	a,(OFST+0,sp)
 142  001c 97            	ld	xl,a
 143  001d a605          	ld	a,#5
 144  001f 42            	mul	x,a
 145  0020 89            	pushw	x
 146  0021 7b06          	ld	a,(OFST+2,sp)
 147  0023 97            	ld	xl,a
 148  0024 a605          	ld	a,#5
 149  0026 42            	mul	x,a
 150  0027 d60002        	ld	a,(_Init_arry+2,x)
 151  002a 1408          	and	a,(OFST+4,sp)
 152  002c 6b05          	ld	(OFST+1,sp),a
 153  002e 7b06          	ld	a,(OFST+2,sp)
 154  0030 97            	ld	xl,a
 155  0031 a605          	ld	a,#5
 156  0033 42            	mul	x,a
 157  0034 d60001        	ld	a,(_Init_arry+1,x)
 158  0037 6b04          	ld	(OFST+0,sp),a
 159  0039 7b06          	ld	a,(OFST+2,sp)
 160  003b 97            	ld	xl,a
 161  003c a605          	ld	a,#5
 162  003e 42            	mul	x,a
 163  003f d60003        	ld	a,(_Init_arry+3,x)
 164  0042 6b03          	ld	(OFST-1,sp),a
 165  0044 7b06          	ld	a,(OFST+2,sp)
 166  0046 97            	ld	xl,a
 167  0047 a605          	ld	a,#5
 168  0049 42            	mul	x,a
 169  004a d60002        	ld	a,(_Init_arry+2,x)
 170  004d 1803          	xor	a,(OFST-1,sp)
 171  004f 1404          	and	a,(OFST+0,sp)
 172  0051 1a05          	or	a,(OFST+1,sp)
 173  0053 85            	popw	x
 174  0054 d70004        	ld	(_Init_arry+4,x),a
 175                     ; 45 }
 178  0057 5b06          	addw	sp,#6
 179  0059 87            	retf
 218                     ; 52 uint8_t Read_reg(uint8_t addr )
 218                     ; 53 {
 219                     	switch	.text
 220  005a               f_Read_reg:
 222  005a 88            	push	a
 223  005b 88            	push	a
 224       00000001      OFST:	set	1
 227                     ; 54 	uint8_t i = 0;
 229                     ; 55 	for(i = 0;i < loop_num;i ++)
 231  005c 0f01          	clr	(OFST+0,sp)
 232  005e               L75:
 233                     ; 57 		if(addr == Init_arry[i].reg_addr)
 235  005e 7b01          	ld	a,(OFST+0,sp)
 236  0060 97            	ld	xl,a
 237  0061 a605          	ld	a,#5
 238  0063 42            	mul	x,a
 239  0064 d60000        	ld	a,(_Init_arry,x)
 240  0067 1102          	cp	a,(OFST+1,sp)
 241  0069 2708          	jreq	L36
 242                     ; 59 			break;
 244                     ; 55 	for(i = 0;i < loop_num;i ++)
 246  006b 0c01          	inc	(OFST+0,sp)
 249  006d 7b01          	ld	a,(OFST+0,sp)
 250  006f a107          	cp	a,#7
 251  0071 25eb          	jrult	L75
 252  0073               L36:
 253                     ; 62 	return Init_arry[i].result;
 255  0073 7b01          	ld	a,(OFST+0,sp)
 256  0075 97            	ld	xl,a
 257  0076 a605          	ld	a,#5
 258  0078 42            	mul	x,a
 259  0079 d60004        	ld	a,(_Init_arry+4,x)
 262  007c 85            	popw	x
 263  007d 87            	retf
 341                     	xdef	_Init_arry
 342                     	xdef	f_Read_reg
 343                     	xdef	f_Write_reg
 362                     	end
