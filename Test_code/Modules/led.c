/*
	******************************************************************************
  * @file    led.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file contains all the functions for the LED 
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "led.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* Public functions ----------------------------------------------------------*/

/*
  * @brief  Call the library function to initialize GPIO
  * @param  None
  * @retval None
*/
void LED_Init(void)
{
	GPIO_Init(GPIOD , GPIO_PIN_0 , GPIO_MODE_OUT_PP_LOW_FAST);
	//GPIO_WriteLow(GPIOD , GPIO_PIN_0);
	//Timer1_Delay_1ms(1000);
	//GPIO_WriteHigh(GPIOD , GPIO_PIN_0);
}

/*
  * @brief  Call the library function to make GPIOD_0 Low
  * @param  None
  * @retval None
*/
void LED_On(void)
{
	GPIO_WriteLow(GPIOD , GPIO_PIN_0);
}

/*
  * @brief  Call the library function to make GPIOD_0 High
  * @param  None
  * @retval None
*/
void LED_Off(void)
{
	GPIO_WriteHigh(GPIOD , GPIO_PIN_0);
}

/**************************************END OF FILE**************************************/


