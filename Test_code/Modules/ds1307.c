/*
  ******************************************************************************
  * @file    ds1307.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file contains all the functions for the read or write DS1307  
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "ds1307.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* Public functions ----------------------------------------------------------*/

/*
  * @brief  Write data to DS1307 device
  * @param  addr : slaver address
  * @param  reg_addr : register address
  * @param  send_data : send data
  * @retval None
*/
void Write_Ds1307(uint8_t addr , uint8_t reg_addr , uint8_t send_data )
{
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr);
	Soft_iic_Write_Byte(reg_addr);
	Soft_iic_Write_Byte(send_data);
	Soft_iic_Stop();
}
/*
  * @brief  Read data from DS1307 device
  * @param  addr : slaver address
  * @param  reg_addr : register address
  * @retval return read data from DS1307 device
*/
uint8_t Read_Ds1307(uint8_t addr , uint8_t reg_addr)
{
	uint8_t data = 0;
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr);
	Soft_iic_Write_Byte(reg_addr);
	
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr | 0x01);
	data = Soft_iic_Read_Byte(0);
	Soft_iic_Stop();
	return data;
}
/**************************************END OF FILE**************************************/
