/**
	******************************************************************************
  * @file    bsp.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file contains all the functions for the board 
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "bsp.h"
#include "stdio.h"
  
 

/**
  * @brief  Clock configuration use system HSI , one frequency division (HSI = 16M)
  * @param  None
  * @retval None
*/
void CLK_Configuration(void)
{
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); //Internal high speed clock 
}

/**
  * @brief  Clock configuration use system HSE , one frequency division (HSE = 16M)
  * @param  None
  * @retval None
*/
void ClockSwitch_HSE()
{
  CLK_HSECmd(ENABLE);//enable HSE 
  while(CLK_GetFlagStatus(CLK_FLAG_HSERDY)== RESET);  //waite HSE  for ready
  CLK_ClockSwitchCmd(ENABLE);   //enable clock switch
  CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO ,    
                CLK_SOURCE_HSE ,            //choose external clock
                DISABLE ,                   //turn off clock switch interrupt
                CLK_CURRENTCLOCKSTATE_ENABLE //enable crystal
                );
  
  while(CLK_GetFlagStatus(CLK_FLAG_SWBSY) != RESET);
  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV2);   //if switch succeed the cpu clock set 1 divider used eternal 16M as system clock
  
  CLK_ClockSwitchCmd(DISABLE);     //turn off switch
  CLK_HSICmd(DISABLE);    //turn off HSI
}

/**
  * @brief  System timer1 configuration
  * @param  None 
  * @retval None
*/
void Sys_Timer1_Configuration(void)
{
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);

  TIM1_TimeBaseInit(0,TIM1_COUNTERMODE_UP,16000,0);	/* one frequency divide ,16M/16000 timer 1ms */
  TIM1_ARRPreloadConfig(ENABLE);	/* enable auto reload */
  TIM1_Cmd(ENABLE);	/* turn on timer */
}
/**
  * @brief  System IIC configuration
  * @param  None 
  * @retval None
*/
void Sys_iic_Configuration(void)
{
  CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
  I2C_Init(100000, 0xA0, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, 1);
  I2C_StretchClockCmd(DISABLE);
  I2C_ITConfig(I2C_IT_BUF|I2C_IT_EVT, ENABLE);
  I2C_Cmd(ENABLE);
}
/**
  * @brief  Initializes board hardware 
  * @param  None 
  * @retval None
*/
void BSP_Initializes(void)
{
	LED_Init();
  //CLK_Configuration();
	ClockSwitch_HSE();
  Sys_Timer1_Configuration();
	TIM2_Init();
  Sys_iic_Configuration();
  enableInterrupts();
}

/**
  * @brief  Timer2 Init 
  * @param  None
  * @retval None
*/
void TIM2_Init()
{
  TIM2_TimeBaseInit(TIM2_PRESCALER_1 ,  ///* TIM2 one frequency divide ,16M/16000 timer 1ms */
                    16000                //set 1ms auto reload 16000
                    );
  TIM2_ARRPreloadConfig(ENABLE);        //Allow automatic arbitration
}
/**
  * @brief  Timer2 delay 1 ms 
  * @param  ms : the number of delay 
  * @retval None
*/
void TIM2_DelayMs(unsigned int ms)
{ 
    TIM2_Cmd(ENABLE);        //enable TIM2
    while(ms--)
    {
      while( TIM2_GetFlagStatus(TIM2_FLAG_UPDATE) == RESET); //wait counter reath to 1ms 
      TIM2_ClearFlag(TIM2_FLAG_UPDATE);  //Count completed 1 ms, clear the flags
    }
    TIM2_Cmd(DISABLE);       //disable TIM2
}

/**
  * @brief  Timer delay 1 ms 
  * @param  ms : the number of delay 
  * @retval None
*/
void Timer1_Delay_1ms(unsigned int ms)
{
	TIM1_Cmd(ENABLE);
	while( ms -- )
	{
		while(TIM1_GetFlagStatus(TIM1_FLAG_UPDATE) == RESET);/* wait the count reach to 1ms */
		TIM1_ClearFlag(TIM1_FLAG_UPDATE); /* count complete, clear the flag bit */
	}
	TIM1_Cmd(DISABLE);
}

/**************************************END OF FILE**************************************/
