/*
 * ledprograms.h
 *
 *  Created on: Apr 10, 2020
 *      Author: chris
 */

#ifndef INC_LEDPROGRAMS_H_
#define INC_LEDPROGRAMS_H_

#include <stdint.h>

/*
void ledprogram_syncfade();
void ledprogram_panfade();
*/
void ledprogram_contfade();
void ledprogram_stepfade();
/*
uint8_t get_pwm_bit_pos();
void increment_pwm_bit_pos();
void reset_pwm_bit_pos();
*/
#endif /* INC_LEDPROGRAMS_H_ */