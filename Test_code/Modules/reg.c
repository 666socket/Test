/**
	******************************************************************************
  * @file    reg.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file contains all the functions for the register 
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "reg.h"

/* Private macros ------------------------------------------------------------*/
#define slaver_addr 0xA0
#define loop_num (sizeof(Init_arry)/sizeof(Init_arry[0]))

/* Global variable declare *****************************************************/
soft_reg Init_arry[] = 
{
	{0xF0 , 0x07 ,  0x07 , 0x87 , 0x07},
	{0xF1 , 0x00 ,  0xC7 , 0xC7 , 0x00},
	{0xF2 , 0x00 ,  0x07 , 0x07 , 0x00},
	{0xF3 , 0x03 ,  0x00 , 0x00 , 0x03},
	{0xF4 , 0x00 ,  0x0F , 0x0F , 0x00},
	{0xF5 , 0x00 ,  0x0F , 0x0F , 0x00},
	{0xF6 , 0x00 ,  0x01 , 0x01 , 0x00},
};

/**
  * @brief  Write register 
  * @param  addr : the address about write register
	* @param  new_value : ready to write new value
  * @retval None
*/
void Write_reg( uint8_t addr , uint8_t new_value)
{
	uint8_t i = 0;
	for(i = 0;i < loop_num;i ++)
	{
		if(addr == Init_arry[i].reg_addr)
			break;
	}
	Init_arry[i].result = ((Init_arry[i].old_value) & (Init_arry[i].used_bit ^ Init_arry[i].rw_ctrl)) | (new_value & Init_arry[i].rw_ctrl);
}

/**
  * @brief  Read register 
  * @param  addr : the address about read register
  * @retval return read the data 
*/
uint8_t Read_reg(uint8_t addr )
{
	uint8_t i = 0;
	for(i = 0;i < loop_num;i ++)
	{
		if(addr == Init_arry[i].reg_addr)
		{
			break;
		}
	}
	return Init_arry[i].result;
}

/**************************************END OF FILE**************************************/
