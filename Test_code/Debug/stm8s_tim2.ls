   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 46 void TIM2_DeInit(void)
  43                     ; 47 {
  44                     	switch	.text
  45  0000               f_TIM2_DeInit:
  49                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  51  0000 725f5300      	clr	21248
  52                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  54  0004 725f5301      	clr	21249
  55                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  57  0008 725f5303      	clr	21251
  58                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  60  000c 725f5308      	clr	21256
  61                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  63  0010 725f5309      	clr	21257
  64                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  0014 725f5308      	clr	21256
  67                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0018 725f5309      	clr	21257
  70                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  72  001c 725f5305      	clr	21253
  73                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  75  0020 725f5306      	clr	21254
  76                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  78  0024 725f5307      	clr	21255
  79                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  81  0028 725f530a      	clr	21258
  82                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  84  002c 725f530b      	clr	21259
  85                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  87  0030 725f530c      	clr	21260
  88                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  90  0034 35ff530d      	mov	21261,#255
  91                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  93  0038 35ff530e      	mov	21262,#255
  94                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  96  003c 725f530f      	clr	21263
  97                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  99  0040 725f5310      	clr	21264
 100                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 102  0044 725f5311      	clr	21265
 103                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 105  0048 725f5312      	clr	21266
 106                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 108  004c 725f5313      	clr	21267
 109                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 111  0050 725f5314      	clr	21268
 112                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 114  0054 725f5302      	clr	21250
 115                     ; 76 }
 118  0058 87            	retf
 283                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 283                     ; 86                         uint16_t TIM2_Period)
 283                     ; 87 {
 284                     	switch	.text
 285  0059               f_TIM2_TimeBaseInit:
 287  0059 88            	push	a
 288       00000000      OFST:	set	0
 291                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 293  005a c7530c        	ld	21260,a
 294                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 296  005d 7b05          	ld	a,(OFST+5,sp)
 297  005f c7530d        	ld	21261,a
 298                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 300  0062 7b06          	ld	a,(OFST+6,sp)
 301  0064 c7530e        	ld	21262,a
 302                     ; 93 }
 305  0067 84            	pop	a
 306  0068 87            	retf
 460                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 460                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 460                     ; 106                   uint16_t TIM2_Pulse,
 460                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 460                     ; 108 {
 461                     	switch	.text
 462  0069               f_TIM2_OC1Init:
 464  0069 89            	pushw	x
 465  006a 88            	push	a
 466       00000001      OFST:	set	1
 469                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 471                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 473                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 475                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 477  006b c65308        	ld	a,21256
 478  006e a4fc          	and	a,#252
 479  0070 c75308        	ld	21256,a
 480                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 480                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 482  0073 7b09          	ld	a,(OFST+8,sp)
 483  0075 a402          	and	a,#2
 484  0077 6b01          	ld	(OFST+0,sp),a
 485  0079 9f            	ld	a,xl
 486  007a a401          	and	a,#1
 487  007c 1a01          	or	a,(OFST+0,sp)
 488  007e ca5308        	or	a,21256
 489  0081 c75308        	ld	21256,a
 490                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 490                     ; 122                             (uint8_t)TIM2_OCMode);
 492  0084 c65305        	ld	a,21253
 493  0087 a48f          	and	a,#143
 494  0089 1a02          	or	a,(OFST+1,sp)
 495  008b c75305        	ld	21253,a
 496                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 498  008e 7b07          	ld	a,(OFST+6,sp)
 499  0090 c7530f        	ld	21263,a
 500                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 502  0093 7b08          	ld	a,(OFST+7,sp)
 503  0095 c75310        	ld	21264,a
 504                     ; 127 }
 507  0098 5b03          	addw	sp,#3
 508  009a 87            	retf
 569                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 569                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 569                     ; 140                   uint16_t TIM2_Pulse,
 569                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 569                     ; 142 {
 570                     	switch	.text
 571  009b               f_TIM2_OC2Init:
 573  009b 89            	pushw	x
 574  009c 88            	push	a
 575       00000001      OFST:	set	1
 578                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 580                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 582                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 584                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 586  009d c65308        	ld	a,21256
 587  00a0 a4cf          	and	a,#207
 588  00a2 c75308        	ld	21256,a
 589                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 589                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 591  00a5 7b09          	ld	a,(OFST+8,sp)
 592  00a7 a420          	and	a,#32
 593  00a9 6b01          	ld	(OFST+0,sp),a
 594  00ab 9f            	ld	a,xl
 595  00ac a410          	and	a,#16
 596  00ae 1a01          	or	a,(OFST+0,sp)
 597  00b0 ca5308        	or	a,21256
 598  00b3 c75308        	ld	21256,a
 599                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 599                     ; 158                             (uint8_t)TIM2_OCMode);
 601  00b6 c65306        	ld	a,21254
 602  00b9 a48f          	and	a,#143
 603  00bb 1a02          	or	a,(OFST+1,sp)
 604  00bd c75306        	ld	21254,a
 605                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 607  00c0 7b07          	ld	a,(OFST+6,sp)
 608  00c2 c75311        	ld	21265,a
 609                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 611  00c5 7b08          	ld	a,(OFST+7,sp)
 612  00c7 c75312        	ld	21266,a
 613                     ; 164 }
 616  00ca 5b03          	addw	sp,#3
 617  00cc 87            	retf
 678                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 678                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 678                     ; 177                   uint16_t TIM2_Pulse,
 678                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 678                     ; 179 {
 679                     	switch	.text
 680  00cd               f_TIM2_OC3Init:
 682  00cd 89            	pushw	x
 683  00ce 88            	push	a
 684       00000001      OFST:	set	1
 687                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 689                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 691                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 693                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 695  00cf c65309        	ld	a,21257
 696  00d2 a4fc          	and	a,#252
 697  00d4 c75309        	ld	21257,a
 698                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 698                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 700  00d7 7b09          	ld	a,(OFST+8,sp)
 701  00d9 a402          	and	a,#2
 702  00db 6b01          	ld	(OFST+0,sp),a
 703  00dd 9f            	ld	a,xl
 704  00de a401          	and	a,#1
 705  00e0 1a01          	or	a,(OFST+0,sp)
 706  00e2 ca5309        	or	a,21257
 707  00e5 c75309        	ld	21257,a
 708                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 708                     ; 192                             (uint8_t)TIM2_OCMode);
 710  00e8 c65307        	ld	a,21255
 711  00eb a48f          	and	a,#143
 712  00ed 1a02          	or	a,(OFST+1,sp)
 713  00ef c75307        	ld	21255,a
 714                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 716  00f2 7b07          	ld	a,(OFST+6,sp)
 717  00f4 c75313        	ld	21267,a
 718                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 720  00f7 7b08          	ld	a,(OFST+7,sp)
 721  00f9 c75314        	ld	21268,a
 722                     ; 198 }
 725  00fc 5b03          	addw	sp,#3
 726  00fe 87            	retf
 916                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 916                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 916                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 916                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 916                     ; 214                  uint8_t TIM2_ICFilter)
 916                     ; 215 {
 917                     	switch	.text
 918  00ff               f_TIM2_ICInit:
 920  00ff 89            	pushw	x
 921       00000000      OFST:	set	0
 924                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 926                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 928                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 930                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 932                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 934                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
 936  0100 9e            	ld	a,xh
 937  0101 4d            	tnz	a
 938  0102 2616          	jrne	L763
 939                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
 939                     ; 227                    (uint8_t)TIM2_ICSelection,
 939                     ; 228                    (uint8_t)TIM2_ICFilter);
 941  0104 7b08          	ld	a,(OFST+8,sp)
 942  0106 88            	push	a
 943  0107 7b07          	ld	a,(OFST+7,sp)
 944  0109 97            	ld	xl,a
 945  010a 7b03          	ld	a,(OFST+3,sp)
 946  010c 95            	ld	xh,a
 947  010d 8d580458      	callf	L3f_TI1_Config
 949  0111 84            	pop	a
 950                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 952  0112 7b07          	ld	a,(OFST+7,sp)
 953  0114 8d4e034e      	callf	f_TIM2_SetIC1Prescaler
 956  0118 2030          	jra	L173
 957  011a               L763:
 958                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
 960  011a 7b01          	ld	a,(OFST+1,sp)
 961  011c a101          	cp	a,#1
 962  011e 2616          	jrne	L373
 963                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
 963                     ; 237                    (uint8_t)TIM2_ICSelection,
 963                     ; 238                    (uint8_t)TIM2_ICFilter);
 965  0120 7b08          	ld	a,(OFST+8,sp)
 966  0122 88            	push	a
 967  0123 7b07          	ld	a,(OFST+7,sp)
 968  0125 97            	ld	xl,a
 969  0126 7b03          	ld	a,(OFST+3,sp)
 970  0128 95            	ld	xh,a
 971  0129 8d880488      	callf	L5f_TI2_Config
 973  012d 84            	pop	a
 974                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 976  012e 7b07          	ld	a,(OFST+7,sp)
 977  0130 8d5b035b      	callf	f_TIM2_SetIC2Prescaler
 980  0134 2014          	jra	L173
 981  0136               L373:
 982                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
 982                     ; 247                    (uint8_t)TIM2_ICSelection,
 982                     ; 248                    (uint8_t)TIM2_ICFilter);
 984  0136 7b08          	ld	a,(OFST+8,sp)
 985  0138 88            	push	a
 986  0139 7b07          	ld	a,(OFST+7,sp)
 987  013b 97            	ld	xl,a
 988  013c 7b03          	ld	a,(OFST+3,sp)
 989  013e 95            	ld	xh,a
 990  013f 8db804b8      	callf	L7f_TI3_Config
 992  0143 84            	pop	a
 993                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
 995  0144 7b07          	ld	a,(OFST+7,sp)
 996  0146 8d680368      	callf	f_TIM2_SetIC3Prescaler
 998  014a               L173:
 999                     ; 253 }
1002  014a 85            	popw	x
1003  014b 87            	retf
1092                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1092                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1092                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1092                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1092                     ; 269                      uint8_t TIM2_ICFilter)
1092                     ; 270 {
1093                     	switch	.text
1094  014c               f_TIM2_PWMIConfig:
1096  014c 89            	pushw	x
1097  014d 89            	pushw	x
1098       00000002      OFST:	set	2
1101                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1103                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1105                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1107                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1109                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1111                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1113                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1115  014e 9f            	ld	a,xl
1116  014f a144          	cp	a,#68
1117  0151 2706          	jreq	L734
1118                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1120  0153 a644          	ld	a,#68
1121  0155 6b01          	ld	(OFST-1,sp),a
1123  0157 2002          	jra	L144
1124  0159               L734:
1125                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1127  0159 0f01          	clr	(OFST-1,sp)
1128  015b               L144:
1129                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1131  015b 7b08          	ld	a,(OFST+6,sp)
1132  015d a101          	cp	a,#1
1133  015f 2606          	jrne	L344
1134                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1136  0161 a602          	ld	a,#2
1137  0163 6b02          	ld	(OFST+0,sp),a
1139  0165 2004          	jra	L544
1140  0167               L344:
1141                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1143  0167 a601          	ld	a,#1
1144  0169 6b02          	ld	(OFST+0,sp),a
1145  016b               L544:
1146                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1148  016b 0d03          	tnz	(OFST+1,sp)
1149  016d 262a          	jrne	L744
1150                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1150                     ; 304                    (uint8_t)TIM2_ICFilter);
1152  016f 7b0a          	ld	a,(OFST+8,sp)
1153  0171 88            	push	a
1154  0172 7b09          	ld	a,(OFST+7,sp)
1155  0174 97            	ld	xl,a
1156  0175 7b05          	ld	a,(OFST+3,sp)
1157  0177 95            	ld	xh,a
1158  0178 8d580458      	callf	L3f_TI1_Config
1160  017c 84            	pop	a
1161                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1163  017d 7b09          	ld	a,(OFST+7,sp)
1164  017f 8d4e034e      	callf	f_TIM2_SetIC1Prescaler
1166                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1168  0183 7b0a          	ld	a,(OFST+8,sp)
1169  0185 88            	push	a
1170  0186 7b03          	ld	a,(OFST+1,sp)
1171  0188 97            	ld	xl,a
1172  0189 7b02          	ld	a,(OFST+0,sp)
1173  018b 95            	ld	xh,a
1174  018c 8d880488      	callf	L5f_TI2_Config
1176  0190 84            	pop	a
1177                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1179  0191 7b09          	ld	a,(OFST+7,sp)
1180  0193 8d5b035b      	callf	f_TIM2_SetIC2Prescaler
1183  0197 2028          	jra	L154
1184  0199               L744:
1185                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1185                     ; 319                    (uint8_t)TIM2_ICFilter);
1187  0199 7b0a          	ld	a,(OFST+8,sp)
1188  019b 88            	push	a
1189  019c 7b09          	ld	a,(OFST+7,sp)
1190  019e 97            	ld	xl,a
1191  019f 7b05          	ld	a,(OFST+3,sp)
1192  01a1 95            	ld	xh,a
1193  01a2 8d880488      	callf	L5f_TI2_Config
1195  01a6 84            	pop	a
1196                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1198  01a7 7b09          	ld	a,(OFST+7,sp)
1199  01a9 8d5b035b      	callf	f_TIM2_SetIC2Prescaler
1201                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1203  01ad 7b0a          	ld	a,(OFST+8,sp)
1204  01af 88            	push	a
1205  01b0 7b03          	ld	a,(OFST+1,sp)
1206  01b2 97            	ld	xl,a
1207  01b3 7b02          	ld	a,(OFST+0,sp)
1208  01b5 95            	ld	xh,a
1209  01b6 8d580458      	callf	L3f_TI1_Config
1211  01ba 84            	pop	a
1212                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1214  01bb 7b09          	ld	a,(OFST+7,sp)
1215  01bd 8d4e034e      	callf	f_TIM2_SetIC1Prescaler
1217  01c1               L154:
1218                     ; 330 }
1221  01c1 5b04          	addw	sp,#4
1222  01c3 87            	retf
1276                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1276                     ; 340 {
1277                     	switch	.text
1278  01c4               f_TIM2_Cmd:
1282                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1284                     ; 345     if (NewState != DISABLE)
1286  01c4 4d            	tnz	a
1287  01c5 2706          	jreq	L105
1288                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1290  01c7 72105300      	bset	21248,#0
1292  01cb 2004          	jra	L305
1293  01cd               L105:
1294                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1296  01cd 72115300      	bres	21248,#0
1297  01d1               L305:
1298                     ; 353 }
1301  01d1 87            	retf
1379                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1379                     ; 370 {
1380                     	switch	.text
1381  01d2               f_TIM2_ITConfig:
1383  01d2 89            	pushw	x
1384       00000000      OFST:	set	0
1387                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1389                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1391                     ; 375     if (NewState != DISABLE)
1393  01d3 9f            	ld	a,xl
1394  01d4 4d            	tnz	a
1395  01d5 2709          	jreq	L345
1396                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1398  01d7 9e            	ld	a,xh
1399  01d8 ca5301        	or	a,21249
1400  01db c75301        	ld	21249,a
1402  01de 2009          	jra	L545
1403  01e0               L345:
1404                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1406  01e0 7b01          	ld	a,(OFST+1,sp)
1407  01e2 43            	cpl	a
1408  01e3 c45301        	and	a,21249
1409  01e6 c75301        	ld	21249,a
1410  01e9               L545:
1411                     ; 385 }
1414  01e9 85            	popw	x
1415  01ea 87            	retf
1450                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1450                     ; 395 {
1451                     	switch	.text
1452  01eb               f_TIM2_UpdateDisableConfig:
1456                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1458                     ; 400     if (NewState != DISABLE)
1460  01eb 4d            	tnz	a
1461  01ec 2706          	jreq	L565
1462                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1464  01ee 72125300      	bset	21248,#1
1466  01f2 2004          	jra	L765
1467  01f4               L565:
1468                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1470  01f4 72135300      	bres	21248,#1
1471  01f8               L765:
1472                     ; 408 }
1475  01f8 87            	retf
1532                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1532                     ; 419 {
1533                     	switch	.text
1534  01f9               f_TIM2_UpdateRequestConfig:
1538                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1540                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1542  01f9 4d            	tnz	a
1543  01fa 2706          	jreq	L716
1544                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1546  01fc 72145300      	bset	21248,#2
1548  0200 2004          	jra	L126
1549  0202               L716:
1550                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1552  0202 72155300      	bres	21248,#2
1553  0206               L126:
1554                     ; 432 }
1557  0206 87            	retf
1613                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1613                     ; 444 {
1614                     	switch	.text
1615  0207               f_TIM2_SelectOnePulseMode:
1619                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1621                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1623  0207 4d            	tnz	a
1624  0208 2706          	jreq	L156
1625                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1627  020a 72165300      	bset	21248,#3
1629  020e 2004          	jra	L356
1630  0210               L156:
1631                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1633  0210 72175300      	bres	21248,#3
1634  0214               L356:
1635                     ; 458 }
1638  0214 87            	retf
1705                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1705                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1705                     ; 491 {
1706                     	switch	.text
1707  0215               f_TIM2_PrescalerConfig:
1711                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1713                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1715                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
1717  0215 9e            	ld	a,xh
1718  0216 c7530c        	ld	21260,a
1719                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1721  0219 9f            	ld	a,xl
1722  021a c75304        	ld	21252,a
1723                     ; 501 }
1726  021d 87            	retf
1783                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1783                     ; 513 {
1784                     	switch	.text
1785  021e               f_TIM2_ForcedOC1Config:
1787  021e 88            	push	a
1788       00000000      OFST:	set	0
1791                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1793                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1793                     ; 519                               | (uint8_t)TIM2_ForcedAction);
1795  021f c65305        	ld	a,21253
1796  0222 a48f          	and	a,#143
1797  0224 1a01          	or	a,(OFST+1,sp)
1798  0226 c75305        	ld	21253,a
1799                     ; 520 }
1802  0229 84            	pop	a
1803  022a 87            	retf
1838                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1838                     ; 532 {
1839                     	switch	.text
1840  022b               f_TIM2_ForcedOC2Config:
1842  022b 88            	push	a
1843       00000000      OFST:	set	0
1846                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1848                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1848                     ; 538                             | (uint8_t)TIM2_ForcedAction);
1850  022c c65306        	ld	a,21254
1851  022f a48f          	and	a,#143
1852  0231 1a01          	or	a,(OFST+1,sp)
1853  0233 c75306        	ld	21254,a
1854                     ; 539 }
1857  0236 84            	pop	a
1858  0237 87            	retf
1893                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1893                     ; 551 {
1894                     	switch	.text
1895  0238               f_TIM2_ForcedOC3Config:
1897  0238 88            	push	a
1898       00000000      OFST:	set	0
1901                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1903                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1903                     ; 557                               | (uint8_t)TIM2_ForcedAction);
1905  0239 c65307        	ld	a,21255
1906  023c a48f          	and	a,#143
1907  023e 1a01          	or	a,(OFST+1,sp)
1908  0240 c75307        	ld	21255,a
1909                     ; 558 }
1912  0243 84            	pop	a
1913  0244 87            	retf
1948                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1948                     ; 568 {
1949                     	switch	.text
1950  0245               f_TIM2_ARRPreloadConfig:
1954                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1956                     ; 573     if (NewState != DISABLE)
1958  0245 4d            	tnz	a
1959  0246 2706          	jreq	L7001
1960                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
1962  0248 721e5300      	bset	21248,#7
1964  024c 2004          	jra	L1101
1965  024e               L7001:
1966                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
1968  024e 721f5300      	bres	21248,#7
1969  0252               L1101:
1970                     ; 581 }
1973  0252 87            	retf
2008                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2008                     ; 591 {
2009                     	switch	.text
2010  0253               f_TIM2_OC1PreloadConfig:
2014                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2016                     ; 596     if (NewState != DISABLE)
2018  0253 4d            	tnz	a
2019  0254 2706          	jreq	L1301
2020                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2022  0256 72165305      	bset	21253,#3
2024  025a 2004          	jra	L3301
2025  025c               L1301:
2026                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2028  025c 72175305      	bres	21253,#3
2029  0260               L3301:
2030                     ; 604 }
2033  0260 87            	retf
2068                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2068                     ; 614 {
2069                     	switch	.text
2070  0261               f_TIM2_OC2PreloadConfig:
2074                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2076                     ; 619     if (NewState != DISABLE)
2078  0261 4d            	tnz	a
2079  0262 2706          	jreq	L3501
2080                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2082  0264 72165306      	bset	21254,#3
2084  0268 2004          	jra	L5501
2085  026a               L3501:
2086                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2088  026a 72175306      	bres	21254,#3
2089  026e               L5501:
2090                     ; 627 }
2093  026e 87            	retf
2128                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2128                     ; 637 {
2129                     	switch	.text
2130  026f               f_TIM2_OC3PreloadConfig:
2134                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2136                     ; 642     if (NewState != DISABLE)
2138  026f 4d            	tnz	a
2139  0270 2706          	jreq	L5701
2140                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2142  0272 72165307      	bset	21255,#3
2144  0276 2004          	jra	L7701
2145  0278               L5701:
2146                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2148  0278 72175307      	bres	21255,#3
2149  027c               L7701:
2150                     ; 650 }
2153  027c 87            	retf
2225                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2225                     ; 664 {
2226                     	switch	.text
2227  027d               f_TIM2_GenerateEvent:
2231                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2233                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2235  027d c75304        	ld	21252,a
2236                     ; 670 }
2239  0280 87            	retf
2274                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2274                     ; 682 {
2275                     	switch	.text
2276  0281               f_TIM2_OC1PolarityConfig:
2280                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2282                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2284  0281 4d            	tnz	a
2285  0282 2706          	jreq	L1511
2286                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2288  0284 72125308      	bset	21256,#1
2290  0288 2004          	jra	L3511
2291  028a               L1511:
2292                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2294  028a 72135308      	bres	21256,#1
2295  028e               L3511:
2296                     ; 695 }
2299  028e 87            	retf
2334                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2334                     ; 707 {
2335                     	switch	.text
2336  028f               f_TIM2_OC2PolarityConfig:
2340                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2342                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2344  028f 4d            	tnz	a
2345  0290 2706          	jreq	L3711
2346                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2348  0292 721a5308      	bset	21256,#5
2350  0296 2004          	jra	L5711
2351  0298               L3711:
2352                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2354  0298 721b5308      	bres	21256,#5
2355  029c               L5711:
2356                     ; 720 }
2359  029c 87            	retf
2394                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2394                     ; 732 {
2395                     	switch	.text
2396  029d               f_TIM2_OC3PolarityConfig:
2400                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2402                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2404  029d 4d            	tnz	a
2405  029e 2706          	jreq	L5121
2406                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2408  02a0 72125309      	bset	21257,#1
2410  02a4 2004          	jra	L7121
2411  02a6               L5121:
2412                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2414  02a6 72135309      	bres	21257,#1
2415  02aa               L7121:
2416                     ; 745 }
2419  02aa 87            	retf
2463                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2463                     ; 760 {
2464                     	switch	.text
2465  02ab               f_TIM2_CCxCmd:
2467  02ab 89            	pushw	x
2468       00000000      OFST:	set	0
2471                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2473                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2475                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
2477  02ac 9e            	ld	a,xh
2478  02ad 4d            	tnz	a
2479  02ae 2610          	jrne	L3421
2480                     ; 768         if (NewState != DISABLE)
2482  02b0 9f            	ld	a,xl
2483  02b1 4d            	tnz	a
2484  02b2 2706          	jreq	L5421
2485                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2487  02b4 72105308      	bset	21256,#0
2489  02b8 202a          	jra	L1521
2490  02ba               L5421:
2491                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2493  02ba 72115308      	bres	21256,#0
2494  02be 2024          	jra	L1521
2495  02c0               L3421:
2496                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
2498  02c0 7b01          	ld	a,(OFST+1,sp)
2499  02c2 a101          	cp	a,#1
2500  02c4 2610          	jrne	L3521
2501                     ; 781         if (NewState != DISABLE)
2503  02c6 0d02          	tnz	(OFST+2,sp)
2504  02c8 2706          	jreq	L5521
2505                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2507  02ca 72185308      	bset	21256,#4
2509  02ce 2014          	jra	L1521
2510  02d0               L5521:
2511                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2513  02d0 72195308      	bres	21256,#4
2514  02d4 200e          	jra	L1521
2515  02d6               L3521:
2516                     ; 793         if (NewState != DISABLE)
2518  02d6 0d02          	tnz	(OFST+2,sp)
2519  02d8 2706          	jreq	L3621
2520                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2522  02da 72105309      	bset	21257,#0
2524  02de 2004          	jra	L1521
2525  02e0               L3621:
2526                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2528  02e0 72115309      	bres	21257,#0
2529  02e4               L1521:
2530                     ; 802 }
2533  02e4 85            	popw	x
2534  02e5 87            	retf
2578                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2578                     ; 825 {
2579                     	switch	.text
2580  02e6               f_TIM2_SelectOCxM:
2582  02e6 89            	pushw	x
2583       00000000      OFST:	set	0
2586                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2588                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2590                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
2592  02e7 9e            	ld	a,xh
2593  02e8 4d            	tnz	a
2594  02e9 2610          	jrne	L1131
2595                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2597  02eb 72115308      	bres	21256,#0
2598                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2598                     ; 837                                | (uint8_t)TIM2_OCMode);
2600  02ef c65305        	ld	a,21253
2601  02f2 a48f          	and	a,#143
2602  02f4 1a02          	or	a,(OFST+2,sp)
2603  02f6 c75305        	ld	21253,a
2605  02f9 2024          	jra	L3131
2606  02fb               L1131:
2607                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
2609  02fb 7b01          	ld	a,(OFST+1,sp)
2610  02fd a101          	cp	a,#1
2611  02ff 2610          	jrne	L5131
2612                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2614  0301 72195308      	bres	21256,#4
2615                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2615                     ; 846                                 | (uint8_t)TIM2_OCMode);
2617  0305 c65306        	ld	a,21254
2618  0308 a48f          	and	a,#143
2619  030a 1a02          	or	a,(OFST+2,sp)
2620  030c c75306        	ld	21254,a
2622  030f 200e          	jra	L3131
2623  0311               L5131:
2624                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2626  0311 72115309      	bres	21257,#0
2627                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2627                     ; 855                                 | (uint8_t)TIM2_OCMode);
2629  0315 c65307        	ld	a,21255
2630  0318 a48f          	and	a,#143
2631  031a 1a02          	or	a,(OFST+2,sp)
2632  031c c75307        	ld	21255,a
2633  031f               L3131:
2634                     ; 857 }
2637  031f 85            	popw	x
2638  0320 87            	retf
2669                     ; 866 void TIM2_SetCounter(uint16_t Counter)
2669                     ; 867 {
2670                     	switch	.text
2671  0321               f_TIM2_SetCounter:
2675                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
2677  0321 9e            	ld	a,xh
2678  0322 c7530a        	ld	21258,a
2679                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
2681  0325 9f            	ld	a,xl
2682  0326 c7530b        	ld	21259,a
2683                     ; 872 }
2686  0329 87            	retf
2717                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
2717                     ; 882 {
2718                     	switch	.text
2719  032a               f_TIM2_SetAutoreload:
2723                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2725  032a 9e            	ld	a,xh
2726  032b c7530d        	ld	21261,a
2727                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
2729  032e 9f            	ld	a,xl
2730  032f c7530e        	ld	21262,a
2731                     ; 888 }
2734  0332 87            	retf
2765                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
2765                     ; 898 {
2766                     	switch	.text
2767  0333               f_TIM2_SetCompare1:
2771                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2773  0333 9e            	ld	a,xh
2774  0334 c7530f        	ld	21263,a
2775                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
2777  0337 9f            	ld	a,xl
2778  0338 c75310        	ld	21264,a
2779                     ; 903 }
2782  033b 87            	retf
2813                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
2813                     ; 913 {
2814                     	switch	.text
2815  033c               f_TIM2_SetCompare2:
2819                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2821  033c 9e            	ld	a,xh
2822  033d c75311        	ld	21265,a
2823                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
2825  0340 9f            	ld	a,xl
2826  0341 c75312        	ld	21266,a
2827                     ; 918 }
2830  0344 87            	retf
2861                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
2861                     ; 928 {
2862                     	switch	.text
2863  0345               f_TIM2_SetCompare3:
2867                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2869  0345 9e            	ld	a,xh
2870  0346 c75313        	ld	21267,a
2871                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
2873  0349 9f            	ld	a,xl
2874  034a c75314        	ld	21268,a
2875                     ; 933 }
2878  034d 87            	retf
2913                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2913                     ; 947 {
2914                     	switch	.text
2915  034e               f_TIM2_SetIC1Prescaler:
2917  034e 88            	push	a
2918       00000000      OFST:	set	0
2921                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2923                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2923                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
2925  034f c65305        	ld	a,21253
2926  0352 a4f3          	and	a,#243
2927  0354 1a01          	or	a,(OFST+1,sp)
2928  0356 c75305        	ld	21253,a
2929                     ; 954 }
2932  0359 84            	pop	a
2933  035a 87            	retf
2968                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
2968                     ; 967 {
2969                     	switch	.text
2970  035b               f_TIM2_SetIC2Prescaler:
2972  035b 88            	push	a
2973       00000000      OFST:	set	0
2976                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
2978                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2978                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
2980  035c c65306        	ld	a,21254
2981  035f a4f3          	and	a,#243
2982  0361 1a01          	or	a,(OFST+1,sp)
2983  0363 c75306        	ld	21254,a
2984                     ; 974 }
2987  0366 84            	pop	a
2988  0367 87            	retf
3023                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3023                     ; 987 {
3024                     	switch	.text
3025  0368               f_TIM2_SetIC3Prescaler:
3027  0368 88            	push	a
3028       00000000      OFST:	set	0
3031                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3033                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3033                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3035  0369 c65307        	ld	a,21255
3036  036c a4f3          	and	a,#243
3037  036e 1a01          	or	a,(OFST+1,sp)
3038  0370 c75307        	ld	21255,a
3039                     ; 994 }
3042  0373 84            	pop	a
3043  0374 87            	retf
3088                     ; 1001 uint16_t TIM2_GetCapture1(void)
3088                     ; 1002 {
3089                     	switch	.text
3090  0375               f_TIM2_GetCapture1:
3092  0375 5204          	subw	sp,#4
3093       00000004      OFST:	set	4
3096                     ; 1004     uint16_t tmpccr1 = 0;
3098                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3102                     ; 1007     tmpccr1h = TIM2->CCR1H;
3104  0377 c6530f        	ld	a,21263
3105  037a 6b02          	ld	(OFST-2,sp),a
3106                     ; 1008     tmpccr1l = TIM2->CCR1L;
3108  037c c65310        	ld	a,21264
3109  037f 6b01          	ld	(OFST-3,sp),a
3110                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3112  0381 7b01          	ld	a,(OFST-3,sp)
3113  0383 5f            	clrw	x
3114  0384 97            	ld	xl,a
3115  0385 1f03          	ldw	(OFST-1,sp),x
3116                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3118  0387 7b02          	ld	a,(OFST-2,sp)
3119  0389 5f            	clrw	x
3120  038a 97            	ld	xl,a
3121  038b 4f            	clr	a
3122  038c 02            	rlwa	x,a
3123  038d 01            	rrwa	x,a
3124  038e 1a04          	or	a,(OFST+0,sp)
3125  0390 01            	rrwa	x,a
3126  0391 1a03          	or	a,(OFST-1,sp)
3127  0393 01            	rrwa	x,a
3128  0394 1f03          	ldw	(OFST-1,sp),x
3129                     ; 1013     return (uint16_t)tmpccr1;
3131  0396 1e03          	ldw	x,(OFST-1,sp)
3134  0398 5b04          	addw	sp,#4
3135  039a 87            	retf
3180                     ; 1021 uint16_t TIM2_GetCapture2(void)
3180                     ; 1022 {
3181                     	switch	.text
3182  039b               f_TIM2_GetCapture2:
3184  039b 5204          	subw	sp,#4
3185       00000004      OFST:	set	4
3188                     ; 1024     uint16_t tmpccr2 = 0;
3190                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3194                     ; 1027     tmpccr2h = TIM2->CCR2H;
3196  039d c65311        	ld	a,21265
3197  03a0 6b02          	ld	(OFST-2,sp),a
3198                     ; 1028     tmpccr2l = TIM2->CCR2L;
3200  03a2 c65312        	ld	a,21266
3201  03a5 6b01          	ld	(OFST-3,sp),a
3202                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3204  03a7 7b01          	ld	a,(OFST-3,sp)
3205  03a9 5f            	clrw	x
3206  03aa 97            	ld	xl,a
3207  03ab 1f03          	ldw	(OFST-1,sp),x
3208                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3210  03ad 7b02          	ld	a,(OFST-2,sp)
3211  03af 5f            	clrw	x
3212  03b0 97            	ld	xl,a
3213  03b1 4f            	clr	a
3214  03b2 02            	rlwa	x,a
3215  03b3 01            	rrwa	x,a
3216  03b4 1a04          	or	a,(OFST+0,sp)
3217  03b6 01            	rrwa	x,a
3218  03b7 1a03          	or	a,(OFST-1,sp)
3219  03b9 01            	rrwa	x,a
3220  03ba 1f03          	ldw	(OFST-1,sp),x
3221                     ; 1033     return (uint16_t)tmpccr2;
3223  03bc 1e03          	ldw	x,(OFST-1,sp)
3226  03be 5b04          	addw	sp,#4
3227  03c0 87            	retf
3272                     ; 1041 uint16_t TIM2_GetCapture3(void)
3272                     ; 1042 {
3273                     	switch	.text
3274  03c1               f_TIM2_GetCapture3:
3276  03c1 5204          	subw	sp,#4
3277       00000004      OFST:	set	4
3280                     ; 1044     uint16_t tmpccr3 = 0;
3282                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3286                     ; 1047     tmpccr3h = TIM2->CCR3H;
3288  03c3 c65313        	ld	a,21267
3289  03c6 6b02          	ld	(OFST-2,sp),a
3290                     ; 1048     tmpccr3l = TIM2->CCR3L;
3292  03c8 c65314        	ld	a,21268
3293  03cb 6b01          	ld	(OFST-3,sp),a
3294                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
3296  03cd 7b01          	ld	a,(OFST-3,sp)
3297  03cf 5f            	clrw	x
3298  03d0 97            	ld	xl,a
3299  03d1 1f03          	ldw	(OFST-1,sp),x
3300                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3302  03d3 7b02          	ld	a,(OFST-2,sp)
3303  03d5 5f            	clrw	x
3304  03d6 97            	ld	xl,a
3305  03d7 4f            	clr	a
3306  03d8 02            	rlwa	x,a
3307  03d9 01            	rrwa	x,a
3308  03da 1a04          	or	a,(OFST+0,sp)
3309  03dc 01            	rrwa	x,a
3310  03dd 1a03          	or	a,(OFST-1,sp)
3311  03df 01            	rrwa	x,a
3312  03e0 1f03          	ldw	(OFST-1,sp),x
3313                     ; 1053     return (uint16_t)tmpccr3;
3315  03e2 1e03          	ldw	x,(OFST-1,sp)
3318  03e4 5b04          	addw	sp,#4
3319  03e6 87            	retf
3350                     ; 1061 uint16_t TIM2_GetCounter(void)
3350                     ; 1062 {
3351                     	switch	.text
3352  03e7               f_TIM2_GetCounter:
3354  03e7 89            	pushw	x
3355       00000002      OFST:	set	2
3358                     ; 1063      uint16_t tmpcntr = 0;
3360                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3362  03e8 c6530a        	ld	a,21258
3363  03eb 5f            	clrw	x
3364  03ec 97            	ld	xl,a
3365  03ed 4f            	clr	a
3366  03ee 02            	rlwa	x,a
3367  03ef 1f01          	ldw	(OFST-1,sp),x
3368                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3370  03f1 c6530b        	ld	a,21259
3371  03f4 5f            	clrw	x
3372  03f5 97            	ld	xl,a
3373  03f6 01            	rrwa	x,a
3374  03f7 1a02          	or	a,(OFST+0,sp)
3375  03f9 01            	rrwa	x,a
3376  03fa 1a01          	or	a,(OFST-1,sp)
3377  03fc 01            	rrwa	x,a
3380  03fd 5b02          	addw	sp,#2
3381  03ff 87            	retf
3404                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3404                     ; 1077 {
3405                     	switch	.text
3406  0400               f_TIM2_GetPrescaler:
3410                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3412  0400 c6530c        	ld	a,21260
3415  0403 87            	retf
3549                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3549                     ; 1097 {
3550                     	switch	.text
3551  0404               f_TIM2_GetFlagStatus:
3553  0404 89            	pushw	x
3554  0405 89            	pushw	x
3555       00000002      OFST:	set	2
3558                     ; 1098     FlagStatus bitstatus = RESET;
3560                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3564                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3566                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3568  0406 9f            	ld	a,xl
3569  0407 c45302        	and	a,21250
3570  040a 6b01          	ld	(OFST-1,sp),a
3571                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3573  040c 7b03          	ld	a,(OFST+1,sp)
3574  040e 6b02          	ld	(OFST+0,sp),a
3575                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3577  0410 c65303        	ld	a,21251
3578  0413 1402          	and	a,(OFST+0,sp)
3579  0415 1a01          	or	a,(OFST-1,sp)
3580  0417 2706          	jreq	L3561
3581                     ; 1109         bitstatus = SET;
3583  0419 a601          	ld	a,#1
3584  041b 6b02          	ld	(OFST+0,sp),a
3586  041d 2002          	jra	L5561
3587  041f               L3561:
3588                     ; 1113         bitstatus = RESET;
3590  041f 0f02          	clr	(OFST+0,sp)
3591  0421               L5561:
3592                     ; 1115     return (FlagStatus)bitstatus;
3594  0421 7b02          	ld	a,(OFST+0,sp)
3597  0423 5b04          	addw	sp,#4
3598  0425 87            	retf
3632                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3632                     ; 1133 {
3633                     	switch	.text
3634  0426               f_TIM2_ClearFlag:
3638                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3640                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3642  0426 9f            	ld	a,xl
3643  0427 43            	cpl	a
3644  0428 c75302        	ld	21250,a
3645                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3647  042b 35ff5303      	mov	21251,#255
3648                     ; 1140 }
3651  042f 87            	retf
3710                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3710                     ; 1155 {
3711                     	switch	.text
3712  0430               f_TIM2_GetITStatus:
3714  0430 88            	push	a
3715  0431 89            	pushw	x
3716       00000002      OFST:	set	2
3719                     ; 1156     ITStatus bitstatus = RESET;
3721                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3725                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3727                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3729  0432 c45302        	and	a,21250
3730  0435 6b01          	ld	(OFST-1,sp),a
3731                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3733  0437 c65301        	ld	a,21249
3734  043a 1403          	and	a,(OFST+1,sp)
3735  043c 6b02          	ld	(OFST+0,sp),a
3736                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3738  043e 0d01          	tnz	(OFST-1,sp)
3739  0440 270a          	jreq	L3271
3741  0442 0d02          	tnz	(OFST+0,sp)
3742  0444 2706          	jreq	L3271
3743                     ; 1168         bitstatus = SET;
3745  0446 a601          	ld	a,#1
3746  0448 6b02          	ld	(OFST+0,sp),a
3748  044a 2002          	jra	L5271
3749  044c               L3271:
3750                     ; 1172         bitstatus = RESET;
3752  044c 0f02          	clr	(OFST+0,sp)
3753  044e               L5271:
3754                     ; 1174     return (ITStatus)(bitstatus);
3756  044e 7b02          	ld	a,(OFST+0,sp)
3759  0450 5b03          	addw	sp,#3
3760  0452 87            	retf
3795                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3795                     ; 1189 {
3796                     	switch	.text
3797  0453               f_TIM2_ClearITPendingBit:
3801                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3803                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
3805  0453 43            	cpl	a
3806  0454 c75302        	ld	21250,a
3807                     ; 1195 }
3810  0457 87            	retf
3855                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
3855                     ; 1215                        uint8_t TIM2_ICSelection,
3855                     ; 1216                        uint8_t TIM2_ICFilter)
3855                     ; 1217 {
3856                     	switch	.text
3857  0458               L3f_TI1_Config:
3859  0458 89            	pushw	x
3860  0459 88            	push	a
3861       00000001      OFST:	set	1
3864                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3866  045a 72115308      	bres	21256,#0
3867                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
3867                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3869  045e 7b07          	ld	a,(OFST+6,sp)
3870  0460 97            	ld	xl,a
3871  0461 a610          	ld	a,#16
3872  0463 42            	mul	x,a
3873  0464 9f            	ld	a,xl
3874  0465 1a03          	or	a,(OFST+2,sp)
3875  0467 6b01          	ld	(OFST+0,sp),a
3876  0469 c65305        	ld	a,21253
3877  046c a40c          	and	a,#12
3878  046e 1a01          	or	a,(OFST+0,sp)
3879  0470 c75305        	ld	21253,a
3880                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3882  0473 0d02          	tnz	(OFST+1,sp)
3883  0475 2706          	jreq	L5671
3884                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
3886  0477 72125308      	bset	21256,#1
3888  047b 2004          	jra	L7671
3889  047d               L5671:
3890                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3892  047d 72135308      	bres	21256,#1
3893  0481               L7671:
3894                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
3896  0481 72105308      	bset	21256,#0
3897                     ; 1236 }
3900  0485 5b03          	addw	sp,#3
3901  0487 87            	retf
3946                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
3946                     ; 1256                        uint8_t TIM2_ICSelection,
3946                     ; 1257                        uint8_t TIM2_ICFilter)
3946                     ; 1258 {
3947                     	switch	.text
3948  0488               L5f_TI2_Config:
3950  0488 89            	pushw	x
3951  0489 88            	push	a
3952       00000001      OFST:	set	1
3955                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3957  048a 72195308      	bres	21256,#4
3958                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
3958                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3960  048e 7b07          	ld	a,(OFST+6,sp)
3961  0490 97            	ld	xl,a
3962  0491 a610          	ld	a,#16
3963  0493 42            	mul	x,a
3964  0494 9f            	ld	a,xl
3965  0495 1a03          	or	a,(OFST+2,sp)
3966  0497 6b01          	ld	(OFST+0,sp),a
3967  0499 c65306        	ld	a,21254
3968  049c a40c          	and	a,#12
3969  049e 1a01          	or	a,(OFST+0,sp)
3970  04a0 c75306        	ld	21254,a
3971                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3973  04a3 0d02          	tnz	(OFST+1,sp)
3974  04a5 2706          	jreq	L1102
3975                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
3977  04a7 721a5308      	bset	21256,#5
3979  04ab 2004          	jra	L3102
3980  04ad               L1102:
3981                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3983  04ad 721b5308      	bres	21256,#5
3984  04b1               L3102:
3985                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
3987  04b1 72185308      	bset	21256,#4
3988                     ; 1280 }
3991  04b5 5b03          	addw	sp,#3
3992  04b7 87            	retf
4037                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4037                     ; 1297                        uint8_t TIM2_ICFilter)
4037                     ; 1298 {
4038                     	switch	.text
4039  04b8               L7f_TI3_Config:
4041  04b8 89            	pushw	x
4042  04b9 88            	push	a
4043       00000001      OFST:	set	1
4046                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4048  04ba 72115309      	bres	21257,#0
4049                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4049                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4051  04be 7b07          	ld	a,(OFST+6,sp)
4052  04c0 97            	ld	xl,a
4053  04c1 a610          	ld	a,#16
4054  04c3 42            	mul	x,a
4055  04c4 9f            	ld	a,xl
4056  04c5 1a03          	or	a,(OFST+2,sp)
4057  04c7 6b01          	ld	(OFST+0,sp),a
4058  04c9 c65307        	ld	a,21255
4059  04cc a40c          	and	a,#12
4060  04ce 1a01          	or	a,(OFST+0,sp)
4061  04d0 c75307        	ld	21255,a
4062                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4064  04d3 0d02          	tnz	(OFST+1,sp)
4065  04d5 2706          	jreq	L5302
4066                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4068  04d7 72125309      	bset	21257,#1
4070  04db 2004          	jra	L7302
4071  04dd               L5302:
4072                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4074  04dd 72135309      	bres	21257,#1
4075  04e1               L7302:
4076                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4078  04e1 72105309      	bset	21257,#0
4079                     ; 1318 }
4082  04e5 5b03          	addw	sp,#3
4083  04e7 87            	retf
4095                     	xdef	f_TIM2_ClearITPendingBit
4096                     	xdef	f_TIM2_GetITStatus
4097                     	xdef	f_TIM2_ClearFlag
4098                     	xdef	f_TIM2_GetFlagStatus
4099                     	xdef	f_TIM2_GetPrescaler
4100                     	xdef	f_TIM2_GetCounter
4101                     	xdef	f_TIM2_GetCapture3
4102                     	xdef	f_TIM2_GetCapture2
4103                     	xdef	f_TIM2_GetCapture1
4104                     	xdef	f_TIM2_SetIC3Prescaler
4105                     	xdef	f_TIM2_SetIC2Prescaler
4106                     	xdef	f_TIM2_SetIC1Prescaler
4107                     	xdef	f_TIM2_SetCompare3
4108                     	xdef	f_TIM2_SetCompare2
4109                     	xdef	f_TIM2_SetCompare1
4110                     	xdef	f_TIM2_SetAutoreload
4111                     	xdef	f_TIM2_SetCounter
4112                     	xdef	f_TIM2_SelectOCxM
4113                     	xdef	f_TIM2_CCxCmd
4114                     	xdef	f_TIM2_OC3PolarityConfig
4115                     	xdef	f_TIM2_OC2PolarityConfig
4116                     	xdef	f_TIM2_OC1PolarityConfig
4117                     	xdef	f_TIM2_GenerateEvent
4118                     	xdef	f_TIM2_OC3PreloadConfig
4119                     	xdef	f_TIM2_OC2PreloadConfig
4120                     	xdef	f_TIM2_OC1PreloadConfig
4121                     	xdef	f_TIM2_ARRPreloadConfig
4122                     	xdef	f_TIM2_ForcedOC3Config
4123                     	xdef	f_TIM2_ForcedOC2Config
4124                     	xdef	f_TIM2_ForcedOC1Config
4125                     	xdef	f_TIM2_PrescalerConfig
4126                     	xdef	f_TIM2_SelectOnePulseMode
4127                     	xdef	f_TIM2_UpdateRequestConfig
4128                     	xdef	f_TIM2_UpdateDisableConfig
4129                     	xdef	f_TIM2_ITConfig
4130                     	xdef	f_TIM2_Cmd
4131                     	xdef	f_TIM2_PWMIConfig
4132                     	xdef	f_TIM2_ICInit
4133                     	xdef	f_TIM2_OC3Init
4134                     	xdef	f_TIM2_OC2Init
4135                     	xdef	f_TIM2_OC1Init
4136                     	xdef	f_TIM2_TimeBaseInit
4137                     	xdef	f_TIM2_DeInit
4156                     	end
