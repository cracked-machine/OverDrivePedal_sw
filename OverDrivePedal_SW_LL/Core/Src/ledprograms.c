/*
 * ledprograms.c
 *
 *  Created on: Apr 10, 2020
 *      Author: chris
 */

#include "ledprograms.h"

#include "tim.h"
#include "fade_log_seq.h"

#define LED_PERIOD_LIMIT 512


/*
// same value for sync, offset values for pan
uint16_t led_value1 = 0;
uint16_t led_value2 = 0;

uint8_t led_fade_up1 = 1;
uint8_t led_fade_up2 = 0;

uint8_t led1_fade_stop = 0;
uint8_t led2_fade_stop = 1;
*/

uint8_t pwm_bit_pos = FADE_LOG_SEQ_DATA_SIZE/5;
/*
void ledprogram_syncfade()
{
	// led pwm ch1
	if(led_value1 < 1)
	{
		led_fade_up1 = 1;
	}
	if(led_value1 > LED_PERIOD_LIMIT) {
		led_fade_up1 = 0;
	}

	if(led_fade_up1)
	{
		led_value1++;
	}
	else
	{
		led_value1--;
	}

	// led pwm ch2
	if(led_value2 < 1)
	{
		led_fade_up2 = 1;
	}
	if(led_value2 > LED_PERIOD_LIMIT) {
		led_fade_up2 = 0;
	}

	if(led_fade_up2)
	{
		led_value2++;
	}
	else
	{
		led_value2--;
	}
}

void ledprogram_panfade()
{
	// led pwm ch1
	if(!led1_fade_stop)
	{

		if(led_value1 < 1)
		{
			led_fade_up1 = 1;
			led1_fade_stop = 1;
			led2_fade_stop = 0;

		}
		if(led_value1 > LED_PERIOD_LIMIT) {
			led_fade_up1 = 0;
		}

		if(led_fade_up1)
		{
			led_value1++;
		}
		else
		{
			led_value1--;
		}
	}
	if(!led2_fade_stop)
	{
		// led pwm ch2
		if(led_value2 < 1)
		{
			led_fade_up2 = 1;
			led2_fade_stop = 1;
			led1_fade_stop = 0;

		}
		if(led_value2 > LED_PERIOD_LIMIT) {
			led_fade_up2 = 0;
		}

		if(led_fade_up2)
		{
			led_value2++;
		}
		else
		{
			led_value2--;
		}
	}

}
*/
void ledprogram_contfade()
{
	  //TIM2->CCR1 = 0;
	  //TIM2->CCR2 = 0;
	  TIM2->CCR1 = fade_log_seq_data_table[pwm_bit_pos];
	  TIM2->CCR2 = fade_log_seq_data_table[pwm_bit_pos];

	  pwm_bit_pos++;
	  if(pwm_bit_pos > (FADE_LOG_SEQ_DATA_SIZE-1))
		  pwm_bit_pos = FADE_LOG_SEQ_DATA_SIZE/5;
}

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

/*
uint8_t get_pwm_bit_pos()
{
	return pwm_bit_pos;
}

void increment_pwm_bit_pos()
{
	pwm_bit_pos++;
}

void reset_pwm_bit_pos()
{
	pwm_bit_pos = 0;
}
*/