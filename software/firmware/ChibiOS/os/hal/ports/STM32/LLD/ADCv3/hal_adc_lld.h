/*
    ChibiOS - Copyright (C) 2006..2018 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

/**
 * @file    ADCv3/hal_adc_lld.h
 * @brief   STM32 ADC subsystem low level driver header.
 *
 * @addtogroup ADC
 * @{
 */

#ifndef HAL_ADC_LLD_H
#define HAL_ADC_LLD_H

#if HAL_USE_ADC || defined(__DOXYGEN__)

/*===========================================================================*/
/* Driver constants.                                                         */
/*===========================================================================*/

/**
 * @name    Available analog channels
 * @{
 */
#define ADC_CHANNEL_IN0         0   /**< @brief External analog input 0.    */
#define ADC_CHANNEL_IN1         1   /**< @brief External analog input 1.    */
#define ADC_CHANNEL_IN2         2   /**< @brief External analog input 2.    */
#define ADC_CHANNEL_IN3         3   /**< @brief External analog input 3.    */
#define ADC_CHANNEL_IN4         4   /**< @brief External analog input 4.    */
#define ADC_CHANNEL_IN5         5   /**< @brief External analog input 5.    */
#define ADC_CHANNEL_IN6         6   /**< @brief External analog input 6.    */
#define ADC_CHANNEL_IN7         7   /**< @brief External analog input 7.    */
#define ADC_CHANNEL_IN8         8   /**< @brief External analog input 8.    */
#define ADC_CHANNEL_IN9         9   /**< @brief External analog input 9.    */
#define ADC_CHANNEL_IN10        10  /**< @brief External analog input 10.   */
#define ADC_CHANNEL_IN11        11  /**< @brief External analog input 11.   */
#define ADC_CHANNEL_IN12        12  /**< @brief External analog input 12.   */
#define ADC_CHANNEL_IN13        13  /**< @brief External analog input 13.   */
#define ADC_CHANNEL_IN14        14  /**< @brief External analog input 14.   */
#define ADC_CHANNEL_IN15        15  /**< @brief External analog input 15.   */
#define ADC_CHANNEL_IN16        16  /**< @brief External analog input 16.   */
#define ADC_CHANNEL_IN17        17  /**< @brief External analog input 17.   */
#define ADC_CHANNEL_IN18        18  /**< @brief External analog input 18.   */
/** @} */

/**
 * @name    Sampling rates
 * @{
 */
#if defined(STM32F3XX)
#define ADC_SMPR_SMP_1P5        0   /**< @brief 14 cycles conversion time   */
#define ADC_SMPR_SMP_2P5        1   /**< @brief 15 cycles conversion time.  */
#define ADC_SMPR_SMP_4P5        2   /**< @brief 17 cycles conversion time.  */
#define ADC_SMPR_SMP_7P5        3   /**< @brief 20 cycles conversion time.  */
#define ADC_SMPR_SMP_19P5       4   /**< @brief 32 cycles conversion time.  */
#define ADC_SMPR_SMP_61P5       5   /**< @brief 74 cycles conversion time.  */
#define ADC_SMPR_SMP_181P5      6   /**< @brief 194 cycles conversion time. */
#define ADC_SMPR_SMP_601P5      7   /**< @brief 614 cycles conversion time. */
#endif
#if defined(STM32L4XX)
#define ADC_SMPR_SMP_2P5        0   /**< @brief 15 cycles conversion time   */
#define ADC_SMPR_SMP_6P5        1   /**< @brief 19 cycles conversion time.  */
#define ADC_SMPR_SMP_12P5       2   /**< @brief 25 cycles conversion time.  */
#define ADC_SMPR_SMP_24P5       3   /**< @brief 37 cycles conversion time.  */
#define ADC_SMPR_SMP_47P5       4   /**< @brief 60 cycles conversion time.  */
#define ADC_SMPR_SMP_92P5       5   /**< @brief 105 cycles conversion time. */
#define ADC_SMPR_SMP_247P5      6   /**< @brief 260 cycles conversion time. */
#define ADC_SMPR_SMP_640P5      7   /**< @brief 653 cycles conversion time. */
#endif
/** @} */

/**
 * @name    Resolution
 * @{
 */
#define ADC_CFGR1_RES_12BIT     (0 << 3)
#define ADC_CFGR1_RES_10BIT     (1 << 3)
#define ADC_CFGR1_RES_8BIT      (2 << 3)
#define ADC_CFGR1_RES_6BIT      (3 << 3)
/** @} */

/**
 * @name    CFGR register configuration helpers
 * @{
 */
#define ADC_CFGR_DMACFG_MASK            (1 << 1)
#define ADC_CFGR_DMACFG_ONESHOT         (0 << 1)
#define ADC_CFGR_DMACFG_CIRCULAR        (1 << 1)

#define ADC_CFGR_RES_MASK               (3 << 3)
#define ADC_CFGR_RES_12BITS             (0 << 3)
#define ADC_CFGR_RES_10BITS             (1 << 3)
#define ADC_CFGR_RES_8BITS              (2 << 3)
#define ADC_CFGR_RES_6BITS              (3 << 3)

#define ADC_CFGR_ALIGN_MASK             (1 << 5)
#define ADC_CFGR_ALIGN_RIGHT            (0 << 5)
#define ADC_CFGR_ALIGN_LEFT             (1 << 5)

#define ADC_CFGR_EXTSEL_MASK            (15 << 6)
#define ADC_CFGR_EXTSEL_SRC(n)          ((n) << 6)

#define ADC_CFGR_EXTEN_MASK             (3 << 10)
#define ADC_CFGR_EXTEN_DISABLED         (0 << 10)
#define ADC_CFGR_EXTEN_RISING           (1 << 10)
#define ADC_CFGR_EXTEN_FALLING          (2 << 10)
#define ADC_CFGR_EXTEN_BOTH             (3 << 10)

#define ADC_CFGR_DISCEN_MASK            (1 << 16)
#define ADC_CFGR_DISCEN_DISABLED        (0 << 16)
#define ADC_CFGR_DISCEN_ENABLED         (1 << 16)

#define ADC_CFGR_DISCNUM_MASK           (7 << 17)
#define ADC_CFGR_DISCNUM_VAL(n)         ((n) << 17)

#define ADC_CFGR_AWD1_DISABLED          0
#define ADC_CFGR_AWD1_ALL               (1 << 23)
#define ADC_CFGR_AWD1_SINGLE(n)         (((n) << 26) | (1 << 23) | (1 << 22))
/** @} */

/**
 * @name    CCR register configuration helpers
 * @{
 */
#define ADC_CCR_DUAL_MASK               (31 << 0)
#define ADC_CCR_DUAL_FIELD(n)           ((n) << 0)
#define ADC_CCR_DELAY_MASK              (15 << 8)
#define ADC_CCR_DELAY_FIELD(n)          ((n) << 8)
#define ADC_CCR_DMACFG_MASK             (1 << 13)
#define ADC_CCR_DMACFG_ONESHOT          (0 << 13)
#define ADC_CCR_DMACFG_CIRCULAR         (1 << 13)
#define ADC_CCR_MDMA_MASK               (3 << 14)
#define ADC_CCR_MDMA_DISABLED           (0 << 14)
#define ADC_CCR_MDMA_WORD               (2 << 14)
#define ADC_CCR_MDMA_HWORD              (3 << 14)
#define ADC_CCR_CKMODE_MASK             (3 << 16)
#define ADC_CCR_CKMODE_ADCCK            (0 << 16)
#define ADC_CCR_CKMODE_AHB_DIV1         (1 << 16)
#define ADC_CCR_CKMODE_AHB_DIV2         (2 << 16)
#define ADC_CCR_CKMODE_AHB_DIV4         (3 << 16)

/* F3 headers do not define the following macros, L4 headers do.*/
#if !defined(ADC_CCR_VREFEN) || defined(__DOXYGEN__)
#define ADC_CCR_VREFEN                  (1 << 22)
#endif

#if !defined(ADC_CCR_TSEN) || defined(__DOXYGEN__)
#define ADC_CCR_TSEN                    (1 << 23)
#endif

#if !defined(ADC_CCR_VBATEN) || defined(__DOXYGEN__)
#define ADC_CCR_VBATEN                  (1 << 24)
#endif
/** @} */

/*===========================================================================*/
/* Driver pre-compile time settings.                                         */
/*===========================================================================*/

/**
 * @name    Configuration options
 * @{
 */
/**
 * @brief   Enables the ADC master/slave mode.
 * @note    In dual mode only ADCD1 and ADCD3 are available.
 */
#if !defined(STM32_ADC_DUAL_MODE) || defined(__DOXYGEN__)
#define STM32_ADC_DUAL_MODE                 FALSE
#endif

/**
 * @brief   Makes the ADC samples type an 8bits one.
 * @note    10 and 12 bits sampling mode must not be used when this option
 *          is enabled.
 */
#if !defined(STM32_ADC_COMPACT_SAMPLES) || defined(__DOXYGEN__)
#define STM32_ADC_COMPACT_SAMPLES           FALSE
#endif

/**
 * @brief   ADC1 driver enable switch.
 * @details If set to @p TRUE the support for ADC1 is included.
 * @note    The default is @p FALSE.
 */
#if !defined(STM32_ADC_USE_ADC1) || defined(__DOXYGEN__)
#define STM32_ADC_USE_ADC1                  FALSE
#endif

/**
 * @brief   ADC2 driver enable switch.
 * @details If set to @p TRUE the support for ADC2 is included.
 * @note    The default is @p FALSE.
 */
#if !defined(STM32_ADC_USE_ADC2) || defined(__DOXYGEN__)
#define STM32_ADC_USE_ADC2                  FALSE
#endif

/**
 * @brief   ADC3 driver enable switch.
 * @details If set to @p TRUE the support for ADC3 is included.
 * @note    The default is @p FALSE.
 */
#if !defined(STM32_ADC_USE_ADC3) || defined(__DOXYGEN__)
#define STM32_ADC_USE_ADC3                  FALSE
#endif
/**
 * @brief   ADC4 driver enable switch.
 * @details If set to @p TRUE the support for ADC4 is included.
 * @note    The default is @p FALSE.
 */
#if !defined(STM32_ADC_USE_ADC4) || defined(__DOXYGEN__)
#define STM32_ADC_USE_ADC4                  FALSE
#endif

/**
 * @brief   ADC1 DMA priority (0..3|lowest..highest).
 */
#if !defined(STM32_ADC_ADC1_DMA_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC1_DMA_PRIORITY         2
#endif

/**
 * @brief   ADC2 DMA priority (0..3|lowest..highest).
 */
#if !defined(STM32_ADC_ADC2_DMA_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC2_DMA_PRIORITY         2
#endif

/**
 * @brief   ADC3 DMA priority (0..3|lowest..highest).
 */
#if !defined(STM32_ADC_ADC3_DMA_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC3_DMA_PRIORITY         2
#endif

/**
 * @brief   ADC4 DMA priority (0..3|lowest..highest).
 */
#if !defined(STM32_ADC_ADC4_DMA_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC4_DMA_PRIORITY         2
#endif

/**
 * @brief   ADC1/ADC2 interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC12_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC12_IRQ_PRIORITY        5
#endif

/**
 * @brief   ADC3 interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC3_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC3_IRQ_PRIORITY         5
#endif

/**
 * @brief   ADC4 interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC4_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC4_IRQ_PRIORITY         5
#endif

/**
 * @brief   ADC1 DMA interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC1_DMA_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC1_DMA_IRQ_PRIORITY     5
#endif

/**
 * @brief   ADC2 DMA interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC2_DMA_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC2_DMA_IRQ_PRIORITY     5
#endif

/**
 * @brief   ADC3 DMA interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC3_DMA_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC3_DMA_IRQ_PRIORITY     5
#endif

/**
 * @brief   ADC4 DMA interrupt priority level setting.
 */
#if !defined(STM32_ADC_ADC4_DMA_IRQ_PRIORITY) || defined(__DOXYGEN__)
#define STM32_ADC_ADC4_DMA_IRQ_PRIORITY     5
#endif

#if defined(STM32F3XX) || defined(__DOXYGEN__)
/**
 * @brief   ADC1/ADC2 clock source and mode.
 */
#if !defined(STM32_ADC_ADC12_CLOCK_MODE) || defined(__DOXYGEN__)
#define STM32_ADC_ADC12_CLOCK_MODE          ADC_CCR_CKMODE_AHB_DIV1
#endif

/**
 * @brief   ADC3/ADC4 clock source and mode.
 */
#if !defined(STM32_ADC_ADC34_CLOCK_MODE) || defined(__DOXYGEN__)
#define STM32_ADC_ADC34_CLOCK_MODE          ADC_CCR_CKMODE_AHB_DIV1
#endif
#endif /* defined(STM32F3XX) */

#if defined(STM32L4XX) || defined(__DOXYGEN__)
/**
 * @brief   ADC1/ADC2/ADC3 clock source and mode.
 */
#if !defined(STM32_ADC_ADC123_CLOCK_MODE) || defined(__DOXYGEN__)
#define STM32_ADC_ADC123_CLOCK_MODE         ADC_CCR_CKMODE_AHB_DIV1
#endif
#endif /* defined(STM32L4XX) */

/** @} */

/*===========================================================================*/
/* Derived constants and error checks.                                       */
/*===========================================================================*/

/* Supported devices checks.*/
#if !defined(STM32F3XX) && !defined(STM32L4XX) && !defined(STM32L4XXP)
#error "ADCv3 only supports F3, L4 and L4+ STM32 devices"
#endif

#if defined(STM32L4XX) || defined(STM32L4XXP) || defined(__DOXYGEN__)
#define STM32_ADCV3_OVERSAMPLING            TRUE
#else
#define STM32_ADCV3_OVERSAMPLING            FALSE
#endif

/* Registry checks.*/
#if !defined(STM32_HAS_ADC1) || !defined(STM32_HAS_ADC2) ||                 \
    !defined(STM32_HAS_ADC3) || !defined(STM32_HAS_ADC4)
#error "STM32_ADC_USE_ADCx not defined in registry"
#endif

#if (STM32_ADC_USE_ADC1 && !defined(STM32_ADC1_HANDLER)) ||                 \
    (STM32_ADC_USE_ADC2 && !defined(STM32_ADC2_HANDLER)) ||                 \
    (STM32_ADC_USE_ADC3 && !defined(STM32_ADC3_HANDLER)) ||                 \
    (STM32_ADC_USE_ADC4 && !defined(STM32_ADC4_HANDLER))
#error "STM32_ADCx_HANDLER not defined in registry"
#endif

#if (STM32_ADC_USE_ADC1 && !defined(STM32_ADC1_NUMBER)) ||                  \
    (STM32_ADC_USE_ADC2 && !defined(STM32_ADC2_NUMBER)) ||                  \
    (STM32_ADC_USE_ADC3 && !defined(STM32_ADC3_NUMBER)) ||                  \
    (STM32_ADC_USE_ADC4 && !defined(STM32_ADC4_NUMBER))
#error "STM32_ADCx_NUMBER not defined in registry"
#endif

#if (STM32_ADC_USE_ADC1 && !defined(STM32_ADC1_DMA_MSK)) ||                 \
    (STM32_ADC_USE_ADC2 && !defined(STM32_ADC2_DMA_MSK)) ||                 \
    (STM32_ADC_USE_ADC3 && !defined(STM32_ADC3_DMA_MSK)) ||                 \
    (STM32_ADC_USE_ADC4 && !defined(STM32_ADC4_DMA_MSK))
#error "STM32_ADCx_DMA_MSK not defined in registry"
#endif

#if (STM32_ADC_USE_ADC1 && !defined(STM32_ADC1_DMA_CHN)) ||                 \
    (STM32_ADC_USE_ADC2 && !defined(STM32_ADC2_DMA_CHN)) ||                 \
    (STM32_ADC_USE_ADC3 && !defined(STM32_ADC3_DMA_CHN)) ||                 \
    (STM32_ADC_USE_ADC4 && !defined(STM32_ADC4_DMA_CHN))
#error "STM32_ADCx_DMA_CHN not defined in registry"
#endif

/* Units checks.*/
#if STM32_ADC_USE_ADC1 && !STM32_HAS_ADC1
#error "ADC1 not present in the selected device"
#endif

#if STM32_ADC_USE_ADC2 && !STM32_HAS_ADC2
#error "ADC2 not present in the selected device"
#endif

#if STM32_ADC_USE_ADC3 && !STM32_HAS_ADC3
#error "ADC3 not present in the selected device"
#endif

#if STM32_ADC_USE_ADC4 && !STM32_HAS_ADC4
#error "ADC4 not present in the selected device"
#endif

/* Units checks related to dual mode.*/
#if STM32_ADC_DUAL_MODE && STM32_ADC_USE_ADC1 && !STM32_HAS_ADC2
#error "ADC2 not present in the selected device, required for dual mode"
#endif

#if STM32_ADC_DUAL_MODE && STM32_ADC_USE_ADC3 && !STM32_HAS_ADC4
#error "ADC4 not present in the selected device, required for dual mode"
#endif

#if STM32_ADC_DUAL_MODE && STM32_ADC_USE_ADC2
#error "ADC2 cannot be used in dual mode"
#endif

#if STM32_ADC_DUAL_MODE && STM32_ADC_USE_ADC4
#error "ADC4 cannot be used in dual mode"
#endif

/* At least one ADC must be assigned.*/
#if !STM32_ADC_USE_ADC1 && !STM32_ADC_USE_ADC2 &&                           \
    !STM32_ADC_USE_ADC3 && !STM32_ADC_USE_ADC4
#error "ADC driver activated but no ADC peripheral assigned"
#endif

/* ISR arrangments checks.*/
#if STM32_HAS_ADC1 && STM32_HAS_ADC2
#if STM32_ADC1_NUMBER != STM32_ADC2_NUMBER
#error "ADCv3 driver expects STM32_ADC1_NUMBER == STM32_ADC2_NUMBER from registry"
#endif
#endif

/* ADC IRQ priority tests.*/
#if STM32_ADC_USE_ADC1 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC12_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC1"
#endif

#if STM32_ADC_USE_ADC2 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC12_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC2"
#endif

#if STM32_ADC_USE_ADC3 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC3_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC3"
#endif

#if STM32_ADC_USE_ADC4 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC4_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC4"
#endif

/* DMA IRQ priority tests.*/
#if STM32_ADC_USE_ADC1 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC1_DMA_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC1 DMA"
#endif

#if STM32_ADC_USE_ADC2 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC2_DMA_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC2 DMA"
#endif

#if STM32_ADC_USE_ADC3 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC3_DMA_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC3 DMA"
#endif

#if STM32_ADC_USE_ADC4 &&                                                   \
    !OSAL_IRQ_IS_VALID_PRIORITY(STM32_ADC_ADC4_DMA_IRQ_PRIORITY)
#error "Invalid IRQ priority assigned to ADC4 DMA"
#endif

/* DMA priority tests.*/
#if STM32_ADC_USE_ADC1 &&                                                   \
    !STM32_DMA_IS_VALID_PRIORITY(STM32_ADC_ADC1_DMA_PRIORITY)
#error "Invalid DMA priority assigned to ADC1"
#endif

#if STM32_ADC_USE_ADC2 &&                                                   \
    !STM32_DMA_IS_VALID_PRIORITY(STM32_ADC_ADC2_DMA_PRIORITY)
#error "Invalid DMA priority assigned to ADC2"
#endif

#if STM32_ADC_USE_ADC3 &&                                                   \
    !STM32_DMA_IS_VALID_PRIORITY(STM32_ADC_ADC3_DMA_PRIORITY)
#error "Invalid DMA priority assigned to ADC3"
#endif

#if STM32_ADC_USE_ADC4 &&                                                   \
    !STM32_DMA_IS_VALID_PRIORITY(STM32_ADC_ADC4_DMA_PRIORITY)
#error "Invalid DMA priority assigned to ADC4"
#endif

/* Check on the presence of the DMA streams settings in mcuconf.h.*/
#if STM32_ADC_USE_ADC1 && !defined(STM32_ADC_ADC1_DMA_STREAM)
#error "ADC1 DMA stream not defined"
#endif

#if STM32_ADC_USE_ADC2 && !defined(STM32_ADC_ADC2_DMA_STREAM)
#error "ADC2 DMA stream not defined"
#endif

#if STM32_ADC_USE_ADC3 && !defined(STM32_ADC_ADC3_DMA_STREAM)
#error "ADC3 DMA stream not defined"
#endif

#if STM32_ADC_USE_ADC4 && !defined(STM32_ADC_ADC4_DMA_STREAM)
#error "ADC4 DMA stream not defined"
#endif

/* Check on the validity of the assigned DMA channels.*/
#if STM32_ADC_USE_ADC1 &&                                                   \
    !STM32_DMA_IS_VALID_ID(STM32_ADC_ADC1_DMA_STREAM, STM32_ADC1_DMA_MSK)
#error "invalid DMA stream associated to ADC1"
#endif

#if STM32_ADC_USE_ADC2 &&                                                   \
    !STM32_DMA_IS_VALID_ID(STM32_ADC_ADC2_DMA_STREAM, STM32_ADC2_DMA_MSK)
#error "invalid DMA stream associated to ADC2"
#endif

#if STM32_ADC_USE_ADC3 &&                                                   \
    !STM32_DMA_IS_VALID_ID(STM32_ADC_ADC3_DMA_STREAM, STM32_ADC3_DMA_MSK)
#error "invalid DMA stream associated to ADC3"
#endif

#if STM32_ADC_USE_ADC4 &&                                                   \
    !STM32_DMA_IS_VALID_ID(STM32_ADC_ADC4_DMA_STREAM, STM32_ADC4_DMA_MSK)
#error "invalid DMA stream associated to ADC4"
#endif

/* ADC clock source checks.*/
#if defined(STM32F3XX)
#if STM32_ADC_ADC12_CLOCK_MODE == ADC_CCR_CKMODE_ADCCK
#define STM32_ADC12_CLOCK               STM32_ADC12CLK
#elif STM32_ADC_ADC12_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV1
#define STM32_ADC12_CLOCK               (STM32_HCLK / 1)
#elif STM32_ADC_ADC12_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV2
#define STM32_ADC12_CLOCK               (STM32_HCLK / 2)
#elif STM32_ADC_ADC12_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV4
#define STM32_ADC12_CLOCK               (STM32_HCLK / 4)
#else
#error "invalid clock mode selected for STM32_ADC_ADC12_CLOCK_MODE"
#endif

#if STM32_ADC_ADC34_CLOCK_MODE == ADC_CCR_CKMODE_ADCCK
#define STM32_ADC34_CLOCK               STM32_ADC34CLK
#elif STM32_ADC_ADC34_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV1
#define STM32_ADC34_CLOCK               (STM32_HCLK / 1)
#elif STM32_ADC_ADC34_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV2
#define STM32_ADC34_CLOCK               (STM32_HCLK / 2)
#elif STM32_ADC_ADC34_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV4
#define STM32_ADC34_CLOCK               (STM32_HCLK / 4)
#else
#error "invalid clock mode selected for STM32_ADC_ADC12_CLOCK_MODE"
#endif

#if STM32_ADC12_CLOCK > STM32_ADCCLK_MAX
#error "STM32_ADC12_CLOCK exceeding maximum frequency (STM32_ADCCLK_MAX)"
#endif

#if STM32_ADC34_CLOCK > STM32_ADCCLK_MAX
#error "STM32_ADC34_CLOCK exceeding maximum frequency (STM32_ADCCLK_MAX)"
#endif
#endif /* defined(STM32F3XX) */

#if defined(STM32L4XX)
#if STM32_ADC_ADC123_CLOCK_MODE == ADC_CCR_CKMODE_ADCCK
#define STM32_ADC123_CLOCK              STM32_ADCCLK
#elif STM32_ADC_ADC123_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV1
#define STM32_ADC123_CLOCK              (STM32_HCLK / 1)
#elif STM32_ADC_ADC123_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV2
#define STM32_ADC123_CLOCK              (STM32_HCLK / 2)
#elif STM32_ADC_ADC123_CLOCK_MODE == ADC_CCR_CKMODE_AHB_DIV4
#define STM32_ADC123_CLOCK              (STM32_HCLK / 4)
#else
#error "invalid clock mode selected for STM32_ADC_ADC123_CLOCK_MODE"
#endif

#if STM32_ADC123_CLOCK > STM32_ADCCLK_MAX
#error "STM32_ADC123_CLOCK exceeding maximum frequency (STM32_ADCCLK_MAX)"
#endif
#endif /* defined(STM32L4XX) */

#if !defined(STM32_DMA_REQUIRED)
#define STM32_DMA_REQUIRED
#endif

/*===========================================================================*/
/* Driver data structures and types.                                         */
/*===========================================================================*/

/**
 * @brief   ADC sample data type.
 */
#if !STM32_ADC_COMPACT_SAMPLES || defined(__DOXYGEN__)
typedef uint16_t adcsample_t;
#else
typedef uint8_t adcsample_t;
#endif

/**
 * @brief   Channels number in a conversion group.
 */
typedef uint16_t adc_channels_num_t;

/**
 * @brief   Possible ADC failure causes.
 * @note    Error codes are architecture dependent and should not relied
 *          upon.
 */
typedef enum {
  ADC_ERR_DMAFAILURE = 0,                   /**< DMA operations failure.    */
  ADC_ERR_OVERFLOW = 1,                     /**< ADC overflow condition.    */
  ADC_ERR_AWD1 = 2,                         /**< Watchdog 1 triggered.      */
  ADC_ERR_AWD2 = 3,                         /**< Watchdog 2 triggered.      */
  ADC_ERR_AWD3 = 4                          /**< Watchdog 3 triggered.      */
} adcerror_t;

/**
 * @brief   Type of a structure representing an ADC driver.
 */
typedef struct ADCDriver ADCDriver;

/**
 * @brief   ADC notification callback type.
 *
 * @param[in] adcp      pointer to the @p ADCDriver object triggering the
 *                      callback
 * @param[in] buffer    pointer to the most recent samples data
 * @param[in] n         number of buffer rows available starting from @p buffer
 */
typedef void (*adccallback_t)(ADCDriver *adcp, adcsample_t *buffer, size_t n);

/**
 * @brief   ADC error callback type.
 *
 * @param[in] adcp      pointer to the @p ADCDriver object triggering the
 *                      callback
 * @param[in] err       ADC error code
 */
typedef void (*adcerrorcallback_t)(ADCDriver *adcp, adcerror_t err);

/**
 * @brief   Conversion group configuration structure.
 * @details This implementation-dependent structure describes a conversion
 *          operation.
 * @note    The use of this configuration structure requires knowledge of
 *          STM32 ADC cell registers interface, please refer to the STM32
 *          reference manual for details.
 */
typedef struct {
  /**
   * @brief   Enables the circular buffer mode for the group.
   */
  bool                      circular;
  /**
   * @brief   Number of the analog channels belonging to the conversion group.
   */
  adc_channels_num_t        num_channels;
  /**
   * @brief   Callback function associated to the group or @p NULL.
   */
  adccallback_t             end_cb;
  /**
   * @brief   Error callback or @p NULL.
   */
  adcerrorcallback_t        error_cb;
  /* End of the mandatory fields.*/
  /**
   * @brief   ADC CFGR register initialization data.
   * @note    The bits DMAEN and DMACFG are enforced internally
   *          to the driver, keep them to zero.
   * @note    The bits @p ADC_CFGR_CONT or @p ADC_CFGR_DISCEN must be
   *          specified in continuous mode or if the buffer depth is
   *          greater than one.
   */
  uint32_t                  cfgr;
#if (STM32_ADCV3_OVERSAMPLING == TRUE) || defined(__DOXYGEN__)
  /**
   * @brief   ADC CFGR2 register initialization data.
   * @note    The bits DMAEN and DMACFG are enforced internally
   *          to the driver, keep them to zero.
   * @note    The bits @p ADC_CFGR_CONT or @p ADC_CFGR_DISCEN must be
   *          specified in continuous mode or if the buffer depth is
   *          greater than one.
   */
  uint32_t                  cfgr2;
#endif
  /**
   * @brief   ADC TR1 register initialization data.
   */
  uint32_t                  tr1;
#if STM32_ADC_DUAL_MODE || defined(__DOXYGEN__)
  /**
   * @brief   ADC CCR register initialization data.
   * @note    Put this field to zero if not using oversampling.
   */
  uint32_t                  ccr;
#endif
  /**
   * @brief   ADC SMPRx registers initialization data.
   */
  uint32_t                  smpr[2];
  /**
   * @brief   ADC SQRx register initialization data.
   */
  uint32_t                  sqr[4];
#if STM32_ADC_DUAL_MODE || defined(__DOXYGEN__)
  /**
   * @brief   Slave ADC SMPRx registers initialization data.
   * @note    This field is only present in dual mode.
   */
  uint32_t                  ssmpr[2];
  /**
   * @brief   Slave ADC SQRx register initialization data.
   * @note    This field is only present in dual mode.
   */
  uint32_t                  ssqr[4];
#endif /* STM32_ADC_DUAL_MODE */
} ADCConversionGroup;

/**
 * @brief   Driver configuration structure.
 */
typedef struct {
  /**
   * @brief   ADC DIFSEL register initialization data.
   */
  uint32_t                  difsel;
} ADCConfig;

/**
 * @brief   Structure representing an ADC driver.
 */
struct ADCDriver {
  /**
   * @brief   Driver state.
   */
  adcstate_t                state;
  /**
   * @brief   Current configuration data.
   */
  const ADCConfig           *config;
  /**
   * @brief   Current samples buffer pointer or @p NULL.
   */
  adcsample_t               *samples;
  /**
   * @brief   Current samples buffer depth or @p 0.
   */
  size_t                    depth;
  /**
   * @brief   Current conversion group pointer or @p NULL.
   */
  const ADCConversionGroup  *grpp;
#if ADC_USE_WAIT || defined(__DOXYGEN__)
  /**
   * @brief   Waiting thread.
   */
  thread_reference_t        thread;
#endif
#if ADC_USE_MUTUAL_EXCLUSION || defined(__DOXYGEN__)
  /**
   * @brief   Mutex protecting the peripheral.
   */
  mutex_t                   mutex;
#endif /* ADC_USE_MUTUAL_EXCLUSION */
#if defined(ADC_DRIVER_EXT_FIELDS)
  ADC_DRIVER_EXT_FIELDS
#endif
  /* End of the mandatory fields.*/
  /**
   * @brief   Pointer to the master ADCx registers block.
   */
  ADC_TypeDef               *adcm;
#if STM32_ADC_DUAL_MODE || defined(__DOXYGEN__)
  /**
   * @brief   Pointer to the slave ADCx registers block.
   */
  ADC_TypeDef               *adcs;
#endif /* STM32_ADC_DUAL_MODE */
  /**
   * @brief   Pointer to the common ADCx_y registers block.
   */
  ADC_Common_TypeDef        *adcc;
  /**
   * @brief   Pointer to associated DMA channel.
   */
  const stm32_dma_stream_t  *dmastp;
  /**
   * @brief   DMA mode bit mask.
   */
  uint32_t                  dmamode;
};

/*===========================================================================*/
/* Driver macros.                                                            */
/*===========================================================================*/

/**
 * @name    Threashold register initializer
 * @{
 */
#define ADC_TR(low, high)       (((uint32_t)(high) << 16) | (uint32_t)(low))
/** @} */

/**
 * @name    Sequences building helper macros
 * @{
 */
/**
 * @brief   Number of channels in a conversion sequence.
 */
#define ADC_SQR1_NUM_CH(n)      (((n) - 1) << 0)

#define ADC_SQR1_SQ1_N(n)       ((n) << 6)  /**< @brief 1st channel in seq. */
#define ADC_SQR1_SQ2_N(n)       ((n) << 12) /**< @brief 2nd channel in seq. */
#define ADC_SQR1_SQ3_N(n)       ((n) << 18) /**< @brief 3rd channel in seq. */
#define ADC_SQR1_SQ4_N(n)       ((n) << 24) /**< @brief 4th channel in seq. */

#define ADC_SQR2_SQ5_N(n)       ((n) << 0)  /**< @brief 5th channel in seq. */
#define ADC_SQR2_SQ6_N(n)       ((n) << 6)  /**< @brief 6th channel in seq. */
#define ADC_SQR2_SQ7_N(n)       ((n) << 12) /**< @brief 7th channel in seq. */
#define ADC_SQR2_SQ8_N(n)       ((n) << 18) /**< @brief 8th channel in seq. */
#define ADC_SQR2_SQ9_N(n)       ((n) << 24) /**< @brief 9th channel in seq. */

#define ADC_SQR3_SQ10_N(n)      ((n) << 0)  /**< @brief 10th channel in seq.*/
#define ADC_SQR3_SQ11_N(n)      ((n) << 6)  /**< @brief 11th channel in seq.*/
#define ADC_SQR3_SQ12_N(n)      ((n) << 12) /**< @brief 12th channel in seq.*/
#define ADC_SQR3_SQ13_N(n)      ((n) << 18) /**< @brief 13th channel in seq.*/
#define ADC_SQR3_SQ14_N(n)      ((n) << 24) /**< @brief 14th channel in seq.*/

#define ADC_SQR4_SQ15_N(n)      ((n) << 0)  /**< @brief 15th channel in seq.*/
#define ADC_SQR4_SQ16_N(n)      ((n) << 6)  /**< @brief 16th channel in seq.*/
/** @} */

/**
 * @name    Sampling rate settings helper macros
 * @{
 */
#define ADC_SMPR1_SMP_AN0(n)    ((n) << 0)  /**< @brief AN0 sampling time.  */
#define ADC_SMPR1_SMP_AN1(n)    ((n) << 3)  /**< @brief AN1 sampling time.  */
#define ADC_SMPR1_SMP_AN2(n)    ((n) << 6)  /**< @brief AN2 sampling time.  */
#define ADC_SMPR1_SMP_AN3(n)    ((n) << 9)  /**< @brief AN3 sampling time.  */
#define ADC_SMPR1_SMP_AN4(n)    ((n) << 12) /**< @brief AN4 sampling time.  */
#define ADC_SMPR1_SMP_AN5(n)    ((n) << 15) /**< @brief AN5 sampling time.  */
#define ADC_SMPR1_SMP_AN6(n)    ((n) << 18) /**< @brief AN6 sampling time.  */
#define ADC_SMPR1_SMP_AN7(n)    ((n) << 21) /**< @brief AN7 sampling time.  */
#define ADC_SMPR1_SMP_AN8(n)    ((n) << 24) /**< @brief AN8 sampling time.  */
#define ADC_SMPR1_SMP_AN9(n)    ((n) << 27) /**< @brief AN9 sampling time.  */

#define ADC_SMPR2_SMP_AN10(n)   ((n) << 0)  /**< @brief AN10 sampling time. */
#define ADC_SMPR2_SMP_AN11(n)   ((n) << 3)  /**< @brief AN11 sampling time. */
#define ADC_SMPR2_SMP_AN12(n)   ((n) << 6)  /**< @brief AN12 sampling time. */
#define ADC_SMPR2_SMP_AN13(n)   ((n) << 9)  /**< @brief AN13 sampling time. */
#define ADC_SMPR2_SMP_AN14(n)   ((n) << 12) /**< @brief AN14 sampling time. */
#define ADC_SMPR2_SMP_AN15(n)   ((n) << 15) /**< @brief AN15 sampling time. */
#define ADC_SMPR2_SMP_AN16(n)   ((n) << 18) /**< @brief AN16 sampling time. */
#define ADC_SMPR2_SMP_AN17(n)   ((n) << 21) /**< @brief AN17 sampling time. */
#define ADC_SMPR2_SMP_AN18(n)   ((n) << 24) /**< @brief AN18 sampling time. */
/** @} */

/*===========================================================================*/
/* External declarations.                                                    */
/*===========================================================================*/

#if STM32_ADC_USE_ADC1 && !defined(__DOXYGEN__)
extern ADCDriver ADCD1;
#endif

#if STM32_ADC_USE_ADC2 && !defined(__DOXYGEN__)
extern ADCDriver ADCD2;
#endif

#if STM32_ADC_USE_ADC3 && !defined(__DOXYGEN__)
extern ADCDriver ADCD3;
#endif

#if STM32_ADC_USE_ADC4 && !defined(__DOXYGEN__)
extern ADCDriver ADCD4;
#endif

#ifdef __cplusplus
extern "C" {
#endif
  void adc_lld_init(void);
  void adc_lld_start(ADCDriver *adcp);
  void adc_lld_stop(ADCDriver *adcp);
  void adc_lld_start_conversion(ADCDriver *adcp);
  void adc_lld_stop_conversion(ADCDriver *adcp);
  void adcSTM32EnableVREF(ADCDriver *adcp);
  void adcSTM32DisableVREF(ADCDriver *adcp);
  void adcSTM32EnableTS(ADCDriver *adcp);
  void adcSTM32DisableTS(ADCDriver *adcp);
  void adcSTM32EnableVBAT(ADCDriver *adcp);
  void adcSTM32DisableVBAT(ADCDriver *adcp);
#ifdef __cplusplus
}
#endif

#endif /* HAL_USE_ADC */

#endif /* HAL_ADC_LLD_H */

/** @} */
