   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 117                     ; 48 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 117                     ; 49 {
 118                     	switch	.text
 119  0000               f_RST_GetFlagStatus:
 123                     ; 51     assert_param(IS_RST_FLAG_OK(RST_Flag));
 125                     ; 55     return ((FlagStatus)((uint8_t)RST->SR & (uint8_t)RST_Flag));
 127  0000 c450b3        	and	a,20659
 130  0003 87            	retf
 164                     ; 64 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 164                     ; 65 {
 165                     	switch	.text
 166  0004               f_RST_ClearFlag:
 170                     ; 67     assert_param(IS_RST_FLAG_OK(RST_Flag));
 172                     ; 69     RST->SR = (uint8_t)RST_Flag;
 174  0004 c750b3        	ld	20659,a
 175                     ; 70 }
 178  0007 87            	retf
 190                     	xdef	f_RST_ClearFlag
 191                     	xdef	f_RST_GetFlagStatus
 210                     	end
