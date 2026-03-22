/*****************************************************************************
 * Copyright (c) 2023 Rowley Associates Limited.                             *
 *                                                                           *
 * This file may be distributed under the terms of the License Agreement     *
 * provided with this software.                                              *
 *                                                                           *
 * THIS FILE IS PROVIDED AS IS WITH NO WARRANTY OF ANY KIND, INCLUDING THE   *
 * WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. *
 *                                                                           *
 *****************************************************************************/

/*****************************************************************************
 *                         Preprocessor Definitions                          *
 *                         ------------------------                          *
 * STARTUP_FROM_RESET                                                        *
 *                                                                           *
 *   If defined, the program will startup from power-on/reset. If not        *
 *   defined the program will just loop endlessly from power-on/reset.       *
 *                                                                           *
 * VECTORS_IN_RAM                                                            *
 *                                                                           *
 *   If defined, an area of RAM will large enough to store the vector table  *
 *   will be reserved.                                                       *
 *                                                                           *
 *****************************************************************************/

  .syntax unified
  .code 16

  .section .init, "ax"
  .balign 4

/*****************************************************************************
 * Default Exception Handlers                                                *
 *****************************************************************************/

#ifndef STARTUP_FROM_RESET

  .thumb_func
  .weak Reset_Wait
Reset_Wait:
  b .

#endif

  .thumb_func
  .weak NMI_Handler
NMI_Handler:
  b .

  .thumb_func
  .weak HardFault_Handler
HardFault_Handler:
  b .

  .thumb_func
  .weak MemManage_Handler
MemManage_Handler:
  b .

  .thumb_func
  .weak BusFault_Handler
BusFault_Handler:
  b .

  .thumb_func
  .weak UsageFault_Handler
UsageFault_Handler:
  b .

  .thumb_func
  .weak SVC_Handler
SVC_Handler:
  b .

  .thumb_func
  .weak DebugMon_Handler
DebugMon_Handler:
  b .

  .thumb_func
  .weak PendSV_Handler
PendSV_Handler:
  b .

  .thumb_func
  .weak SysTick_Handler
SysTick_Handler:
  b .

  .thumb_func
Dummy_Handler:
  b .

#if defined(__OPTIMIZATION_SMALL)

  .weak BOD_IRQHandler
  .thumb_set BOD_IRQHandler,Dummy_Handler

  .weak IRC_IRQHandler
  .thumb_set IRC_IRQHandler,Dummy_Handler

  .weak PWRWU_IRQHandler
  .thumb_set PWRWU_IRQHandler,Dummy_Handler

  .weak CKFAIL_IRQHandler
  .thumb_set CKFAIL_IRQHandler,Dummy_Handler

  .weak RTC_IRQHandler
  .thumb_set RTC_IRQHandler,Dummy_Handler

  .weak TAMPER_IRQHandler
  .thumb_set TAMPER_IRQHandler,Dummy_Handler

  .weak WDT_IRQHandler
  .thumb_set WDT_IRQHandler,Dummy_Handler

  .weak WWDT_IRQHandler
  .thumb_set WWDT_IRQHandler,Dummy_Handler

  .weak EINT0_IRQHandler
  .thumb_set EINT0_IRQHandler,Dummy_Handler

  .weak EINT1_IRQHandler
  .thumb_set EINT1_IRQHandler,Dummy_Handler

  .weak EINT2_IRQHandler
  .thumb_set EINT2_IRQHandler,Dummy_Handler

  .weak EINT3_IRQHandler
  .thumb_set EINT3_IRQHandler,Dummy_Handler

  .weak EINT4_IRQHandler
  .thumb_set EINT4_IRQHandler,Dummy_Handler

  .weak EINT5_IRQHandler
  .thumb_set EINT5_IRQHandler,Dummy_Handler

  .weak GPA_IRQHandler
  .thumb_set GPA_IRQHandler,Dummy_Handler

  .weak GPB_IRQHandler
  .thumb_set GPB_IRQHandler,Dummy_Handler

  .weak GPC_IRQHandler
  .thumb_set GPC_IRQHandler,Dummy_Handler

  .weak GPD_IRQHandler
  .thumb_set GPD_IRQHandler,Dummy_Handler

  .weak GPE_IRQHandler
  .thumb_set GPE_IRQHandler,Dummy_Handler

  .weak GPF_IRQHandler
  .thumb_set GPF_IRQHandler,Dummy_Handler

  .weak QSPI0_IRQHandler
  .thumb_set QSPI0_IRQHandler,Dummy_Handler

  .weak SPI0_IRQHandler
  .thumb_set SPI0_IRQHandler,Dummy_Handler

  .weak BRAKE0_IRQHandler
  .thumb_set BRAKE0_IRQHandler,Dummy_Handler

  .weak PWM0P0_IRQHandler
  .thumb_set PWM0P0_IRQHandler,Dummy_Handler

  .weak PWM0P1_IRQHandler
  .thumb_set PWM0P1_IRQHandler,Dummy_Handler

  .weak PWM0P2_IRQHandler
  .thumb_set PWM0P2_IRQHandler,Dummy_Handler

  .weak BRAKE1_IRQHandler
  .thumb_set BRAKE1_IRQHandler,Dummy_Handler

  .weak PWM1P0_IRQHandler
  .thumb_set PWM1P0_IRQHandler,Dummy_Handler

  .weak PWM1P1_IRQHandler
  .thumb_set PWM1P1_IRQHandler,Dummy_Handler

  .weak PWM1P2_IRQHandler
  .thumb_set PWM1P2_IRQHandler,Dummy_Handler

  .weak TMR0_IRQHandler
  .thumb_set TMR0_IRQHandler,Dummy_Handler

  .weak TMR1_IRQHandler
  .thumb_set TMR1_IRQHandler,Dummy_Handler

  .weak TMR2_IRQHandler
  .thumb_set TMR2_IRQHandler,Dummy_Handler

  .weak TMR3_IRQHandler
  .thumb_set TMR3_IRQHandler,Dummy_Handler

  .weak UART0_IRQHandler
  .thumb_set UART0_IRQHandler,Dummy_Handler

  .weak UART1_IRQHandler
  .thumb_set UART1_IRQHandler,Dummy_Handler

  .weak I2C0_IRQHandler
  .thumb_set I2C0_IRQHandler,Dummy_Handler

  .weak I2C1_IRQHandler
  .thumb_set I2C1_IRQHandler,Dummy_Handler

  .weak PDMA_IRQHandler
  .thumb_set PDMA_IRQHandler,Dummy_Handler

  .weak DAC_IRQHandler
  .thumb_set DAC_IRQHandler,Dummy_Handler

  .weak EADC0_IRQHandler
  .thumb_set EADC0_IRQHandler,Dummy_Handler

  .weak EADC1_IRQHandler
  .thumb_set EADC1_IRQHandler,Dummy_Handler

  .weak ACMP01_IRQHandler
  .thumb_set ACMP01_IRQHandler,Dummy_Handler

  .weak EADC2_IRQHandler
  .thumb_set EADC2_IRQHandler,Dummy_Handler

  .weak EADC3_IRQHandler
  .thumb_set EADC3_IRQHandler,Dummy_Handler

  .weak UART2_IRQHandler
  .thumb_set UART2_IRQHandler,Dummy_Handler

  .weak UART3_IRQHandler
  .thumb_set UART3_IRQHandler,Dummy_Handler

  .weak USCI0_IRQHandler
  .thumb_set USCI0_IRQHandler,Dummy_Handler

  .weak SPI1_IRQHandler
  .thumb_set SPI1_IRQHandler,Dummy_Handler

  .weak USCI1_IRQHandler
  .thumb_set USCI1_IRQHandler,Dummy_Handler

  .weak USBD_IRQHandler
  .thumb_set USBD_IRQHandler,Dummy_Handler

  .weak BPWM1_IRQHandler
  .thumb_set BPWM1_IRQHandler,Dummy_Handler

  .weak PSIO_IRQHandler
  .thumb_set PSIO_IRQHandler,Dummy_Handler

  .weak CAN0_IRQHandler
  .thumb_set CAN0_IRQHandler,Dummy_Handler

  .weak CRYPTO_IRQHandler
  .thumb_set CRYPTO_IRQHandler,Dummy_Handler

  .weak SC0_IRQHandler
  .thumb_set SC0_IRQHandler,Dummy_Handler

  .weak SC1_IRQHandler
  .thumb_set SC1_IRQHandler,Dummy_Handler

  .weak USCI2_IRQHandler
  .thumb_set USCI2_IRQHandler,Dummy_Handler

  .weak LCD_INT_IRQHandler
  .thumb_set LCD_INT_IRQHandler,Dummy_Handler

  .weak OPA0_IRQHandler
  .thumb_set OPA0_IRQHandler,Dummy_Handler

  .weak TK_INT_IRQHandler
  .thumb_set TK_INT_IRQHandler,Dummy_Handler

#else

  .thumb_func
  .weak BOD_IRQHandler
BOD_IRQHandler:
  b .

  .thumb_func
  .weak IRC_IRQHandler
IRC_IRQHandler:
  b .

  .thumb_func
  .weak PWRWU_IRQHandler
PWRWU_IRQHandler:
  b .

  .thumb_func
  .weak CKFAIL_IRQHandler
CKFAIL_IRQHandler:
  b .

  .thumb_func
  .weak RTC_IRQHandler
RTC_IRQHandler:
  b .

  .thumb_func
  .weak TAMPER_IRQHandler
TAMPER_IRQHandler:
  b .

  .thumb_func
  .weak WDT_IRQHandler
WDT_IRQHandler:
  b .

  .thumb_func
  .weak WWDT_IRQHandler
WWDT_IRQHandler:
  b .

  .thumb_func
  .weak EINT0_IRQHandler
EINT0_IRQHandler:
  b .

  .thumb_func
  .weak EINT1_IRQHandler
EINT1_IRQHandler:
  b .

  .thumb_func
  .weak EINT2_IRQHandler
EINT2_IRQHandler:
  b .

  .thumb_func
  .weak EINT3_IRQHandler
EINT3_IRQHandler:
  b .

  .thumb_func
  .weak EINT4_IRQHandler
EINT4_IRQHandler:
  b .

  .thumb_func
  .weak EINT5_IRQHandler
EINT5_IRQHandler:
  b .

  .thumb_func
  .weak GPA_IRQHandler
GPA_IRQHandler:
  b .

  .thumb_func
  .weak GPB_IRQHandler
GPB_IRQHandler:
  b .

  .thumb_func
  .weak GPC_IRQHandler
GPC_IRQHandler:
  b .

  .thumb_func
  .weak GPD_IRQHandler
GPD_IRQHandler:
  b .

  .thumb_func
  .weak GPE_IRQHandler
GPE_IRQHandler:
  b .

  .thumb_func
  .weak GPF_IRQHandler
GPF_IRQHandler:
  b .

  .thumb_func
  .weak QSPI0_IRQHandler
QSPI0_IRQHandler:
  b .

  .thumb_func
  .weak SPI0_IRQHandler
SPI0_IRQHandler:
  b .

  .thumb_func
  .weak BRAKE0_IRQHandler
BRAKE0_IRQHandler:
  b .

  .thumb_func
  .weak PWM0P0_IRQHandler
PWM0P0_IRQHandler:
  b .

  .thumb_func
  .weak PWM0P1_IRQHandler
PWM0P1_IRQHandler:
  b .

  .thumb_func
  .weak PWM0P2_IRQHandler
PWM0P2_IRQHandler:
  b .

  .thumb_func
  .weak BRAKE1_IRQHandler
BRAKE1_IRQHandler:
  b .

  .thumb_func
  .weak PWM1P0_IRQHandler
PWM1P0_IRQHandler:
  b .

  .thumb_func
  .weak PWM1P1_IRQHandler
PWM1P1_IRQHandler:
  b .

  .thumb_func
  .weak PWM1P2_IRQHandler
PWM1P2_IRQHandler:
  b .

  .thumb_func
  .weak TMR0_IRQHandler
TMR0_IRQHandler:
  b .

  .thumb_func
  .weak TMR1_IRQHandler
TMR1_IRQHandler:
  b .

  .thumb_func
  .weak TMR2_IRQHandler
TMR2_IRQHandler:
  b .

  .thumb_func
  .weak TMR3_IRQHandler
TMR3_IRQHandler:
  b .

  .thumb_func
  .weak UART0_IRQHandler
UART0_IRQHandler:
  b .

  .thumb_func
  .weak UART1_IRQHandler
UART1_IRQHandler:
  b .

  .thumb_func
  .weak I2C0_IRQHandler
I2C0_IRQHandler:
  b .

  .thumb_func
  .weak I2C1_IRQHandler
I2C1_IRQHandler:
  b .

  .thumb_func
  .weak PDMA_IRQHandler
PDMA_IRQHandler:
  b .

  .thumb_func
  .weak DAC_IRQHandler
DAC_IRQHandler:
  b .

  .thumb_func
  .weak EADC0_IRQHandler
EADC0_IRQHandler:
  b .

  .thumb_func
  .weak EADC1_IRQHandler
EADC1_IRQHandler:
  b .

  .thumb_func
  .weak ACMP01_IRQHandler
ACMP01_IRQHandler:
  b .

  .thumb_func
  .weak EADC2_IRQHandler
EADC2_IRQHandler:
  b .

  .thumb_func
  .weak EADC3_IRQHandler
EADC3_IRQHandler:
  b .

  .thumb_func
  .weak UART2_IRQHandler
UART2_IRQHandler:
  b .

  .thumb_func
  .weak UART3_IRQHandler
UART3_IRQHandler:
  b .

  .thumb_func
  .weak USCI0_IRQHandler
USCI0_IRQHandler:
  b .

  .thumb_func
  .weak SPI1_IRQHandler
SPI1_IRQHandler:
  b .

  .thumb_func
  .weak USCI1_IRQHandler
USCI1_IRQHandler:
  b .

  .thumb_func
  .weak USBD_IRQHandler
USBD_IRQHandler:
  b .

  .thumb_func
  .weak BPWM1_IRQHandler
BPWM1_IRQHandler:
  b .

  .thumb_func
  .weak PSIO_IRQHandler
PSIO_IRQHandler:
  b .

  .thumb_func
  .weak CAN0_IRQHandler
CAN0_IRQHandler:
  b .

  .thumb_func
  .weak CRYPTO_IRQHandler
CRYPTO_IRQHandler:
  b .

  .thumb_func
  .weak SC0_IRQHandler
SC0_IRQHandler:
  b .

  .thumb_func
  .weak SC1_IRQHandler
SC1_IRQHandler:
  b .

  .thumb_func
  .weak USCI2_IRQHandler
USCI2_IRQHandler:
  b .

  .thumb_func
  .weak LCD_INT_IRQHandler
LCD_INT_IRQHandler:
  b .

  .thumb_func
  .weak OPA0_IRQHandler
OPA0_IRQHandler:
  b .

  .thumb_func
  .weak TK_INT_IRQHandler
TK_INT_IRQHandler:
  b .

#endif

/*****************************************************************************
 * Vector Table                                                              *
 *****************************************************************************/

  .section .vectors, "ax"
  .balign 512
  .global _vectors
  .extern __stack_end__
#ifdef STARTUP_FROM_RESET
  .extern Reset_Handler
#endif

_vectors:
  .word __stack_end__
#ifdef STARTUP_FROM_RESET
  .word Reset_Handler
#else
  .word Reset_Wait
#endif
  .word NMI_Handler
  .word HardFault_Handler
  .word MemManage_Handler
  .word BusFault_Handler
  .word UsageFault_Handler
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word SVC_Handler
  .word DebugMon_Handler
  .word 0 /* Reserved */
  .word PendSV_Handler
  .word SysTick_Handler
  .word BOD_IRQHandler
  .word IRC_IRQHandler
  .word PWRWU_IRQHandler
  .word 0 /* Reserved */
  .word CKFAIL_IRQHandler
  .word Dummy_Handler /* Reserved */
  .word RTC_IRQHandler
  .word TAMPER_IRQHandler
  .word WDT_IRQHandler
  .word WWDT_IRQHandler
  .word EINT0_IRQHandler
  .word EINT1_IRQHandler
  .word EINT2_IRQHandler
  .word EINT3_IRQHandler
  .word EINT4_IRQHandler
  .word EINT5_IRQHandler
  .word GPA_IRQHandler
  .word GPB_IRQHandler
  .word GPC_IRQHandler
  .word GPD_IRQHandler
  .word GPE_IRQHandler
  .word GPF_IRQHandler
  .word QSPI0_IRQHandler
  .word SPI0_IRQHandler
  .word BRAKE0_IRQHandler
  .word PWM0P0_IRQHandler
  .word PWM0P1_IRQHandler
  .word PWM0P2_IRQHandler
  .word BRAKE1_IRQHandler
  .word PWM1P0_IRQHandler
  .word PWM1P1_IRQHandler
  .word PWM1P2_IRQHandler
  .word TMR0_IRQHandler
  .word TMR1_IRQHandler
  .word TMR2_IRQHandler
  .word TMR3_IRQHandler
  .word UART0_IRQHandler
  .word UART1_IRQHandler
  .word I2C0_IRQHandler
  .word I2C1_IRQHandler
  .word PDMA_IRQHandler
  .word DAC_IRQHandler
  .word EADC0_IRQHandler
  .word EADC1_IRQHandler
  .word ACMP01_IRQHandler
  .word Dummy_Handler /* Reserved */
  .word EADC2_IRQHandler
  .word EADC3_IRQHandler
  .word UART2_IRQHandler
  .word UART3_IRQHandler
  .word USCI0_IRQHandler
  .word SPI1_IRQHandler
  .word USCI1_IRQHandler
  .word USBD_IRQHandler
  .word BPWM1_IRQHandler
  .word PSIO_IRQHandler
  .word 0 /* Reserved */
  .word CRYPTO_IRQHandler
  .word SC0_IRQHandler
  .word 0 /* Reserved */
  .word USCI2_IRQHandler
  .word LCD_INT_IRQHandler
  .word OPA0_IRQHandler
  .word TK_INT_IRQHandler
_vectors_end:

#ifdef VECTORS_IN_RAM
  .section .vectors_ram, "ax"
  .balign 512
  .global _vectors_ram

_vectors_ram:
  .space _vectors_end - _vectors, 0
#endif
