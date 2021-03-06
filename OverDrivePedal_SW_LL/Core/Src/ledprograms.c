/*
 * ledprograms.c
 *
 *  Created on: Apr 10, 2020
 *      Author: chris
 */

#include "ledprograms.h"

#include "tim.h"
#include "fade_log_seq.h"			// even space fade sequence
//#include "fade_lin_seq.h"			// 90%-on fade sequence

#define LED_PERIOD_LIMIT 512



uint8_t pwm_bit_pos = 0;
uint8_t pwm_dir_forward = 1;


// Symmetrical PWM by lookup table
void ledprogram_symcontfade()
{

	  if(pwm_dir_forward)
		  pwm_bit_pos++;
	  else
		  pwm_bit_pos--;



	  // change direction at sequence limits
	  if(pwm_bit_pos >= ((FADE_LOG_SEQ_DATA_SIZE)-1))
	  {
		  //pwm_bit_pos = FADE_LOG_SEQ_DATA_SIZE/5;
		  pwm_dir_forward = 0;
		  pwm_bit_pos--;
	  }
	  if(pwm_bit_pos < 1)
	  {
		  pwm_dir_forward = 1;
	  }



	  TIM2->CCR1 = fade_log_seq_data_table[pwm_bit_pos];
	  TIM2->CCR2 = fade_log_seq_data_table[pwm_bit_pos];

}

// PWM by log lookup table
void ledprogram_contfade()
{

	  TIM2->CCR1 = fade_log_seq_data_table[pwm_bit_pos];
	  TIM2->CCR2 = fade_log_seq_data_table[pwm_bit_pos];

	  pwm_bit_pos++;
	  if(pwm_bit_pos > (FADE_LOG_SEQ_DATA_SIZE-1))
		  pwm_bit_pos = 0;
}

// PWM by left-shift
void ledprogram_stepfade()
{
	  TIM2->CCR1 = 0;
	  TIM2->CCR2 = 0;
	  TIM2->CCR1 |= (1<<pwm_bit_pos);
	  TIM2->CCR2 |= (1<<pwm_bit_pos);

	  pwm_bit_pos++;
	  if(pwm_bit_pos > 15)
		  pwm_bit_pos = 0;
}

// reset duty cycles to  0%
void ledprogram_resetall()
{
	pwm_bit_pos = 0;
	  TIM2->CCR1 = 0;
	  TIM2->CCR2 = 0;
}

// flash *num* times with *delay* spacing
void ledprogram_flash(uint8_t num, uint8_t delay)
{
	for(uint8_t seq = 0; seq < num; seq++)
	{
		  TIM2->CCR1 ^= 0x30;
		  TIM2->CCR2 ^= 0x30;
		  LL_mDelay(delay);

	}
}

