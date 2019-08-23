   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  78                     ; 42 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  78                     ; 43 {
  79                     	switch	.text
  80  0000               f_IWDG_WriteAccessCmd:
  84                     ; 45     assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  86                     ; 47     IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
  88  0000 c750e0        	ld	20704,a
  89                     ; 48 }
  92  0003 87            	retf
 181                     ; 57 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 181                     ; 58 {
 182                     	switch	.text
 183  0004               f_IWDG_SetPrescaler:
 187                     ; 60     assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 189                     ; 62     IWDG->PR = (uint8_t)IWDG_Prescaler;
 191  0004 c750e1        	ld	20705,a
 192                     ; 63 }
 195  0007 87            	retf
 226                     ; 72 void IWDG_SetReload(uint8_t IWDG_Reload)
 226                     ; 73 {
 227                     	switch	.text
 228  0008               f_IWDG_SetReload:
 232                     ; 74     IWDG->RLR = IWDG_Reload;
 234  0008 c750e2        	ld	20706,a
 235                     ; 75 }
 238  000b 87            	retf
 260                     ; 83 void IWDG_ReloadCounter(void)
 260                     ; 84 {
 261                     	switch	.text
 262  000c               f_IWDG_ReloadCounter:
 266                     ; 85     IWDG->KR = IWDG_KEY_REFRESH;
 268  000c 35aa50e0      	mov	20704,#170
 269                     ; 86 }
 272  0010 87            	retf
 294                     ; 93 void IWDG_Enable(void)
 294                     ; 94 {
 295                     	switch	.text
 296  0011               f_IWDG_Enable:
 300                     ; 95     IWDG->KR = IWDG_KEY_ENABLE;
 302  0011 35cc50e0      	mov	20704,#204
 303                     ; 96 }
 306  0015 87            	retf
 318                     	xdef	f_IWDG_Enable
 319                     	xdef	f_IWDG_ReloadCounter
 320                     	xdef	f_IWDG_SetReload
 321                     	xdef	f_IWDG_SetPrescaler
 322                     	xdef	f_IWDG_WriteAccessCmd
 341                     	end
