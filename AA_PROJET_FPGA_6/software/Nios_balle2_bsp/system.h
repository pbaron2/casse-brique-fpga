/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'Niosballe'
 * SOPC Builder design path: ../../Niosballe.sopcinfo
 *
 * Generated: Wed Oct 17 14:22:33 CEST 2018
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00100820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x15
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x00080020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x15
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00080000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00100820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x15
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x00080020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x15
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00080000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2
#define __SRAM_DE2


/*
 * SRAM_DE2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_SRAM_DE2_0 SRAM_DE2
#define SRAM_DE2_0_BASE 0x80000
#define SRAM_DE2_0_IRQ -1
#define SRAM_DE2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SRAM_DE2_0_NAME "/dev/SRAM_DE2_0"
#define SRAM_DE2_0_SPAN 524288
#define SRAM_DE2_0_TYPE "SRAM_DE2"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x101128
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x101128
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x101128
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "Niosballe"


/*
 * adr_brique configuration
 *
 */

#define ADR_BRIQUE_BASE 0x1010f0
#define ADR_BRIQUE_BIT_CLEARING_EDGE_REGISTER 0
#define ADR_BRIQUE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ADR_BRIQUE_CAPTURE 0
#define ADR_BRIQUE_DATA_WIDTH 9
#define ADR_BRIQUE_DO_TEST_BENCH_WIRING 0
#define ADR_BRIQUE_DRIVEN_SIM_VALUE 0
#define ADR_BRIQUE_EDGE_TYPE "NONE"
#define ADR_BRIQUE_FREQ 50000000
#define ADR_BRIQUE_HAS_IN 0
#define ADR_BRIQUE_HAS_OUT 1
#define ADR_BRIQUE_HAS_TRI 0
#define ADR_BRIQUE_IRQ -1
#define ADR_BRIQUE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ADR_BRIQUE_IRQ_TYPE "NONE"
#define ADR_BRIQUE_NAME "/dev/adr_brique"
#define ADR_BRIQUE_RESET_VALUE 0
#define ADR_BRIQUE_SPAN 16
#define ADR_BRIQUE_TYPE "altera_avalon_pio"
#define ALT_MODULE_CLASS_adr_brique altera_avalon_pio


/*
 * brique_morte configuration
 *
 */

#define ALT_MODULE_CLASS_brique_morte altera_avalon_pio
#define BRIQUE_MORTE_BASE 0x101100
#define BRIQUE_MORTE_BIT_CLEARING_EDGE_REGISTER 0
#define BRIQUE_MORTE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BRIQUE_MORTE_CAPTURE 0
#define BRIQUE_MORTE_DATA_WIDTH 1
#define BRIQUE_MORTE_DO_TEST_BENCH_WIRING 0
#define BRIQUE_MORTE_DRIVEN_SIM_VALUE 0
#define BRIQUE_MORTE_EDGE_TYPE "NONE"
#define BRIQUE_MORTE_FREQ 50000000
#define BRIQUE_MORTE_HAS_IN 1
#define BRIQUE_MORTE_HAS_OUT 0
#define BRIQUE_MORTE_HAS_TRI 0
#define BRIQUE_MORTE_IRQ -1
#define BRIQUE_MORTE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BRIQUE_MORTE_IRQ_TYPE "NONE"
#define BRIQUE_MORTE_NAME "/dev/brique_morte"
#define BRIQUE_MORTE_RESET_VALUE 0
#define BRIQUE_MORTE_SPAN 16
#define BRIQUE_MORTE_TYPE "altera_avalon_pio"


/*
 * en configuration
 *
 */

#define ALT_MODULE_CLASS_en altera_avalon_pio
#define EN_BASE 0x1010c0
#define EN_BIT_CLEARING_EDGE_REGISTER 0
#define EN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define EN_CAPTURE 0
#define EN_DATA_WIDTH 1
#define EN_DO_TEST_BENCH_WIRING 0
#define EN_DRIVEN_SIM_VALUE 0
#define EN_EDGE_TYPE "NONE"
#define EN_FREQ 50000000
#define EN_HAS_IN 1
#define EN_HAS_OUT 0
#define EN_HAS_TRI 0
#define EN_IRQ -1
#define EN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define EN_IRQ_TYPE "NONE"
#define EN_NAME "/dev/en"
#define EN_RESET_VALUE 0
#define EN_SPAN 16
#define EN_TYPE "altera_avalon_pio"


/*
 * en_nios configuration
 *
 */

#define ALT_MODULE_CLASS_en_nios altera_avalon_pio
#define EN_NIOS_BASE 0x1010e0
#define EN_NIOS_BIT_CLEARING_EDGE_REGISTER 0
#define EN_NIOS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define EN_NIOS_CAPTURE 0
#define EN_NIOS_DATA_WIDTH 1
#define EN_NIOS_DO_TEST_BENCH_WIRING 0
#define EN_NIOS_DRIVEN_SIM_VALUE 0
#define EN_NIOS_EDGE_TYPE "NONE"
#define EN_NIOS_FREQ 50000000
#define EN_NIOS_HAS_IN 0
#define EN_NIOS_HAS_OUT 1
#define EN_NIOS_HAS_TRI 0
#define EN_NIOS_IRQ -1
#define EN_NIOS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define EN_NIOS_IRQ_TYPE "NONE"
#define EN_NIOS_NAME "/dev/en_nios"
#define EN_NIOS_RESET_VALUE 0
#define EN_NIOS_SPAN 16
#define EN_NIOS_TYPE "altera_avalon_pio"


/*
 * fincalcul configuration
 *
 */

#define ALT_MODULE_CLASS_fincalcul altera_avalon_pio
#define FINCALCUL_BASE 0x1010b0
#define FINCALCUL_BIT_CLEARING_EDGE_REGISTER 0
#define FINCALCUL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define FINCALCUL_CAPTURE 0
#define FINCALCUL_DATA_WIDTH 1
#define FINCALCUL_DO_TEST_BENCH_WIRING 0
#define FINCALCUL_DRIVEN_SIM_VALUE 0
#define FINCALCUL_EDGE_TYPE "NONE"
#define FINCALCUL_FREQ 50000000
#define FINCALCUL_HAS_IN 0
#define FINCALCUL_HAS_OUT 1
#define FINCALCUL_HAS_TRI 0
#define FINCALCUL_IRQ -1
#define FINCALCUL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define FINCALCUL_IRQ_TYPE "NONE"
#define FINCALCUL_NAME "/dev/fincalcul"
#define FINCALCUL_RESET_VALUE 0
#define FINCALCUL_SPAN 16
#define FINCALCUL_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x101128
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * perdu configuration
 *
 */

#define ALT_MODULE_CLASS_perdu altera_avalon_pio
#define PERDU_BASE 0x1010d0
#define PERDU_BIT_CLEARING_EDGE_REGISTER 0
#define PERDU_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PERDU_CAPTURE 0
#define PERDU_DATA_WIDTH 1
#define PERDU_DO_TEST_BENCH_WIRING 0
#define PERDU_DRIVEN_SIM_VALUE 0
#define PERDU_EDGE_TYPE "NONE"
#define PERDU_FREQ 50000000
#define PERDU_HAS_IN 0
#define PERDU_HAS_OUT 1
#define PERDU_HAS_TRI 0
#define PERDU_IRQ -1
#define PERDU_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PERDU_IRQ_TYPE "NONE"
#define PERDU_NAME "/dev/perdu"
#define PERDU_RESET_VALUE 0
#define PERDU_SPAN 16
#define PERDU_TYPE "altera_avalon_pio"


/*
 * pos_raquette configuration
 *
 */

#define ALT_MODULE_CLASS_pos_raquette altera_avalon_pio
#define POS_RAQUETTE_BASE 0x101110
#define POS_RAQUETTE_BIT_CLEARING_EDGE_REGISTER 0
#define POS_RAQUETTE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define POS_RAQUETTE_CAPTURE 0
#define POS_RAQUETTE_DATA_WIDTH 11
#define POS_RAQUETTE_DO_TEST_BENCH_WIRING 0
#define POS_RAQUETTE_DRIVEN_SIM_VALUE 0
#define POS_RAQUETTE_EDGE_TYPE "NONE"
#define POS_RAQUETTE_FREQ 50000000
#define POS_RAQUETTE_HAS_IN 1
#define POS_RAQUETTE_HAS_OUT 0
#define POS_RAQUETTE_HAS_TRI 0
#define POS_RAQUETTE_IRQ -1
#define POS_RAQUETTE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define POS_RAQUETTE_IRQ_TYPE "NONE"
#define POS_RAQUETTE_NAME "/dev/pos_raquette"
#define POS_RAQUETTE_RESET_VALUE 0
#define POS_RAQUETTE_SPAN 16
#define POS_RAQUETTE_TYPE "altera_avalon_pio"


/*
 * x_position configuration
 *
 */

#define ALT_MODULE_CLASS_x_position altera_avalon_pio
#define X_POSITION_BASE 0x1010a0
#define X_POSITION_BIT_CLEARING_EDGE_REGISTER 0
#define X_POSITION_BIT_MODIFYING_OUTPUT_REGISTER 0
#define X_POSITION_CAPTURE 0
#define X_POSITION_DATA_WIDTH 11
#define X_POSITION_DO_TEST_BENCH_WIRING 0
#define X_POSITION_DRIVEN_SIM_VALUE 0
#define X_POSITION_EDGE_TYPE "NONE"
#define X_POSITION_FREQ 50000000
#define X_POSITION_HAS_IN 0
#define X_POSITION_HAS_OUT 1
#define X_POSITION_HAS_TRI 0
#define X_POSITION_IRQ -1
#define X_POSITION_IRQ_INTERRUPT_CONTROLLER_ID -1
#define X_POSITION_IRQ_TYPE "NONE"
#define X_POSITION_NAME "/dev/x_position"
#define X_POSITION_RESET_VALUE 0
#define X_POSITION_SPAN 16
#define X_POSITION_TYPE "altera_avalon_pio"


/*
 * y_position configuration
 *
 */

#define ALT_MODULE_CLASS_y_position altera_avalon_pio
#define Y_POSITION_BASE 0x101090
#define Y_POSITION_BIT_CLEARING_EDGE_REGISTER 0
#define Y_POSITION_BIT_MODIFYING_OUTPUT_REGISTER 0
#define Y_POSITION_CAPTURE 0
#define Y_POSITION_DATA_WIDTH 11
#define Y_POSITION_DO_TEST_BENCH_WIRING 0
#define Y_POSITION_DRIVEN_SIM_VALUE 0
#define Y_POSITION_EDGE_TYPE "NONE"
#define Y_POSITION_FREQ 50000000
#define Y_POSITION_HAS_IN 0
#define Y_POSITION_HAS_OUT 1
#define Y_POSITION_HAS_TRI 0
#define Y_POSITION_IRQ -1
#define Y_POSITION_IRQ_INTERRUPT_CONTROLLER_ID -1
#define Y_POSITION_IRQ_TYPE "NONE"
#define Y_POSITION_NAME "/dev/y_position"
#define Y_POSITION_RESET_VALUE 0
#define Y_POSITION_SPAN 16
#define Y_POSITION_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
