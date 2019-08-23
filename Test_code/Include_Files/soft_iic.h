
/*
  ******************************************************************************
  * @file    soft_iic.h
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   This file about the function declare of soft IIC
  ******************************************************************************
*/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _SOFT_IIC_H
#define _SOFT_IIC_H

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "include.h"
typedef struct
{
  uint8_t addr;//slaver address
  uint8_t rw_flag;// read write flag
  uint8_t reg_addr;//register address
  uint8_t len;//length of read or write
  uint8_t *tx_buff;
  uint8_t *rx_buff;
	uint8_t value;  
}st_soft_iic;



#define IIC_SCL_GPIO_PORT             GPIOB
#define IIC_SCL_GPIO_PIN              GPIO_PIN_4

#define IIC_SDA_GPIO_PORT             GPIOB
#define IIC_SDA_GPIO_PIN              GPIO_PIN_5

#define iic_scl_out()                 GPIO_Init(IIC_SCL_GPIO_PORT, (GPIO_Pin_TypeDef)IIC_SCL_GPIO_PIN, GPIO_MODE_OUT_PP_HIGH_FAST)
#define iic_sda_out()                 GPIO_Init(IIC_SDA_GPIO_PORT, (GPIO_Pin_TypeDef)IIC_SDA_GPIO_PIN, GPIO_MODE_OUT_PP_HIGH_FAST)
#define iic_sda_in()                  GPIO_Init(IIC_SDA_GPIO_PORT, (GPIO_Pin_TypeDef)IIC_SDA_GPIO_PIN, GPIO_MODE_IN_PU_NO_IT)

#define iic_scl_1()                   GPIO_WriteHigh(IIC_SCL_GPIO_PORT, IIC_SCL_GPIO_PIN)
#define iic_scl_0()                   GPIO_WriteLow(IIC_SCL_GPIO_PORT, IIC_SCL_GPIO_PIN)

#define iic_sda_1()                   GPIO_WriteHigh(IIC_SDA_GPIO_PORT, IIC_SDA_GPIO_PIN)
#define iic_sda_0()                   GPIO_WriteLow(IIC_SDA_GPIO_PORT, IIC_SDA_GPIO_PIN)
#define iic_sda_read()                GPIO_ReadInputPin(IIC_SDA_GPIO_PORT, IIC_SDA_GPIO_PIN)




/* Exported functions ------------------------------------------------------- */
void Soft_Delay_10us(u32 nus);
void soft_IIC_init(void);
void soft_IIC_Start(void);
void soft_IIC_Stop(void);
uint8_t soft_IIC_Wait_Ack(void);
void soft_IIC_Ack(uint8_t ack);
uint8_t soft_IIC_WriteByte(uint8_t data);
uint8_t soft_IIC_ReadByte(uint8_t ack);
uint8_t soft_iic_transfer(st_soft_iic *iic_data);


#endif
/**************************************END OF FILE**************************************/