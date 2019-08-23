/**
  ******************************************************************************
  * @file    bsp.h
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file about the initialization of BSP
  ******************************************************************************
*/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _BSP_H
#define _BSP_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "include.h"

/* Exported variables ------------------------------------------------------- */

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported macros -----------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

void TIM2_Init(void);
void TIM2_DelayMs(unsigned int ms);
void CLK_Configuration(void);
void ClockSwitch_HSE(void);
void BSP_Initializes(void);
void Sys_Timer1_Configuration(void);
void system_delay_ms(u32 nms);
void Timer1_Delay_1ms(unsigned int ms);

#endif 
/**************************************END OF FILE**************************************/
