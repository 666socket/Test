/**
	******************************************************************************
  * @file    soft_iic.c
  * @author  Wang
  * @version V1.0.0
  * @date    6-August-2019
  * @brief   All the functons of gpio which are used to simulate iic communication 
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "soft_iic.h"


/**
  * @brief  function dealy 
  * @param  nus : delay time 
  * @retval None
*/

void Soft_Delay_10us(u32 nus)
{  
  while(nus--);
}


/**
  * @brief  Soft IIC initialize
  * @param  None
  * @retval None
*/
void soft_IIC_init(void)
{
  iic_scl_out();
  iic_sda_out();
	iic_sda_1();
  iic_scl_1();
}

/**
  * @brief  Soft IIC Start signal
  * @param  None
  * @retval None
*/
void soft_IIC_Start(void)
{
  iic_sda_1();
  iic_scl_1();
  Soft_Delay_10us(1);
  iic_sda_0();
  Soft_Delay_10us(1);
  iic_scl_0();
}
/**
  * @brief  Soft IIC Stop signal
  * @param  None
  * @retval None
*/
void soft_IIC_Stop(void)
{
	iic_sda_0();
  iic_scl_1();
  Soft_Delay_10us(1);
  iic_sda_1();
  Soft_Delay_10us(1);
  iic_scl_1();
}


/**
  * @brief  Soft IIC wait ACK signal
  * @param  None
  * @retval return read the sda level reverse
*/
uint8_t soft_IIC_Wait_Ack(void)
{
  uint8_t ack = 0;
	 
  iic_sda_in();
  Soft_Delay_10us(1);
	iic_scl_1();
  Soft_Delay_10us(1);
  ack = iic_sda_read();
  iic_scl_0();
  iic_sda_out();
	/*
  iic_sda_0();
  system_delay_100us(1);
  */
  return !ack;
}

/**
  * @brief  Soft IIC ACK signal
  * @param  ack : if (ack == 1) valid response , if (ack==0) invalid response
						ack == 1 : ACK
						ack == 0 : NAK
  * @retval None
*/
void soft_IIC_Ack(uint8_t ack)
{
  iic_scl_0();
  iic_sda_out();
  
  if(1 == ack) 
	{
		iic_sda_0();
	}
  else 
	{
		iic_sda_1();
	}
  Soft_Delay_10us(1);
  iic_scl_1();
	Soft_Delay_10us(1);
  iic_scl_0();
}

/**
  * @brief  Soft IIC write one byte 
  * @param  data : ready to write data
  * @retval return recall Soft_iic_Wait_Ack() , judge is a valid response
*/
uint8_t soft_IIC_WriteByte(uint8_t data) 
{
  uint8_t bits;
  uint8_t Loop_i = 0;
  iic_sda_out();
  
  for( Loop_i = 0;Loop_i < 8;Loop_i ++)
  {
    iic_scl_0();
    
    bits = data&0x80;
    if(0x80 == bits)
    {
      iic_sda_1();
    }
    else
    {
      iic_sda_0();
    }
    //Soft_Delay_10us(1);
    
    iic_scl_1();
    //Soft_Delay_10us(1);
    
    data = data << 1;    
  }
  iic_scl_0();
  
  return soft_IIC_Wait_Ack();
}

/**
  * @brief  Soft IIC read one byte 
  * @param  ack : when read the data , response ack signal ack==1 ACK , ack==0 NAK
  * @retval return read the data from slaver
*/
uint8_t soft_IIC_ReadByte(uint8_t ack)
{
  uint8_t data = 0;
  uint8_t Loop_i = 0;
  iic_sda_1();
  iic_sda_in();
  //Soft_Delay_10us(1);

  for( Loop_i = 0;Loop_i < 8;Loop_i ++)
  {
    data = data << 1;    
    iic_scl_1();
  
    if(iic_sda_read())
    {
      data = (1 << 0)|data;
    }
    else
    {
      data = (0 << 0)|data;
    }
		
    //Soft_Delay_10us(1);
		
    iic_scl_0();
    //Soft_Delay_10us(1);
  }
  soft_IIC_Ack(ack);
  
  return data;
}
/**
  * @brief  Soft IIC two way transfer data 
  * @param  data : ready to read or write data
  * @retval return 1 : succeed ,return 0 : failed
*/
uint8_t soft_iic_transfer(st_soft_iic *iic_data)
{
  uint8_t rdata;
  uint8_t i = 0;
  if(0 == iic_data->rw_flag)
  {
    soft_IIC_Start();
    soft_IIC_WriteByte(iic_data->addr );
		soft_IIC_WriteByte(iic_data->reg_addr);
		soft_IIC_WriteByte(iic_data->value);
  }
  else
  {
    soft_IIC_Start();
    soft_IIC_WriteByte(iic_data->addr );
		soft_IIC_WriteByte(iic_data->reg_addr);
	
    soft_IIC_Start();
    soft_IIC_WriteByte((iic_data->addr ) | 0x01);
		rdata = soft_IIC_ReadByte(0);
  }
  soft_IIC_Stop();
  return rdata;
}
/**************************************END OF FILE**************************************/

