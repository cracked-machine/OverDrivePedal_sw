################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/gpio.c \
../Core/Src/main.c \
../Core/Src/stm32l0xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l0xx.c \
../Core/Src/tim.c 

OBJS += \
./Core/Src/gpio.o \
./Core/Src/main.o \
./Core/Src/stm32l0xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l0xx.o \
./Core/Src/tim.o 

C_DEPS += \
./Core/Src/gpio.d \
./Core/Src/main.d \
./Core/Src/stm32l0xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l0xx.d \
./Core/Src/tim.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/gpio.o: ../Core/Src/gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/stm32l0xx_it.o: ../Core/Src/stm32l0xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32l0xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/syscalls.o: ../Core/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/sysmem.o: ../Core/Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/system_stm32l0xx.o: ../Core/Src/system_stm32l0xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/system_stm32l0xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/Src/tim.o: ../Core/Src/tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DHSI_VALUE=16000000' -DDEBUG '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DDATA_CACHE_ENABLE=1' '-DLSI_VALUE=37000' '-DMSI_VALUE=2097000' '-DVDD_VALUE=3300' '-DINSTRUCTION_CACHE_ENABLE=1' -DSTM32L011xx -DUSE_FULL_LL_DRIVER '-DPREFETCH_ENABLE=0' -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

