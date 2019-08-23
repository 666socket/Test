   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  75                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  75                     ; 82 {
  76                     	switch	.text
  77  0000               f_FLASH_Unlock:
  81                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  83                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
  85  0000 a1fd          	cp	a,#253
  86  0002 260a          	jrne	L73
  87                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
  89  0004 35565062      	mov	20578,#86
  90                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
  92  0008 35ae5062      	mov	20578,#174
  94  000c 2008          	jra	L14
  95  000e               L73:
  96                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  98  000e 35ae5064      	mov	20580,#174
  99                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 101  0012 35565064      	mov	20580,#86
 102  0016               L14:
 103                     ; 98 }
 106  0016 87            	retf
 140                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 140                     ; 107 {
 141                     	switch	.text
 142  0017               f_FLASH_Lock:
 146                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 148                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 150  0017 c4505f        	and	a,20575
 151  001a c7505f        	ld	20575,a
 152                     ; 113 }
 155  001d 87            	retf
 177                     ; 120 void FLASH_DeInit(void)
 177                     ; 121 {
 178                     	switch	.text
 179  001e               f_FLASH_DeInit:
 183                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 185  001e 725f505a      	clr	20570
 186                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 188  0022 725f505b      	clr	20571
 189                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 191  0026 35ff505c      	mov	20572,#255
 192                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 194  002a 7217505f      	bres	20575,#3
 195                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 197  002e 7213505f      	bres	20575,#1
 198                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 200  0032 c6505f        	ld	a,20575
 201                     ; 128 }
 204  0035 87            	retf
 258                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 258                     ; 137 {
 259                     	switch	.text
 260  0036               f_FLASH_ITConfig:
 264                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 266                     ; 141     if (NewState != DISABLE)
 268  0036 4d            	tnz	a
 269  0037 2706          	jreq	L711
 270                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 272  0039 7212505a      	bset	20570,#1
 274  003d 2004          	jra	L121
 275  003f               L711:
 276                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 278  003f 7213505a      	bres	20570,#1
 279  0043               L121:
 280                     ; 149 }
 283  0043 87            	retf
 314                     ; 158 void FLASH_EraseByte(uint32_t Address)
 314                     ; 159 {
 315                     	switch	.text
 316  0044               f_FLASH_EraseByte:
 318       00000000      OFST:	set	0
 321                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 323                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 325  0044 1e06          	ldw	x,(OFST+6,sp)
 326  0046 7f            	clr	(x)
 327                     ; 166 }
 330  0047 87            	retf
 368                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 368                     ; 177 {
 369                     	switch	.text
 370  0048               f_FLASH_ProgramByte:
 372       00000000      OFST:	set	0
 375                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 377                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 379  0048 7b08          	ld	a,(OFST+8,sp)
 380  004a 1e06          	ldw	x,(OFST+6,sp)
 381  004c f7            	ld	(x),a
 382                     ; 181 }
 385  004d 87            	retf
 416                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 416                     ; 191 {
 417                     	switch	.text
 418  004e               f_FLASH_ReadByte:
 420       00000000      OFST:	set	0
 423                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 425                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 427  004e 1e06          	ldw	x,(OFST+6,sp)
 428  0050 f6            	ld	a,(x)
 431  0051 87            	retf
 469                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 469                     ; 208 {
 470                     	switch	.text
 471  0052               f_FLASH_ProgramWord:
 473       00000000      OFST:	set	0
 476                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 478                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 480  0052 721c505b      	bset	20571,#6
 481                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 483  0056 721d505c      	bres	20572,#6
 484                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 486  005a 7b08          	ld	a,(OFST+8,sp)
 487  005c 1e06          	ldw	x,(OFST+6,sp)
 488  005e f7            	ld	(x),a
 489                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 491  005f 7b09          	ld	a,(OFST+9,sp)
 492  0061 1e06          	ldw	x,(OFST+6,sp)
 493  0063 e701          	ld	(1,x),a
 494                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 496  0065 7b0a          	ld	a,(OFST+10,sp)
 497  0067 1e06          	ldw	x,(OFST+6,sp)
 498  0069 e702          	ld	(2,x),a
 499                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 501  006b 7b0b          	ld	a,(OFST+11,sp)
 502  006d 1e06          	ldw	x,(OFST+6,sp)
 503  006f e703          	ld	(3,x),a
 504                     ; 224 }
 507  0071 87            	retf
 547                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 547                     ; 233 {
 548                     	switch	.text
 549  0072               f_FLASH_ProgramOptionByte:
 551  0072 89            	pushw	x
 552       00000000      OFST:	set	0
 555                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 557                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 559  0073 721e505b      	bset	20571,#7
 560                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 562  0077 721f505c      	bres	20572,#7
 563                     ; 242     if (Address == 0x4800)
 565  007b a34800        	cpw	x,#18432
 566  007e 2607          	jrne	L522
 567                     ; 245        *((NEAR uint8_t*)Address) = Data;
 569  0080 7b06          	ld	a,(OFST+6,sp)
 570  0082 1e01          	ldw	x,(OFST+1,sp)
 571  0084 f7            	ld	(x),a
 573  0085 200c          	jra	L722
 574  0087               L522:
 575                     ; 250        *((NEAR uint8_t*)Address) = Data;
 577  0087 7b06          	ld	a,(OFST+6,sp)
 578  0089 1e01          	ldw	x,(OFST+1,sp)
 579  008b f7            	ld	(x),a
 580                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 582  008c 7b06          	ld	a,(OFST+6,sp)
 583  008e 43            	cpl	a
 584  008f 1e01          	ldw	x,(OFST+1,sp)
 585  0091 e701          	ld	(1,x),a
 586  0093               L722:
 587                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 589  0093 a6fd          	ld	a,#253
 590  0095 8d830183      	callf	f_FLASH_WaitForLastOperation
 592                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 594  0099 721f505b      	bres	20571,#7
 595                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 597  009d 721e505c      	bset	20572,#7
 598                     ; 258 }
 601  00a1 85            	popw	x
 602  00a2 87            	retf
 635                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 635                     ; 266 {
 636                     	switch	.text
 637  00a3               f_FLASH_EraseOptionByte:
 639  00a3 89            	pushw	x
 640       00000000      OFST:	set	0
 643                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 645                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 647  00a4 721e505b      	bset	20571,#7
 648                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 650  00a8 721f505c      	bres	20572,#7
 651                     ; 275      if (Address == 0x4800)
 653  00ac a34800        	cpw	x,#18432
 654  00af 2603          	jrne	L542
 655                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 657  00b1 7f            	clr	(x)
 659  00b2 2009          	jra	L742
 660  00b4               L542:
 661                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 663  00b4 1e01          	ldw	x,(OFST+1,sp)
 664  00b6 7f            	clr	(x)
 665                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 667  00b7 1e01          	ldw	x,(OFST+1,sp)
 668  00b9 a6ff          	ld	a,#255
 669  00bb e701          	ld	(1,x),a
 670  00bd               L742:
 671                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 673  00bd a6fd          	ld	a,#253
 674  00bf 8d830183      	callf	f_FLASH_WaitForLastOperation
 676                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 678  00c3 721f505b      	bres	20571,#7
 679                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 681  00c7 721e505c      	bset	20572,#7
 682                     ; 291 }
 685  00cb 85            	popw	x
 686  00cc 87            	retf
 740                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 740                     ; 298 {
 741                     	switch	.text
 742  00cd               f_FLASH_ReadOptionByte:
 744  00cd 5204          	subw	sp,#4
 745       00000004      OFST:	set	4
 748                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
 750                     ; 300     uint16_t res_value = 0;
 752                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 754                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 756  00cf f6            	ld	a,(x)
 757  00d0 6b02          	ld	(OFST-2,sp),a
 758                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 760  00d2 e601          	ld	a,(1,x)
 761  00d4 6b01          	ld	(OFST-3,sp),a
 762                     ; 310     if (Address == 0x4800)	 
 764  00d6 a34800        	cpw	x,#18432
 765  00d9 2608          	jrne	L372
 766                     ; 312         res_value =	 value_optbyte;
 768  00db 7b02          	ld	a,(OFST-2,sp)
 769  00dd 5f            	clrw	x
 770  00de 97            	ld	xl,a
 771  00df 1f03          	ldw	(OFST-1,sp),x
 773  00e1 2023          	jra	L572
 774  00e3               L372:
 775                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
 777  00e3 7b01          	ld	a,(OFST-3,sp)
 778  00e5 43            	cpl	a
 779  00e6 1102          	cp	a,(OFST-2,sp)
 780  00e8 2617          	jrne	L772
 781                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 783  00ea 7b02          	ld	a,(OFST-2,sp)
 784  00ec 5f            	clrw	x
 785  00ed 97            	ld	xl,a
 786  00ee 4f            	clr	a
 787  00ef 02            	rlwa	x,a
 788  00f0 1f03          	ldw	(OFST-1,sp),x
 789                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
 791  00f2 7b01          	ld	a,(OFST-3,sp)
 792  00f4 5f            	clrw	x
 793  00f5 97            	ld	xl,a
 794  00f6 01            	rrwa	x,a
 795  00f7 1a04          	or	a,(OFST+0,sp)
 796  00f9 01            	rrwa	x,a
 797  00fa 1a03          	or	a,(OFST-1,sp)
 798  00fc 01            	rrwa	x,a
 799  00fd 1f03          	ldw	(OFST-1,sp),x
 801  00ff 2005          	jra	L572
 802  0101               L772:
 803                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
 805  0101 ae5555        	ldw	x,#21845
 806  0104 1f03          	ldw	(OFST-1,sp),x
 807  0106               L572:
 808                     ; 326     return(res_value);
 810  0106 1e03          	ldw	x,(OFST-1,sp)
 813  0108 5b04          	addw	sp,#4
 814  010a 87            	retf
 887                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 887                     ; 336 {
 888                     	switch	.text
 889  010b               f_FLASH_SetLowPowerMode:
 891  010b 88            	push	a
 892       00000000      OFST:	set	0
 895                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 897                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 899  010c c6505a        	ld	a,20570
 900  010f a4f3          	and	a,#243
 901  0111 c7505a        	ld	20570,a
 902                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 904  0114 c6505a        	ld	a,20570
 905  0117 1a01          	or	a,(OFST+1,sp)
 906  0119 c7505a        	ld	20570,a
 907                     ; 345 }
 910  011c 84            	pop	a
 911  011d 87            	retf
 968                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
 968                     ; 354 {
 969                     	switch	.text
 970  011e               f_FLASH_SetProgrammingTime:
 974                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
 976                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
 978  011e 7211505a      	bres	20570,#0
 979                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
 981  0122 ca505a        	or	a,20570
 982  0125 c7505a        	ld	20570,a
 983                     ; 360 }
 986  0128 87            	retf
1010                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1010                     ; 368 {
1011                     	switch	.text
1012  0129               f_FLASH_GetLowPowerMode:
1016                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1018  0129 c6505a        	ld	a,20570
1019  012c a40c          	and	a,#12
1022  012e 87            	retf
1046                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1046                     ; 378 {
1047                     	switch	.text
1048  012f               f_FLASH_GetProgrammingTime:
1052                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1054  012f c6505a        	ld	a,20570
1055  0132 a401          	and	a,#1
1058  0134 87            	retf
1089                     ; 387 uint32_t FLASH_GetBootSize(void)
1089                     ; 388 {
1090                     	switch	.text
1091  0135               f_FLASH_GetBootSize:
1093  0135 5204          	subw	sp,#4
1094       00000004      OFST:	set	4
1097                     ; 389     uint32_t temp = 0;
1099                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1101  0137 c6505d        	ld	a,20573
1102  013a 5f            	clrw	x
1103  013b 97            	ld	xl,a
1104  013c 90ae0200      	ldw	y,#512
1105  0140 8d000000      	callf	d_umul
1107  0144 96            	ldw	x,sp
1108  0145 1c0001        	addw	x,#OFST-3
1109  0148 8d000000      	callf	d_rtol
1111                     ; 395     if (FLASH->FPR == 0xFF)
1113  014c c6505d        	ld	a,20573
1114  014f a1ff          	cp	a,#255
1115  0151 2612          	jrne	L714
1116                     ; 397         temp += 512;
1118  0153 ae0200        	ldw	x,#512
1119  0156 bf02          	ldw	c_lreg+2,x
1120  0158 ae0000        	ldw	x,#0
1121  015b bf00          	ldw	c_lreg,x
1122  015d 96            	ldw	x,sp
1123  015e 1c0001        	addw	x,#OFST-3
1124  0161 8d000000      	callf	d_lgadd
1126  0165               L714:
1127                     ; 401     return(temp);
1129  0165 96            	ldw	x,sp
1130  0166 1c0001        	addw	x,#OFST-3
1131  0169 8d000000      	callf	d_ltor
1135  016d 5b04          	addw	sp,#4
1136  016f 87            	retf
1244                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1244                     ; 413 {
1245                     	switch	.text
1246  0170               f_FLASH_GetFlagStatus:
1248  0170 88            	push	a
1249       00000001      OFST:	set	1
1252                     ; 414     FlagStatus status = RESET;
1254                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1256                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1258  0171 c4505f        	and	a,20575
1259  0174 2706          	jreq	L174
1260                     ; 421         status = SET; /* FLASH_FLAG is set */
1262  0176 a601          	ld	a,#1
1263  0178 6b01          	ld	(OFST+0,sp),a
1265  017a 2002          	jra	L374
1266  017c               L174:
1267                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1269  017c 0f01          	clr	(OFST+0,sp)
1270  017e               L374:
1271                     ; 429     return status;
1273  017e 7b01          	ld	a,(OFST+0,sp)
1276  0180 5b01          	addw	sp,#1
1277  0182 87            	retf
1365                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1365                     ; 532 {
1366                     	switch	.text
1367  0183               f_FLASH_WaitForLastOperation:
1369  0183 5205          	subw	sp,#5
1370       00000005      OFST:	set	5
1373                     ; 533     uint8_t flagstatus = 0x00;
1375  0185 0f05          	clr	(OFST+0,sp)
1376                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1378  0187 aeffff        	ldw	x,#65535
1379  018a 1f03          	ldw	(OFST-2,sp),x
1380  018c ae000f        	ldw	x,#15
1381  018f 1f01          	ldw	(OFST-4,sp),x
1382                     ; 539     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1384  0191 a1fd          	cp	a,#253
1385  0193 2634          	jrne	L155
1387  0195 2011          	jra	L735
1388  0197               L535:
1389                     ; 543             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1389                     ; 544                                               FLASH_IAPSR_WR_PG_DIS));
1391  0197 c6505f        	ld	a,20575
1392  019a a405          	and	a,#5
1393  019c 6b05          	ld	(OFST+0,sp),a
1394                     ; 545             timeout--;
1396  019e 96            	ldw	x,sp
1397  019f 1c0001        	addw	x,#OFST-4
1398  01a2 a601          	ld	a,#1
1399  01a4 8d000000      	callf	d_lgsbc
1401  01a8               L735:
1402                     ; 541         while ((flagstatus == 0x00) && (timeout != 0x00))
1404  01a8 0d05          	tnz	(OFST+0,sp)
1405  01aa 262b          	jrne	L545
1407  01ac 96            	ldw	x,sp
1408  01ad 1c0001        	addw	x,#OFST-4
1409  01b0 8d000000      	callf	d_lzmp
1411  01b4 26e1          	jrne	L535
1412  01b6 201f          	jra	L545
1413  01b8               L745:
1414                     ; 552             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1414                     ; 553                                               FLASH_IAPSR_WR_PG_DIS));
1416  01b8 c6505f        	ld	a,20575
1417  01bb a441          	and	a,#65
1418  01bd 6b05          	ld	(OFST+0,sp),a
1419                     ; 554             timeout--;
1421  01bf 96            	ldw	x,sp
1422  01c0 1c0001        	addw	x,#OFST-4
1423  01c3 a601          	ld	a,#1
1424  01c5 8d000000      	callf	d_lgsbc
1426  01c9               L155:
1427                     ; 550         while ((flagstatus == 0x00) && (timeout != 0x00))
1429  01c9 0d05          	tnz	(OFST+0,sp)
1430  01cb 260a          	jrne	L545
1432  01cd 96            	ldw	x,sp
1433  01ce 1c0001        	addw	x,#OFST-4
1434  01d1 8d000000      	callf	d_lzmp
1436  01d5 26e1          	jrne	L745
1437  01d7               L545:
1438                     ; 566     if (timeout == 0x00 )
1440  01d7 96            	ldw	x,sp
1441  01d8 1c0001        	addw	x,#OFST-4
1442  01db 8d000000      	callf	d_lzmp
1444  01df 2604          	jrne	L755
1445                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1447  01e1 a602          	ld	a,#2
1448  01e3 6b05          	ld	(OFST+0,sp),a
1449  01e5               L755:
1450                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1452  01e5 7b05          	ld	a,(OFST+0,sp)
1455  01e7 5b05          	addw	sp,#5
1456  01e9 87            	retf
1514                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1514                     ; 582 {
1515                     	switch	.text
1516  01ea               f_FLASH_EraseBlock:
1518  01ea 89            	pushw	x
1519  01eb 5206          	subw	sp,#6
1520       00000006      OFST:	set	6
1523                     ; 583   uint32_t startaddress = 0;
1525                     ; 593   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1527                     ; 594   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1529  01ed 7b0c          	ld	a,(OFST+6,sp)
1530  01ef a1fd          	cp	a,#253
1531  01f1 260c          	jrne	L706
1532                     ; 596       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1534                     ; 597       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1536  01f3 ae8000        	ldw	x,#32768
1537  01f6 1f05          	ldw	(OFST-1,sp),x
1538  01f8 ae0000        	ldw	x,#0
1539  01fb 1f03          	ldw	(OFST-3,sp),x
1541  01fd 200a          	jra	L116
1542  01ff               L706:
1543                     ; 601       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1545                     ; 602       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1547  01ff ae4000        	ldw	x,#16384
1548  0202 1f05          	ldw	(OFST-1,sp),x
1549  0204 ae0000        	ldw	x,#0
1550  0207 1f03          	ldw	(OFST-3,sp),x
1551  0209               L116:
1552                     ; 610     pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1554  0209 1e07          	ldw	x,(OFST+1,sp)
1555  020b a680          	ld	a,#128
1556  020d 8d000000      	callf	d_cmulx
1558  0211 96            	ldw	x,sp
1559  0212 1c0003        	addw	x,#OFST-3
1560  0215 8d000000      	callf	d_ladd
1562  0219 be02          	ldw	x,c_lreg+2
1563  021b 1f01          	ldw	(OFST-5,sp),x
1564                     ; 614     FLASH->CR2 |= FLASH_CR2_ERASE;
1566  021d 721a505b      	bset	20571,#5
1567                     ; 615     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1569  0221 721b505c      	bres	20572,#5
1570                     ; 619     *pwFlash = (uint32_t)0;
1572  0225 1e01          	ldw	x,(OFST-5,sp)
1573  0227 a600          	ld	a,#0
1574  0229 e703          	ld	(3,x),a
1575  022b a600          	ld	a,#0
1576  022d e702          	ld	(2,x),a
1577  022f a600          	ld	a,#0
1578  0231 e701          	ld	(1,x),a
1579  0233 a600          	ld	a,#0
1580  0235 f7            	ld	(x),a
1581                     ; 627 }
1584  0236 5b08          	addw	sp,#8
1585  0238 87            	retf
1682                     ; 638 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
1682                     ; 639                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
1682                     ; 640 {
1683                     	switch	.text
1684  0239               f_FLASH_ProgramBlock:
1686  0239 89            	pushw	x
1687  023a 5206          	subw	sp,#6
1688       00000006      OFST:	set	6
1691                     ; 641     uint16_t Count = 0;
1693                     ; 642     uint32_t startaddress = 0;
1695                     ; 645     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1697                     ; 646     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
1699                     ; 647     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1701  023c 7b0c          	ld	a,(OFST+6,sp)
1702  023e a1fd          	cp	a,#253
1703  0240 260c          	jrne	L756
1704                     ; 649         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1706                     ; 650         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1708  0242 ae8000        	ldw	x,#32768
1709  0245 1f03          	ldw	(OFST-3,sp),x
1710  0247 ae0000        	ldw	x,#0
1711  024a 1f01          	ldw	(OFST-5,sp),x
1713  024c 200a          	jra	L166
1714  024e               L756:
1715                     ; 654         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1717                     ; 655         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1719  024e ae4000        	ldw	x,#16384
1720  0251 1f03          	ldw	(OFST-3,sp),x
1721  0253 ae0000        	ldw	x,#0
1722  0256 1f01          	ldw	(OFST-5,sp),x
1723  0258               L166:
1724                     ; 659     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1726  0258 1e07          	ldw	x,(OFST+1,sp)
1727  025a a680          	ld	a,#128
1728  025c 8d000000      	callf	d_cmulx
1730  0260 96            	ldw	x,sp
1731  0261 1c0001        	addw	x,#OFST-5
1732  0264 8d000000      	callf	d_lgadd
1734                     ; 662     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1736  0268 0d0d          	tnz	(OFST+7,sp)
1737  026a 260a          	jrne	L366
1738                     ; 665         FLASH->CR2 |= FLASH_CR2_PRG;
1740  026c 7210505b      	bset	20571,#0
1741                     ; 666         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1743  0270 7211505c      	bres	20572,#0
1745  0274 2008          	jra	L566
1746  0276               L366:
1747                     ; 671         FLASH->CR2 |= FLASH_CR2_FPRG;
1749  0276 7218505b      	bset	20571,#4
1750                     ; 672         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1752  027a 7219505c      	bres	20572,#4
1753  027e               L566:
1754                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1756  027e 5f            	clrw	x
1757  027f 1f05          	ldw	(OFST-1,sp),x
1758  0281               L766:
1759                     ; 680   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1761  0281 1e0e          	ldw	x,(OFST+8,sp)
1762  0283 72fb05        	addw	x,(OFST-1,sp)
1763  0286 f6            	ld	a,(x)
1764  0287 1e03          	ldw	x,(OFST-3,sp)
1765  0289 72fb05        	addw	x,(OFST-1,sp)
1766  028c f7            	ld	(x),a
1767                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1769  028d 1e05          	ldw	x,(OFST-1,sp)
1770  028f 1c0001        	addw	x,#1
1771  0292 1f05          	ldw	(OFST-1,sp),x
1774  0294 1e05          	ldw	x,(OFST-1,sp)
1775  0296 a30080        	cpw	x,#128
1776  0299 25e6          	jrult	L766
1777                     ; 685 }
1780  029b 5b08          	addw	sp,#8
1781  029d 87            	retf
1793                     	xdef	f_FLASH_WaitForLastOperation
1794                     	xdef	f_FLASH_ProgramBlock
1795                     	xdef	f_FLASH_EraseBlock
1796                     	xdef	f_FLASH_GetFlagStatus
1797                     	xdef	f_FLASH_GetBootSize
1798                     	xdef	f_FLASH_GetProgrammingTime
1799                     	xdef	f_FLASH_GetLowPowerMode
1800                     	xdef	f_FLASH_SetProgrammingTime
1801                     	xdef	f_FLASH_SetLowPowerMode
1802                     	xdef	f_FLASH_EraseOptionByte
1803                     	xdef	f_FLASH_ProgramOptionByte
1804                     	xdef	f_FLASH_ReadOptionByte
1805                     	xdef	f_FLASH_ProgramWord
1806                     	xdef	f_FLASH_ReadByte
1807                     	xdef	f_FLASH_ProgramByte
1808                     	xdef	f_FLASH_EraseByte
1809                     	xdef	f_FLASH_ITConfig
1810                     	xdef	f_FLASH_DeInit
1811                     	xdef	f_FLASH_Lock
1812                     	xdef	f_FLASH_Unlock
1813                     	xref.b	c_lreg
1814                     	xref.b	c_x
1815                     	xref.b	c_y
1834                     	xref	d_ladd
1835                     	xref	d_cmulx
1836                     	xref	d_lzmp
1837                     	xref	d_lgsbc
1838                     	xref	d_ltor
1839                     	xref	d_lgadd
1840                     	xref	d_rtol
1841                     	xref	d_umul
1842                     	end
