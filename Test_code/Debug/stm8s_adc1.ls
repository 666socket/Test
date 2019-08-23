   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 48 void ADC1_DeInit(void)
  43                     ; 49 {
  44                     	switch	.text
  45  0000               f_ADC1_DeInit:
  49                     ; 50     ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  51  0000 725f5400      	clr	21504
  52                     ; 51     ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  54  0004 725f5401      	clr	21505
  55                     ; 52     ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  57  0008 725f5402      	clr	21506
  58                     ; 53     ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  60  000c 725f5403      	clr	21507
  61                     ; 54     ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  63  0010 725f5406      	clr	21510
  64                     ; 55     ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  66  0014 725f5407      	clr	21511
  67                     ; 56     ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  69  0018 35ff5408      	mov	21512,#255
  70                     ; 57     ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  72  001c 35035409      	mov	21513,#3
  73                     ; 58     ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  75  0020 725f540a      	clr	21514
  76                     ; 59     ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  78  0024 725f540b      	clr	21515
  79                     ; 60     ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  81  0028 725f540e      	clr	21518
  82                     ; 61     ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  84  002c 725f540f      	clr	21519
  85                     ; 62 }
  88  0030 87            	retf
 539                     ; 85 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 539                     ; 86 {
 540                     	switch	.text
 541  0031               f_ADC1_Init:
 543  0031 89            	pushw	x
 544       00000000      OFST:	set	0
 547                     ; 89     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 549  0032 9e            	ld	a,xh
 550  0033 4d            	tnz	a
 551  0034 2705          	jreq	L21
 552  0036 9e            	ld	a,xh
 553  0037 a101          	cp	a,#1
 554  0039 2603          	jrne	L01
 555  003b               L21:
 556  003b 4f            	clr	a
 557  003c 2011          	jra	L41
 558  003e               L01:
 559  003e ae0059        	ldw	x,#89
 560  0041 89            	pushw	x
 561  0042 ae0000        	ldw	x,#0
 562  0045 89            	pushw	x
 563  0046 ae0000        	ldw	x,#L542
 564  0049 8d000000      	callf	f_assert_failed
 566  004d 5b04          	addw	sp,#4
 567  004f               L41:
 568                     ; 90     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 570  004f 0d02          	tnz	(OFST+2,sp)
 571  0051 273c          	jreq	L02
 572  0053 7b02          	ld	a,(OFST+2,sp)
 573  0055 a101          	cp	a,#1
 574  0057 2736          	jreq	L02
 575  0059 7b02          	ld	a,(OFST+2,sp)
 576  005b a102          	cp	a,#2
 577  005d 2730          	jreq	L02
 578  005f 7b02          	ld	a,(OFST+2,sp)
 579  0061 a103          	cp	a,#3
 580  0063 272a          	jreq	L02
 581  0065 7b02          	ld	a,(OFST+2,sp)
 582  0067 a104          	cp	a,#4
 583  0069 2724          	jreq	L02
 584  006b 7b02          	ld	a,(OFST+2,sp)
 585  006d a105          	cp	a,#5
 586  006f 271e          	jreq	L02
 587  0071 7b02          	ld	a,(OFST+2,sp)
 588  0073 a106          	cp	a,#6
 589  0075 2718          	jreq	L02
 590  0077 7b02          	ld	a,(OFST+2,sp)
 591  0079 a107          	cp	a,#7
 592  007b 2712          	jreq	L02
 593  007d 7b02          	ld	a,(OFST+2,sp)
 594  007f a108          	cp	a,#8
 595  0081 270c          	jreq	L02
 596  0083 7b02          	ld	a,(OFST+2,sp)
 597  0085 a10c          	cp	a,#12
 598  0087 2706          	jreq	L02
 599  0089 7b02          	ld	a,(OFST+2,sp)
 600  008b a109          	cp	a,#9
 601  008d 2603          	jrne	L61
 602  008f               L02:
 603  008f 4f            	clr	a
 604  0090 2011          	jra	L22
 605  0092               L61:
 606  0092 ae005a        	ldw	x,#90
 607  0095 89            	pushw	x
 608  0096 ae0000        	ldw	x,#0
 609  0099 89            	pushw	x
 610  009a ae0000        	ldw	x,#L542
 611  009d 8d000000      	callf	f_assert_failed
 613  00a1 5b04          	addw	sp,#4
 614  00a3               L22:
 615                     ; 91     assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 617  00a3 0d06          	tnz	(OFST+6,sp)
 618  00a5 272a          	jreq	L62
 619  00a7 7b06          	ld	a,(OFST+6,sp)
 620  00a9 a110          	cp	a,#16
 621  00ab 2724          	jreq	L62
 622  00ad 7b06          	ld	a,(OFST+6,sp)
 623  00af a120          	cp	a,#32
 624  00b1 271e          	jreq	L62
 625  00b3 7b06          	ld	a,(OFST+6,sp)
 626  00b5 a130          	cp	a,#48
 627  00b7 2718          	jreq	L62
 628  00b9 7b06          	ld	a,(OFST+6,sp)
 629  00bb a140          	cp	a,#64
 630  00bd 2712          	jreq	L62
 631  00bf 7b06          	ld	a,(OFST+6,sp)
 632  00c1 a150          	cp	a,#80
 633  00c3 270c          	jreq	L62
 634  00c5 7b06          	ld	a,(OFST+6,sp)
 635  00c7 a160          	cp	a,#96
 636  00c9 2706          	jreq	L62
 637  00cb 7b06          	ld	a,(OFST+6,sp)
 638  00cd a170          	cp	a,#112
 639  00cf 2603          	jrne	L42
 640  00d1               L62:
 641  00d1 4f            	clr	a
 642  00d2 2011          	jra	L03
 643  00d4               L42:
 644  00d4 ae005b        	ldw	x,#91
 645  00d7 89            	pushw	x
 646  00d8 ae0000        	ldw	x,#0
 647  00db 89            	pushw	x
 648  00dc ae0000        	ldw	x,#L542
 649  00df 8d000000      	callf	f_assert_failed
 651  00e3 5b04          	addw	sp,#4
 652  00e5               L03:
 653                     ; 92     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 655  00e5 0d07          	tnz	(OFST+7,sp)
 656  00e7 2706          	jreq	L43
 657  00e9 7b07          	ld	a,(OFST+7,sp)
 658  00eb a110          	cp	a,#16
 659  00ed 2603          	jrne	L23
 660  00ef               L43:
 661  00ef 4f            	clr	a
 662  00f0 2011          	jra	L63
 663  00f2               L23:
 664  00f2 ae005c        	ldw	x,#92
 665  00f5 89            	pushw	x
 666  00f6 ae0000        	ldw	x,#0
 667  00f9 89            	pushw	x
 668  00fa ae0000        	ldw	x,#L542
 669  00fd 8d000000      	callf	f_assert_failed
 671  0101 5b04          	addw	sp,#4
 672  0103               L63:
 673                     ; 93     assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 675  0103 0d08          	tnz	(OFST+8,sp)
 676  0105 2706          	jreq	L24
 677  0107 7b08          	ld	a,(OFST+8,sp)
 678  0109 a101          	cp	a,#1
 679  010b 2603          	jrne	L04
 680  010d               L24:
 681  010d 4f            	clr	a
 682  010e 2011          	jra	L44
 683  0110               L04:
 684  0110 ae005d        	ldw	x,#93
 685  0113 89            	pushw	x
 686  0114 ae0000        	ldw	x,#0
 687  0117 89            	pushw	x
 688  0118 ae0000        	ldw	x,#L542
 689  011b 8d000000      	callf	f_assert_failed
 691  011f 5b04          	addw	sp,#4
 692  0121               L44:
 693                     ; 94     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 695  0121 0d09          	tnz	(OFST+9,sp)
 696  0123 2706          	jreq	L05
 697  0125 7b09          	ld	a,(OFST+9,sp)
 698  0127 a108          	cp	a,#8
 699  0129 2603          	jrne	L64
 700  012b               L05:
 701  012b 4f            	clr	a
 702  012c 2011          	jra	L25
 703  012e               L64:
 704  012e ae005e        	ldw	x,#94
 705  0131 89            	pushw	x
 706  0132 ae0000        	ldw	x,#0
 707  0135 89            	pushw	x
 708  0136 ae0000        	ldw	x,#L542
 709  0139 8d000000      	callf	f_assert_failed
 711  013d 5b04          	addw	sp,#4
 712  013f               L25:
 713                     ; 95     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 715  013f 0d0a          	tnz	(OFST+10,sp)
 716  0141 2742          	jreq	L65
 717  0143 7b0a          	ld	a,(OFST+10,sp)
 718  0145 a101          	cp	a,#1
 719  0147 273c          	jreq	L65
 720  0149 7b0a          	ld	a,(OFST+10,sp)
 721  014b a102          	cp	a,#2
 722  014d 2736          	jreq	L65
 723  014f 7b0a          	ld	a,(OFST+10,sp)
 724  0151 a103          	cp	a,#3
 725  0153 2730          	jreq	L65
 726  0155 7b0a          	ld	a,(OFST+10,sp)
 727  0157 a104          	cp	a,#4
 728  0159 272a          	jreq	L65
 729  015b 7b0a          	ld	a,(OFST+10,sp)
 730  015d a105          	cp	a,#5
 731  015f 2724          	jreq	L65
 732  0161 7b0a          	ld	a,(OFST+10,sp)
 733  0163 a106          	cp	a,#6
 734  0165 271e          	jreq	L65
 735  0167 7b0a          	ld	a,(OFST+10,sp)
 736  0169 a107          	cp	a,#7
 737  016b 2718          	jreq	L65
 738  016d 7b0a          	ld	a,(OFST+10,sp)
 739  016f a108          	cp	a,#8
 740  0171 2712          	jreq	L65
 741  0173 7b0a          	ld	a,(OFST+10,sp)
 742  0175 a10c          	cp	a,#12
 743  0177 270c          	jreq	L65
 744  0179 7b0a          	ld	a,(OFST+10,sp)
 745  017b a1ff          	cp	a,#255
 746  017d 2706          	jreq	L65
 747  017f 7b0a          	ld	a,(OFST+10,sp)
 748  0181 a109          	cp	a,#9
 749  0183 2603          	jrne	L45
 750  0185               L65:
 751  0185 4f            	clr	a
 752  0186 2011          	jra	L06
 753  0188               L45:
 754  0188 ae005f        	ldw	x,#95
 755  018b 89            	pushw	x
 756  018c ae0000        	ldw	x,#0
 757  018f 89            	pushw	x
 758  0190 ae0000        	ldw	x,#L542
 759  0193 8d000000      	callf	f_assert_failed
 761  0197 5b04          	addw	sp,#4
 762  0199               L06:
 763                     ; 96     assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 765  0199 0d0b          	tnz	(OFST+11,sp)
 766  019b 2706          	jreq	L46
 767  019d 7b0b          	ld	a,(OFST+11,sp)
 768  019f a101          	cp	a,#1
 769  01a1 2603          	jrne	L26
 770  01a3               L46:
 771  01a3 4f            	clr	a
 772  01a4 2011          	jra	L66
 773  01a6               L26:
 774  01a6 ae0060        	ldw	x,#96
 775  01a9 89            	pushw	x
 776  01aa ae0000        	ldw	x,#0
 777  01ad 89            	pushw	x
 778  01ae ae0000        	ldw	x,#L542
 779  01b1 8d000000      	callf	f_assert_failed
 781  01b5 5b04          	addw	sp,#4
 782  01b7               L66:
 783                     ; 101     ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 785  01b7 7b09          	ld	a,(OFST+9,sp)
 786  01b9 88            	push	a
 787  01ba 7b03          	ld	a,(OFST+3,sp)
 788  01bc 97            	ld	xl,a
 789  01bd 7b02          	ld	a,(OFST+2,sp)
 790  01bf 95            	ld	xh,a
 791  01c0 8d010401      	callf	f_ADC1_ConversionConfig
 793  01c4 84            	pop	a
 794                     ; 103     ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 796  01c5 7b06          	ld	a,(OFST+6,sp)
 797  01c7 8dbf02bf      	callf	f_ADC1_PrescalerConfig
 799                     ; 108     ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 801  01cb 7b08          	ld	a,(OFST+8,sp)
 802  01cd 97            	ld	xl,a
 803  01ce 7b07          	ld	a,(OFST+7,sp)
 804  01d0 95            	ld	xh,a
 805  01d1 8dbf04bf      	callf	f_ADC1_ExternalTriggerConfig
 807                     ; 113     ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 809  01d5 7b0b          	ld	a,(OFST+11,sp)
 810  01d7 97            	ld	xl,a
 811  01d8 7b0a          	ld	a,(OFST+10,sp)
 812  01da 95            	ld	xh,a
 813  01db 8d050305      	callf	f_ADC1_SchmittTriggerConfig
 815                     ; 116     ADC1->CR1 |= ADC1_CR1_ADON;
 817  01df 72105401      	bset	21505,#0
 818                     ; 118 }
 821  01e3 85            	popw	x
 822  01e4 87            	retf
 857                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 857                     ; 127 {
 858                     	switch	.text
 859  01e5               f_ADC1_Cmd:
 861  01e5 88            	push	a
 862       00000000      OFST:	set	0
 865                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 867  01e6 4d            	tnz	a
 868  01e7 2704          	jreq	L47
 869  01e9 a101          	cp	a,#1
 870  01eb 2603          	jrne	L27
 871  01ed               L47:
 872  01ed 4f            	clr	a
 873  01ee 2011          	jra	L67
 874  01f0               L27:
 875  01f0 ae0082        	ldw	x,#130
 876  01f3 89            	pushw	x
 877  01f4 ae0000        	ldw	x,#0
 878  01f7 89            	pushw	x
 879  01f8 ae0000        	ldw	x,#L542
 880  01fb 8d000000      	callf	f_assert_failed
 882  01ff 5b04          	addw	sp,#4
 883  0201               L67:
 884                     ; 132     if (NewState != DISABLE)
 886  0201 0d01          	tnz	(OFST+1,sp)
 887  0203 2706          	jreq	L562
 888                     ; 134         ADC1->CR1 |= ADC1_CR1_ADON;
 890  0205 72105401      	bset	21505,#0
 892  0209 2004          	jra	L762
 893  020b               L562:
 894                     ; 138         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 896  020b 72115401      	bres	21505,#0
 897  020f               L762:
 898                     ; 141 }
 901  020f 84            	pop	a
 902  0210 87            	retf
 937                     ; 148 void ADC1_ScanModeCmd(FunctionalState NewState)
 937                     ; 149 {
 938                     	switch	.text
 939  0211               f_ADC1_ScanModeCmd:
 941  0211 88            	push	a
 942       00000000      OFST:	set	0
 945                     ; 152     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 947  0212 4d            	tnz	a
 948  0213 2704          	jreq	L401
 949  0215 a101          	cp	a,#1
 950  0217 2603          	jrne	L201
 951  0219               L401:
 952  0219 4f            	clr	a
 953  021a 2011          	jra	L601
 954  021c               L201:
 955  021c ae0098        	ldw	x,#152
 956  021f 89            	pushw	x
 957  0220 ae0000        	ldw	x,#0
 958  0223 89            	pushw	x
 959  0224 ae0000        	ldw	x,#L542
 960  0227 8d000000      	callf	f_assert_failed
 962  022b 5b04          	addw	sp,#4
 963  022d               L601:
 964                     ; 154     if (NewState != DISABLE)
 966  022d 0d01          	tnz	(OFST+1,sp)
 967  022f 2706          	jreq	L703
 968                     ; 156         ADC1->CR2 |= ADC1_CR2_SCAN;
 970  0231 72125402      	bset	21506,#1
 972  0235 2004          	jra	L113
 973  0237               L703:
 974                     ; 160         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 976  0237 72135402      	bres	21506,#1
 977  023b               L113:
 978                     ; 163 }
 981  023b 84            	pop	a
 982  023c 87            	retf
1017                     ; 170 void ADC1_DataBufferCmd(FunctionalState NewState)
1017                     ; 171 {
1018                     	switch	.text
1019  023d               f_ADC1_DataBufferCmd:
1021  023d 88            	push	a
1022       00000000      OFST:	set	0
1025                     ; 174     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1027  023e 4d            	tnz	a
1028  023f 2704          	jreq	L411
1029  0241 a101          	cp	a,#1
1030  0243 2603          	jrne	L211
1031  0245               L411:
1032  0245 4f            	clr	a
1033  0246 2011          	jra	L611
1034  0248               L211:
1035  0248 ae00ae        	ldw	x,#174
1036  024b 89            	pushw	x
1037  024c ae0000        	ldw	x,#0
1038  024f 89            	pushw	x
1039  0250 ae0000        	ldw	x,#L542
1040  0253 8d000000      	callf	f_assert_failed
1042  0257 5b04          	addw	sp,#4
1043  0259               L611:
1044                     ; 176     if (NewState != DISABLE)
1046  0259 0d01          	tnz	(OFST+1,sp)
1047  025b 2706          	jreq	L133
1048                     ; 178         ADC1->CR3 |= ADC1_CR3_DBUF;
1050  025d 721e5403      	bset	21507,#7
1052  0261 2004          	jra	L333
1053  0263               L133:
1054                     ; 182         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1056  0263 721f5403      	bres	21507,#7
1057  0267               L333:
1058                     ; 185 }
1061  0267 84            	pop	a
1062  0268 87            	retf
1218                     ; 196 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1218                     ; 197 {
1219                     	switch	.text
1220  0269               f_ADC1_ITConfig:
1222  0269 89            	pushw	x
1223       00000000      OFST:	set	0
1226                     ; 200     assert_param(IS_ADC1_IT_OK(ADC1_IT));
1228  026a a30020        	cpw	x,#32
1229  026d 2705          	jreq	L421
1230  026f a30010        	cpw	x,#16
1231  0272 2603          	jrne	L221
1232  0274               L421:
1233  0274 4f            	clr	a
1234  0275 2011          	jra	L621
1235  0277               L221:
1236  0277 ae00c8        	ldw	x,#200
1237  027a 89            	pushw	x
1238  027b ae0000        	ldw	x,#0
1239  027e 89            	pushw	x
1240  027f ae0000        	ldw	x,#L542
1241  0282 8d000000      	callf	f_assert_failed
1243  0286 5b04          	addw	sp,#4
1244  0288               L621:
1245                     ; 201     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1247  0288 0d06          	tnz	(OFST+6,sp)
1248  028a 2706          	jreq	L231
1249  028c 7b06          	ld	a,(OFST+6,sp)
1250  028e a101          	cp	a,#1
1251  0290 2603          	jrne	L031
1252  0292               L231:
1253  0292 4f            	clr	a
1254  0293 2011          	jra	L431
1255  0295               L031:
1256  0295 ae00c9        	ldw	x,#201
1257  0298 89            	pushw	x
1258  0299 ae0000        	ldw	x,#0
1259  029c 89            	pushw	x
1260  029d ae0000        	ldw	x,#L542
1261  02a0 8d000000      	callf	f_assert_failed
1263  02a4 5b04          	addw	sp,#4
1264  02a6               L431:
1265                     ; 203     if (NewState != DISABLE)
1267  02a6 0d06          	tnz	(OFST+6,sp)
1268  02a8 270a          	jreq	L124
1269                     ; 206         ADC1->CSR |= (uint8_t)ADC1_IT;
1271  02aa c65400        	ld	a,21504
1272  02ad 1a02          	or	a,(OFST+2,sp)
1273  02af c75400        	ld	21504,a
1275  02b2 2009          	jra	L324
1276  02b4               L124:
1277                     ; 211         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1279  02b4 7b02          	ld	a,(OFST+2,sp)
1280  02b6 43            	cpl	a
1281  02b7 c45400        	and	a,21504
1282  02ba c75400        	ld	21504,a
1283  02bd               L324:
1284                     ; 214 }
1287  02bd 85            	popw	x
1288  02be 87            	retf
1324                     ; 222 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1324                     ; 223 {
1325                     	switch	.text
1326  02bf               f_ADC1_PrescalerConfig:
1328  02bf 88            	push	a
1329       00000000      OFST:	set	0
1332                     ; 226     assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1334  02c0 4d            	tnz	a
1335  02c1 271c          	jreq	L241
1336  02c3 a110          	cp	a,#16
1337  02c5 2718          	jreq	L241
1338  02c7 a120          	cp	a,#32
1339  02c9 2714          	jreq	L241
1340  02cb a130          	cp	a,#48
1341  02cd 2710          	jreq	L241
1342  02cf a140          	cp	a,#64
1343  02d1 270c          	jreq	L241
1344  02d3 a150          	cp	a,#80
1345  02d5 2708          	jreq	L241
1346  02d7 a160          	cp	a,#96
1347  02d9 2704          	jreq	L241
1348  02db a170          	cp	a,#112
1349  02dd 2603          	jrne	L041
1350  02df               L241:
1351  02df 4f            	clr	a
1352  02e0 2011          	jra	L441
1353  02e2               L041:
1354  02e2 ae00e2        	ldw	x,#226
1355  02e5 89            	pushw	x
1356  02e6 ae0000        	ldw	x,#0
1357  02e9 89            	pushw	x
1358  02ea ae0000        	ldw	x,#L542
1359  02ed 8d000000      	callf	f_assert_failed
1361  02f1 5b04          	addw	sp,#4
1362  02f3               L441:
1363                     ; 229     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1365  02f3 c65401        	ld	a,21505
1366  02f6 a48f          	and	a,#143
1367  02f8 c75401        	ld	21505,a
1368                     ; 231     ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1370  02fb c65401        	ld	a,21505
1371  02fe 1a01          	or	a,(OFST+1,sp)
1372  0300 c75401        	ld	21505,a
1373                     ; 233 }
1376  0303 84            	pop	a
1377  0304 87            	retf
1424                     ; 244 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1424                     ; 245 {
1425                     	switch	.text
1426  0305               f_ADC1_SchmittTriggerConfig:
1428  0305 89            	pushw	x
1429       00000000      OFST:	set	0
1432                     ; 248     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1434  0306 9e            	ld	a,xh
1435  0307 4d            	tnz	a
1436  0308 2737          	jreq	L251
1437  030a 9e            	ld	a,xh
1438  030b a101          	cp	a,#1
1439  030d 2732          	jreq	L251
1440  030f 9e            	ld	a,xh
1441  0310 a102          	cp	a,#2
1442  0312 272d          	jreq	L251
1443  0314 9e            	ld	a,xh
1444  0315 a103          	cp	a,#3
1445  0317 2728          	jreq	L251
1446  0319 9e            	ld	a,xh
1447  031a a104          	cp	a,#4
1448  031c 2723          	jreq	L251
1449  031e 9e            	ld	a,xh
1450  031f a105          	cp	a,#5
1451  0321 271e          	jreq	L251
1452  0323 9e            	ld	a,xh
1453  0324 a106          	cp	a,#6
1454  0326 2719          	jreq	L251
1455  0328 9e            	ld	a,xh
1456  0329 a107          	cp	a,#7
1457  032b 2714          	jreq	L251
1458  032d 9e            	ld	a,xh
1459  032e a108          	cp	a,#8
1460  0330 270f          	jreq	L251
1461  0332 9e            	ld	a,xh
1462  0333 a10c          	cp	a,#12
1463  0335 270a          	jreq	L251
1464  0337 9e            	ld	a,xh
1465  0338 a1ff          	cp	a,#255
1466  033a 2705          	jreq	L251
1467  033c 9e            	ld	a,xh
1468  033d a109          	cp	a,#9
1469  033f 2603          	jrne	L051
1470  0341               L251:
1471  0341 4f            	clr	a
1472  0342 2011          	jra	L451
1473  0344               L051:
1474  0344 ae00f8        	ldw	x,#248
1475  0347 89            	pushw	x
1476  0348 ae0000        	ldw	x,#0
1477  034b 89            	pushw	x
1478  034c ae0000        	ldw	x,#L542
1479  034f 8d000000      	callf	f_assert_failed
1481  0353 5b04          	addw	sp,#4
1482  0355               L451:
1483                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1485  0355 0d02          	tnz	(OFST+2,sp)
1486  0357 2706          	jreq	L061
1487  0359 7b02          	ld	a,(OFST+2,sp)
1488  035b a101          	cp	a,#1
1489  035d 2603          	jrne	L651
1490  035f               L061:
1491  035f 4f            	clr	a
1492  0360 2011          	jra	L261
1493  0362               L651:
1494  0362 ae00f9        	ldw	x,#249
1495  0365 89            	pushw	x
1496  0366 ae0000        	ldw	x,#0
1497  0369 89            	pushw	x
1498  036a ae0000        	ldw	x,#L542
1499  036d 8d000000      	callf	f_assert_failed
1501  0371 5b04          	addw	sp,#4
1502  0373               L261:
1503                     ; 251     if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1505  0373 7b01          	ld	a,(OFST+1,sp)
1506  0375 a1ff          	cp	a,#255
1507  0377 2620          	jrne	L564
1508                     ; 253         if (NewState != DISABLE)
1510  0379 0d02          	tnz	(OFST+2,sp)
1511  037b 270a          	jreq	L764
1512                     ; 255             ADC1->TDRL &= (uint8_t)0x0;
1514  037d 725f5407      	clr	21511
1515                     ; 256             ADC1->TDRH &= (uint8_t)0x0;
1517  0381 725f5406      	clr	21510
1519  0385 2078          	jra	L374
1520  0387               L764:
1521                     ; 260             ADC1->TDRL |= (uint8_t)0xFF;
1523  0387 c65407        	ld	a,21511
1524  038a aaff          	or	a,#255
1525  038c c75407        	ld	21511,a
1526                     ; 261             ADC1->TDRH |= (uint8_t)0xFF;
1528  038f c65406        	ld	a,21510
1529  0392 aaff          	or	a,#255
1530  0394 c75406        	ld	21510,a
1531  0397 2066          	jra	L374
1532  0399               L564:
1533                     ; 264     else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1535  0399 7b01          	ld	a,(OFST+1,sp)
1536  039b a108          	cp	a,#8
1537  039d 242f          	jruge	L574
1538                     ; 266         if (NewState != DISABLE)
1540  039f 0d02          	tnz	(OFST+2,sp)
1541  03a1 2716          	jreq	L774
1542                     ; 268             ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1544  03a3 7b01          	ld	a,(OFST+1,sp)
1545  03a5 5f            	clrw	x
1546  03a6 97            	ld	xl,a
1547  03a7 a601          	ld	a,#1
1548  03a9 5d            	tnzw	x
1549  03aa 2704          	jreq	L461
1550  03ac               L661:
1551  03ac 48            	sll	a
1552  03ad 5a            	decw	x
1553  03ae 26fc          	jrne	L661
1554  03b0               L461:
1555  03b0 43            	cpl	a
1556  03b1 c45407        	and	a,21511
1557  03b4 c75407        	ld	21511,a
1559  03b7 2046          	jra	L374
1560  03b9               L774:
1561                     ; 272             ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1563  03b9 7b01          	ld	a,(OFST+1,sp)
1564  03bb 5f            	clrw	x
1565  03bc 97            	ld	xl,a
1566  03bd a601          	ld	a,#1
1567  03bf 5d            	tnzw	x
1568  03c0 2704          	jreq	L071
1569  03c2               L271:
1570  03c2 48            	sll	a
1571  03c3 5a            	decw	x
1572  03c4 26fc          	jrne	L271
1573  03c6               L071:
1574  03c6 ca5407        	or	a,21511
1575  03c9 c75407        	ld	21511,a
1576  03cc 2031          	jra	L374
1577  03ce               L574:
1578                     ; 277         if (NewState != DISABLE)
1580  03ce 0d02          	tnz	(OFST+2,sp)
1581  03d0 2718          	jreq	L505
1582                     ; 279             ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1584  03d2 7b01          	ld	a,(OFST+1,sp)
1585  03d4 a008          	sub	a,#8
1586  03d6 5f            	clrw	x
1587  03d7 97            	ld	xl,a
1588  03d8 a601          	ld	a,#1
1589  03da 5d            	tnzw	x
1590  03db 2704          	jreq	L471
1591  03dd               L671:
1592  03dd 48            	sll	a
1593  03de 5a            	decw	x
1594  03df 26fc          	jrne	L671
1595  03e1               L471:
1596  03e1 43            	cpl	a
1597  03e2 c45406        	and	a,21510
1598  03e5 c75406        	ld	21510,a
1600  03e8 2015          	jra	L374
1601  03ea               L505:
1602                     ; 283             ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1604  03ea 7b01          	ld	a,(OFST+1,sp)
1605  03ec a008          	sub	a,#8
1606  03ee 5f            	clrw	x
1607  03ef 97            	ld	xl,a
1608  03f0 a601          	ld	a,#1
1609  03f2 5d            	tnzw	x
1610  03f3 2704          	jreq	L002
1611  03f5               L202:
1612  03f5 48            	sll	a
1613  03f6 5a            	decw	x
1614  03f7 26fc          	jrne	L202
1615  03f9               L002:
1616  03f9 ca5406        	or	a,21510
1617  03fc c75406        	ld	21510,a
1618  03ff               L374:
1619                     ; 287 }
1622  03ff 85            	popw	x
1623  0400 87            	retf
1680                     ; 300 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1680                     ; 301 {
1681                     	switch	.text
1682  0401               f_ADC1_ConversionConfig:
1684  0401 89            	pushw	x
1685       00000000      OFST:	set	0
1688                     ; 304     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1690  0402 9e            	ld	a,xh
1691  0403 4d            	tnz	a
1692  0404 2705          	jreq	L012
1693  0406 9e            	ld	a,xh
1694  0407 a101          	cp	a,#1
1695  0409 2603          	jrne	L602
1696  040b               L012:
1697  040b 4f            	clr	a
1698  040c 2011          	jra	L212
1699  040e               L602:
1700  040e ae0130        	ldw	x,#304
1701  0411 89            	pushw	x
1702  0412 ae0000        	ldw	x,#0
1703  0415 89            	pushw	x
1704  0416 ae0000        	ldw	x,#L542
1705  0419 8d000000      	callf	f_assert_failed
1707  041d 5b04          	addw	sp,#4
1708  041f               L212:
1709                     ; 305     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1711  041f 0d02          	tnz	(OFST+2,sp)
1712  0421 273c          	jreq	L612
1713  0423 7b02          	ld	a,(OFST+2,sp)
1714  0425 a101          	cp	a,#1
1715  0427 2736          	jreq	L612
1716  0429 7b02          	ld	a,(OFST+2,sp)
1717  042b a102          	cp	a,#2
1718  042d 2730          	jreq	L612
1719  042f 7b02          	ld	a,(OFST+2,sp)
1720  0431 a103          	cp	a,#3
1721  0433 272a          	jreq	L612
1722  0435 7b02          	ld	a,(OFST+2,sp)
1723  0437 a104          	cp	a,#4
1724  0439 2724          	jreq	L612
1725  043b 7b02          	ld	a,(OFST+2,sp)
1726  043d a105          	cp	a,#5
1727  043f 271e          	jreq	L612
1728  0441 7b02          	ld	a,(OFST+2,sp)
1729  0443 a106          	cp	a,#6
1730  0445 2718          	jreq	L612
1731  0447 7b02          	ld	a,(OFST+2,sp)
1732  0449 a107          	cp	a,#7
1733  044b 2712          	jreq	L612
1734  044d 7b02          	ld	a,(OFST+2,sp)
1735  044f a108          	cp	a,#8
1736  0451 270c          	jreq	L612
1737  0453 7b02          	ld	a,(OFST+2,sp)
1738  0455 a10c          	cp	a,#12
1739  0457 2706          	jreq	L612
1740  0459 7b02          	ld	a,(OFST+2,sp)
1741  045b a109          	cp	a,#9
1742  045d 2603          	jrne	L412
1743  045f               L612:
1744  045f 4f            	clr	a
1745  0460 2011          	jra	L022
1746  0462               L412:
1747  0462 ae0131        	ldw	x,#305
1748  0465 89            	pushw	x
1749  0466 ae0000        	ldw	x,#0
1750  0469 89            	pushw	x
1751  046a ae0000        	ldw	x,#L542
1752  046d 8d000000      	callf	f_assert_failed
1754  0471 5b04          	addw	sp,#4
1755  0473               L022:
1756                     ; 306     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1758  0473 0d06          	tnz	(OFST+6,sp)
1759  0475 2706          	jreq	L422
1760  0477 7b06          	ld	a,(OFST+6,sp)
1761  0479 a108          	cp	a,#8
1762  047b 2603          	jrne	L222
1763  047d               L422:
1764  047d 4f            	clr	a
1765  047e 2011          	jra	L622
1766  0480               L222:
1767  0480 ae0132        	ldw	x,#306
1768  0483 89            	pushw	x
1769  0484 ae0000        	ldw	x,#0
1770  0487 89            	pushw	x
1771  0488 ae0000        	ldw	x,#L542
1772  048b 8d000000      	callf	f_assert_failed
1774  048f 5b04          	addw	sp,#4
1775  0491               L622:
1776                     ; 309     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1778  0491 72175402      	bres	21506,#3
1779                     ; 311     ADC1->CR2 |= (uint8_t)(ADC1_Align);
1781  0495 c65402        	ld	a,21506
1782  0498 1a06          	or	a,(OFST+6,sp)
1783  049a c75402        	ld	21506,a
1784                     ; 313     if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1786  049d 7b01          	ld	a,(OFST+1,sp)
1787  049f a101          	cp	a,#1
1788  04a1 2606          	jrne	L735
1789                     ; 316         ADC1->CR1 |= ADC1_CR1_CONT;
1791  04a3 72125401      	bset	21505,#1
1793  04a7 2004          	jra	L145
1794  04a9               L735:
1795                     ; 321         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1797  04a9 72135401      	bres	21505,#1
1798  04ad               L145:
1799                     ; 325     ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1801  04ad c65400        	ld	a,21504
1802  04b0 a4f0          	and	a,#240
1803  04b2 c75400        	ld	21504,a
1804                     ; 327     ADC1->CSR |= (uint8_t)(ADC1_Channel);
1806  04b5 c65400        	ld	a,21504
1807  04b8 1a02          	or	a,(OFST+2,sp)
1808  04ba c75400        	ld	21504,a
1809                     ; 329 }
1812  04bd 85            	popw	x
1813  04be 87            	retf
1859                     ; 342 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1859                     ; 343 {
1860                     	switch	.text
1861  04bf               f_ADC1_ExternalTriggerConfig:
1863  04bf 89            	pushw	x
1864       00000000      OFST:	set	0
1867                     ; 346     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1869  04c0 9e            	ld	a,xh
1870  04c1 4d            	tnz	a
1871  04c2 2705          	jreq	L432
1872  04c4 9e            	ld	a,xh
1873  04c5 a110          	cp	a,#16
1874  04c7 2603          	jrne	L232
1875  04c9               L432:
1876  04c9 4f            	clr	a
1877  04ca 2011          	jra	L632
1878  04cc               L232:
1879  04cc ae015a        	ldw	x,#346
1880  04cf 89            	pushw	x
1881  04d0 ae0000        	ldw	x,#0
1882  04d3 89            	pushw	x
1883  04d4 ae0000        	ldw	x,#L542
1884  04d7 8d000000      	callf	f_assert_failed
1886  04db 5b04          	addw	sp,#4
1887  04dd               L632:
1888                     ; 347     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1890  04dd 0d02          	tnz	(OFST+2,sp)
1891  04df 2706          	jreq	L242
1892  04e1 7b02          	ld	a,(OFST+2,sp)
1893  04e3 a101          	cp	a,#1
1894  04e5 2603          	jrne	L042
1895  04e7               L242:
1896  04e7 4f            	clr	a
1897  04e8 2011          	jra	L442
1898  04ea               L042:
1899  04ea ae015b        	ldw	x,#347
1900  04ed 89            	pushw	x
1901  04ee ae0000        	ldw	x,#0
1902  04f1 89            	pushw	x
1903  04f2 ae0000        	ldw	x,#L542
1904  04f5 8d000000      	callf	f_assert_failed
1906  04f9 5b04          	addw	sp,#4
1907  04fb               L442:
1908                     ; 350     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1910  04fb c65402        	ld	a,21506
1911  04fe a4cf          	and	a,#207
1912  0500 c75402        	ld	21506,a
1913                     ; 352     if (NewState != DISABLE)
1915  0503 0d02          	tnz	(OFST+2,sp)
1916  0505 2706          	jreq	L565
1917                     ; 355         ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1919  0507 721c5402      	bset	21506,#6
1921  050b 2004          	jra	L765
1922  050d               L565:
1923                     ; 360         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1925  050d 721d5402      	bres	21506,#6
1926  0511               L765:
1927                     ; 364     ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1929  0511 c65402        	ld	a,21506
1930  0514 1a01          	or	a,(OFST+1,sp)
1931  0516 c75402        	ld	21506,a
1932                     ; 366 }
1935  0519 85            	popw	x
1936  051a 87            	retf
1959                     ; 378 void ADC1_StartConversion(void)
1959                     ; 379 {
1960                     	switch	.text
1961  051b               f_ADC1_StartConversion:
1965                     ; 380     ADC1->CR1 |= ADC1_CR1_ADON;
1967  051b 72105401      	bset	21505,#0
1968                     ; 381 }
1971  051f 87            	retf
2010                     ; 390 uint16_t ADC1_GetConversionValue(void)
2010                     ; 391 {
2011                     	switch	.text
2012  0520               f_ADC1_GetConversionValue:
2014  0520 5205          	subw	sp,#5
2015       00000005      OFST:	set	5
2018                     ; 393     uint16_t temph = 0;
2020                     ; 394     uint8_t templ = 0;
2022                     ; 396     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2024  0522 c65402        	ld	a,21506
2025  0525 a508          	bcp	a,#8
2026  0527 2715          	jreq	L716
2027                     ; 399         templ = ADC1->DRL;
2029  0529 c65405        	ld	a,21509
2030  052c 6b03          	ld	(OFST-2,sp),a
2031                     ; 401         temph = ADC1->DRH;
2033  052e c65404        	ld	a,21508
2034  0531 5f            	clrw	x
2035  0532 97            	ld	xl,a
2036  0533 1f04          	ldw	(OFST-1,sp),x
2037                     ; 403         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2039  0535 1e04          	ldw	x,(OFST-1,sp)
2040  0537 7b03          	ld	a,(OFST-2,sp)
2041  0539 02            	rlwa	x,a
2042  053a 1f04          	ldw	(OFST-1,sp),x
2044  053c 2021          	jra	L126
2045  053e               L716:
2046                     ; 408         temph = ADC1->DRH;
2048  053e c65404        	ld	a,21508
2049  0541 5f            	clrw	x
2050  0542 97            	ld	xl,a
2051  0543 1f04          	ldw	(OFST-1,sp),x
2052                     ; 410         templ = ADC1->DRL;
2054  0545 c65405        	ld	a,21509
2055  0548 6b03          	ld	(OFST-2,sp),a
2056                     ; 412         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2058  054a 1e04          	ldw	x,(OFST-1,sp)
2059  054c 4f            	clr	a
2060  054d 02            	rlwa	x,a
2061  054e 1f01          	ldw	(OFST-4,sp),x
2062  0550 7b03          	ld	a,(OFST-2,sp)
2063  0552 97            	ld	xl,a
2064  0553 a640          	ld	a,#64
2065  0555 42            	mul	x,a
2066  0556 01            	rrwa	x,a
2067  0557 1a02          	or	a,(OFST-3,sp)
2068  0559 01            	rrwa	x,a
2069  055a 1a01          	or	a,(OFST-4,sp)
2070  055c 01            	rrwa	x,a
2071  055d 1f04          	ldw	(OFST-1,sp),x
2072  055f               L126:
2073                     ; 415     return ((uint16_t)temph);
2075  055f 1e04          	ldw	x,(OFST-1,sp)
2078  0561 5b05          	addw	sp,#5
2079  0563 87            	retf
2125                     ; 427 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2125                     ; 428 {
2126                     	switch	.text
2127  0564               f_ADC1_AWDChannelConfig:
2129  0564 89            	pushw	x
2130       00000000      OFST:	set	0
2133                     ; 430     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2135  0565 9f            	ld	a,xl
2136  0566 4d            	tnz	a
2137  0567 2705          	jreq	L652
2138  0569 9f            	ld	a,xl
2139  056a a101          	cp	a,#1
2140  056c 2603          	jrne	L452
2141  056e               L652:
2142  056e 4f            	clr	a
2143  056f 2011          	jra	L062
2144  0571               L452:
2145  0571 ae01ae        	ldw	x,#430
2146  0574 89            	pushw	x
2147  0575 ae0000        	ldw	x,#0
2148  0578 89            	pushw	x
2149  0579 ae0000        	ldw	x,#L542
2150  057c 8d000000      	callf	f_assert_failed
2152  0580 5b04          	addw	sp,#4
2153  0582               L062:
2154                     ; 431     assert_param(IS_ADC1_CHANNEL_OK(Channel));
2156  0582 0d01          	tnz	(OFST+1,sp)
2157  0584 273c          	jreq	L462
2158  0586 7b01          	ld	a,(OFST+1,sp)
2159  0588 a101          	cp	a,#1
2160  058a 2736          	jreq	L462
2161  058c 7b01          	ld	a,(OFST+1,sp)
2162  058e a102          	cp	a,#2
2163  0590 2730          	jreq	L462
2164  0592 7b01          	ld	a,(OFST+1,sp)
2165  0594 a103          	cp	a,#3
2166  0596 272a          	jreq	L462
2167  0598 7b01          	ld	a,(OFST+1,sp)
2168  059a a104          	cp	a,#4
2169  059c 2724          	jreq	L462
2170  059e 7b01          	ld	a,(OFST+1,sp)
2171  05a0 a105          	cp	a,#5
2172  05a2 271e          	jreq	L462
2173  05a4 7b01          	ld	a,(OFST+1,sp)
2174  05a6 a106          	cp	a,#6
2175  05a8 2718          	jreq	L462
2176  05aa 7b01          	ld	a,(OFST+1,sp)
2177  05ac a107          	cp	a,#7
2178  05ae 2712          	jreq	L462
2179  05b0 7b01          	ld	a,(OFST+1,sp)
2180  05b2 a108          	cp	a,#8
2181  05b4 270c          	jreq	L462
2182  05b6 7b01          	ld	a,(OFST+1,sp)
2183  05b8 a10c          	cp	a,#12
2184  05ba 2706          	jreq	L462
2185  05bc 7b01          	ld	a,(OFST+1,sp)
2186  05be a109          	cp	a,#9
2187  05c0 2603          	jrne	L262
2188  05c2               L462:
2189  05c2 4f            	clr	a
2190  05c3 2011          	jra	L662
2191  05c5               L262:
2192  05c5 ae01af        	ldw	x,#431
2193  05c8 89            	pushw	x
2194  05c9 ae0000        	ldw	x,#0
2195  05cc 89            	pushw	x
2196  05cd ae0000        	ldw	x,#L542
2197  05d0 8d000000      	callf	f_assert_failed
2199  05d4 5b04          	addw	sp,#4
2200  05d6               L662:
2201                     ; 433     if (Channel < (uint8_t)8)
2203  05d6 7b01          	ld	a,(OFST+1,sp)
2204  05d8 a108          	cp	a,#8
2205  05da 242f          	jruge	L546
2206                     ; 435         if (NewState != DISABLE)
2208  05dc 0d02          	tnz	(OFST+2,sp)
2209  05de 2715          	jreq	L746
2210                     ; 437             ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2212  05e0 7b01          	ld	a,(OFST+1,sp)
2213  05e2 5f            	clrw	x
2214  05e3 97            	ld	xl,a
2215  05e4 a601          	ld	a,#1
2216  05e6 5d            	tnzw	x
2217  05e7 2704          	jreq	L072
2218  05e9               L272:
2219  05e9 48            	sll	a
2220  05ea 5a            	decw	x
2221  05eb 26fc          	jrne	L272
2222  05ed               L072:
2223  05ed ca540f        	or	a,21519
2224  05f0 c7540f        	ld	21519,a
2226  05f3 2047          	jra	L356
2227  05f5               L746:
2228                     ; 441             ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2230  05f5 7b01          	ld	a,(OFST+1,sp)
2231  05f7 5f            	clrw	x
2232  05f8 97            	ld	xl,a
2233  05f9 a601          	ld	a,#1
2234  05fb 5d            	tnzw	x
2235  05fc 2704          	jreq	L472
2236  05fe               L672:
2237  05fe 48            	sll	a
2238  05ff 5a            	decw	x
2239  0600 26fc          	jrne	L672
2240  0602               L472:
2241  0602 43            	cpl	a
2242  0603 c4540f        	and	a,21519
2243  0606 c7540f        	ld	21519,a
2244  0609 2031          	jra	L356
2245  060b               L546:
2246                     ; 446         if (NewState != DISABLE)
2248  060b 0d02          	tnz	(OFST+2,sp)
2249  060d 2717          	jreq	L556
2250                     ; 448             ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2252  060f 7b01          	ld	a,(OFST+1,sp)
2253  0611 a008          	sub	a,#8
2254  0613 5f            	clrw	x
2255  0614 97            	ld	xl,a
2256  0615 a601          	ld	a,#1
2257  0617 5d            	tnzw	x
2258  0618 2704          	jreq	L003
2259  061a               L203:
2260  061a 48            	sll	a
2261  061b 5a            	decw	x
2262  061c 26fc          	jrne	L203
2263  061e               L003:
2264  061e ca540e        	or	a,21518
2265  0621 c7540e        	ld	21518,a
2267  0624 2016          	jra	L356
2268  0626               L556:
2269                     ; 452             ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2271  0626 7b01          	ld	a,(OFST+1,sp)
2272  0628 a008          	sub	a,#8
2273  062a 5f            	clrw	x
2274  062b 97            	ld	xl,a
2275  062c a601          	ld	a,#1
2276  062e 5d            	tnzw	x
2277  062f 2704          	jreq	L403
2278  0631               L603:
2279  0631 48            	sll	a
2280  0632 5a            	decw	x
2281  0633 26fc          	jrne	L603
2282  0635               L403:
2283  0635 43            	cpl	a
2284  0636 c4540e        	and	a,21518
2285  0639 c7540e        	ld	21518,a
2286  063c               L356:
2287                     ; 455 }
2290  063c 85            	popw	x
2291  063d 87            	retf
2323                     ; 463 void ADC1_SetHighThreshold(uint16_t Threshold)
2323                     ; 464 {
2324                     	switch	.text
2325  063e               f_ADC1_SetHighThreshold:
2327  063e 89            	pushw	x
2328       00000000      OFST:	set	0
2331                     ; 465     ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2333  063f 54            	srlw	x
2334  0640 54            	srlw	x
2335  0641 9f            	ld	a,xl
2336  0642 c75408        	ld	21512,a
2337                     ; 466     ADC1->HTRL = (uint8_t)Threshold;
2339  0645 7b02          	ld	a,(OFST+2,sp)
2340  0647 c75409        	ld	21513,a
2341                     ; 467 }
2344  064a 85            	popw	x
2345  064b 87            	retf
2377                     ; 475 void ADC1_SetLowThreshold(uint16_t Threshold)
2377                     ; 476 {
2378                     	switch	.text
2379  064c               f_ADC1_SetLowThreshold:
2383                     ; 477     ADC1->LTRL = (uint8_t)Threshold;
2385  064c 9f            	ld	a,xl
2386  064d c7540b        	ld	21515,a
2387                     ; 478     ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2389  0650 54            	srlw	x
2390  0651 54            	srlw	x
2391  0652 9f            	ld	a,xl
2392  0653 c7540a        	ld	21514,a
2393                     ; 479 }
2396  0656 87            	retf
2443                     ; 488 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2443                     ; 489 {
2444                     	switch	.text
2445  0657               f_ADC1_GetBufferValue:
2447  0657 88            	push	a
2448  0658 5205          	subw	sp,#5
2449       00000005      OFST:	set	5
2452                     ; 491     uint16_t temph = 0;
2454                     ; 492     uint8_t templ = 0;
2456                     ; 495     assert_param(IS_ADC1_BUFFER_OK(Buffer));
2458  065a a10a          	cp	a,#10
2459  065c 2403          	jruge	L613
2460  065e 4f            	clr	a
2461  065f 2011          	jra	L023
2462  0661               L613:
2463  0661 ae01ef        	ldw	x,#495
2464  0664 89            	pushw	x
2465  0665 ae0000        	ldw	x,#0
2466  0668 89            	pushw	x
2467  0669 ae0000        	ldw	x,#L542
2468  066c 8d000000      	callf	f_assert_failed
2470  0670 5b04          	addw	sp,#4
2471  0672               L023:
2472                     ; 497     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2474  0672 c65402        	ld	a,21506
2475  0675 a508          	bcp	a,#8
2476  0677 271f          	jreq	L137
2477                     ; 500         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2479  0679 7b06          	ld	a,(OFST+1,sp)
2480  067b 48            	sll	a
2481  067c 5f            	clrw	x
2482  067d 97            	ld	xl,a
2483  067e d653e1        	ld	a,(21473,x)
2484  0681 6b03          	ld	(OFST-2,sp),a
2485                     ; 502         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2487  0683 7b06          	ld	a,(OFST+1,sp)
2488  0685 48            	sll	a
2489  0686 5f            	clrw	x
2490  0687 97            	ld	xl,a
2491  0688 d653e0        	ld	a,(21472,x)
2492  068b 5f            	clrw	x
2493  068c 97            	ld	xl,a
2494  068d 1f04          	ldw	(OFST-1,sp),x
2495                     ; 504         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2497  068f 1e04          	ldw	x,(OFST-1,sp)
2498  0691 7b03          	ld	a,(OFST-2,sp)
2499  0693 02            	rlwa	x,a
2500  0694 1f04          	ldw	(OFST-1,sp),x
2502  0696 202b          	jra	L337
2503  0698               L137:
2504                     ; 509         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2506  0698 7b06          	ld	a,(OFST+1,sp)
2507  069a 48            	sll	a
2508  069b 5f            	clrw	x
2509  069c 97            	ld	xl,a
2510  069d d653e0        	ld	a,(21472,x)
2511  06a0 5f            	clrw	x
2512  06a1 97            	ld	xl,a
2513  06a2 1f04          	ldw	(OFST-1,sp),x
2514                     ; 511         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2516  06a4 7b06          	ld	a,(OFST+1,sp)
2517  06a6 48            	sll	a
2518  06a7 5f            	clrw	x
2519  06a8 97            	ld	xl,a
2520  06a9 d653e1        	ld	a,(21473,x)
2521  06ac 6b03          	ld	(OFST-2,sp),a
2522                     ; 513         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2524  06ae 1e04          	ldw	x,(OFST-1,sp)
2525  06b0 4f            	clr	a
2526  06b1 02            	rlwa	x,a
2527  06b2 1f01          	ldw	(OFST-4,sp),x
2528  06b4 7b03          	ld	a,(OFST-2,sp)
2529  06b6 97            	ld	xl,a
2530  06b7 a640          	ld	a,#64
2531  06b9 42            	mul	x,a
2532  06ba 01            	rrwa	x,a
2533  06bb 1a02          	or	a,(OFST-3,sp)
2534  06bd 01            	rrwa	x,a
2535  06be 1a01          	or	a,(OFST-4,sp)
2536  06c0 01            	rrwa	x,a
2537  06c1 1f04          	ldw	(OFST-1,sp),x
2538  06c3               L337:
2539                     ; 516     return ((uint16_t)temph);
2541  06c3 1e04          	ldw	x,(OFST-1,sp)
2544  06c5 5b06          	addw	sp,#6
2545  06c7 87            	retf
2609                     ; 526 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2609                     ; 527 {
2610                     	switch	.text
2611  06c8               f_ADC1_GetAWDChannelStatus:
2613  06c8 88            	push	a
2614  06c9 88            	push	a
2615       00000001      OFST:	set	1
2618                     ; 528     uint8_t status = 0;
2620                     ; 531     assert_param(IS_ADC1_CHANNEL_OK(Channel));
2622  06ca 4d            	tnz	a
2623  06cb 2728          	jreq	L623
2624  06cd a101          	cp	a,#1
2625  06cf 2724          	jreq	L623
2626  06d1 a102          	cp	a,#2
2627  06d3 2720          	jreq	L623
2628  06d5 a103          	cp	a,#3
2629  06d7 271c          	jreq	L623
2630  06d9 a104          	cp	a,#4
2631  06db 2718          	jreq	L623
2632  06dd a105          	cp	a,#5
2633  06df 2714          	jreq	L623
2634  06e1 a106          	cp	a,#6
2635  06e3 2710          	jreq	L623
2636  06e5 a107          	cp	a,#7
2637  06e7 270c          	jreq	L623
2638  06e9 a108          	cp	a,#8
2639  06eb 2708          	jreq	L623
2640  06ed a10c          	cp	a,#12
2641  06ef 2704          	jreq	L623
2642  06f1 a109          	cp	a,#9
2643  06f3 2603          	jrne	L423
2644  06f5               L623:
2645  06f5 4f            	clr	a
2646  06f6 2011          	jra	L033
2647  06f8               L423:
2648  06f8 ae0213        	ldw	x,#531
2649  06fb 89            	pushw	x
2650  06fc ae0000        	ldw	x,#0
2651  06ff 89            	pushw	x
2652  0700 ae0000        	ldw	x,#L542
2653  0703 8d000000      	callf	f_assert_failed
2655  0707 5b04          	addw	sp,#4
2656  0709               L033:
2657                     ; 533     if (Channel < (uint8_t)8)
2659  0709 7b02          	ld	a,(OFST+1,sp)
2660  070b a108          	cp	a,#8
2661  070d 2414          	jruge	L567
2662                     ; 535         status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2664  070f 7b02          	ld	a,(OFST+1,sp)
2665  0711 5f            	clrw	x
2666  0712 97            	ld	xl,a
2667  0713 a601          	ld	a,#1
2668  0715 5d            	tnzw	x
2669  0716 2704          	jreq	L233
2670  0718               L433:
2671  0718 48            	sll	a
2672  0719 5a            	decw	x
2673  071a 26fc          	jrne	L433
2674  071c               L233:
2675  071c c4540d        	and	a,21517
2676  071f 6b01          	ld	(OFST+0,sp),a
2678  0721 2014          	jra	L767
2679  0723               L567:
2680                     ; 539         status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2682  0723 7b02          	ld	a,(OFST+1,sp)
2683  0725 a008          	sub	a,#8
2684  0727 5f            	clrw	x
2685  0728 97            	ld	xl,a
2686  0729 a601          	ld	a,#1
2687  072b 5d            	tnzw	x
2688  072c 2704          	jreq	L633
2689  072e               L043:
2690  072e 48            	sll	a
2691  072f 5a            	decw	x
2692  0730 26fc          	jrne	L043
2693  0732               L633:
2694  0732 c4540c        	and	a,21516
2695  0735 6b01          	ld	(OFST+0,sp),a
2696  0737               L767:
2697                     ; 542     return ((FlagStatus)status);
2699  0737 7b01          	ld	a,(OFST+0,sp)
2702  0739 85            	popw	x
2703  073a 87            	retf
2857                     ; 551 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2857                     ; 552 {
2858                     	switch	.text
2859  073b               f_ADC1_GetFlagStatus:
2861  073b 88            	push	a
2862  073c 88            	push	a
2863       00000001      OFST:	set	1
2866                     ; 553     uint8_t flagstatus = 0;
2868                     ; 554     uint8_t temp = 0;
2870                     ; 557     assert_param(IS_ADC1_FLAG_OK(Flag));
2872  073d a180          	cp	a,#128
2873  073f 2730          	jreq	L643
2874  0741 a141          	cp	a,#65
2875  0743 272c          	jreq	L643
2876  0745 a140          	cp	a,#64
2877  0747 2728          	jreq	L643
2878  0749 a110          	cp	a,#16
2879  074b 2724          	jreq	L643
2880  074d a111          	cp	a,#17
2881  074f 2720          	jreq	L643
2882  0751 a112          	cp	a,#18
2883  0753 271c          	jreq	L643
2884  0755 a113          	cp	a,#19
2885  0757 2718          	jreq	L643
2886  0759 a114          	cp	a,#20
2887  075b 2714          	jreq	L643
2888  075d a115          	cp	a,#21
2889  075f 2710          	jreq	L643
2890  0761 a116          	cp	a,#22
2891  0763 270c          	jreq	L643
2892  0765 a117          	cp	a,#23
2893  0767 2708          	jreq	L643
2894  0769 a118          	cp	a,#24
2895  076b 2704          	jreq	L643
2896  076d a119          	cp	a,#25
2897  076f 2603          	jrne	L443
2898  0771               L643:
2899  0771 4f            	clr	a
2900  0772 2011          	jra	L053
2901  0774               L443:
2902  0774 ae022d        	ldw	x,#557
2903  0777 89            	pushw	x
2904  0778 ae0000        	ldw	x,#0
2905  077b 89            	pushw	x
2906  077c ae0000        	ldw	x,#L542
2907  077f 8d000000      	callf	f_assert_failed
2909  0783 5b04          	addw	sp,#4
2910  0785               L053:
2911                     ; 559     if ((Flag & 0x0F) == 0x01)
2913  0785 7b02          	ld	a,(OFST+1,sp)
2914  0787 a40f          	and	a,#15
2915  0789 a101          	cp	a,#1
2916  078b 2609          	jrne	L3501
2917                     ; 562         flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2919  078d c65403        	ld	a,21507
2920  0790 a440          	and	a,#64
2921  0792 6b01          	ld	(OFST+0,sp),a
2923  0794 2045          	jra	L5501
2924  0796               L3501:
2925                     ; 564     else if ((Flag & 0xF0) == 0x10)
2927  0796 7b02          	ld	a,(OFST+1,sp)
2928  0798 a4f0          	and	a,#240
2929  079a a110          	cp	a,#16
2930  079c 2636          	jrne	L7501
2931                     ; 567         temp = (uint8_t)(Flag & (uint8_t)0x0F);
2933  079e 7b02          	ld	a,(OFST+1,sp)
2934  07a0 a40f          	and	a,#15
2935  07a2 6b01          	ld	(OFST+0,sp),a
2936                     ; 568         if (temp < 8)
2938  07a4 7b01          	ld	a,(OFST+0,sp)
2939  07a6 a108          	cp	a,#8
2940  07a8 2414          	jruge	L1601
2941                     ; 570             flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2943  07aa 7b01          	ld	a,(OFST+0,sp)
2944  07ac 5f            	clrw	x
2945  07ad 97            	ld	xl,a
2946  07ae a601          	ld	a,#1
2947  07b0 5d            	tnzw	x
2948  07b1 2704          	jreq	L253
2949  07b3               L453:
2950  07b3 48            	sll	a
2951  07b4 5a            	decw	x
2952  07b5 26fc          	jrne	L453
2953  07b7               L253:
2954  07b7 c4540d        	and	a,21517
2955  07ba 6b01          	ld	(OFST+0,sp),a
2957  07bc 201d          	jra	L5501
2958  07be               L1601:
2959                     ; 574             flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2961  07be 7b01          	ld	a,(OFST+0,sp)
2962  07c0 a008          	sub	a,#8
2963  07c2 5f            	clrw	x
2964  07c3 97            	ld	xl,a
2965  07c4 a601          	ld	a,#1
2966  07c6 5d            	tnzw	x
2967  07c7 2704          	jreq	L653
2968  07c9               L063:
2969  07c9 48            	sll	a
2970  07ca 5a            	decw	x
2971  07cb 26fc          	jrne	L063
2972  07cd               L653:
2973  07cd c4540c        	and	a,21516
2974  07d0 6b01          	ld	(OFST+0,sp),a
2975  07d2 2007          	jra	L5501
2976  07d4               L7501:
2977                     ; 579         flagstatus = (uint8_t)(ADC1->CSR & Flag);
2979  07d4 c65400        	ld	a,21504
2980  07d7 1402          	and	a,(OFST+1,sp)
2981  07d9 6b01          	ld	(OFST+0,sp),a
2982  07db               L5501:
2983                     ; 581     return ((FlagStatus)flagstatus);
2985  07db 7b01          	ld	a,(OFST+0,sp)
2988  07dd 85            	popw	x
2989  07de 87            	retf
3031                     ; 591 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3031                     ; 592 {
3032                     	switch	.text
3033  07df               f_ADC1_ClearFlag:
3035  07df 88            	push	a
3036  07e0 88            	push	a
3037       00000001      OFST:	set	1
3040                     ; 593     uint8_t temp = 0;
3042                     ; 596     assert_param(IS_ADC1_FLAG_OK(Flag));
3044  07e1 a180          	cp	a,#128
3045  07e3 2730          	jreq	L663
3046  07e5 a141          	cp	a,#65
3047  07e7 272c          	jreq	L663
3048  07e9 a140          	cp	a,#64
3049  07eb 2728          	jreq	L663
3050  07ed a110          	cp	a,#16
3051  07ef 2724          	jreq	L663
3052  07f1 a111          	cp	a,#17
3053  07f3 2720          	jreq	L663
3054  07f5 a112          	cp	a,#18
3055  07f7 271c          	jreq	L663
3056  07f9 a113          	cp	a,#19
3057  07fb 2718          	jreq	L663
3058  07fd a114          	cp	a,#20
3059  07ff 2714          	jreq	L663
3060  0801 a115          	cp	a,#21
3061  0803 2710          	jreq	L663
3062  0805 a116          	cp	a,#22
3063  0807 270c          	jreq	L663
3064  0809 a117          	cp	a,#23
3065  080b 2708          	jreq	L663
3066  080d a118          	cp	a,#24
3067  080f 2704          	jreq	L663
3068  0811 a119          	cp	a,#25
3069  0813 2603          	jrne	L463
3070  0815               L663:
3071  0815 4f            	clr	a
3072  0816 2011          	jra	L073
3073  0818               L463:
3074  0818 ae0254        	ldw	x,#596
3075  081b 89            	pushw	x
3076  081c ae0000        	ldw	x,#0
3077  081f 89            	pushw	x
3078  0820 ae0000        	ldw	x,#L542
3079  0823 8d000000      	callf	f_assert_failed
3081  0827 5b04          	addw	sp,#4
3082  0829               L073:
3083                     ; 598     if ((Flag & 0x0F) == 0x01)
3085  0829 7b02          	ld	a,(OFST+1,sp)
3086  082b a40f          	and	a,#15
3087  082d a101          	cp	a,#1
3088  082f 2606          	jrne	L7011
3089                     ; 601         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3091  0831 721d5403      	bres	21507,#6
3093  0835 204b          	jra	L1111
3094  0837               L7011:
3095                     ; 603     else if ((Flag & 0xF0) == 0x10)
3097  0837 7b02          	ld	a,(OFST+1,sp)
3098  0839 a4f0          	and	a,#240
3099  083b a110          	cp	a,#16
3100  083d 263a          	jrne	L3111
3101                     ; 606         temp = (uint8_t)(Flag & (uint8_t)0x0F);
3103  083f 7b02          	ld	a,(OFST+1,sp)
3104  0841 a40f          	and	a,#15
3105  0843 6b01          	ld	(OFST+0,sp),a
3106                     ; 607         if (temp < 8)
3108  0845 7b01          	ld	a,(OFST+0,sp)
3109  0847 a108          	cp	a,#8
3110  0849 2416          	jruge	L5111
3111                     ; 609             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3113  084b 7b01          	ld	a,(OFST+0,sp)
3114  084d 5f            	clrw	x
3115  084e 97            	ld	xl,a
3116  084f a601          	ld	a,#1
3117  0851 5d            	tnzw	x
3118  0852 2704          	jreq	L273
3119  0854               L473:
3120  0854 48            	sll	a
3121  0855 5a            	decw	x
3122  0856 26fc          	jrne	L473
3123  0858               L273:
3124  0858 43            	cpl	a
3125  0859 c4540d        	and	a,21517
3126  085c c7540d        	ld	21517,a
3128  085f 2021          	jra	L1111
3129  0861               L5111:
3130                     ; 613             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3132  0861 7b01          	ld	a,(OFST+0,sp)
3133  0863 a008          	sub	a,#8
3134  0865 5f            	clrw	x
3135  0866 97            	ld	xl,a
3136  0867 a601          	ld	a,#1
3137  0869 5d            	tnzw	x
3138  086a 2704          	jreq	L673
3139  086c               L004:
3140  086c 48            	sll	a
3141  086d 5a            	decw	x
3142  086e 26fc          	jrne	L004
3143  0870               L673:
3144  0870 43            	cpl	a
3145  0871 c4540c        	and	a,21516
3146  0874 c7540c        	ld	21516,a
3147  0877 2009          	jra	L1111
3148  0879               L3111:
3149                     ; 618         ADC1->CSR &= (uint8_t) (~Flag);
3151  0879 7b02          	ld	a,(OFST+1,sp)
3152  087b 43            	cpl	a
3153  087c c45400        	and	a,21504
3154  087f c75400        	ld	21504,a
3155  0882               L1111:
3156                     ; 620 }
3159  0882 85            	popw	x
3160  0883 87            	retf
3213                     ; 640 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3213                     ; 641 {
3214                     	switch	.text
3215  0884               f_ADC1_GetITStatus:
3217  0884 89            	pushw	x
3218  0885 88            	push	a
3219       00000001      OFST:	set	1
3222                     ; 642     ITStatus itstatus = RESET;
3224                     ; 643     uint8_t temp = 0;
3226                     ; 646     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3228  0886 a30080        	cpw	x,#128
3229  0889 273c          	jreq	L604
3230  088b a30140        	cpw	x,#320
3231  088e 2737          	jreq	L604
3232  0890 a30110        	cpw	x,#272
3233  0893 2732          	jreq	L604
3234  0895 a30111        	cpw	x,#273
3235  0898 272d          	jreq	L604
3236  089a a30112        	cpw	x,#274
3237  089d 2728          	jreq	L604
3238  089f a30113        	cpw	x,#275
3239  08a2 2723          	jreq	L604
3240  08a4 a30114        	cpw	x,#276
3241  08a7 271e          	jreq	L604
3242  08a9 a30115        	cpw	x,#277
3243  08ac 2719          	jreq	L604
3244  08ae a30116        	cpw	x,#278
3245  08b1 2714          	jreq	L604
3246  08b3 a30117        	cpw	x,#279
3247  08b6 270f          	jreq	L604
3248  08b8 a30118        	cpw	x,#280
3249  08bb 270a          	jreq	L604
3250  08bd a3011c        	cpw	x,#284
3251  08c0 2705          	jreq	L604
3252  08c2 a30119        	cpw	x,#281
3253  08c5 2603          	jrne	L404
3254  08c7               L604:
3255  08c7 4f            	clr	a
3256  08c8 2011          	jra	L014
3257  08ca               L404:
3258  08ca ae0286        	ldw	x,#646
3259  08cd 89            	pushw	x
3260  08ce ae0000        	ldw	x,#0
3261  08d1 89            	pushw	x
3262  08d2 ae0000        	ldw	x,#L542
3263  08d5 8d000000      	callf	f_assert_failed
3265  08d9 5b04          	addw	sp,#4
3266  08db               L014:
3267                     ; 648     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3269  08db 7b02          	ld	a,(OFST+1,sp)
3270  08dd 97            	ld	xl,a
3271  08de 7b03          	ld	a,(OFST+2,sp)
3272  08e0 a4f0          	and	a,#240
3273  08e2 5f            	clrw	x
3274  08e3 02            	rlwa	x,a
3275  08e4 a30010        	cpw	x,#16
3276  08e7 2636          	jrne	L7411
3277                     ; 651         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3279  08e9 7b03          	ld	a,(OFST+2,sp)
3280  08eb a40f          	and	a,#15
3281  08ed 6b01          	ld	(OFST+0,sp),a
3282                     ; 652         if (temp < 8)
3284  08ef 7b01          	ld	a,(OFST+0,sp)
3285  08f1 a108          	cp	a,#8
3286  08f3 2414          	jruge	L1511
3287                     ; 654             itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3289  08f5 7b01          	ld	a,(OFST+0,sp)
3290  08f7 5f            	clrw	x
3291  08f8 97            	ld	xl,a
3292  08f9 a601          	ld	a,#1
3293  08fb 5d            	tnzw	x
3294  08fc 2704          	jreq	L214
3295  08fe               L414:
3296  08fe 48            	sll	a
3297  08ff 5a            	decw	x
3298  0900 26fc          	jrne	L414
3299  0902               L214:
3300  0902 c4540d        	and	a,21517
3301  0905 6b01          	ld	(OFST+0,sp),a
3303  0907 201d          	jra	L5511
3304  0909               L1511:
3305                     ; 658             itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3307  0909 7b01          	ld	a,(OFST+0,sp)
3308  090b a008          	sub	a,#8
3309  090d 5f            	clrw	x
3310  090e 97            	ld	xl,a
3311  090f a601          	ld	a,#1
3312  0911 5d            	tnzw	x
3313  0912 2704          	jreq	L614
3314  0914               L024:
3315  0914 48            	sll	a
3316  0915 5a            	decw	x
3317  0916 26fc          	jrne	L024
3318  0918               L614:
3319  0918 c4540c        	and	a,21516
3320  091b 6b01          	ld	(OFST+0,sp),a
3321  091d 2007          	jra	L5511
3322  091f               L7411:
3323                     ; 663         itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3325  091f c65400        	ld	a,21504
3326  0922 1403          	and	a,(OFST+2,sp)
3327  0924 6b01          	ld	(OFST+0,sp),a
3328  0926               L5511:
3329                     ; 665     return ((ITStatus)itstatus);
3331  0926 7b01          	ld	a,(OFST+0,sp)
3334  0928 5b03          	addw	sp,#3
3335  092a 87            	retf
3378                     ; 687 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3378                     ; 688 {
3379                     	switch	.text
3380  092b               f_ADC1_ClearITPendingBit:
3382  092b 89            	pushw	x
3383  092c 88            	push	a
3384       00000001      OFST:	set	1
3387                     ; 689     uint8_t temp = 0;
3389                     ; 692     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3391  092d a30080        	cpw	x,#128
3392  0930 273c          	jreq	L624
3393  0932 a30140        	cpw	x,#320
3394  0935 2737          	jreq	L624
3395  0937 a30110        	cpw	x,#272
3396  093a 2732          	jreq	L624
3397  093c a30111        	cpw	x,#273
3398  093f 272d          	jreq	L624
3399  0941 a30112        	cpw	x,#274
3400  0944 2728          	jreq	L624
3401  0946 a30113        	cpw	x,#275
3402  0949 2723          	jreq	L624
3403  094b a30114        	cpw	x,#276
3404  094e 271e          	jreq	L624
3405  0950 a30115        	cpw	x,#277
3406  0953 2719          	jreq	L624
3407  0955 a30116        	cpw	x,#278
3408  0958 2714          	jreq	L624
3409  095a a30117        	cpw	x,#279
3410  095d 270f          	jreq	L624
3411  095f a30118        	cpw	x,#280
3412  0962 270a          	jreq	L624
3413  0964 a3011c        	cpw	x,#284
3414  0967 2705          	jreq	L624
3415  0969 a30119        	cpw	x,#281
3416  096c 2603          	jrne	L424
3417  096e               L624:
3418  096e 4f            	clr	a
3419  096f 2011          	jra	L034
3420  0971               L424:
3421  0971 ae02b4        	ldw	x,#692
3422  0974 89            	pushw	x
3423  0975 ae0000        	ldw	x,#0
3424  0978 89            	pushw	x
3425  0979 ae0000        	ldw	x,#L542
3426  097c 8d000000      	callf	f_assert_failed
3428  0980 5b04          	addw	sp,#4
3429  0982               L034:
3430                     ; 694     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3432  0982 7b02          	ld	a,(OFST+1,sp)
3433  0984 97            	ld	xl,a
3434  0985 7b03          	ld	a,(OFST+2,sp)
3435  0987 a4f0          	and	a,#240
3436  0989 5f            	clrw	x
3437  098a 02            	rlwa	x,a
3438  098b a30010        	cpw	x,#16
3439  098e 263a          	jrne	L7711
3440                     ; 697         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3442  0990 7b03          	ld	a,(OFST+2,sp)
3443  0992 a40f          	and	a,#15
3444  0994 6b01          	ld	(OFST+0,sp),a
3445                     ; 698         if (temp < 8)
3447  0996 7b01          	ld	a,(OFST+0,sp)
3448  0998 a108          	cp	a,#8
3449  099a 2416          	jruge	L1021
3450                     ; 700             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3452  099c 7b01          	ld	a,(OFST+0,sp)
3453  099e 5f            	clrw	x
3454  099f 97            	ld	xl,a
3455  09a0 a601          	ld	a,#1
3456  09a2 5d            	tnzw	x
3457  09a3 2704          	jreq	L234
3458  09a5               L434:
3459  09a5 48            	sll	a
3460  09a6 5a            	decw	x
3461  09a7 26fc          	jrne	L434
3462  09a9               L234:
3463  09a9 43            	cpl	a
3464  09aa c4540d        	and	a,21517
3465  09ad c7540d        	ld	21517,a
3467  09b0 2021          	jra	L5021
3468  09b2               L1021:
3469                     ; 704             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3471  09b2 7b01          	ld	a,(OFST+0,sp)
3472  09b4 a008          	sub	a,#8
3473  09b6 5f            	clrw	x
3474  09b7 97            	ld	xl,a
3475  09b8 a601          	ld	a,#1
3476  09ba 5d            	tnzw	x
3477  09bb 2704          	jreq	L634
3478  09bd               L044:
3479  09bd 48            	sll	a
3480  09be 5a            	decw	x
3481  09bf 26fc          	jrne	L044
3482  09c1               L634:
3483  09c1 43            	cpl	a
3484  09c2 c4540c        	and	a,21516
3485  09c5 c7540c        	ld	21516,a
3486  09c8 2009          	jra	L5021
3487  09ca               L7711:
3488                     ; 709         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3490  09ca 7b03          	ld	a,(OFST+2,sp)
3491  09cc 43            	cpl	a
3492  09cd c45400        	and	a,21504
3493  09d0 c75400        	ld	21504,a
3494  09d3               L5021:
3495                     ; 711 }
3498  09d3 5b03          	addw	sp,#3
3499  09d5 87            	retf
3511                     	xdef	f_ADC1_ClearITPendingBit
3512                     	xdef	f_ADC1_GetITStatus
3513                     	xdef	f_ADC1_ClearFlag
3514                     	xdef	f_ADC1_GetFlagStatus
3515                     	xdef	f_ADC1_GetAWDChannelStatus
3516                     	xdef	f_ADC1_GetBufferValue
3517                     	xdef	f_ADC1_SetLowThreshold
3518                     	xdef	f_ADC1_SetHighThreshold
3519                     	xdef	f_ADC1_GetConversionValue
3520                     	xdef	f_ADC1_StartConversion
3521                     	xdef	f_ADC1_AWDChannelConfig
3522                     	xdef	f_ADC1_ExternalTriggerConfig
3523                     	xdef	f_ADC1_ConversionConfig
3524                     	xdef	f_ADC1_SchmittTriggerConfig
3525                     	xdef	f_ADC1_PrescalerConfig
3526                     	xdef	f_ADC1_ITConfig
3527                     	xdef	f_ADC1_DataBufferCmd
3528                     	xdef	f_ADC1_ScanModeCmd
3529                     	xdef	f_ADC1_Cmd
3530                     	xdef	f_ADC1_Init
3531                     	xdef	f_ADC1_DeInit
3532                     	xref	f_assert_failed
3533                     .const:	section	.text
3534  0000               L542:
3535  0000 73746d38735f  	dc.b	"stm8s_stdperiph_dr"
3536  0012 697665725c73  	dc.b	"iver\src\stm8s_adc"
3537  0024 312e6300      	dc.b	"1.c",0
3557                     	end
