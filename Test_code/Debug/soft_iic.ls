   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  52                     ; 21 void Soft_Delay_10us(u32 nus)
  52                     ; 22 {  
  53                     	switch	.text
  54  0000               f_Soft_Delay_10us:
  56       00000000      OFST:	set	0
  59  0000               L72:
  60                     ; 23   while(nus--);
  62  0000 96            	ldw	x,sp
  63  0001 1c0004        	addw	x,#OFST+4
  64  0004 8d000000      	callf	d_ltor
  66  0008 96            	ldw	x,sp
  67  0009 1c0004        	addw	x,#OFST+4
  68  000c a601          	ld	a,#1
  69  000e 8d000000      	callf	d_lgsbc
  71  0012 8d000000      	callf	d_lrzmp
  73  0016 26e8          	jrne	L72
  74                     ; 24 }
  77  0018 87            	retf
 101                     ; 32 void soft_IIC_init(void)
 101                     ; 33 {
 102                     	switch	.text
 103  0019               f_soft_IIC_init:
 107                     ; 34   iic_scl_out();
 109  0019 4bf0          	push	#240
 110  001b 4b10          	push	#16
 111  001d ae5005        	ldw	x,#20485
 112  0020 8d000000      	callf	f_GPIO_Init
 114  0024 85            	popw	x
 115                     ; 35   iic_sda_out();
 117  0025 4bf0          	push	#240
 118  0027 4b20          	push	#32
 119  0029 ae5005        	ldw	x,#20485
 120  002c 8d000000      	callf	f_GPIO_Init
 122  0030 85            	popw	x
 123                     ; 36 	iic_sda_1();
 125  0031 4b20          	push	#32
 126  0033 ae5005        	ldw	x,#20485
 127  0036 8d000000      	callf	f_GPIO_WriteHigh
 129  003a 84            	pop	a
 130                     ; 37   iic_scl_1();
 132  003b 4b10          	push	#16
 133  003d ae5005        	ldw	x,#20485
 134  0040 8d000000      	callf	f_GPIO_WriteHigh
 136  0044 84            	pop	a
 137                     ; 38 }
 140  0045 87            	retf
 165                     ; 45 void soft_IIC_Start(void)
 165                     ; 46 {
 166                     	switch	.text
 167  0046               f_soft_IIC_Start:
 171                     ; 47   iic_sda_1();
 173  0046 4b20          	push	#32
 174  0048 ae5005        	ldw	x,#20485
 175  004b 8d000000      	callf	f_GPIO_WriteHigh
 177  004f 84            	pop	a
 178                     ; 48   iic_scl_1();
 180  0050 4b10          	push	#16
 181  0052 ae5005        	ldw	x,#20485
 182  0055 8d000000      	callf	f_GPIO_WriteHigh
 184  0059 84            	pop	a
 185                     ; 49   Soft_Delay_10us(1);
 187  005a ae0001        	ldw	x,#1
 188  005d 89            	pushw	x
 189  005e ae0000        	ldw	x,#0
 190  0061 89            	pushw	x
 191  0062 8d000000      	callf	f_Soft_Delay_10us
 193  0066 5b04          	addw	sp,#4
 194                     ; 50   iic_sda_0();
 196  0068 4b20          	push	#32
 197  006a ae5005        	ldw	x,#20485
 198  006d 8d000000      	callf	f_GPIO_WriteLow
 200  0071 84            	pop	a
 201                     ; 51   Soft_Delay_10us(1);
 203  0072 ae0001        	ldw	x,#1
 204  0075 89            	pushw	x
 205  0076 ae0000        	ldw	x,#0
 206  0079 89            	pushw	x
 207  007a 8d000000      	callf	f_Soft_Delay_10us
 209  007e 5b04          	addw	sp,#4
 210                     ; 52   iic_scl_0();
 212  0080 4b10          	push	#16
 213  0082 ae5005        	ldw	x,#20485
 214  0085 8d000000      	callf	f_GPIO_WriteLow
 216  0089 84            	pop	a
 217                     ; 53 }
 220  008a 87            	retf
 245                     ; 59 void soft_IIC_Stop(void)
 245                     ; 60 {
 246                     	switch	.text
 247  008b               f_soft_IIC_Stop:
 251                     ; 61 	iic_sda_0();
 253  008b 4b20          	push	#32
 254  008d ae5005        	ldw	x,#20485
 255  0090 8d000000      	callf	f_GPIO_WriteLow
 257  0094 84            	pop	a
 258                     ; 62   iic_scl_1();
 260  0095 4b10          	push	#16
 261  0097 ae5005        	ldw	x,#20485
 262  009a 8d000000      	callf	f_GPIO_WriteHigh
 264  009e 84            	pop	a
 265                     ; 63   Soft_Delay_10us(1);
 267  009f ae0001        	ldw	x,#1
 268  00a2 89            	pushw	x
 269  00a3 ae0000        	ldw	x,#0
 270  00a6 89            	pushw	x
 271  00a7 8d000000      	callf	f_Soft_Delay_10us
 273  00ab 5b04          	addw	sp,#4
 274                     ; 64   iic_sda_1();
 276  00ad 4b20          	push	#32
 277  00af ae5005        	ldw	x,#20485
 278  00b2 8d000000      	callf	f_GPIO_WriteHigh
 280  00b6 84            	pop	a
 281                     ; 65   Soft_Delay_10us(1);
 283  00b7 ae0001        	ldw	x,#1
 284  00ba 89            	pushw	x
 285  00bb ae0000        	ldw	x,#0
 286  00be 89            	pushw	x
 287  00bf 8d000000      	callf	f_Soft_Delay_10us
 289  00c3 5b04          	addw	sp,#4
 290                     ; 66   iic_scl_1();
 292  00c5 4b10          	push	#16
 293  00c7 ae5005        	ldw	x,#20485
 294  00ca 8d000000      	callf	f_GPIO_WriteHigh
 296  00ce 84            	pop	a
 297                     ; 67 }
 300  00cf 87            	retf
 336                     ; 75 uint8_t soft_IIC_Wait_Ack(void)
 336                     ; 76 {
 337                     	switch	.text
 338  00d0               f_soft_IIC_Wait_Ack:
 340  00d0 88            	push	a
 341       00000001      OFST:	set	1
 344                     ; 77   uint8_t ack = 0;
 346                     ; 79   iic_sda_in();
 348  00d1 4b40          	push	#64
 349  00d3 4b20          	push	#32
 350  00d5 ae5005        	ldw	x,#20485
 351  00d8 8d000000      	callf	f_GPIO_Init
 353  00dc 85            	popw	x
 354                     ; 80   Soft_Delay_10us(1);
 356  00dd ae0001        	ldw	x,#1
 357  00e0 89            	pushw	x
 358  00e1 ae0000        	ldw	x,#0
 359  00e4 89            	pushw	x
 360  00e5 8d000000      	callf	f_Soft_Delay_10us
 362  00e9 5b04          	addw	sp,#4
 363                     ; 81 	iic_scl_1();
 365  00eb 4b10          	push	#16
 366  00ed ae5005        	ldw	x,#20485
 367  00f0 8d000000      	callf	f_GPIO_WriteHigh
 369  00f4 84            	pop	a
 370                     ; 82   Soft_Delay_10us(1);
 372  00f5 ae0001        	ldw	x,#1
 373  00f8 89            	pushw	x
 374  00f9 ae0000        	ldw	x,#0
 375  00fc 89            	pushw	x
 376  00fd 8d000000      	callf	f_Soft_Delay_10us
 378  0101 5b04          	addw	sp,#4
 379                     ; 83   ack = iic_sda_read();
 381  0103 4b20          	push	#32
 382  0105 ae5005        	ldw	x,#20485
 383  0108 8d000000      	callf	f_GPIO_ReadInputPin
 385  010c 5b01          	addw	sp,#1
 386  010e 6b01          	ld	(OFST+0,sp),a
 387                     ; 84   iic_scl_0();
 389  0110 4b10          	push	#16
 390  0112 ae5005        	ldw	x,#20485
 391  0115 8d000000      	callf	f_GPIO_WriteLow
 393  0119 84            	pop	a
 394                     ; 85   iic_sda_out();
 396  011a 4bf0          	push	#240
 397  011c 4b20          	push	#32
 398  011e ae5005        	ldw	x,#20485
 399  0121 8d000000      	callf	f_GPIO_Init
 401  0125 85            	popw	x
 402                     ; 90   return !ack;
 404  0126 0d01          	tnz	(OFST+0,sp)
 405  0128 2604          	jrne	L61
 406  012a a601          	ld	a,#1
 407  012c 2001          	jra	L02
 408  012e               L61:
 409  012e 4f            	clr	a
 410  012f               L02:
 413  012f 5b01          	addw	sp,#1
 414  0131 87            	retf
 449                     ; 100 void soft_IIC_Ack(uint8_t ack)
 449                     ; 101 {
 450                     	switch	.text
 451  0132               f_soft_IIC_Ack:
 453  0132 88            	push	a
 454       00000000      OFST:	set	0
 457                     ; 102   iic_scl_0();
 459  0133 4b10          	push	#16
 460  0135 ae5005        	ldw	x,#20485
 461  0138 8d000000      	callf	f_GPIO_WriteLow
 463  013c 84            	pop	a
 464                     ; 103   iic_sda_out();
 466  013d 4bf0          	push	#240
 467  013f 4b20          	push	#32
 468  0141 ae5005        	ldw	x,#20485
 469  0144 8d000000      	callf	f_GPIO_Init
 471  0148 85            	popw	x
 472                     ; 105   if(1 == ack) 
 474  0149 7b01          	ld	a,(OFST+1,sp)
 475  014b a101          	cp	a,#1
 476  014d 260c          	jrne	L311
 477                     ; 107 		iic_sda_0();
 479  014f 4b20          	push	#32
 480  0151 ae5005        	ldw	x,#20485
 481  0154 8d000000      	callf	f_GPIO_WriteLow
 483  0158 84            	pop	a
 485  0159 200a          	jra	L511
 486  015b               L311:
 487                     ; 111 		iic_sda_1();
 489  015b 4b20          	push	#32
 490  015d ae5005        	ldw	x,#20485
 491  0160 8d000000      	callf	f_GPIO_WriteHigh
 493  0164 84            	pop	a
 494  0165               L511:
 495                     ; 113   Soft_Delay_10us(1);
 497  0165 ae0001        	ldw	x,#1
 498  0168 89            	pushw	x
 499  0169 ae0000        	ldw	x,#0
 500  016c 89            	pushw	x
 501  016d 8d000000      	callf	f_Soft_Delay_10us
 503  0171 5b04          	addw	sp,#4
 504                     ; 114   iic_scl_1();
 506  0173 4b10          	push	#16
 507  0175 ae5005        	ldw	x,#20485
 508  0178 8d000000      	callf	f_GPIO_WriteHigh
 510  017c 84            	pop	a
 511                     ; 115 	Soft_Delay_10us(1);
 513  017d ae0001        	ldw	x,#1
 514  0180 89            	pushw	x
 515  0181 ae0000        	ldw	x,#0
 516  0184 89            	pushw	x
 517  0185 8d000000      	callf	f_Soft_Delay_10us
 519  0189 5b04          	addw	sp,#4
 520                     ; 116   iic_scl_0();
 522  018b 4b10          	push	#16
 523  018d ae5005        	ldw	x,#20485
 524  0190 8d000000      	callf	f_GPIO_WriteLow
 526  0194 84            	pop	a
 527                     ; 117 }
 530  0195 84            	pop	a
 531  0196 87            	retf
 580                     ; 124 uint8_t soft_IIC_WriteByte(uint8_t data) 
 580                     ; 125 {
 581                     	switch	.text
 582  0197               f_soft_IIC_WriteByte:
 584  0197 88            	push	a
 585  0198 89            	pushw	x
 586       00000002      OFST:	set	2
 589                     ; 127   uint8_t Loop_i = 0;
 591                     ; 128   iic_sda_out();
 593  0199 4bf0          	push	#240
 594  019b 4b20          	push	#32
 595  019d ae5005        	ldw	x,#20485
 596  01a0 8d000000      	callf	f_GPIO_Init
 598  01a4 85            	popw	x
 599                     ; 130   for( Loop_i = 0;Loop_i < 8;Loop_i ++)
 601  01a5 0f02          	clr	(OFST+0,sp)
 602  01a7               L731:
 603                     ; 132     iic_scl_0();
 605  01a7 4b10          	push	#16
 606  01a9 ae5005        	ldw	x,#20485
 607  01ac 8d000000      	callf	f_GPIO_WriteLow
 609  01b0 84            	pop	a
 610                     ; 134     bits = data&0x80;
 612  01b1 7b03          	ld	a,(OFST+1,sp)
 613  01b3 a480          	and	a,#128
 614  01b5 6b01          	ld	(OFST-1,sp),a
 615                     ; 135     if(0x80 == bits)
 617  01b7 7b01          	ld	a,(OFST-1,sp)
 618  01b9 a180          	cp	a,#128
 619  01bb 260c          	jrne	L541
 620                     ; 137       iic_sda_1();
 622  01bd 4b20          	push	#32
 623  01bf ae5005        	ldw	x,#20485
 624  01c2 8d000000      	callf	f_GPIO_WriteHigh
 626  01c6 84            	pop	a
 628  01c7 200a          	jra	L741
 629  01c9               L541:
 630                     ; 141       iic_sda_0();
 632  01c9 4b20          	push	#32
 633  01cb ae5005        	ldw	x,#20485
 634  01ce 8d000000      	callf	f_GPIO_WriteLow
 636  01d2 84            	pop	a
 637  01d3               L741:
 638                     ; 145     iic_scl_1();
 640  01d3 4b10          	push	#16
 641  01d5 ae5005        	ldw	x,#20485
 642  01d8 8d000000      	callf	f_GPIO_WriteHigh
 644  01dc 84            	pop	a
 645                     ; 148     data = data << 1;    
 647  01dd 0803          	sll	(OFST+1,sp)
 648                     ; 130   for( Loop_i = 0;Loop_i < 8;Loop_i ++)
 650  01df 0c02          	inc	(OFST+0,sp)
 653  01e1 7b02          	ld	a,(OFST+0,sp)
 654  01e3 a108          	cp	a,#8
 655  01e5 25c0          	jrult	L731
 656                     ; 150   iic_scl_0();
 658  01e7 4b10          	push	#16
 659  01e9 ae5005        	ldw	x,#20485
 660  01ec 8d000000      	callf	f_GPIO_WriteLow
 662  01f0 84            	pop	a
 663                     ; 152   return soft_IIC_Wait_Ack();
 665  01f1 8dd000d0      	callf	f_soft_IIC_Wait_Ack
 669  01f5 5b03          	addw	sp,#3
 670  01f7 87            	retf
 720                     ; 160 uint8_t soft_IIC_ReadByte(uint8_t ack)
 720                     ; 161 {
 721                     	switch	.text
 722  01f8               f_soft_IIC_ReadByte:
 724  01f8 88            	push	a
 725  01f9 89            	pushw	x
 726       00000002      OFST:	set	2
 729                     ; 162   uint8_t data = 0;
 731  01fa 0f02          	clr	(OFST+0,sp)
 732                     ; 163   uint8_t Loop_i = 0;
 734                     ; 164   iic_sda_1();
 736  01fc 4b20          	push	#32
 737  01fe ae5005        	ldw	x,#20485
 738  0201 8d000000      	callf	f_GPIO_WriteHigh
 740  0205 84            	pop	a
 741                     ; 165   iic_sda_in();
 743  0206 4b40          	push	#64
 744  0208 4b20          	push	#32
 745  020a ae5005        	ldw	x,#20485
 746  020d 8d000000      	callf	f_GPIO_Init
 748  0211 85            	popw	x
 749                     ; 168   for( Loop_i = 0;Loop_i < 8;Loop_i ++)
 751  0212 0f01          	clr	(OFST-1,sp)
 752  0214               L171:
 753                     ; 170     data = data << 1;    
 755  0214 0802          	sll	(OFST+0,sp)
 756                     ; 171     iic_scl_1();
 758  0216 4b10          	push	#16
 759  0218 ae5005        	ldw	x,#20485
 760  021b 8d000000      	callf	f_GPIO_WriteHigh
 762  021f 84            	pop	a
 763                     ; 173     if(iic_sda_read())
 765  0220 4b20          	push	#32
 766  0222 ae5005        	ldw	x,#20485
 767  0225 8d000000      	callf	f_GPIO_ReadInputPin
 769  0229 5b01          	addw	sp,#1
 770  022b 4d            	tnz	a
 771  022c 2708          	jreq	L771
 772                     ; 175       data = (1 << 0)|data;
 774  022e 7b02          	ld	a,(OFST+0,sp)
 775  0230 aa01          	or	a,#1
 776  0232 6b02          	ld	(OFST+0,sp),a
 778  0234 2004          	jra	L102
 779  0236               L771:
 780                     ; 179       data = (0 << 0)|data;
 782  0236 7b02          	ld	a,(OFST+0,sp)
 783  0238 6b02          	ld	(OFST+0,sp),a
 784  023a               L102:
 785                     ; 184     iic_scl_0();
 787  023a 4b10          	push	#16
 788  023c ae5005        	ldw	x,#20485
 789  023f 8d000000      	callf	f_GPIO_WriteLow
 791  0243 84            	pop	a
 792                     ; 168   for( Loop_i = 0;Loop_i < 8;Loop_i ++)
 794  0244 0c01          	inc	(OFST-1,sp)
 797  0246 7b01          	ld	a,(OFST-1,sp)
 798  0248 a108          	cp	a,#8
 799  024a 25c8          	jrult	L171
 800                     ; 187   soft_IIC_Ack(ack);
 802  024c 7b03          	ld	a,(OFST+1,sp)
 803  024e 8d320132      	callf	f_soft_IIC_Ack
 805                     ; 189   return data;
 807  0252 7b02          	ld	a,(OFST+0,sp)
 810  0254 5b03          	addw	sp,#3
 811  0256 87            	retf
 927                     ; 196 uint8_t soft_iic_transfer(st_soft_iic *iic_data)
 927                     ; 197 {
 928                     	switch	.text
 929  0257               f_soft_iic_transfer:
 931  0257 89            	pushw	x
 932  0258 89            	pushw	x
 933       00000002      OFST:	set	2
 936                     ; 199   uint8_t i = 0;
 938  0259 0f01          	clr	(OFST-1,sp)
 939                     ; 200   if(0 == iic_data->rw_flag)
 941  025b 6d01          	tnz	(1,x)
 942  025d 261d          	jrne	L552
 943                     ; 202     soft_IIC_Start();
 945  025f 8d460046      	callf	f_soft_IIC_Start
 947                     ; 203     soft_IIC_WriteByte(iic_data->addr );
 949  0263 1e03          	ldw	x,(OFST+1,sp)
 950  0265 f6            	ld	a,(x)
 951  0266 8d970197      	callf	f_soft_IIC_WriteByte
 953                     ; 204 		soft_IIC_WriteByte(iic_data->reg_addr);
 955  026a 1e03          	ldw	x,(OFST+1,sp)
 956  026c e602          	ld	a,(2,x)
 957  026e 8d970197      	callf	f_soft_IIC_WriteByte
 959                     ; 205 		soft_IIC_WriteByte(iic_data->value);
 961  0272 1e03          	ldw	x,(OFST+1,sp)
 962  0274 e608          	ld	a,(8,x)
 963  0276 8d970197      	callf	f_soft_IIC_WriteByte
 966  027a 2027          	jra	L752
 967  027c               L552:
 968                     ; 209     soft_IIC_Start();
 970  027c 8d460046      	callf	f_soft_IIC_Start
 972                     ; 210     soft_IIC_WriteByte(iic_data->addr );
 974  0280 1e03          	ldw	x,(OFST+1,sp)
 975  0282 f6            	ld	a,(x)
 976  0283 8d970197      	callf	f_soft_IIC_WriteByte
 978                     ; 211 		soft_IIC_WriteByte(iic_data->reg_addr);
 980  0287 1e03          	ldw	x,(OFST+1,sp)
 981  0289 e602          	ld	a,(2,x)
 982  028b 8d970197      	callf	f_soft_IIC_WriteByte
 984                     ; 213     soft_IIC_Start();
 986  028f 8d460046      	callf	f_soft_IIC_Start
 988                     ; 214     soft_IIC_WriteByte((iic_data->addr ) | 0x01);
 990  0293 1e03          	ldw	x,(OFST+1,sp)
 991  0295 f6            	ld	a,(x)
 992  0296 aa01          	or	a,#1
 993  0298 8d970197      	callf	f_soft_IIC_WriteByte
 995                     ; 215 		rdata = soft_IIC_ReadByte(0);
 997  029c 4f            	clr	a
 998  029d 8df801f8      	callf	f_soft_IIC_ReadByte
1000  02a1 6b02          	ld	(OFST+0,sp),a
1001  02a3               L752:
1002                     ; 217   soft_IIC_Stop();
1004  02a3 8d8b008b      	callf	f_soft_IIC_Stop
1006                     ; 218   return rdata;
1008  02a7 7b02          	ld	a,(OFST+0,sp)
1011  02a9 5b04          	addw	sp,#4
1012  02ab 87            	retf
1024                     	xdef	f_soft_iic_transfer
1025                     	xdef	f_soft_IIC_ReadByte
1026                     	xdef	f_soft_IIC_WriteByte
1027                     	xdef	f_soft_IIC_Ack
1028                     	xdef	f_soft_IIC_Wait_Ack
1029                     	xdef	f_soft_IIC_Stop
1030                     	xdef	f_soft_IIC_Start
1031                     	xdef	f_soft_IIC_init
1032                     	xdef	f_Soft_Delay_10us
1033                     	xref	f_GPIO_ReadInputPin
1034                     	xref	f_GPIO_WriteLow
1035                     	xref	f_GPIO_WriteHigh
1036                     	xref	f_GPIO_Init
1055                     	xref	d_lrzmp
1056                     	xref	d_lgsbc
1057                     	xref	d_ltor
1058                     	end
