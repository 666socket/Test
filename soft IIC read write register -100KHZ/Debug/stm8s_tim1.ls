   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 52 void TIM1_DeInit(void)
  43                     ; 53 {
  44                     	switch	.text
  45  0000               f_TIM1_DeInit:
  49                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  51  0000 725f5250      	clr	21072
  52                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  54  0004 725f5251      	clr	21073
  55                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  57  0008 725f5252      	clr	21074
  58                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  60  000c 725f5253      	clr	21075
  61                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  63  0010 725f5254      	clr	21076
  64                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  66  0014 725f5256      	clr	21078
  67                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  69  0018 725f525c      	clr	21084
  70                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  72  001c 725f525d      	clr	21085
  73                     ; 64     TIM1->CCMR1 = 0x01;
  75  0020 35015258      	mov	21080,#1
  76                     ; 65     TIM1->CCMR2 = 0x01;
  78  0024 35015259      	mov	21081,#1
  79                     ; 66     TIM1->CCMR3 = 0x01;
  81  0028 3501525a      	mov	21082,#1
  82                     ; 67     TIM1->CCMR4 = 0x01;
  84  002c 3501525b      	mov	21083,#1
  85                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  87  0030 725f525c      	clr	21084
  88                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  90  0034 725f525d      	clr	21085
  91                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  93  0038 725f5258      	clr	21080
  94                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  96  003c 725f5259      	clr	21081
  97                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  99  0040 725f525a      	clr	21082
 100                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 102  0044 725f525b      	clr	21083
 103                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 105  0048 725f525e      	clr	21086
 106                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 108  004c 725f525f      	clr	21087
 109                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 111  0050 725f5260      	clr	21088
 112                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 114  0054 725f5261      	clr	21089
 115                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 117  0058 35ff5262      	mov	21090,#255
 118                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 120  005c 35ff5263      	mov	21091,#255
 121                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 123  0060 725f5265      	clr	21093
 124                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 126  0064 725f5266      	clr	21094
 127                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 129  0068 725f5267      	clr	21095
 130                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 132  006c 725f5268      	clr	21096
 133                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 135  0070 725f5269      	clr	21097
 136                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 138  0074 725f526a      	clr	21098
 139                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 141  0078 725f526b      	clr	21099
 142                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 144  007c 725f526c      	clr	21100
 145                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 147  0080 725f526f      	clr	21103
 148                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 150  0084 35015257      	mov	21079,#1
 151                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 153  0088 725f526e      	clr	21102
 154                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 156  008c 725f526d      	clr	21101
 157                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 159  0090 725f5264      	clr	21092
 160                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 162  0094 725f5255      	clr	21077
 163                     ; 95 }
 166  0098 87            	retf
 268                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 268                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 268                     ; 107                        uint16_t TIM1_Period,
 268                     ; 108                        uint8_t TIM1_RepetitionCounter)
 268                     ; 109 {
 269                     	switch	.text
 270  0099               f_TIM1_TimeBaseInit:
 272  0099 89            	pushw	x
 273       00000000      OFST:	set	0
 276                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 278                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 280  009a 7b07          	ld	a,(OFST+7,sp)
 281  009c c75262        	ld	21090,a
 282                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 284  009f 7b08          	ld	a,(OFST+8,sp)
 285  00a1 c75263        	ld	21091,a
 286                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 288  00a4 9e            	ld	a,xh
 289  00a5 c75260        	ld	21088,a
 290                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 292  00a8 9f            	ld	a,xl
 293  00a9 c75261        	ld	21089,a
 294                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 294                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 296  00ac c65250        	ld	a,21072
 297  00af a48f          	and	a,#143
 298  00b1 1a06          	or	a,(OFST+6,sp)
 299  00b3 c75250        	ld	21072,a
 300                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 302  00b6 7b09          	ld	a,(OFST+9,sp)
 303  00b8 c75264        	ld	21092,a
 304                     ; 129 }
 307  00bb 85            	popw	x
 308  00bc 87            	retf
 590                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 590                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 590                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 590                     ; 153                   uint16_t TIM1_Pulse,
 590                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 590                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 590                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 590                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 590                     ; 158 {
 591                     	switch	.text
 592  00bd               f_TIM1_OC1Init:
 594  00bd 89            	pushw	x
 595  00be 5203          	subw	sp,#3
 596       00000003      OFST:	set	3
 599                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 601                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 603                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 605                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 607                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 609                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 611                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 613                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 613                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 615  00c0 c6525c        	ld	a,21084
 616  00c3 a4f0          	and	a,#240
 617  00c5 c7525c        	ld	21084,a
 618                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 618                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 618                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 618                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 620  00c8 7b0d          	ld	a,(OFST+10,sp)
 621  00ca a408          	and	a,#8
 622  00cc 6b03          	ld	(OFST+0,sp),a
 623  00ce 7b0c          	ld	a,(OFST+9,sp)
 624  00d0 a402          	and	a,#2
 625  00d2 1a03          	or	a,(OFST+0,sp)
 626  00d4 6b02          	ld	(OFST-1,sp),a
 627  00d6 7b09          	ld	a,(OFST+6,sp)
 628  00d8 a404          	and	a,#4
 629  00da 6b01          	ld	(OFST-2,sp),a
 630  00dc 9f            	ld	a,xl
 631  00dd a401          	and	a,#1
 632  00df 1a01          	or	a,(OFST-2,sp)
 633  00e1 1a02          	or	a,(OFST-1,sp)
 634  00e3 ca525c        	or	a,21084
 635  00e6 c7525c        	ld	21084,a
 636                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 636                     ; 181                             (uint8_t)TIM1_OCMode);
 638  00e9 c65258        	ld	a,21080
 639  00ec a48f          	and	a,#143
 640  00ee 1a04          	or	a,(OFST+1,sp)
 641  00f0 c75258        	ld	21080,a
 642                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 644  00f3 c6526f        	ld	a,21103
 645  00f6 a4fc          	and	a,#252
 646  00f8 c7526f        	ld	21103,a
 647                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 647                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 649  00fb 7b0f          	ld	a,(OFST+12,sp)
 650  00fd a402          	and	a,#2
 651  00ff 6b03          	ld	(OFST+0,sp),a
 652  0101 7b0e          	ld	a,(OFST+11,sp)
 653  0103 a401          	and	a,#1
 654  0105 1a03          	or	a,(OFST+0,sp)
 655  0107 ca526f        	or	a,21103
 656  010a c7526f        	ld	21103,a
 657                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 659  010d 7b0a          	ld	a,(OFST+7,sp)
 660  010f c75265        	ld	21093,a
 661                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 663  0112 7b0b          	ld	a,(OFST+8,sp)
 664  0114 c75266        	ld	21094,a
 665                     ; 192 }
 668  0117 5b05          	addw	sp,#5
 669  0119 87            	retf
 770                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 770                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 770                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 770                     ; 216                   uint16_t TIM1_Pulse,
 770                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 770                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 770                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 770                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 770                     ; 221 {
 771                     	switch	.text
 772  011a               f_TIM1_OC2Init:
 774  011a 89            	pushw	x
 775  011b 5203          	subw	sp,#3
 776       00000003      OFST:	set	3
 779                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 781                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 783                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 785                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 787                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 789                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 791                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 793                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 793                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 795  011d c6525c        	ld	a,21084
 796  0120 a40f          	and	a,#15
 797  0122 c7525c        	ld	21084,a
 798                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 798                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 798                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 798                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 800  0125 7b0d          	ld	a,(OFST+10,sp)
 801  0127 a480          	and	a,#128
 802  0129 6b03          	ld	(OFST+0,sp),a
 803  012b 7b0c          	ld	a,(OFST+9,sp)
 804  012d a420          	and	a,#32
 805  012f 1a03          	or	a,(OFST+0,sp)
 806  0131 6b02          	ld	(OFST-1,sp),a
 807  0133 7b09          	ld	a,(OFST+6,sp)
 808  0135 a440          	and	a,#64
 809  0137 6b01          	ld	(OFST-2,sp),a
 810  0139 9f            	ld	a,xl
 811  013a a410          	and	a,#16
 812  013c 1a01          	or	a,(OFST-2,sp)
 813  013e 1a02          	or	a,(OFST-1,sp)
 814  0140 ca525c        	or	a,21084
 815  0143 c7525c        	ld	21084,a
 816                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 816                     ; 245                              (uint8_t)TIM1_OCMode);
 818  0146 c65259        	ld	a,21081
 819  0149 a48f          	and	a,#143
 820  014b 1a04          	or	a,(OFST+1,sp)
 821  014d c75259        	ld	21081,a
 822                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 824  0150 c6526f        	ld	a,21103
 825  0153 a4f3          	and	a,#243
 826  0155 c7526f        	ld	21103,a
 827                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 827                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 829  0158 7b0f          	ld	a,(OFST+12,sp)
 830  015a a408          	and	a,#8
 831  015c 6b03          	ld	(OFST+0,sp),a
 832  015e 7b0e          	ld	a,(OFST+11,sp)
 833  0160 a404          	and	a,#4
 834  0162 1a03          	or	a,(OFST+0,sp)
 835  0164 ca526f        	or	a,21103
 836  0167 c7526f        	ld	21103,a
 837                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 839  016a 7b0a          	ld	a,(OFST+7,sp)
 840  016c c75267        	ld	21095,a
 841                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 843  016f 7b0b          	ld	a,(OFST+8,sp)
 844  0171 c75268        	ld	21096,a
 845                     ; 257 }
 848  0174 5b05          	addw	sp,#5
 849  0176 87            	retf
 950                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 950                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
 950                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 950                     ; 281                   uint16_t TIM1_Pulse,
 950                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 950                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 950                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 950                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 950                     ; 286 {
 951                     	switch	.text
 952  0177               f_TIM1_OC3Init:
 954  0177 89            	pushw	x
 955  0178 5203          	subw	sp,#3
 956       00000003      OFST:	set	3
 959                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 961                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 963                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 965                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 967                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 969                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 971                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 973                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 973                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 975  017a c6525d        	ld	a,21085
 976  017d a4f0          	and	a,#240
 977  017f c7525d        	ld	21085,a
 978                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
 978                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
 978                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
 978                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
 980  0182 7b0d          	ld	a,(OFST+10,sp)
 981  0184 a408          	and	a,#8
 982  0186 6b03          	ld	(OFST+0,sp),a
 983  0188 7b0c          	ld	a,(OFST+9,sp)
 984  018a a402          	and	a,#2
 985  018c 1a03          	or	a,(OFST+0,sp)
 986  018e 6b02          	ld	(OFST-1,sp),a
 987  0190 7b09          	ld	a,(OFST+6,sp)
 988  0192 a404          	and	a,#4
 989  0194 6b01          	ld	(OFST-2,sp),a
 990  0196 9f            	ld	a,xl
 991  0197 a401          	and	a,#1
 992  0199 1a01          	or	a,(OFST-2,sp)
 993  019b 1a02          	or	a,(OFST-1,sp)
 994  019d ca525d        	or	a,21085
 995  01a0 c7525d        	ld	21085,a
 996                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 996                     ; 309                              (uint8_t)TIM1_OCMode);
 998  01a3 c6525a        	ld	a,21082
 999  01a6 a48f          	and	a,#143
1000  01a8 1a04          	or	a,(OFST+1,sp)
1001  01aa c7525a        	ld	21082,a
1002                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1004  01ad c6526f        	ld	a,21103
1005  01b0 a4cf          	and	a,#207
1006  01b2 c7526f        	ld	21103,a
1007                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1007                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1009  01b5 7b0f          	ld	a,(OFST+12,sp)
1010  01b7 a420          	and	a,#32
1011  01b9 6b03          	ld	(OFST+0,sp),a
1012  01bb 7b0e          	ld	a,(OFST+11,sp)
1013  01bd a410          	and	a,#16
1014  01bf 1a03          	or	a,(OFST+0,sp)
1015  01c1 ca526f        	or	a,21103
1016  01c4 c7526f        	ld	21103,a
1017                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1019  01c7 7b0a          	ld	a,(OFST+7,sp)
1020  01c9 c75269        	ld	21097,a
1021                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1023  01cc 7b0b          	ld	a,(OFST+8,sp)
1024  01ce c7526a        	ld	21098,a
1025                     ; 321 }
1028  01d1 5b05          	addw	sp,#5
1029  01d3 87            	retf
1100                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1100                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1100                     ; 338                   uint16_t TIM1_Pulse,
1100                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1100                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1100                     ; 341 {
1101                     	switch	.text
1102  01d4               f_TIM1_OC4Init:
1104  01d4 89            	pushw	x
1105  01d5 88            	push	a
1106       00000001      OFST:	set	1
1109                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1111                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1113                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1115                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1117                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1119  01d6 c6525d        	ld	a,21085
1120  01d9 a4cf          	and	a,#207
1121  01db c7525d        	ld	21085,a
1122                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1122                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1124  01de 7b09          	ld	a,(OFST+8,sp)
1125  01e0 a420          	and	a,#32
1126  01e2 6b01          	ld	(OFST+0,sp),a
1127  01e4 9f            	ld	a,xl
1128  01e5 a410          	and	a,#16
1129  01e7 1a01          	or	a,(OFST+0,sp)
1130  01e9 ca525d        	or	a,21085
1131  01ec c7525d        	ld	21085,a
1132                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1132                     ; 356                             TIM1_OCMode);
1134  01ef c6525b        	ld	a,21083
1135  01f2 a48f          	and	a,#143
1136  01f4 1a02          	or	a,(OFST+1,sp)
1137  01f6 c7525b        	ld	21083,a
1138                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1140  01f9 0d0a          	tnz	(OFST+9,sp)
1141  01fb 270a          	jreq	L714
1142                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1144  01fd c6526f        	ld	a,21103
1145  0200 aadf          	or	a,#223
1146  0202 c7526f        	ld	21103,a
1148  0205 2004          	jra	L124
1149  0207               L714:
1150                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1152  0207 721d526f      	bres	21103,#6
1153  020b               L124:
1154                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1156  020b 7b07          	ld	a,(OFST+6,sp)
1157  020d c7526b        	ld	21099,a
1158                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1160  0210 7b08          	ld	a,(OFST+7,sp)
1161  0212 c7526c        	ld	21100,a
1162                     ; 372 }
1165  0215 5b03          	addw	sp,#3
1166  0217 87            	retf
1368                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1368                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1368                     ; 389                      uint8_t TIM1_DeadTime,
1368                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1368                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1368                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1368                     ; 393 {
1369                     	switch	.text
1370  0218               f_TIM1_BDTRConfig:
1372  0218 89            	pushw	x
1373  0219 88            	push	a
1374       00000001      OFST:	set	1
1377                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1379                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1381                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1383                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1385                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1387                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1389  021a 7b07          	ld	a,(OFST+6,sp)
1390  021c c7526e        	ld	21102,a
1391                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1391                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1391                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1393  021f 7b08          	ld	a,(OFST+7,sp)
1394  0221 1a09          	or	a,(OFST+8,sp)
1395  0223 1a0a          	or	a,(OFST+9,sp)
1396  0225 6b01          	ld	(OFST+0,sp),a
1397  0227 9f            	ld	a,xl
1398  0228 1a02          	or	a,(OFST+1,sp)
1399  022a 1a01          	or	a,(OFST+0,sp)
1400  022c c7526d        	ld	21101,a
1401                     ; 409 }
1404  022f 5b03          	addw	sp,#3
1405  0231 87            	retf
1604                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1604                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1604                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1604                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1604                     ; 427                  uint8_t TIM1_ICFilter)
1604                     ; 428 {
1605                     	switch	.text
1606  0232               f_TIM1_ICInit:
1608  0232 89            	pushw	x
1609       00000000      OFST:	set	0
1612                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1614                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1616                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1618                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1620                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1622                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
1624  0233 9e            	ld	a,xh
1625  0234 4d            	tnz	a
1626  0235 2616          	jrne	L546
1627                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
1627                     ; 441                    (uint8_t)TIM1_ICSelection,
1627                     ; 442                    (uint8_t)TIM1_ICFilter);
1629  0237 7b08          	ld	a,(OFST+8,sp)
1630  0239 88            	push	a
1631  023a 7b07          	ld	a,(OFST+7,sp)
1632  023c 97            	ld	xl,a
1633  023d 7b03          	ld	a,(OFST+3,sp)
1634  023f 95            	ld	xh,a
1635  0240 8d270827      	callf	L3f_TI1_Config
1637  0244 84            	pop	a
1638                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1640  0245 7b07          	ld	a,(OFST+7,sp)
1641  0247 8dcf06cf      	callf	f_TIM1_SetIC1Prescaler
1644  024b 204c          	jra	L746
1645  024d               L546:
1646                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
1648  024d 7b01          	ld	a,(OFST+1,sp)
1649  024f a101          	cp	a,#1
1650  0251 2616          	jrne	L156
1651                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
1651                     ; 450                    (uint8_t)TIM1_ICSelection,
1651                     ; 451                    (uint8_t)TIM1_ICFilter);
1653  0253 7b08          	ld	a,(OFST+8,sp)
1654  0255 88            	push	a
1655  0256 7b07          	ld	a,(OFST+7,sp)
1656  0258 97            	ld	xl,a
1657  0259 7b03          	ld	a,(OFST+3,sp)
1658  025b 95            	ld	xh,a
1659  025c 8d570857      	callf	L5f_TI2_Config
1661  0260 84            	pop	a
1662                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1664  0261 7b07          	ld	a,(OFST+7,sp)
1665  0263 8ddc06dc      	callf	f_TIM1_SetIC2Prescaler
1668  0267 2030          	jra	L746
1669  0269               L156:
1670                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
1672  0269 7b01          	ld	a,(OFST+1,sp)
1673  026b a102          	cp	a,#2
1674  026d 2616          	jrne	L556
1675                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
1675                     ; 459                    (uint8_t)TIM1_ICSelection,
1675                     ; 460                    (uint8_t)TIM1_ICFilter);
1677  026f 7b08          	ld	a,(OFST+8,sp)
1678  0271 88            	push	a
1679  0272 7b07          	ld	a,(OFST+7,sp)
1680  0274 97            	ld	xl,a
1681  0275 7b03          	ld	a,(OFST+3,sp)
1682  0277 95            	ld	xh,a
1683  0278 8d870887      	callf	L7f_TI3_Config
1685  027c 84            	pop	a
1686                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1688  027d 7b07          	ld	a,(OFST+7,sp)
1689  027f 8de906e9      	callf	f_TIM1_SetIC3Prescaler
1692  0283 2014          	jra	L746
1693  0285               L556:
1694                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
1694                     ; 468                    (uint8_t)TIM1_ICSelection,
1694                     ; 469                    (uint8_t)TIM1_ICFilter);
1696  0285 7b08          	ld	a,(OFST+8,sp)
1697  0287 88            	push	a
1698  0288 7b07          	ld	a,(OFST+7,sp)
1699  028a 97            	ld	xl,a
1700  028b 7b03          	ld	a,(OFST+3,sp)
1701  028d 95            	ld	xh,a
1702  028e 8db708b7      	callf	L11f_TI4_Config
1704  0292 84            	pop	a
1705                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1707  0293 7b07          	ld	a,(OFST+7,sp)
1708  0295 8df606f6      	callf	f_TIM1_SetIC4Prescaler
1710  0299               L746:
1711                     ; 474 }
1714  0299 85            	popw	x
1715  029a 87            	retf
1804                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1804                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1804                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1804                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1804                     ; 494                      uint8_t TIM1_ICFilter)
1804                     ; 495 {
1805                     	switch	.text
1806  029b               f_TIM1_PWMIConfig:
1808  029b 89            	pushw	x
1809  029c 89            	pushw	x
1810       00000002      OFST:	set	2
1813                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1815                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1817                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1819                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1821                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1823                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1825                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1827  029d 9f            	ld	a,xl
1828  029e a101          	cp	a,#1
1829  02a0 2706          	jreq	L127
1830                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
1832  02a2 a601          	ld	a,#1
1833  02a4 6b01          	ld	(OFST-1,sp),a
1835  02a6 2002          	jra	L327
1836  02a8               L127:
1837                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
1839  02a8 0f01          	clr	(OFST-1,sp)
1840  02aa               L327:
1841                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1843  02aa 7b08          	ld	a,(OFST+6,sp)
1844  02ac a101          	cp	a,#1
1845  02ae 2606          	jrne	L527
1846                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
1848  02b0 a602          	ld	a,#2
1849  02b2 6b02          	ld	(OFST+0,sp),a
1851  02b4 2004          	jra	L727
1852  02b6               L527:
1853                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
1855  02b6 a601          	ld	a,#1
1856  02b8 6b02          	ld	(OFST+0,sp),a
1857  02ba               L727:
1858                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
1860  02ba 0d03          	tnz	(OFST+1,sp)
1861  02bc 262a          	jrne	L137
1862                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1862                     ; 529                    (uint8_t)TIM1_ICFilter);
1864  02be 7b0a          	ld	a,(OFST+8,sp)
1865  02c0 88            	push	a
1866  02c1 7b09          	ld	a,(OFST+7,sp)
1867  02c3 97            	ld	xl,a
1868  02c4 7b05          	ld	a,(OFST+3,sp)
1869  02c6 95            	ld	xh,a
1870  02c7 8d270827      	callf	L3f_TI1_Config
1872  02cb 84            	pop	a
1873                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1875  02cc 7b09          	ld	a,(OFST+7,sp)
1876  02ce 8dcf06cf      	callf	f_TIM1_SetIC1Prescaler
1878                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1880  02d2 7b0a          	ld	a,(OFST+8,sp)
1881  02d4 88            	push	a
1882  02d5 7b03          	ld	a,(OFST+1,sp)
1883  02d7 97            	ld	xl,a
1884  02d8 7b02          	ld	a,(OFST+0,sp)
1885  02da 95            	ld	xh,a
1886  02db 8d570857      	callf	L5f_TI2_Config
1888  02df 84            	pop	a
1889                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1891  02e0 7b09          	ld	a,(OFST+7,sp)
1892  02e2 8ddc06dc      	callf	f_TIM1_SetIC2Prescaler
1895  02e6 2028          	jra	L337
1896  02e8               L137:
1897                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1897                     ; 544                    (uint8_t)TIM1_ICFilter);
1899  02e8 7b0a          	ld	a,(OFST+8,sp)
1900  02ea 88            	push	a
1901  02eb 7b09          	ld	a,(OFST+7,sp)
1902  02ed 97            	ld	xl,a
1903  02ee 7b05          	ld	a,(OFST+3,sp)
1904  02f0 95            	ld	xh,a
1905  02f1 8d570857      	callf	L5f_TI2_Config
1907  02f5 84            	pop	a
1908                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1910  02f6 7b09          	ld	a,(OFST+7,sp)
1911  02f8 8ddc06dc      	callf	f_TIM1_SetIC2Prescaler
1913                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1915  02fc 7b0a          	ld	a,(OFST+8,sp)
1916  02fe 88            	push	a
1917  02ff 7b03          	ld	a,(OFST+1,sp)
1918  0301 97            	ld	xl,a
1919  0302 7b02          	ld	a,(OFST+0,sp)
1920  0304 95            	ld	xh,a
1921  0305 8d270827      	callf	L3f_TI1_Config
1923  0309 84            	pop	a
1924                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1926  030a 7b09          	ld	a,(OFST+7,sp)
1927  030c 8dcf06cf      	callf	f_TIM1_SetIC1Prescaler
1929  0310               L337:
1930                     ; 555 }
1933  0310 5b04          	addw	sp,#4
1934  0312 87            	retf
1988                     ; 563 void TIM1_Cmd(FunctionalState NewState)
1988                     ; 564 {
1989                     	switch	.text
1990  0313               f_TIM1_Cmd:
1994                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1996                     ; 569     if (NewState != DISABLE)
1998  0313 4d            	tnz	a
1999  0314 2706          	jreq	L367
2000                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2002  0316 72105250      	bset	21072,#0
2004  031a 2004          	jra	L567
2005  031c               L367:
2006                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2008  031c 72115250      	bres	21072,#0
2009  0320               L567:
2010                     ; 577 }
2013  0320 87            	retf
2048                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2048                     ; 586 {
2049                     	switch	.text
2050  0321               f_TIM1_CtrlPWMOutputs:
2054                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2056                     ; 592     if (NewState != DISABLE)
2058  0321 4d            	tnz	a
2059  0322 2706          	jreq	L5001
2060                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2062  0324 721e526d      	bset	21101,#7
2064  0328 2004          	jra	L7001
2065  032a               L5001:
2066                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2068  032a 721f526d      	bres	21101,#7
2069  032e               L7001:
2070                     ; 600 }
2073  032e 87            	retf
2179                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2179                     ; 620 {
2180                     	switch	.text
2181  032f               f_TIM1_ITConfig:
2183  032f 89            	pushw	x
2184       00000000      OFST:	set	0
2187                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2189                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2191                     ; 625     if (NewState != DISABLE)
2193  0330 9f            	ld	a,xl
2194  0331 4d            	tnz	a
2195  0332 2709          	jreq	L7501
2196                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2198  0334 9e            	ld	a,xh
2199  0335 ca5254        	or	a,21076
2200  0338 c75254        	ld	21076,a
2202  033b 2009          	jra	L1601
2203  033d               L7501:
2204                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2206  033d 7b01          	ld	a,(OFST+1,sp)
2207  033f 43            	cpl	a
2208  0340 c45254        	and	a,21076
2209  0343 c75254        	ld	21076,a
2210  0346               L1601:
2211                     ; 635 }
2214  0346 85            	popw	x
2215  0347 87            	retf
2238                     ; 642 void TIM1_InternalClockConfig(void)
2238                     ; 643 {
2239                     	switch	.text
2240  0348               f_TIM1_InternalClockConfig:
2244                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2246  0348 c65252        	ld	a,21074
2247  034b a4f8          	and	a,#248
2248  034d c75252        	ld	21074,a
2249                     ; 646 }
2252  0350 87            	retf
2366                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2366                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2366                     ; 666                               uint8_t ExtTRGFilter)
2366                     ; 667 {
2367                     	switch	.text
2368  0351               f_TIM1_ETRClockMode1Config:
2370  0351 89            	pushw	x
2371       00000000      OFST:	set	0
2374                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2376                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2378                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2380  0352 7b06          	ld	a,(OFST+6,sp)
2381  0354 88            	push	a
2382  0355 9f            	ld	a,xl
2383  0356 97            	ld	xl,a
2384  0357 7b02          	ld	a,(OFST+2,sp)
2385  0359 95            	ld	xh,a
2386  035a 8d7f037f      	callf	f_TIM1_ETRConfig
2388  035e 84            	pop	a
2389                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2389                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2391  035f c65252        	ld	a,21074
2392  0362 a488          	and	a,#136
2393  0364 aa77          	or	a,#119
2394  0366 c75252        	ld	21074,a
2395                     ; 678 }
2398  0369 85            	popw	x
2399  036a 87            	retf
2454                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2454                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2454                     ; 698                               uint8_t ExtTRGFilter)
2454                     ; 699 {
2455                     	switch	.text
2456  036b               f_TIM1_ETRClockMode2Config:
2458  036b 89            	pushw	x
2459       00000000      OFST:	set	0
2462                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2464                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2466                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2468  036c 7b06          	ld	a,(OFST+6,sp)
2469  036e 88            	push	a
2470  036f 9f            	ld	a,xl
2471  0370 97            	ld	xl,a
2472  0371 7b02          	ld	a,(OFST+2,sp)
2473  0373 95            	ld	xh,a
2474  0374 8d7f037f      	callf	f_TIM1_ETRConfig
2476  0378 84            	pop	a
2477                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
2479  0379 721c5253      	bset	21075,#6
2480                     ; 709 }
2483  037d 85            	popw	x
2484  037e 87            	retf
2537                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2537                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2537                     ; 729                     uint8_t ExtTRGFilter)
2537                     ; 730 {
2538                     	switch	.text
2539  037f               f_TIM1_ETRConfig:
2541  037f 89            	pushw	x
2542       00000000      OFST:	set	0
2545                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2547                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2547                     ; 735                       (uint8_t)ExtTRGFilter );
2549  0380 9f            	ld	a,xl
2550  0381 1a01          	or	a,(OFST+1,sp)
2551  0383 1a06          	or	a,(OFST+6,sp)
2552  0385 ca5253        	or	a,21075
2553  0388 c75253        	ld	21075,a
2554                     ; 736 }
2557  038b 85            	popw	x
2558  038c 87            	retf
2644                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2644                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2644                     ; 755                                  uint8_t ICFilter)
2644                     ; 756 {
2645                     	switch	.text
2646  038d               f_TIM1_TIxExternalClockConfig:
2648  038d 89            	pushw	x
2649       00000000      OFST:	set	0
2652                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2654                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2656                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2658                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2660  038e 9e            	ld	a,xh
2661  038f a160          	cp	a,#96
2662  0391 2610          	jrne	L1521
2663                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2665  0393 7b06          	ld	a,(OFST+6,sp)
2666  0395 88            	push	a
2667  0396 ae0001        	ldw	x,#1
2668  0399 7b03          	ld	a,(OFST+3,sp)
2669  039b 95            	ld	xh,a
2670  039c 8d570857      	callf	L5f_TI2_Config
2672  03a0 84            	pop	a
2674  03a1 200e          	jra	L3521
2675  03a3               L1521:
2676                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2678  03a3 7b06          	ld	a,(OFST+6,sp)
2679  03a5 88            	push	a
2680  03a6 ae0001        	ldw	x,#1
2681  03a9 7b03          	ld	a,(OFST+3,sp)
2682  03ab 95            	ld	xh,a
2683  03ac 8d270827      	callf	L3f_TI1_Config
2685  03b0 84            	pop	a
2686  03b1               L3521:
2687                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2689  03b1 7b01          	ld	a,(OFST+1,sp)
2690  03b3 8dc103c1      	callf	f_TIM1_SelectInputTrigger
2692                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2694  03b7 c65252        	ld	a,21074
2695  03ba aa07          	or	a,#7
2696  03bc c75252        	ld	21074,a
2697                     ; 777 }
2700  03bf 85            	popw	x
2701  03c0 87            	retf
2785                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2785                     ; 790 {
2786                     	switch	.text
2787  03c1               f_TIM1_SelectInputTrigger:
2789  03c1 88            	push	a
2790       00000000      OFST:	set	0
2793                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2795                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2797  03c2 c65252        	ld	a,21074
2798  03c5 a48f          	and	a,#143
2799  03c7 1a01          	or	a,(OFST+1,sp)
2800  03c9 c75252        	ld	21074,a
2801                     ; 796 }
2804  03cc 84            	pop	a
2805  03cd 87            	retf
2840                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2840                     ; 807 {
2841                     	switch	.text
2842  03ce               f_TIM1_UpdateDisableConfig:
2846                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2848                     ; 812     if (NewState != DISABLE)
2850  03ce 4d            	tnz	a
2851  03cf 2706          	jreq	L1331
2852                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
2854  03d1 72125250      	bset	21072,#1
2856  03d5 2004          	jra	L3331
2857  03d7               L1331:
2858                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2860  03d7 72135250      	bres	21072,#1
2861  03db               L3331:
2862                     ; 820 }
2865  03db 87            	retf
2922                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2922                     ; 831 {
2923                     	switch	.text
2924  03dc               f_TIM1_UpdateRequestConfig:
2928                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2930                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2932  03dc 4d            	tnz	a
2933  03dd 2706          	jreq	L3631
2934                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
2936  03df 72145250      	bset	21072,#2
2938  03e3 2004          	jra	L5631
2939  03e5               L3631:
2940                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
2942  03e5 72155250      	bres	21072,#2
2943  03e9               L5631:
2944                     ; 844 }
2947  03e9 87            	retf
2982                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
2982                     ; 854 {
2983                     	switch	.text
2984  03ea               f_TIM1_SelectHallSensor:
2988                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2990                     ; 859     if (NewState != DISABLE)
2992  03ea 4d            	tnz	a
2993  03eb 2706          	jreq	L5041
2994                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
2996  03ed 721e5251      	bset	21073,#7
2998  03f1 2004          	jra	L7041
2999  03f3               L5041:
3000                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3002  03f3 721f5251      	bres	21073,#7
3003  03f7               L7041:
3004                     ; 867 }
3007  03f7 87            	retf
3063                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3063                     ; 879 {
3064                     	switch	.text
3065  03f8               f_TIM1_SelectOnePulseMode:
3069                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3071                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3073  03f8 4d            	tnz	a
3074  03f9 2706          	jreq	L7341
3075                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3077  03fb 72165250      	bset	21072,#3
3079  03ff 2004          	jra	L1441
3080  0401               L7341:
3081                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3083  0401 72175250      	bres	21072,#3
3084  0405               L1441:
3085                     ; 893 }
3088  0405 87            	retf
3185                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3185                     ; 910 {
3186                     	switch	.text
3187  0406               f_TIM1_SelectOutputTrigger:
3189  0406 88            	push	a
3190       00000000      OFST:	set	0
3193                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3195                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3195                     ; 916                           (uint8_t) TIM1_TRGOSource);
3197  0407 c65251        	ld	a,21073
3198  040a a48f          	and	a,#143
3199  040c 1a01          	or	a,(OFST+1,sp)
3200  040e c75251        	ld	21073,a
3201                     ; 917 }
3204  0411 84            	pop	a
3205  0412 87            	retf
3278                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3278                     ; 930 {
3279                     	switch	.text
3280  0413               f_TIM1_SelectSlaveMode:
3282  0413 88            	push	a
3283       00000000      OFST:	set	0
3286                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3288                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3288                     ; 937                            (uint8_t)TIM1_SlaveMode);
3290  0414 c65252        	ld	a,21074
3291  0417 a4f8          	and	a,#248
3292  0419 1a01          	or	a,(OFST+1,sp)
3293  041b c75252        	ld	21074,a
3294                     ; 939 }
3297  041e 84            	pop	a
3298  041f 87            	retf
3333                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3333                     ; 948 {
3334                     	switch	.text
3335  0420               f_TIM1_SelectMasterSlaveMode:
3339                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3341                     ; 953     if (NewState != DISABLE)
3343  0420 4d            	tnz	a
3344  0421 2706          	jreq	L3551
3345                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
3347  0423 721e5252      	bset	21074,#7
3349  0427 2004          	jra	L5551
3350  0429               L3551:
3351                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3353  0429 721f5252      	bres	21074,#7
3354  042d               L5551:
3355                     ; 961 }
3358  042d 87            	retf
3443                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3443                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3443                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3443                     ; 986 {
3444                     	switch	.text
3445  042e               f_TIM1_EncoderInterfaceConfig:
3447  042e 89            	pushw	x
3448       00000000      OFST:	set	0
3451                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3453                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3455                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3457                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3459  042f 9f            	ld	a,xl
3460  0430 4d            	tnz	a
3461  0431 2706          	jreq	L7161
3462                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3464  0433 7212525c      	bset	21084,#1
3466  0437 2004          	jra	L1261
3467  0439               L7161:
3468                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3470  0439 7213525c      	bres	21084,#1
3471  043d               L1261:
3472                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3474  043d 0d06          	tnz	(OFST+6,sp)
3475  043f 2706          	jreq	L3261
3476                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3478  0441 721a525c      	bset	21084,#5
3480  0445 2004          	jra	L5261
3481  0447               L3261:
3482                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3484  0447 721b525c      	bres	21084,#5
3485  044b               L5261:
3486                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3486                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
3488  044b c65252        	ld	a,21074
3489  044e a4f0          	and	a,#240
3490  0450 1a01          	or	a,(OFST+1,sp)
3491  0452 c75252        	ld	21074,a
3492                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3492                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
3494  0455 c65258        	ld	a,21080
3495  0458 a4fc          	and	a,#252
3496  045a aa01          	or	a,#1
3497  045c c75258        	ld	21080,a
3498                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3498                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
3500  045f c65259        	ld	a,21081
3501  0462 a4fc          	and	a,#252
3502  0464 aa01          	or	a,#1
3503  0466 c75259        	ld	21081,a
3504                     ; 1022 }
3507  0469 85            	popw	x
3508  046a 87            	retf
3572                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
3572                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3572                     ; 1037 {
3573                     	switch	.text
3574  046b               f_TIM1_PrescalerConfig:
3576  046b 89            	pushw	x
3577       00000000      OFST:	set	0
3580                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3582                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3584  046c 9e            	ld	a,xh
3585  046d c75260        	ld	21088,a
3586                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
3588  0470 9f            	ld	a,xl
3589  0471 c75261        	ld	21089,a
3590                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3592  0474 7b06          	ld	a,(OFST+6,sp)
3593  0476 c75257        	ld	21079,a
3594                     ; 1048 }
3597  0479 85            	popw	x
3598  047a 87            	retf
3633                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3633                     ; 1062 {
3634                     	switch	.text
3635  047b               f_TIM1_CounterModeConfig:
3637  047b 88            	push	a
3638       00000000      OFST:	set	0
3641                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3643                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3643                     ; 1069                           | (uint8_t)TIM1_CounterMode);
3645  047c c65250        	ld	a,21072
3646  047f a48f          	and	a,#143
3647  0481 1a01          	or	a,(OFST+1,sp)
3648  0483 c75250        	ld	21072,a
3649                     ; 1070 }
3652  0486 84            	pop	a
3653  0487 87            	retf
3710                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3710                     ; 1082 {
3711                     	switch	.text
3712  0488               f_TIM1_ForcedOC1Config:
3714  0488 88            	push	a
3715       00000000      OFST:	set	0
3718                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3720                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3720                     ; 1088                              (uint8_t)TIM1_ForcedAction);
3722  0489 c65258        	ld	a,21080
3723  048c a48f          	and	a,#143
3724  048e 1a01          	or	a,(OFST+1,sp)
3725  0490 c75258        	ld	21080,a
3726                     ; 1089 }
3729  0493 84            	pop	a
3730  0494 87            	retf
3765                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3765                     ; 1101 {
3766                     	switch	.text
3767  0495               f_TIM1_ForcedOC2Config:
3769  0495 88            	push	a
3770       00000000      OFST:	set	0
3773                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3775                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3775                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
3777  0496 c65259        	ld	a,21081
3778  0499 a48f          	and	a,#143
3779  049b 1a01          	or	a,(OFST+1,sp)
3780  049d c75259        	ld	21081,a
3781                     ; 1108 }
3784  04a0 84            	pop	a
3785  04a1 87            	retf
3820                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3820                     ; 1121 {
3821                     	switch	.text
3822  04a2               f_TIM1_ForcedOC3Config:
3824  04a2 88            	push	a
3825       00000000      OFST:	set	0
3828                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3830                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3830                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
3832  04a3 c6525a        	ld	a,21082
3833  04a6 a48f          	and	a,#143
3834  04a8 1a01          	or	a,(OFST+1,sp)
3835  04aa c7525a        	ld	21082,a
3836                     ; 1128 }
3839  04ad 84            	pop	a
3840  04ae 87            	retf
3875                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3875                     ; 1141 {
3876                     	switch	.text
3877  04af               f_TIM1_ForcedOC4Config:
3879  04af 88            	push	a
3880       00000000      OFST:	set	0
3883                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3885                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3885                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
3887  04b0 c6525b        	ld	a,21083
3888  04b3 a48f          	and	a,#143
3889  04b5 1a01          	or	a,(OFST+1,sp)
3890  04b7 c7525b        	ld	21083,a
3891                     ; 1148 }
3894  04ba 84            	pop	a
3895  04bb 87            	retf
3930                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3930                     ; 1158 {
3931                     	switch	.text
3932  04bc               f_TIM1_ARRPreloadConfig:
3936                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3938                     ; 1163     if (NewState != DISABLE)
3940  04bc 4d            	tnz	a
3941  04bd 2706          	jreq	L3102
3942                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
3944  04bf 721e5250      	bset	21072,#7
3946  04c3 2004          	jra	L5102
3947  04c5               L3102:
3948                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
3950  04c5 721f5250      	bres	21072,#7
3951  04c9               L5102:
3952                     ; 1171 }
3955  04c9 87            	retf
3989                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
3989                     ; 1181 {
3990                     	switch	.text
3991  04ca               f_TIM1_SelectCOM:
3995                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3997                     ; 1186     if (NewState != DISABLE)
3999  04ca 4d            	tnz	a
4000  04cb 2706          	jreq	L5302
4001                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4003  04cd 72145251      	bset	21073,#2
4005  04d1 2004          	jra	L7302
4006  04d3               L5302:
4007                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4009  04d3 72155251      	bres	21073,#2
4010  04d7               L7302:
4011                     ; 1194 }
4014  04d7 87            	retf
4049                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
4049                     ; 1203 {
4050                     	switch	.text
4051  04d8               f_TIM1_CCPreloadControl:
4055                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4057                     ; 1208     if (NewState != DISABLE)
4059  04d8 4d            	tnz	a
4060  04d9 2706          	jreq	L7502
4061                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
4063  04db 72105251      	bset	21073,#0
4065  04df 2004          	jra	L1602
4066  04e1               L7502:
4067                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4069  04e1 72115251      	bres	21073,#0
4070  04e5               L1602:
4071                     ; 1216 }
4074  04e5 87            	retf
4109                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4109                     ; 1226 {
4110                     	switch	.text
4111  04e6               f_TIM1_OC1PreloadConfig:
4115                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4117                     ; 1231     if (NewState != DISABLE)
4119  04e6 4d            	tnz	a
4120  04e7 2706          	jreq	L1012
4121                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4123  04e9 72165258      	bset	21080,#3
4125  04ed 2004          	jra	L3012
4126  04ef               L1012:
4127                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4129  04ef 72175258      	bres	21080,#3
4130  04f3               L3012:
4131                     ; 1239 }
4134  04f3 87            	retf
4169                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4169                     ; 1249 {
4170                     	switch	.text
4171  04f4               f_TIM1_OC2PreloadConfig:
4175                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4177                     ; 1254     if (NewState != DISABLE)
4179  04f4 4d            	tnz	a
4180  04f5 2706          	jreq	L3212
4181                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4183  04f7 72165259      	bset	21081,#3
4185  04fb 2004          	jra	L5212
4186  04fd               L3212:
4187                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4189  04fd 72175259      	bres	21081,#3
4190  0501               L5212:
4191                     ; 1262 }
4194  0501 87            	retf
4229                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4229                     ; 1272 {
4230                     	switch	.text
4231  0502               f_TIM1_OC3PreloadConfig:
4235                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4237                     ; 1277     if (NewState != DISABLE)
4239  0502 4d            	tnz	a
4240  0503 2706          	jreq	L5412
4241                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4243  0505 7216525a      	bset	21082,#3
4245  0509 2004          	jra	L7412
4246  050b               L5412:
4247                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4249  050b 7217525a      	bres	21082,#3
4250  050f               L7412:
4251                     ; 1285 }
4254  050f 87            	retf
4289                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4289                     ; 1296 {
4290                     	switch	.text
4291  0510               f_TIM1_OC4PreloadConfig:
4295                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4297                     ; 1301     if (NewState != DISABLE)
4299  0510 4d            	tnz	a
4300  0511 2706          	jreq	L7612
4301                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4303  0513 7216525b      	bset	21083,#3
4305  0517 2004          	jra	L1712
4306  0519               L7612:
4307                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4309  0519 7217525b      	bres	21083,#3
4310  051d               L1712:
4311                     ; 1309 }
4314  051d 87            	retf
4348                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
4348                     ; 1318 {
4349                     	switch	.text
4350  051e               f_TIM1_OC1FastConfig:
4354                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4356                     ; 1323     if (NewState != DISABLE)
4358  051e 4d            	tnz	a
4359  051f 2706          	jreq	L1122
4360                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4362  0521 72145258      	bset	21080,#2
4364  0525 2004          	jra	L3122
4365  0527               L1122:
4366                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4368  0527 72155258      	bres	21080,#2
4369  052b               L3122:
4370                     ; 1331 }
4373  052b 87            	retf
4407                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
4407                     ; 1342 {
4408                     	switch	.text
4409  052c               f_TIM1_OC2FastConfig:
4413                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4415                     ; 1347     if (NewState != DISABLE)
4417  052c 4d            	tnz	a
4418  052d 2706          	jreq	L3322
4419                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4421  052f 72145259      	bset	21081,#2
4423  0533 2004          	jra	L5322
4424  0535               L3322:
4425                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4427  0535 72155259      	bres	21081,#2
4428  0539               L5322:
4429                     ; 1355 }
4432  0539 87            	retf
4466                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
4466                     ; 1365 {
4467                     	switch	.text
4468  053a               f_TIM1_OC3FastConfig:
4472                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4474                     ; 1370     if (NewState != DISABLE)
4476  053a 4d            	tnz	a
4477  053b 2706          	jreq	L5522
4478                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4480  053d 7214525a      	bset	21082,#2
4482  0541 2004          	jra	L7522
4483  0543               L5522:
4484                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4486  0543 7215525a      	bres	21082,#2
4487  0547               L7522:
4488                     ; 1378 }
4491  0547 87            	retf
4525                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
4525                     ; 1388 {
4526                     	switch	.text
4527  0548               f_TIM1_OC4FastConfig:
4531                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4533                     ; 1393     if (NewState != DISABLE)
4535  0548 4d            	tnz	a
4536  0549 2706          	jreq	L7722
4537                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4539  054b 7214525b      	bset	21083,#2
4541  054f 2004          	jra	L1032
4542  0551               L7722:
4543                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4545  0551 7215525b      	bres	21083,#2
4546  0555               L1032:
4547                     ; 1401 }
4550  0555 87            	retf
4654                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4654                     ; 1419 {
4655                     	switch	.text
4656  0556               f_TIM1_GenerateEvent:
4660                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4662                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
4664  0556 c75257        	ld	21079,a
4665                     ; 1425 }
4668  0559 87            	retf
4703                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4703                     ; 1437 {
4704                     	switch	.text
4705  055a               f_TIM1_OC1PolarityConfig:
4709                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4711                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4713  055a 4d            	tnz	a
4714  055b 2706          	jreq	L3632
4715                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4717  055d 7212525c      	bset	21084,#1
4719  0561 2004          	jra	L5632
4720  0563               L3632:
4721                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4723  0563 7213525c      	bres	21084,#1
4724  0567               L5632:
4725                     ; 1450 }
4728  0567 87            	retf
4763                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4763                     ; 1462 {
4764                     	switch	.text
4765  0568               f_TIM1_OC1NPolarityConfig:
4769                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4771                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4773  0568 4d            	tnz	a
4774  0569 2706          	jreq	L5042
4775                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4777  056b 7216525c      	bset	21084,#3
4779  056f 2004          	jra	L7042
4780  0571               L5042:
4781                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4783  0571 7217525c      	bres	21084,#3
4784  0575               L7042:
4785                     ; 1475 }
4788  0575 87            	retf
4823                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4823                     ; 1487 {
4824                     	switch	.text
4825  0576               f_TIM1_OC2PolarityConfig:
4829                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4831                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4833  0576 4d            	tnz	a
4834  0577 2706          	jreq	L7242
4835                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4837  0579 721a525c      	bset	21084,#5
4839  057d 2004          	jra	L1342
4840  057f               L7242:
4841                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4843  057f 721b525c      	bres	21084,#5
4844  0583               L1342:
4845                     ; 1500 }
4848  0583 87            	retf
4883                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4883                     ; 1511 {
4884                     	switch	.text
4885  0584               f_TIM1_OC2NPolarityConfig:
4889                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4891                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4893  0584 4d            	tnz	a
4894  0585 2706          	jreq	L1542
4895                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4897  0587 721e525c      	bset	21084,#7
4899  058b 2004          	jra	L3542
4900  058d               L1542:
4901                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
4903  058d 721f525c      	bres	21084,#7
4904  0591               L3542:
4905                     ; 1524 }
4908  0591 87            	retf
4943                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4943                     ; 1536 {
4944                     	switch	.text
4945  0592               f_TIM1_OC3PolarityConfig:
4949                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4951                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4953  0592 4d            	tnz	a
4954  0593 2706          	jreq	L3742
4955                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
4957  0595 7212525d      	bset	21085,#1
4959  0599 2004          	jra	L5742
4960  059b               L3742:
4961                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
4963  059b 7213525d      	bres	21085,#1
4964  059f               L5742:
4965                     ; 1549 }
4968  059f 87            	retf
5003                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5003                     ; 1561 {
5004                     	switch	.text
5005  05a0               f_TIM1_OC3NPolarityConfig:
5009                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5011                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5013  05a0 4d            	tnz	a
5014  05a1 2706          	jreq	L5152
5015                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5017  05a3 7216525d      	bset	21085,#3
5019  05a7 2004          	jra	L7152
5020  05a9               L5152:
5021                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5023  05a9 7217525d      	bres	21085,#3
5024  05ad               L7152:
5025                     ; 1574 }
5028  05ad 87            	retf
5063                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5063                     ; 1585 {
5064                     	switch	.text
5065  05ae               f_TIM1_OC4PolarityConfig:
5069                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5071                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5073  05ae 4d            	tnz	a
5074  05af 2706          	jreq	L7352
5075                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5077  05b1 721a525d      	bset	21085,#5
5079  05b5 2004          	jra	L1452
5080  05b7               L7352:
5081                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5083  05b7 721b525d      	bres	21085,#5
5084  05bb               L1452:
5085                     ; 1598 }
5088  05bb 87            	retf
5132                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5132                     ; 1614 {
5133                     	switch	.text
5134  05bc               f_TIM1_CCxCmd:
5136  05bc 89            	pushw	x
5137       00000000      OFST:	set	0
5140                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5142                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5144                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
5146  05bd 9e            	ld	a,xh
5147  05be 4d            	tnz	a
5148  05bf 2610          	jrne	L5652
5149                     ; 1622         if (NewState != DISABLE)
5151  05c1 9f            	ld	a,xl
5152  05c2 4d            	tnz	a
5153  05c3 2706          	jreq	L7652
5154                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5156  05c5 7210525c      	bset	21084,#0
5158  05c9 2040          	jra	L3752
5159  05cb               L7652:
5160                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5162  05cb 7211525c      	bres	21084,#0
5163  05cf 203a          	jra	L3752
5164  05d1               L5652:
5165                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
5167  05d1 7b01          	ld	a,(OFST+1,sp)
5168  05d3 a101          	cp	a,#1
5169  05d5 2610          	jrne	L5752
5170                     ; 1635         if (NewState != DISABLE)
5172  05d7 0d02          	tnz	(OFST+2,sp)
5173  05d9 2706          	jreq	L7752
5174                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5176  05db 7218525c      	bset	21084,#4
5178  05df 202a          	jra	L3752
5179  05e1               L7752:
5180                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5182  05e1 7219525c      	bres	21084,#4
5183  05e5 2024          	jra	L3752
5184  05e7               L5752:
5185                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
5187  05e7 7b01          	ld	a,(OFST+1,sp)
5188  05e9 a102          	cp	a,#2
5189  05eb 2610          	jrne	L5062
5190                     ; 1647         if (NewState != DISABLE)
5192  05ed 0d02          	tnz	(OFST+2,sp)
5193  05ef 2706          	jreq	L7062
5194                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5196  05f1 7210525d      	bset	21085,#0
5198  05f5 2014          	jra	L3752
5199  05f7               L7062:
5200                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5202  05f7 7211525d      	bres	21085,#0
5203  05fb 200e          	jra	L3752
5204  05fd               L5062:
5205                     ; 1659         if (NewState != DISABLE)
5207  05fd 0d02          	tnz	(OFST+2,sp)
5208  05ff 2706          	jreq	L5162
5209                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5211  0601 7218525d      	bset	21085,#4
5213  0605 2004          	jra	L3752
5214  0607               L5162:
5215                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5217  0607 7219525d      	bres	21085,#4
5218  060b               L3752:
5219                     ; 1668 }
5222  060b 85            	popw	x
5223  060c 87            	retf
5267                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5267                     ; 1682 {
5268                     	switch	.text
5269  060d               f_TIM1_CCxNCmd:
5271  060d 89            	pushw	x
5272       00000000      OFST:	set	0
5275                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5277                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5279                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
5281  060e 9e            	ld	a,xh
5282  060f 4d            	tnz	a
5283  0610 2610          	jrne	L3462
5284                     ; 1690         if (NewState != DISABLE)
5286  0612 9f            	ld	a,xl
5287  0613 4d            	tnz	a
5288  0614 2706          	jreq	L5462
5289                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5291  0616 7214525c      	bset	21084,#2
5293  061a 202a          	jra	L1562
5294  061c               L5462:
5295                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5297  061c 7215525c      	bres	21084,#2
5298  0620 2024          	jra	L1562
5299  0622               L3462:
5300                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
5302  0622 7b01          	ld	a,(OFST+1,sp)
5303  0624 a101          	cp	a,#1
5304  0626 2610          	jrne	L3562
5305                     ; 1702         if (NewState != DISABLE)
5307  0628 0d02          	tnz	(OFST+2,sp)
5308  062a 2706          	jreq	L5562
5309                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5311  062c 721c525c      	bset	21084,#6
5313  0630 2014          	jra	L1562
5314  0632               L5562:
5315                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5317  0632 721d525c      	bres	21084,#6
5318  0636 200e          	jra	L1562
5319  0638               L3562:
5320                     ; 1714         if (NewState != DISABLE)
5322  0638 0d02          	tnz	(OFST+2,sp)
5323  063a 2706          	jreq	L3662
5324                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5326  063c 7214525d      	bset	21085,#2
5328  0640 2004          	jra	L1562
5329  0642               L3662:
5330                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5332  0642 7215525d      	bres	21085,#2
5333  0646               L1562:
5334                     ; 1723 }
5337  0646 85            	popw	x
5338  0647 87            	retf
5382                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5382                     ; 1748 {
5383                     	switch	.text
5384  0648               f_TIM1_SelectOCxM:
5386  0648 89            	pushw	x
5387       00000000      OFST:	set	0
5390                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5392                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5394                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
5396  0649 9e            	ld	a,xh
5397  064a 4d            	tnz	a
5398  064b 2610          	jrne	L1172
5399                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5401  064d 7211525c      	bres	21084,#0
5402                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5402                     ; 1760                                 | (uint8_t)TIM1_OCMode);
5404  0651 c65258        	ld	a,21080
5405  0654 a48f          	and	a,#143
5406  0656 1a02          	or	a,(OFST+2,sp)
5407  0658 c75258        	ld	21080,a
5409  065b 203a          	jra	L3172
5410  065d               L1172:
5411                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
5413  065d 7b01          	ld	a,(OFST+1,sp)
5414  065f a101          	cp	a,#1
5415  0661 2610          	jrne	L5172
5416                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5418  0663 7219525c      	bres	21084,#4
5419                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5419                     ; 1769                                 | (uint8_t)TIM1_OCMode);
5421  0667 c65259        	ld	a,21081
5422  066a a48f          	and	a,#143
5423  066c 1a02          	or	a,(OFST+2,sp)
5424  066e c75259        	ld	21081,a
5426  0671 2024          	jra	L3172
5427  0673               L5172:
5428                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
5430  0673 7b01          	ld	a,(OFST+1,sp)
5431  0675 a102          	cp	a,#2
5432  0677 2610          	jrne	L1272
5433                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5435  0679 7211525d      	bres	21085,#0
5436                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5436                     ; 1778                                 | (uint8_t)TIM1_OCMode);
5438  067d c6525a        	ld	a,21082
5439  0680 a48f          	and	a,#143
5440  0682 1a02          	or	a,(OFST+2,sp)
5441  0684 c7525a        	ld	21082,a
5443  0687 200e          	jra	L3172
5444  0689               L1272:
5445                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5447  0689 7219525d      	bres	21085,#4
5448                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5448                     ; 1787                                 | (uint8_t)TIM1_OCMode);
5450  068d c6525b        	ld	a,21083
5451  0690 a48f          	and	a,#143
5452  0692 1a02          	or	a,(OFST+2,sp)
5453  0694 c7525b        	ld	21083,a
5454  0697               L3172:
5455                     ; 1789 }
5458  0697 85            	popw	x
5459  0698 87            	retf
5490                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
5490                     ; 1799 {
5491                     	switch	.text
5492  0699               f_TIM1_SetCounter:
5496                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
5498  0699 9e            	ld	a,xh
5499  069a c7525e        	ld	21086,a
5500                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
5502  069d 9f            	ld	a,xl
5503  069e c7525f        	ld	21087,a
5504                     ; 1804 }
5507  06a1 87            	retf
5538                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
5538                     ; 1814 {
5539                     	switch	.text
5540  06a2               f_TIM1_SetAutoreload:
5544                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5546  06a2 9e            	ld	a,xh
5547  06a3 c75262        	ld	21090,a
5548                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
5550  06a6 9f            	ld	a,xl
5551  06a7 c75263        	ld	21091,a
5552                     ; 1820 }
5555  06aa 87            	retf
5586                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
5586                     ; 1830 {
5587                     	switch	.text
5588  06ab               f_TIM1_SetCompare1:
5592                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5594  06ab 9e            	ld	a,xh
5595  06ac c75265        	ld	21093,a
5596                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
5598  06af 9f            	ld	a,xl
5599  06b0 c75266        	ld	21094,a
5600                     ; 1835 }
5603  06b3 87            	retf
5634                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
5634                     ; 1845 {
5635                     	switch	.text
5636  06b4               f_TIM1_SetCompare2:
5640                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5642  06b4 9e            	ld	a,xh
5643  06b5 c75267        	ld	21095,a
5644                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
5646  06b8 9f            	ld	a,xl
5647  06b9 c75268        	ld	21096,a
5648                     ; 1850 }
5651  06bc 87            	retf
5682                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
5682                     ; 1860 {
5683                     	switch	.text
5684  06bd               f_TIM1_SetCompare3:
5688                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5690  06bd 9e            	ld	a,xh
5691  06be c75269        	ld	21097,a
5692                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
5694  06c1 9f            	ld	a,xl
5695  06c2 c7526a        	ld	21098,a
5696                     ; 1865 }
5699  06c5 87            	retf
5730                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
5730                     ; 1875 {
5731                     	switch	.text
5732  06c6               f_TIM1_SetCompare4:
5736                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5738  06c6 9e            	ld	a,xh
5739  06c7 c7526b        	ld	21099,a
5740                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
5742  06ca 9f            	ld	a,xl
5743  06cb c7526c        	ld	21100,a
5744                     ; 1879 }
5747  06ce 87            	retf
5782                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5782                     ; 1893 {
5783                     	switch	.text
5784  06cf               f_TIM1_SetIC1Prescaler:
5786  06cf 88            	push	a
5787       00000000      OFST:	set	0
5790                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5792                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5792                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
5794  06d0 c65258        	ld	a,21080
5795  06d3 a4f3          	and	a,#243
5796  06d5 1a01          	or	a,(OFST+1,sp)
5797  06d7 c75258        	ld	21080,a
5798                     ; 1901 }
5801  06da 84            	pop	a
5802  06db 87            	retf
5837                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5837                     ; 1914 {
5838                     	switch	.text
5839  06dc               f_TIM1_SetIC2Prescaler:
5841  06dc 88            	push	a
5842       00000000      OFST:	set	0
5845                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5847                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5847                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
5849  06dd c65259        	ld	a,21081
5850  06e0 a4f3          	and	a,#243
5851  06e2 1a01          	or	a,(OFST+1,sp)
5852  06e4 c75259        	ld	21081,a
5853                     ; 1922 }
5856  06e7 84            	pop	a
5857  06e8 87            	retf
5892                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
5892                     ; 1936 {
5893                     	switch	.text
5894  06e9               f_TIM1_SetIC3Prescaler:
5896  06e9 88            	push	a
5897       00000000      OFST:	set	0
5900                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
5902                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
5902                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
5904  06ea c6525a        	ld	a,21082
5905  06ed a4f3          	and	a,#243
5906  06ef 1a01          	or	a,(OFST+1,sp)
5907  06f1 c7525a        	ld	21082,a
5908                     ; 1944 }
5911  06f4 84            	pop	a
5912  06f5 87            	retf
5947                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
5947                     ; 1957 {
5948                     	switch	.text
5949  06f6               f_TIM1_SetIC4Prescaler:
5951  06f6 88            	push	a
5952       00000000      OFST:	set	0
5955                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
5957                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
5957                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
5959  06f7 c6525b        	ld	a,21083
5960  06fa a4f3          	and	a,#243
5961  06fc 1a01          	or	a,(OFST+1,sp)
5962  06fe c7525b        	ld	21083,a
5963                     ; 1965 }
5966  0701 84            	pop	a
5967  0702 87            	retf
6012                     ; 1972 uint16_t TIM1_GetCapture1(void)
6012                     ; 1973 {
6013                     	switch	.text
6014  0703               f_TIM1_GetCapture1:
6016  0703 5204          	subw	sp,#4
6017       00000004      OFST:	set	4
6020                     ; 1976     uint16_t tmpccr1 = 0;
6022                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
6026                     ; 1979     tmpccr1h = TIM1->CCR1H;
6028  0705 c65265        	ld	a,21093
6029  0708 6b02          	ld	(OFST-2,sp),a
6030                     ; 1980     tmpccr1l = TIM1->CCR1L;
6032  070a c65266        	ld	a,21094
6033  070d 6b01          	ld	(OFST-3,sp),a
6034                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
6036  070f 7b01          	ld	a,(OFST-3,sp)
6037  0711 5f            	clrw	x
6038  0712 97            	ld	xl,a
6039  0713 1f03          	ldw	(OFST-1,sp),x
6040                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6042  0715 7b02          	ld	a,(OFST-2,sp)
6043  0717 5f            	clrw	x
6044  0718 97            	ld	xl,a
6045  0719 4f            	clr	a
6046  071a 02            	rlwa	x,a
6047  071b 01            	rrwa	x,a
6048  071c 1a04          	or	a,(OFST+0,sp)
6049  071e 01            	rrwa	x,a
6050  071f 1a03          	or	a,(OFST-1,sp)
6051  0721 01            	rrwa	x,a
6052  0722 1f03          	ldw	(OFST-1,sp),x
6053                     ; 1985     return (uint16_t)tmpccr1;
6055  0724 1e03          	ldw	x,(OFST-1,sp)
6058  0726 5b04          	addw	sp,#4
6059  0728 87            	retf
6104                     ; 1993 uint16_t TIM1_GetCapture2(void)
6104                     ; 1994 {
6105                     	switch	.text
6106  0729               f_TIM1_GetCapture2:
6108  0729 5204          	subw	sp,#4
6109       00000004      OFST:	set	4
6112                     ; 1997     uint16_t tmpccr2 = 0;
6114                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
6118                     ; 2000     tmpccr2h = TIM1->CCR2H;
6120  072b c65267        	ld	a,21095
6121  072e 6b02          	ld	(OFST-2,sp),a
6122                     ; 2001     tmpccr2l = TIM1->CCR2L;
6124  0730 c65268        	ld	a,21096
6125  0733 6b01          	ld	(OFST-3,sp),a
6126                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
6128  0735 7b01          	ld	a,(OFST-3,sp)
6129  0737 5f            	clrw	x
6130  0738 97            	ld	xl,a
6131  0739 1f03          	ldw	(OFST-1,sp),x
6132                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6134  073b 7b02          	ld	a,(OFST-2,sp)
6135  073d 5f            	clrw	x
6136  073e 97            	ld	xl,a
6137  073f 4f            	clr	a
6138  0740 02            	rlwa	x,a
6139  0741 01            	rrwa	x,a
6140  0742 1a04          	or	a,(OFST+0,sp)
6141  0744 01            	rrwa	x,a
6142  0745 1a03          	or	a,(OFST-1,sp)
6143  0747 01            	rrwa	x,a
6144  0748 1f03          	ldw	(OFST-1,sp),x
6145                     ; 2006     return (uint16_t)tmpccr2;
6147  074a 1e03          	ldw	x,(OFST-1,sp)
6150  074c 5b04          	addw	sp,#4
6151  074e 87            	retf
6196                     ; 2014 uint16_t TIM1_GetCapture3(void)
6196                     ; 2015 {
6197                     	switch	.text
6198  074f               f_TIM1_GetCapture3:
6200  074f 5204          	subw	sp,#4
6201       00000004      OFST:	set	4
6204                     ; 2017     uint16_t tmpccr3 = 0;
6206                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
6210                     ; 2020     tmpccr3h = TIM1->CCR3H;
6212  0751 c65269        	ld	a,21097
6213  0754 6b02          	ld	(OFST-2,sp),a
6214                     ; 2021     tmpccr3l = TIM1->CCR3L;
6216  0756 c6526a        	ld	a,21098
6217  0759 6b01          	ld	(OFST-3,sp),a
6218                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
6220  075b 7b01          	ld	a,(OFST-3,sp)
6221  075d 5f            	clrw	x
6222  075e 97            	ld	xl,a
6223  075f 1f03          	ldw	(OFST-1,sp),x
6224                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6226  0761 7b02          	ld	a,(OFST-2,sp)
6227  0763 5f            	clrw	x
6228  0764 97            	ld	xl,a
6229  0765 4f            	clr	a
6230  0766 02            	rlwa	x,a
6231  0767 01            	rrwa	x,a
6232  0768 1a04          	or	a,(OFST+0,sp)
6233  076a 01            	rrwa	x,a
6234  076b 1a03          	or	a,(OFST-1,sp)
6235  076d 01            	rrwa	x,a
6236  076e 1f03          	ldw	(OFST-1,sp),x
6237                     ; 2026     return (uint16_t)tmpccr3;
6239  0770 1e03          	ldw	x,(OFST-1,sp)
6242  0772 5b04          	addw	sp,#4
6243  0774 87            	retf
6288                     ; 2034 uint16_t TIM1_GetCapture4(void)
6288                     ; 2035 {
6289                     	switch	.text
6290  0775               f_TIM1_GetCapture4:
6292  0775 5204          	subw	sp,#4
6293       00000004      OFST:	set	4
6296                     ; 2037     uint16_t tmpccr4 = 0;
6298                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
6302                     ; 2040     tmpccr4h = TIM1->CCR4H;
6304  0777 c6526b        	ld	a,21099
6305  077a 6b02          	ld	(OFST-2,sp),a
6306                     ; 2041     tmpccr4l = TIM1->CCR4L;
6308  077c c6526c        	ld	a,21100
6309  077f 6b01          	ld	(OFST-3,sp),a
6310                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
6312  0781 7b01          	ld	a,(OFST-3,sp)
6313  0783 5f            	clrw	x
6314  0784 97            	ld	xl,a
6315  0785 1f03          	ldw	(OFST-1,sp),x
6316                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6318  0787 7b02          	ld	a,(OFST-2,sp)
6319  0789 5f            	clrw	x
6320  078a 97            	ld	xl,a
6321  078b 4f            	clr	a
6322  078c 02            	rlwa	x,a
6323  078d 01            	rrwa	x,a
6324  078e 1a04          	or	a,(OFST+0,sp)
6325  0790 01            	rrwa	x,a
6326  0791 1a03          	or	a,(OFST-1,sp)
6327  0793 01            	rrwa	x,a
6328  0794 1f03          	ldw	(OFST-1,sp),x
6329                     ; 2046     return (uint16_t)tmpccr4;
6331  0796 1e03          	ldw	x,(OFST-1,sp)
6334  0798 5b04          	addw	sp,#4
6335  079a 87            	retf
6366                     ; 2054 uint16_t TIM1_GetCounter(void)
6366                     ; 2055 {
6367                     	switch	.text
6368  079b               f_TIM1_GetCounter:
6370  079b 89            	pushw	x
6371       00000002      OFST:	set	2
6374                     ; 2056   uint16_t tmpcntr = 0;
6376                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6378  079c c6525e        	ld	a,21086
6379  079f 5f            	clrw	x
6380  07a0 97            	ld	xl,a
6381  07a1 4f            	clr	a
6382  07a2 02            	rlwa	x,a
6383  07a3 1f01          	ldw	(OFST-1,sp),x
6384                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6386  07a5 c6525f        	ld	a,21087
6387  07a8 5f            	clrw	x
6388  07a9 97            	ld	xl,a
6389  07aa 01            	rrwa	x,a
6390  07ab 1a02          	or	a,(OFST+0,sp)
6391  07ad 01            	rrwa	x,a
6392  07ae 1a01          	or	a,(OFST-1,sp)
6393  07b0 01            	rrwa	x,a
6396  07b1 5b02          	addw	sp,#2
6397  07b3 87            	retf
6428                     ; 2069 uint16_t TIM1_GetPrescaler(void)
6428                     ; 2070 {
6429                     	switch	.text
6430  07b4               f_TIM1_GetPrescaler:
6432  07b4 89            	pushw	x
6433       00000002      OFST:	set	2
6436                     ; 2071    uint16_t temp = 0;
6438                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
6440  07b5 c65260        	ld	a,21088
6441  07b8 5f            	clrw	x
6442  07b9 97            	ld	xl,a
6443  07ba 4f            	clr	a
6444  07bb 02            	rlwa	x,a
6445  07bc 1f01          	ldw	(OFST-1,sp),x
6446                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6448  07be c65261        	ld	a,21089
6449  07c1 5f            	clrw	x
6450  07c2 97            	ld	xl,a
6451  07c3 01            	rrwa	x,a
6452  07c4 1a02          	or	a,(OFST+0,sp)
6453  07c6 01            	rrwa	x,a
6454  07c7 1a01          	or	a,(OFST-1,sp)
6455  07c9 01            	rrwa	x,a
6458  07ca 5b02          	addw	sp,#2
6459  07cc 87            	retf
6628                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6628                     ; 2098 {
6629                     	switch	.text
6630  07cd               f_TIM1_GetFlagStatus:
6632  07cd 89            	pushw	x
6633  07ce 89            	pushw	x
6634       00000002      OFST:	set	2
6637                     ; 2099     FlagStatus bitstatus = RESET;
6639                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6643                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6645                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6647  07cf 9f            	ld	a,xl
6648  07d0 c45255        	and	a,21077
6649  07d3 6b01          	ld	(OFST-1,sp),a
6650                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6652  07d5 7b03          	ld	a,(OFST+1,sp)
6653  07d7 6b02          	ld	(OFST+0,sp),a
6654                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6656  07d9 c65256        	ld	a,21078
6657  07dc 1402          	and	a,(OFST+0,sp)
6658  07de 1a01          	or	a,(OFST-1,sp)
6659  07e0 2706          	jreq	L7433
6660                     ; 2110         bitstatus = SET;
6662  07e2 a601          	ld	a,#1
6663  07e4 6b02          	ld	(OFST+0,sp),a
6665  07e6 2002          	jra	L1533
6666  07e8               L7433:
6667                     ; 2114         bitstatus = RESET;
6669  07e8 0f02          	clr	(OFST+0,sp)
6670  07ea               L1533:
6671                     ; 2116     return (FlagStatus)(bitstatus);
6673  07ea 7b02          	ld	a,(OFST+0,sp)
6676  07ec 5b04          	addw	sp,#4
6677  07ee 87            	retf
6711                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6711                     ; 2138 {
6712                     	switch	.text
6713  07ef               f_TIM1_ClearFlag:
6715  07ef 89            	pushw	x
6716       00000000      OFST:	set	0
6719                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6721                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6723  07f0 9f            	ld	a,xl
6724  07f1 43            	cpl	a
6725  07f2 c75255        	ld	21077,a
6726                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6726                     ; 2145                           (uint8_t)0x1E);
6728  07f5 7b01          	ld	a,(OFST+1,sp)
6729  07f7 43            	cpl	a
6730  07f8 a41e          	and	a,#30
6731  07fa c75256        	ld	21078,a
6732                     ; 2146 }
6735  07fd 85            	popw	x
6736  07fe 87            	retf
6795                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6795                     ; 2163 {
6796                     	switch	.text
6797  07ff               f_TIM1_GetITStatus:
6799  07ff 88            	push	a
6800  0800 89            	pushw	x
6801       00000002      OFST:	set	2
6804                     ; 2164     ITStatus bitstatus = RESET;
6806                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
6810                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6812                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
6814  0801 c45255        	and	a,21077
6815  0804 6b01          	ld	(OFST-1,sp),a
6816                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
6818  0806 c65254        	ld	a,21076
6819  0809 1403          	and	a,(OFST+1,sp)
6820  080b 6b02          	ld	(OFST+0,sp),a
6821                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
6823  080d 0d01          	tnz	(OFST-1,sp)
6824  080f 270a          	jreq	L7143
6826  0811 0d02          	tnz	(OFST+0,sp)
6827  0813 2706          	jreq	L7143
6828                     ; 2176         bitstatus = SET;
6830  0815 a601          	ld	a,#1
6831  0817 6b02          	ld	(OFST+0,sp),a
6833  0819 2002          	jra	L1243
6834  081b               L7143:
6835                     ; 2180         bitstatus = RESET;
6837  081b 0f02          	clr	(OFST+0,sp)
6838  081d               L1243:
6839                     ; 2182     return (ITStatus)(bitstatus);
6841  081d 7b02          	ld	a,(OFST+0,sp)
6844  081f 5b03          	addw	sp,#3
6845  0821 87            	retf
6880                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
6880                     ; 2200 {
6881                     	switch	.text
6882  0822               f_TIM1_ClearITPendingBit:
6886                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
6888                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
6890  0822 43            	cpl	a
6891  0823 c75255        	ld	21077,a
6892                     ; 2206 }
6895  0826 87            	retf
6940                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
6940                     ; 2225                        uint8_t TIM1_ICSelection,
6940                     ; 2226                        uint8_t TIM1_ICFilter)
6940                     ; 2227 {
6941                     	switch	.text
6942  0827               L3f_TI1_Config:
6944  0827 89            	pushw	x
6945  0828 88            	push	a
6946       00000001      OFST:	set	1
6949                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6951  0829 7211525c      	bres	21084,#0
6952                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
6952                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
6954  082d 7b07          	ld	a,(OFST+6,sp)
6955  082f 97            	ld	xl,a
6956  0830 a610          	ld	a,#16
6957  0832 42            	mul	x,a
6958  0833 9f            	ld	a,xl
6959  0834 1a03          	or	a,(OFST+2,sp)
6960  0836 6b01          	ld	(OFST+0,sp),a
6961  0838 c65258        	ld	a,21080
6962  083b a40c          	and	a,#12
6963  083d 1a01          	or	a,(OFST+0,sp)
6964  083f c75258        	ld	21080,a
6965                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
6967  0842 0d02          	tnz	(OFST+1,sp)
6968  0844 2706          	jreq	L1643
6969                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
6971  0846 7212525c      	bset	21084,#1
6973  084a 2004          	jra	L3643
6974  084c               L1643:
6975                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6977  084c 7213525c      	bres	21084,#1
6978  0850               L3643:
6979                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
6981  0850 7210525c      	bset	21084,#0
6982                     ; 2248 }
6985  0854 5b03          	addw	sp,#3
6986  0856 87            	retf
7031                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
7031                     ; 2267                        uint8_t TIM1_ICSelection,
7031                     ; 2268                        uint8_t TIM1_ICFilter)
7031                     ; 2269 {
7032                     	switch	.text
7033  0857               L5f_TI2_Config:
7035  0857 89            	pushw	x
7036  0858 88            	push	a
7037       00000001      OFST:	set	1
7040                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7042  0859 7219525c      	bres	21084,#4
7043                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7043                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7045  085d 7b07          	ld	a,(OFST+6,sp)
7046  085f 97            	ld	xl,a
7047  0860 a610          	ld	a,#16
7048  0862 42            	mul	x,a
7049  0863 9f            	ld	a,xl
7050  0864 1a03          	or	a,(OFST+2,sp)
7051  0866 6b01          	ld	(OFST+0,sp),a
7052  0868 c65259        	ld	a,21081
7053  086b a40c          	and	a,#12
7054  086d 1a01          	or	a,(OFST+0,sp)
7055  086f c75259        	ld	21081,a
7056                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7058  0872 0d02          	tnz	(OFST+1,sp)
7059  0874 2706          	jreq	L5053
7060                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7062  0876 721a525c      	bset	21084,#5
7064  087a 2004          	jra	L7053
7065  087c               L5053:
7066                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7068  087c 721b525c      	bres	21084,#5
7069  0880               L7053:
7070                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7072  0880 7218525c      	bset	21084,#4
7073                     ; 2287 }
7076  0884 5b03          	addw	sp,#3
7077  0886 87            	retf
7122                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
7122                     ; 2306                        uint8_t TIM1_ICSelection,
7122                     ; 2307                        uint8_t TIM1_ICFilter)
7122                     ; 2308 {
7123                     	switch	.text
7124  0887               L7f_TI3_Config:
7126  0887 89            	pushw	x
7127  0888 88            	push	a
7128       00000001      OFST:	set	1
7131                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7133  0889 7211525d      	bres	21085,#0
7134                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7134                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7136  088d 7b07          	ld	a,(OFST+6,sp)
7137  088f 97            	ld	xl,a
7138  0890 a610          	ld	a,#16
7139  0892 42            	mul	x,a
7140  0893 9f            	ld	a,xl
7141  0894 1a03          	or	a,(OFST+2,sp)
7142  0896 6b01          	ld	(OFST+0,sp),a
7143  0898 c6525a        	ld	a,21082
7144  089b a40c          	and	a,#12
7145  089d 1a01          	or	a,(OFST+0,sp)
7146  089f c7525a        	ld	21082,a
7147                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7149  08a2 0d02          	tnz	(OFST+1,sp)
7150  08a4 2706          	jreq	L1353
7151                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7153  08a6 7212525d      	bset	21085,#1
7155  08aa 2004          	jra	L3353
7156  08ac               L1353:
7157                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7159  08ac 7213525d      	bres	21085,#1
7160  08b0               L3353:
7161                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7163  08b0 7210525d      	bset	21085,#0
7164                     ; 2327 }
7167  08b4 5b03          	addw	sp,#3
7168  08b6 87            	retf
7213                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
7213                     ; 2347                        uint8_t TIM1_ICSelection,
7213                     ; 2348                        uint8_t TIM1_ICFilter)
7213                     ; 2349 {
7214                     	switch	.text
7215  08b7               L11f_TI4_Config:
7217  08b7 89            	pushw	x
7218  08b8 88            	push	a
7219       00000001      OFST:	set	1
7222                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7224  08b9 7219525d      	bres	21085,#4
7225                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7225                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7227  08bd 7b07          	ld	a,(OFST+6,sp)
7228  08bf 97            	ld	xl,a
7229  08c0 a610          	ld	a,#16
7230  08c2 42            	mul	x,a
7231  08c3 9f            	ld	a,xl
7232  08c4 1a03          	or	a,(OFST+2,sp)
7233  08c6 6b01          	ld	(OFST+0,sp),a
7234  08c8 c6525b        	ld	a,21083
7235  08cb a40c          	and	a,#12
7236  08cd 1a01          	or	a,(OFST+0,sp)
7237  08cf c7525b        	ld	21083,a
7238                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7240  08d2 0d02          	tnz	(OFST+1,sp)
7241  08d4 2706          	jreq	L5553
7242                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7244  08d6 721a525d      	bset	21085,#5
7246  08da 2004          	jra	L7553
7247  08dc               L5553:
7248                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7250  08dc 721b525d      	bres	21085,#5
7251  08e0               L7553:
7252                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7254  08e0 7218525d      	bset	21085,#4
7255                     ; 2370 }
7258  08e4 5b03          	addw	sp,#3
7259  08e6 87            	retf
7271                     	xdef	f_TIM1_ClearITPendingBit
7272                     	xdef	f_TIM1_GetITStatus
7273                     	xdef	f_TIM1_ClearFlag
7274                     	xdef	f_TIM1_GetFlagStatus
7275                     	xdef	f_TIM1_GetPrescaler
7276                     	xdef	f_TIM1_GetCounter
7277                     	xdef	f_TIM1_GetCapture4
7278                     	xdef	f_TIM1_GetCapture3
7279                     	xdef	f_TIM1_GetCapture2
7280                     	xdef	f_TIM1_GetCapture1
7281                     	xdef	f_TIM1_SetIC4Prescaler
7282                     	xdef	f_TIM1_SetIC3Prescaler
7283                     	xdef	f_TIM1_SetIC2Prescaler
7284                     	xdef	f_TIM1_SetIC1Prescaler
7285                     	xdef	f_TIM1_SetCompare4
7286                     	xdef	f_TIM1_SetCompare3
7287                     	xdef	f_TIM1_SetCompare2
7288                     	xdef	f_TIM1_SetCompare1
7289                     	xdef	f_TIM1_SetAutoreload
7290                     	xdef	f_TIM1_SetCounter
7291                     	xdef	f_TIM1_SelectOCxM
7292                     	xdef	f_TIM1_CCxNCmd
7293                     	xdef	f_TIM1_CCxCmd
7294                     	xdef	f_TIM1_OC4PolarityConfig
7295                     	xdef	f_TIM1_OC3NPolarityConfig
7296                     	xdef	f_TIM1_OC3PolarityConfig
7297                     	xdef	f_TIM1_OC2NPolarityConfig
7298                     	xdef	f_TIM1_OC2PolarityConfig
7299                     	xdef	f_TIM1_OC1NPolarityConfig
7300                     	xdef	f_TIM1_OC1PolarityConfig
7301                     	xdef	f_TIM1_GenerateEvent
7302                     	xdef	f_TIM1_OC4FastConfig
7303                     	xdef	f_TIM1_OC3FastConfig
7304                     	xdef	f_TIM1_OC2FastConfig
7305                     	xdef	f_TIM1_OC1FastConfig
7306                     	xdef	f_TIM1_OC4PreloadConfig
7307                     	xdef	f_TIM1_OC3PreloadConfig
7308                     	xdef	f_TIM1_OC2PreloadConfig
7309                     	xdef	f_TIM1_OC1PreloadConfig
7310                     	xdef	f_TIM1_CCPreloadControl
7311                     	xdef	f_TIM1_SelectCOM
7312                     	xdef	f_TIM1_ARRPreloadConfig
7313                     	xdef	f_TIM1_ForcedOC4Config
7314                     	xdef	f_TIM1_ForcedOC3Config
7315                     	xdef	f_TIM1_ForcedOC2Config
7316                     	xdef	f_TIM1_ForcedOC1Config
7317                     	xdef	f_TIM1_CounterModeConfig
7318                     	xdef	f_TIM1_PrescalerConfig
7319                     	xdef	f_TIM1_EncoderInterfaceConfig
7320                     	xdef	f_TIM1_SelectMasterSlaveMode
7321                     	xdef	f_TIM1_SelectSlaveMode
7322                     	xdef	f_TIM1_SelectOutputTrigger
7323                     	xdef	f_TIM1_SelectOnePulseMode
7324                     	xdef	f_TIM1_SelectHallSensor
7325                     	xdef	f_TIM1_UpdateRequestConfig
7326                     	xdef	f_TIM1_UpdateDisableConfig
7327                     	xdef	f_TIM1_SelectInputTrigger
7328                     	xdef	f_TIM1_TIxExternalClockConfig
7329                     	xdef	f_TIM1_ETRConfig
7330                     	xdef	f_TIM1_ETRClockMode2Config
7331                     	xdef	f_TIM1_ETRClockMode1Config
7332                     	xdef	f_TIM1_InternalClockConfig
7333                     	xdef	f_TIM1_ITConfig
7334                     	xdef	f_TIM1_CtrlPWMOutputs
7335                     	xdef	f_TIM1_Cmd
7336                     	xdef	f_TIM1_PWMIConfig
7337                     	xdef	f_TIM1_ICInit
7338                     	xdef	f_TIM1_BDTRConfig
7339                     	xdef	f_TIM1_OC4Init
7340                     	xdef	f_TIM1_OC3Init
7341                     	xdef	f_TIM1_OC2Init
7342                     	xdef	f_TIM1_OC1Init
7343                     	xdef	f_TIM1_TimeBaseInit
7344                     	xdef	f_TIM1_DeInit
7363                     	end
