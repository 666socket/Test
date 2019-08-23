/**
  ******************************************************************************
  * @file    main.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file  call to function in other files
  ********************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "include.h"
#include "stdlib.h"
#include "stm8s_clk.h"
/* Private macros ------------------------------------------------------------*/
#define slaver_addr 0xA0
#define write 0
#define read 1
/**
  * @brief  main entry point
  * @param  None
  * @retval None
*/

void main(void)
{
	st_soft_iic tr_iic;
  	uint8_t rdata = 1;
  	BSP_Initializes();
  	soft_IIC_init();

	tr_iic.addr = slaver_addr;
	tr_iic.reg_addr = 0xF0;
	tr_iic.rw_flag = write; //write
	tr_iic.value = 0x13;
	soft_iic_transfer(&tr_iic);
	
	Timer1_Delay_1ms(1000);

	tr_iic.addr = slaver_addr;
	tr_iic.reg_addr = 0xF3;
	tr_iic.rw_flag = read; //read
	rdata = soft_iic_transfer(&tr_iic);
  	while(1)
  	{
		if(rdata == 0x03)
		{
			LED_On();
			Timer1_Delay_1ms(200);
			LED_Off();
			Timer1_Delay_1ms(300);
		}
  	}
}
/**************************************END OF FILE**************************************/
