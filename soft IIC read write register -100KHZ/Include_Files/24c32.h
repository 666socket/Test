/*
	******************************************************************************
  * @file    ds1307.h
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file about the declare function of DS1307
  ******************************************************************************
*/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _AT24C32_H
#define _AT24C32_H

/* Includes ------------------------------------------------------------------*/
#include "include.h"
#include "stm8s.h"
/* Exported variables ------------------------------------------------------- */

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported macros -----------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

void Write_24c32(uint8_t addr , uint8_t reg_addr , uint8_t send_data );
uint8_t Read_24c32(uint8_t addr , uint8_t reg_addr);
void Test_24c32(void);

#endif
/**************************************END OF FILE**************************************/



