/*
  ******************************************************************************
  * @file    24c32.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file contains all the functions for the read or write 24c32  
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "24c32.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* Public functions ----------------------------------------------------------*/


/*
  * @brief  Write data to 24c32 device
  * @param  addr : slaver address
  * @param  reg_addr : register address
  * @param  send_data : send data
  * @retval None
*/
void Write_24c32(uint8_t addr , uint8_t reg_addr , uint8_t send_data )
{
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr);
	Soft_iic_Write_Byte(reg_addr>>8);	/*High address */
	Soft_iic_Write_Byte(reg_addr%256);	/*Low address */
	Soft_iic_Write_Byte(send_data);
	Soft_iic_Stop();
}

/*
  * @brief  Read data from 24c32 device
  * @param  addr : slaver address
  * @param  reg_addr : register address
  * @retval return read data from DS1307 device
*/
uint8_t Read_24c32(uint8_t addr , uint8_t reg_addr)
{
	uint8_t data = 0;
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr);
	Soft_iic_Write_Byte(reg_addr>>8);	/*High address */
	Soft_iic_Write_Byte(reg_addr%256);	/*Low address */
	
	Soft_iic_Start();
	Soft_iic_Write_Byte(addr | 0x01);
	data = Soft_iic_Read_Byte(0);
	Soft_iic_Stop();
	return data;
}

/*
  * @brief  Test the 24c32 about read and write
  * @param  None
  * @retval None
*/

void Test_24c32(void)
{
	uint8_t recv_data;
	Write_24c32(0xA0,0,10);
	Soft_delay_10us(500);  /* need to add delay */
	recv_data = Read_24c32(0xA0,0);
	
	if(recv_data == 10)
		{
			LED_On();
			Timer1_Delay_1ms(100);
			LED_Off();
			Timer1_Delay_1ms(100);
		}
}

/****************************END OF FILE**************************************/
