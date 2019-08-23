/**
  ******************************************************************************
  * @file    reg.h
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file about the initialization and declare of register
  ******************************************************************************
*/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _REG_H_
#define _REG_H_
#include "include.h"

/* Exported variables ------------------------------------------------------- */

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported macros -----------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */
typedef struct
{
  const uint8_t reg_addr;			/* register address */
	const uint8_t old_value;  	/* old value */
	const uint8_t rw_ctrl;  		/* read or write bit contrl */
	const uint8_t used_bit;			/* registet used bit */
	volatile uint8_t result; 	/*reset value */
}soft_reg;


void Write_reg( uint8_t addr , uint8_t new_value);
uint8_t Read_reg(uint8_t addr );

#endif
/**************************************END OF FILE**************************************/
