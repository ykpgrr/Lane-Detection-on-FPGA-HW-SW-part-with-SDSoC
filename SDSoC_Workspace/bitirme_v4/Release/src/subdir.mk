################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Lane.cpp \
../src/TimeAnalyze.cpp \
../src/main.cpp \
../src/xf_sobel_accel.cpp 

OBJS += \
./src/Lane.o \
./src/TimeAnalyze.o \
./src/main.o \
./src/xf_sobel_accel.o 

CPP_DEPS += \
./src/Lane.d \
./src/TimeAnalyze.d \
./src/main.d \
./src/xf_sobel_accel.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ -Wall -O3 -I"../src" -I"C:/xfopencv/include" -I"C:/OpencvWin/include" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<" -sds-hw sobel_accel xf_sobel_accel.cpp  -clkid 2 -sds-end -sds-hw Sobel xf_sobel.hpp  -clkid 2 -sds-end -sds-sys-config linux -sds-proc linux -sds-pf "zed"
	@echo 'Finished building: $<'
	@echo ' '


