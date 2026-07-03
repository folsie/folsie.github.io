---
title: "EF3L40CG324B & LCMXO3 4300 caBGA324 Pinout Table"
publish_date: "2026-04-09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# EF3L40CG324&LCMXO3-4300 CG324


**芯片对比**: EF3L40CG324B VS LCMXO3-4300-caBGA324


## IO BANK 0

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | 0 | IO_L5P_0 | A2 | 0 | PT9A | - |
| A3 | 0 | IO_L1P_0 | A3 | 0 | PT11A | - |
| A4 | 0 | IO_L7P_0 | A4 | 0 | PT12A | - |
| A5 | 0 | IO_L7N_0 | A5 | 0 | PT12B | - |
| A6 | 0 | IO_L9N_0 | A6 | 0 | PT13B | - |
| A7 | 0 | IO_L11P_0 | A7 | 0 | PT14A | - |
| A8 | 0 | IO_L13N_0 | A8 | 0 | PT15B | - |
| A9 | 0 | IO_L18P_0,GCLKIOL_0 | A9 | 0 | PT18A | - |
| B3 | 0 | IO_L5N_0 | B3 | 0 | PT9B | - |
| B4 | 0 | IO_L1N_0 | B4 | 0 | PT11B | - |
| B5 | 0 | IO_LE2N_0,GPLL0_OUTP | B5 | 0 | PT11D | - |
| B6 | 0 | IO_L9P_0 | B6 | 0 | PT13A | - |
| B7 | 0 | IO_L11N_0 | B7 | 0 | PT14B | - |
| B8 | 0 | IO_L13P_0 | B8 | 0 | PT15A | - |
| B9 | 0 | IO_L18N_0,GCLKIOL_1 | B9 | 0 | PT18B | - |
| C3 | 0 | IO_L3P_0 | C3 | 0 | PT10A | - |
| C4 | 0 | IO_L3N_0 | C4 | 0 | PT10B | - |
| C5 | 0 | IO_LE8P_0 | C5 | 0 | PT12C | - |
| C6 | 0 | IO_LE12N_0,TDI | C6 | 0 | PT13D | EF3L40CG324B需要电阻上拉，建议4.7K |
| C7 | 0 | IO_LE16P_0,TCK | C7 | 0 | PT15C | EF3L40CG324B需要电阻下拉，建议4.7K |
| C8 | 0 | IO_LE16N_0,TMS | C8 | 0 | PT15D | EF3L40CG324B需要电阻上拉，建议4.7K |
| C9 | 0 | IO_LE10P_0 | C9 | 0 | PT19C | - |
| D4 | 0 | IO_LE4P_0 | D4 | 0 | PT9C | - |
| D5 | 0 | IO_LE2P_0,GPLL0_OUTP | D5 | 0 | PT11C | - |
| D6 | 0 | IO_LE8N_0 | D6 | 0 | PT12D | - |
| D7 | 0 | IO_LE12P_0,TDO | D7 | 0 | PT13C | EF3L40CG324B需要电阻上拉，建议4.7K |
| D8 | 0 | IO_LE15P_0 | D8 | 0 | PT14C | - |
| D9 | 0 | IO_LE10N_0 | D9 | 0 | PT19D | - |
| E5 | 0 | IO_LE4N_0 | E5 | 0 | PT9D | - |
| E6 | 0 | IO_LE6N_0 | E6 | 0 | PT10D | - |
| E7 | 0 | IO_LE15N_0 | E7 | 0 | PT14D | - |
| E8 | 0 | IO_LE14P_0 | E8 | 0 | PT18C | - |
| E9 | 0 | IO_LE21P_0,GCLKIOL_2 | E9 | 0 | PT20C | EF3L40CG324B不支持I2C配置，但提供I2C加载等的软IP实现方案 |
| F7 | 0 | IO_LE6P_0 | F7 | 0 | PT10C | - |
| F8 | 0 | IO_LE14N_0 | F8 | 0 | PT18D | - |
| F9 | 0 | IO_LE19P_0 | F9 | 0 | PT21C | - |
| G8 | 0 | VCCIO0 | G8 | 0 | VCCIO0 | EF3L40CG324B要求供电>=1.5V,必须供电，如果使用 JTAG 下载，需要和下载器供电电压保持一致 |
| G9 | 0 | VCCIO0 | G9 | 0 | VCCIO0 | EF3L40CG324B要求供电>=1.5V,必须供电，如果使用 JTAG 下载，需要和下载器供电电压保持一致 |
| A10 | 0 | IO_L17P_0 | A10 | 0 | PT19A | - |
| A11 | 0 | IO_L20P_0 | A11 | 0 | PT22A | - |
| A12 | 0 | IO_L20N_0 | A12 | 0 | PT22B | - |
| A13 | 0 | IO_L26P_0 | A13 | 0 | PT24A | - |
| A14 | 0 | IO_L26N_0 | A14 | 0 | PT24B | - |
| A15 | 0 | IO_L29P_0 | A15 | 0 | PT27A | - |
| A16 | 0 | IO_L29N_0 | A16 | 0 | PT27B | - |
| A17 | 0 | IO_L32N_0 | A17 | 0 | PT28B | - |
| B10 | 0 | IO_L17N_0 | B10 | 0 | PT19B | - |
| B11 | 0 | IO_L22N_0 | B11 | 0 | PT20B | - |
| B12 | 0 | IO_L24P_0 | B12 | 0 | PT21A | - |
| B13 | 0 | IO_L27N_0 | B13 | 0 | PT23B | - |
| B14 | 0 | IO_L33P_0 | B14 | 0 | PT25A | - |
| B15 | 0 | IO_L33N_0 | B15 | 0 | PT25B | - |
| B16 | 0 | IO_L32P_0 | B16 | 0 | PT28A | - |
| C10 | 0 | IO_L22P_0 | C10 | 0 | PT20A | - |
| C11 | 0 | IO_L24N_0 | C11 | 0 | PT21B | - |
| C12 | 0 | IO_L27P_0 | C12 | 0 | PT23A | - |
| C13 | 0 | IO_LE31N_0 | C13 | 0 | PT24D | - |
| C14 | 0 | IO_L35P_0 | C14 | 0 | PT26A | - |
| C15 | 0 | IO_L35N_0 | C15 | 0 | PT26B | - |
| C16 | 0 | IO_LE36P_0,INITN | C16 | 0 | PT28C | EF3L40CG324B需要电阻上拉，建议4.7K |
| D10 | 0 | IO_LE21N_0,GCLKIOL_3 | D10 | 0 | PT20D | EF3L40CG324B不支持I2C配置，但提供I2C加载等的软IP实现方案 |
| D11 | 0 | IO_LE25P_0,JTAGEN | D11 | 0 | PT23C | EF3L40CG324B需要电阻上拉，建议4.7K |
| D12 | 0 | IO_LE25N_0,PROGRAMN | D12 | 0 | PT23D | EF3L40CG324B需要电阻上拉，建议4.7K |
| D13 | 0 | IO_LE34P_0,GPLL1_OUTP | D13 | 0 | PT26C | - |
| D14 | 0 | IO_LE30P_0 | D14 | 0 | PT27C | - |
| D15 | 0 | IO_LE30N_0 | D15 | 0 | PT27D | - |
| E10 | 0 | IO_LE23P_0 | E10 | 0 | PT22C | - |
| E11 | 0 | IO_LE23N_0 | E11 | 0 | PT22D | - |
| E12 | 0 | IO_LE28P_0 | E12 | 0 | PT25C | - |
| E13 | 0 | IO_LE34N_0,GPLL1_OUTN | E13 | 0 | PT26D | - |
| E14 | 0 | IO_LE36N_0,DONE | E14 | 0 | PT28D | EF3L40CG324B需要电阻上拉，建议4.7K |
| F10 | 0 | IO_LE19N_0 | F10 | 0 | PT21D | - |
| F11 | 0 | IO_LE31P_0 | F11 | 0 | PT24C | - |
| F12 | 0 | IO_LE28N_0 | F12 | 0 | PT25D | - |
| G10 | 0 | VCCIO0 | G10 | 0 | VCCIO0 | EF3L40CG324B要求供电>=1.5V,必须供电，如果使用 JTAG 下载，需要和下载器供电电压保持一致 |
| G11 | 0 | VCCIO0 | G11 | 0 | VCCIO0 | EF3L40CG324B要求供电>=1.5V,必须供电，如果使用 JTAG 下载，需要和下载器供电电压保持一致 |


## IO BANK 1

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| B18 | 1 | IO_TE1P_1,GPLL1IP_FDB | B18 | 1 | PR2A | - |
| C17 | 1 | IO_TE1N_1,GPLL1IN_FDB | C17 | 1 | PR2B | - |
| C18 | 1 | IO_TE3N_1,GPLL1IN_REF | C18 | 1 | PR3B | - |
| D16 | 1 | IO_TE2N_1 | D16 | 1 | PR2D | - |
| D17 | 1 | IO_TE4N_1 | D17 | 1 | PR4B | - |
| D18 | 1 | IO_TE7N_1 | D18 | 1 | PR5D | - |
| E15 | 1 | IO_TE3P_1,GPLL1IP_REF | E15 | 1 | PR3A | - |
| E16 | 1 | IO_TE11P_1 | E16 | 1 | PR4C | - |
| E17 | 1 | IO_TE7P_1 | E17 | 1 | PR5C | - |
| E18 | 1 | IO_TE10P_1 | E18 | 1 | PR7A | - |
| F14 | 1 | IO_TE2P_1 | F14 | 1 | PR2C | - |
| F15 | 1 | IO_TE4P_1 | F15 | 1 | PR4A | - |
| F16 | 1 | IO_TE8N_1 | F16 | 1 | PR5B | - |
| F17 | 1 | IO_TE6N_1 | F17 | 1 | PR6D | - |
| F18 | 1 | IO_TE13N_1 | F18 | 1 | PR7D | - |
| G13 | 1 | IO_TE5P_1 | G13 | 1 | PR3C | - |
| G14 | 1 | IO_TE5N_1 | G14 | 1 | PR3D | - |
| G15 | 1 | IO_TE8P_1 | G15 | 1 | PR5A | - |
| G16 | 1 | IO_TE12P_1 | G16 | 1 | PR6A | - |
| G17 | 1 | IO_TE10N_1 | G17 | 1 | PR7B | - |
| G18 | 1 | IO_TE14N_1 | G18 | 1 | PR8D | - |
| H12 | 1 | VCCIO1 | H12 | 1 | VCCIO1 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| H13 | 1 | IO_TE11N_1 | H13 | 1 | PR4D | - |
| H14 | 1 | IO_TE6P_1 | H14 | 1 | PR6C | - |
| H15 | 1 | IO_TE12N_1 | H15 | 1 | PR6B | - |
| H16 | 1 | IO_TE13P_1 | H16 | 1 | PR7C | - |
| H17 | 1 | IO_TE15N_1 | H17 | 1 | PR8B | - |
| H18 | 1 | IO_TE18P_1,GCLKIOT_0 | H18 | 1 | PR10A | - |
| J11 | 1 | VCCIO1 | J11 | 1 | VCCIO1 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| J12 | 1 | IO_TE9N_1 | J12 | 1 | PR9D | - |
| J13 | 1 | IO_TE14P_1 | J13 | 1 | PR8C | - |
| J14 | 1 | IO_TE9P_1 | J14 | 1 | PR9C | - |
| J15 | 1 | IO_TE15P_1 | J15 | 1 | PR8A | - |
| J16 | 1 | IO_TE16P_1 | J16 | 1 | PR9A | - |
| J17 | 1 | IO_TE16N_1 | J17 | 1 | PR9B | - |
| J18 | 1 | IO_TE22N_1,D7 | J18 | 1 | PR10D | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| K11 | 1 | VCCIO1 | K11 | 1 | VCCIO1 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| K12 | 1 | IO_TE19P_1 | K12 | 1 | PR13C | - |
| K13 | 1 | IO_TE19N_1 | K13 | 1 | PR13D | - |
| K14 | 1 | IO_TE22P_1,D6 | K14 | 1 | PR10C | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| K15 | 1 | IO_TE18N_1,GCLKIOT_1 | K15 | 1 | PR10B | - |
| K16 | 1 | IO_TE20P_1,GCLKIOT_2 | K16 | 1 | PR13A | EF3L40CG324B可作为全局时钟输入管脚 |
| K17 | 1 | IO_TE20N_1,GCLKIOT_3 | K17 | 1 | PR13B | EF3L40CG324B可作为全局时钟输入管脚 |
| K18 | 1 | IO_TE17P_1 | K18 | 1 | PR14A | - |
| L12 | 1 | VCCIO1 | L12 | 1 | VCCIO1 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| L13 | 1 | IO_TE26N_1 | L13 | 1 | PR14D | - |
| L14 | 1 | IO_TE28P_1,D2 | L14 | 1 | PR16C | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| L15 | 1 | IO_TE26P_1,CSN | L15 | 1 | PR14C | EF3L40CG324B并行配置片选信号 |
| L16 | 1 | IO_TE17N_1 | L16 | 1 | PR14B | - |
| L17 | 1 | IO_TE24P_1,D4 | L17 | 1 | PR15A | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| L18 | 1 | IO_TE21P_1,CSON,DOUT | L18 | 1 | PR15C | EF3L40CG324B级联配置输出脚 |
| M13 | 1 | IO_TE31N_1 | M13 | 1 | PR18D | - |
| M14 | 1 | IO_TE29P_1,D0 | M14 | 1 | PR17C | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| M15 | 1 | IO_TE25P_1 | M15 | 1 | PR17A | - |
| M16 | 1 | IO_TE24N_1,D5 | M16 | 1 | PR15B | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| M17 | 1 | IO_TE23P_1 | M17 | 1 | PR16A | - |
| M18 | 1 | IO_TE21N_1 | M18 | 1 | PR15D | - |
| N14 | 1 | IO_TE32N_1 | N14 | 1 | PR19D | - |
| N15 | 1 | IO_TE27N_1 | N15 | 1 | PR18B | - |
| N16 | 1 | IO_TE29N_1,D1 | N16 | 1 | PR17D | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| N17 | 1 | IO_TE28N_1,D3 | N17 | 1 | PR16D | EF3L40CG324B从动并行配置数据脚，对标器件不支持并行加载模式 |
| N18 | 1 | IO_TE23N_1 | N18 | 1 | PR16B | - |
| P15 | 1 | IO_TE34P_1 | P15 | 1 | PR20A | - |
| P16 | 1 | IO_TE30P_1 | P16 | 1 | PR19A | - |
| P17 | 1 | IO_TE27P_1,SCLK | P17 | 1 | PR18A | EF3L40CG324B从串、从并配置时钟 |
| P18 | 1 | IO_TE25N_1,USRCLK | P18 | 1 | PR17B | - |
| R16 | 1 | IO_TE33P_1 | R16 | 1 | PR20C | - |
| R17 | 1 | IO_TE32P_1 | R17 | 1 | PR19C | - |
| R18 | 1 | IO_TE31P_1 | R18 | 1 | PR18C | - |
| T17 | 1 | IO_TE33N_1 | T17 | 1 | PR20D | - |
| T18 | 1 | IO_TE30N_1 | T18 | 1 | PR19B | - |
| U18 | 1 | IO_TE34N_1 | U18 | 1 | PR20B | - |


## IO BANK 2

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| M8 | 2 | VCCIO2 | M8 | 2 | VCCIO2 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| M9 | 2 | VCCIO2 | M9 | 2 | VCCIO2 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| N7 | 2 | IO_RE36N_2 | N7 | 2 | PB7C | EF3L40CG324B为N引脚，对标器件为P引脚 |
| N8 | 2 | IO_R31P_2 | N8 | 2 | PB9C | EF3L40CG324B支持真差分输出 |
| N9 | 2 | IO_RE21P_2 | N9 | 2 | PB15C | - |
| P5 | 2 | IO_R33P_2 | P5 | 2 | PB4C | EF3L40CG324B支持真差分输出 |
| P6 | 2 | IO_R35N_2 | P6 | 2 | PB3D | EF3L40CG324B支持真差分输出 |
| P7 | 2 | IO_RE36P_2 | P7 | 2 | PB7D | EF3L40CG324B为P引脚，对标器件为N引脚 |
| P8 | 2 | IO_R27N_2 | P8 | 2 | PB10D | EF3L40CG324B支持真差分输出 |
| P9 | 2 | IO_R22N_2 | P9 | 2 | PB13D | EF3L40CG324B支持真差分输出 |
| R4 | 2 | IO_R35P_2 | R4 | 2 | PB3C | EF3L40CG324B支持真差分输出 |
| R5 | 2 | IO_RE34P_2 | R5 | 2 | PB6C | - |
| R6 | 2 | IO_R33N_2 | R6 | 2 | PB4D | EF3L40CG324B支持真差分输出 |
| R7 | 2 | IO_R31N_2 | R7 | 2 | PB9D | EF3L40CG324B支持真差分输出 |
| R8 | 2 | IO_R25N_2 | R8 | 2 | PB12D | EF3L40CG324B支持真差分输出 |
| R9 | 2 | IO_R22P_2 | R9 | 2 | PB13C | EF3L40CG324B支持真差分输出 |
| T3 | 2 | IO_RE30P_2 | T3 | 2 | PB4A | 对标器件主SPI低电平有效片选输出，与EF3L40CG324B不兼容 |
| T4 | 2 | IO_RE34N_2 | T4 | 2 | PB6D | - |
| T5 | 2 | IO_RE28P_2 | T5 | 2 | PB7A | - |
| T6 | 2 | IO_R29P_2 | T6 | 2 | PB9A | EF3L40CG324B支持真差分输出
对标器件 输入配置时钟，用于在从SPI模式下配置FPGA。输出配置时钟，用于在SPI和SPIm配置模式下配置FPGA。 |
| T7 | 2 | IO_R27P_2 | T7 | 2 | PB10C | EF3L40CG324B支持真差分输出 |
| T8 | 2 | IO_RE19P_2,GCLKIOR_0 | T8 | 2 | PB13A | - |
| T9 | 2 | IO_RE19N_2,GCLKIOR_1 | T9 | 2 | PB13B | - |
| U3 | 2 | IO_RE32N_2 | U3 | 2 | PB3B | - |
| U4 | 2 | IO_RE30N_2 | U4 | 2 | PB4B | - |
| U5 | 2 | IO_RE28N_2 | U5 | 2 | PB7B | - |
| U6 | 2 | IO_R29N_2 | U6 | 2 | PB9B | EF3L40CG324B支持真差分输出
对标器件 从SPI串行数据输出和主SPI串行数据输入。 |
| U7 | 2 | IO_R25P_2 | U7 | 2 | PB12C | EF3L40CG324B支持真差分输出 |
| U8 | 2 | IO_RE23N_2 | U8 | 2 | PB12B | - |
| U9 | 2 | IO_R18N_2 | U9 | 2 | PB15B | EF3L40CG324B支持真差分输出 |
| V2 | 2 | IO_RE32P_2 | V2 | 2 | PB3A | - |
| V3 | 2 | IO_RE26P_2 | V3 | 2 | PB6A | - |
| V4 | 2 | IO_RE26N_2 | V4 | 2 | PB6B | - |
| V5 | 2 | IO_RE24P_2 | V5 | 2 | PB10A | - |
| V6 | 2 | IO_RE24N_2 | V6 | 2 | PB10B | - |
| V7 | 2 | IO_RE23P_2 | V7 | 2 | PB12A | - |
| V8 | 2 | IO_R18P_2 | V8 | 2 | PB15A | EF3L40CG324B支持真差分输出 |
| V9 | 2 | IO_R20P_2 | V9 | 2 | PB18A | EF3L40CG324B支持真差分输出 |
| M10 | 2 | VCCIO2 | M10 | 2 | VCCIO2 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| M11 | 2 | VCCIO2 | M11 | 2 | VCCIO2 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| N10 | 2 | IO_RE21N_2 | N10 | 2 | PB15D | - |
| N11 | 2 | IO_RE11P_2 | N11 | 2 | PB21C | - |
| N12 | 2 | IO_RE6N_2 | N12 | 2 | PB26D | - |
| P10 | 2 | IO_R12P_2 | P10 | 2 | PB20C | EF3L40CG324B支持真差分输出 |
| P11 | 2 | IO_RE10P_2 | P11 | 2 | PB23C | - |
| P12 | 2 | IO_R7P_2 | P12 | 2 | PB27C | EF3L40CG324B支持真差分输出 |
| P13 | 2 | IO_R3P_2 | P13 | 2 | PB30C | EF3L40CG324B支持真差分输出 |
| P14 | 2 | IO_R3N_2 | P14 | 2 | PB30D | EF3L40CG324B支持真差分输出 |
| R10 | 2 | IO_R16N_2 | R10 | 2 | PB18D | EF3L40CG324B支持真差分输出 |
| R11 | 2 | IO_RE11N_2 | R11 | 2 | PB21D | - |
| R12 | 2 | IO_R9P_2 | R12 | 2 | PB24C | EF3L40CG324B支持真差分输出 |
| R13 | 2 | IO_R5P_2 | R13 | 2 | PB29C | EF3L40CG324B支持真差分输出 |
| R14 | 2 | IO_R7N_2 | R14 | 2 | PB27D | EF3L40CG324B支持真差分输出 |
| R15 | 2 | IO_R5N_2 | R15 | 2 | PB29D | EF3L40CG324B支持真差分输出 |
| T10 | 2 | IO_R16P_2 | T10 | 2 | PB18C | EF3L40CG324B支持真差分输出 |
| T11 | 2 | IO_R12N_2 | T11 | 2 | PB20D | EF3L40CG324B支持真差分输出 |
| T12 | 2 | IO_RE10N_2 | T12 | 2 | PB23D | - |
| T13 | 2 | IO_R9N_2 | T13 | 2 | PB24D | EF3L40CG324B支持真差分输出 |
| T14 | 2 | IO_RE6P_2 | T14 | 2 | PB26C | - |
| T15 | 2 | IO_RE2P_2 | T15 | 2 | PB29A | - |
| T16 | 2 | IO_RE2N_2 | T16 | 2 | PB29B | - |
| U10 | 2 | IO_R20N_2 | U10 | 2 | PB18B | EF3L40CG324B支持真差分输出 |
| U11 | 2 | IO_RE17N_2,GCLKIOR_3 | U11 | 2 | PB20B | - |
| U12 | 2 | IO_R14P_2 | U12 | 2 | PB23A | EF3L40CG324B支持真差分输出 |
| U13 | 2 | IO_RE8P_2 | U13 | 2 | PB24A | - |
| U14 | 2 | IO_RE13P_2 | U14 | 2 | PB26A | - |
| U15 | 2 | IO_RE4P_2 | U15 | 2 | PB27A | - |
| U16 | 2 | IO_R1P_2 | U16 | 2 | PB30A | EF3L40CG324B支持真差分输出，对标器件 从SPI低电平有效片选输入 |
| V10 | 2 | IO_RE17P_2,GCLKIOR_2 | V10 | 2 | PB20A | - |
| V11 | 2 | IO_RE15P_2 | V11 | 2 | PB21A | - |
| V12 | 2 | IO_RE15N_2 | V12 | 2 | PB21B | - |
| V13 | 2 | IO_R14N_2 | V13 | 2 | PB23B | EF3L40CG324B支持真差分输出 |
| V14 | 2 | IO_RE8N_2 | V14 | 2 | PB24B | - |
| V15 | 2 | IO_RE13N_2 | V15 | 2 | PB26B | - |
| V16 | 2 | IO_RE4N_2 | V16 | 2 | PB27B | - |
| V17 | 2 | IO_R1N_2 | V17 | 2 | PB30B | EF3L40CG324B支持真差分输出
对标器件 从SPI串行数据输入和主SPI串行数据输出。 |


## IO BANK 3

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| L4 | 3 | IO_BE12P_3 | L4 | 3 | PL15A | - |
| L5 | 3 | IO_BE7N_3 | L5 | 3 | PL16D | - |
| L6 | 3 | IO_BE5N_3 | L6 | 3 | PL15D | - |
| L7 | 3 | VCCIO3 | L7 | 3 | VCCIO3 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| M1 | 3 | IO_BE5P_3 | M1 | 3 | PL15C | - |
| M2 | 3 | IO_BE12N_3 | M2 | 3 | PL15B | - |
| M3 | 3 | IO_BE7P_3 | M3 | 3 | PL16C | - |
| M4 | 3 | IO_BE6N_3,GCLKIOB_1 | M4 | 3 | PL17B | - |
| M5 | 3 | IO_BE1P_3 | M5 | 3 | PL17C | - |
| M6 | 3 | IO_BE11N_3 | M6 | 3 | PL18D | - |
| M7 | 3 | VCCIO3 | M7 | 3 | VCCIO3 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| N1 | 3 | IO_BE4P_3 | N1 | 3 | PL16A | - |
| N2 | 3 | IO_BE4N_3 | N2 | 3 | PL16B | - |
| N3 | 3 | IO_BE1N_3 | N3 | 3 | PL17D | - |
| N4 | 3 | IO_BE8P_3 | N4 | 3 | PL19A | - |
| N5 | 3 | IO_BE10N_3 | N5 | 3 | PL20B | - |
| P1 | 3 | IO_BE6P_3,GCLKIOB_0 | P1 | 3 | PL17A | - |
| P2 | 3 | IO_BE11P_3 | P2 | 3 | PL18C | - |
| P3 | 3 | IO_BE3N_3 | P3 | 3 | PL18B | - |
| P4 | 3 | IO_BE2P_3 | P4 | 3 | PL20C | - |
| R1 | 3 | IO_BE3P_3 | R1 | 3 | PL18A | - |
| R2 | 3 | IO_BE9P_3 | R2 | 3 | PL19C | - |
| R3 | 3 | IO_BE2N_3 | R3 | 3 | PL20D | - |
| T1 | 3 | IO_BE8N_3 | T1 | 3 | PL19B | - |
| T2 | 3 | IO_BE10P_3 | T2 | 3 | PL20A | - |
| U1 | 3 | IO_BE9N_3 | U1 | 3 | PL19D | - |


## IO BANK 4

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| J2 | 4 | IO_BE7P_4 | J2 | 4 | PL9A | - |
| J3 | 4 | IO_BE5P_4 | J3 | 4 | PL9C | - |
| J4 | 4 | IO_BE6P_4 | J4 | 4 | PL10A | - |
| J5 | 4 | IO_BE7N_4 | J5 | 4 | PL9B | - |
| J6 | 4 | IO_BE8N_4,GCLKIOB_3 | J6 | 4 | PL10D | - |
| J7 | 4 | IO_BE5N_4 | J7 | 4 | PL9D | - |
| J8 | 4 | VCCIO4 | J8 | 4 | VCCIO4 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| K1 | 4 | IO_BE2P_4 | K1 | 4 | PL13A | - |
| K2 | 4 | IO_BE8P_4,GCLKIOB_2 | K2 | 4 | PL10C | - |
| K3 | 4 | IO_BE6N_4 | K3 | 4 | PL10B | - |
| K4 | 4 | IO_BE4P_4 | K4 | 4 | PL14A | - |
| K5 | 4 | IO_BE3N_4 | K5 | 4 | PL13D | - |
| K6 | 4 | IO_BE1P_4 | K6 | 4 | PL14C | - |
| K7 | 4 | IO_BE3P_4 | K7 | 4 | PL13C | - |
| K8 | 4 | VCCIO4 | K8 | 4 | VCCIO4 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| L1 | 4 | IO_BE2N_4 | L1 | 4 | PL13B | - |
| L2 | 4 | IO_BE4N_4 | L2 | 4 | PL14B | - |
| L3 | 4 | IO_BE1N_4 | L3 | 4 | PL14D | - |


## IO BANK 5

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| B1 | 5 | IO_BE13P_5 | B1 | 5 | PL2A | - |
| C1 | 5 | IO_BE14N_5 | C1 | 5 | PL2D | - |
| C2 | 5 | IO_BE13N_5 | C2 | 5 | PL2B | - |
| D1 | 5 | IO_BE9N_5 | D1 | 5 | PL4D | - |
| D2 | 5 | IO_BE10P_5,GPLL0IP_REF | D2 | 5 | PL4A | - |
| D3 | 5 | IO_BE14P_5 | D3 | 5 | PL2C | - |
| E1 | 5 | IO_BE4N_5 | E1 | 5 | PL5B | - |
| E2 | 5 | IO_BE4P_5 | E2 | 5 | PL5A | - |
| E3 | 5 | IO_BE11P_5 | E3 | 5 | PL3C | - |
| E4 | 5 | IO_BE12P_5,GPLL0IP_FDB | E4 | 5 | PL3A | - |
| F1 | 5 | IO_BE3P_5 | F1 | 5 | PL6C | - |
| F2 | 5 | IO_BE7P_5 | F2 | 5 | PL5C | - |
| F3 | 5 | IO_BE9P_5 | F3 | 5 | PL4C | - |
| F4 | 5 | IO_BE12N_5,GPLL0IN_FDB | F4 | 5 | PL3B | - |
| F5 | 5 | IO_BE11N_5 | F5 | 5 | PL3D | - |
| G1 | 5 | IO_BE5N_5 | G1 | 5 | PL7B | - |
| G2 | 5 | IO_BE5P_5 | G2 | 5 | PL7A | - |
| G3 | 5 | IO_BE8N_5,GCLKIOB_5 | G3 | 5 | PL6B | - |
| G4 | 5 | IO_BE8P_5,GCLKIOB_4 | G4 | 5 | PL6A | - |
| G5 | 5 | IO_BE10N_5,GPLL0IN_REF | G5 | 5 | PL4B | - |
| G6 | 5 | IO_BE3N_5 | G6 | 5 | PL6D | - |
| G7 | 5 | VCCIO5 | G7 | 5 | VCCIO5 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| H1 | 5 | IO_BE2N_5 | H1 | 5 | PL8B | - |
| H2 | 5 | IO_BE2P_5 | H2 | 5 | PL8A | - |
| H3 | 5 | IO_BE6P_5 | H3 | 5 | PL7C | - |
| H4 | 5 | IO_BE6N_5 | H4 | 5 | PL7D | - |
| H5 | 5 | IO_BE7N_5 | H5 | 5 | PL5D | - |
| H6 | 5 | IO_BE1P_5 | H6 | 5 | PL8C | - |
| H7 | 5 | VCCIO5 | H7 | 5 | VCCIO5 | EF3L40CG324B要求供电>=1.2V，建议不使用时也供电 |
| J1 | 5 | IO_BE1N_5 | J1 | 5 | PL8D | - |


## IO BANK Other

| EF3L40CG324B | | | LCMXO3-4300-caBGA324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | - | GND | A1 | - | GND | - |
| B2 | - | GND | B2 | - | GND | - |
| F6 | - | GND_PLL0 | F6 | - | GND | - |
| H8 | - | VCCAUX | H8 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| H9 | - | VCCAUX | H9 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| J9 | - | GND | J9 | - | GND | - |
| K9 | - | GND | K9 | - | GND | - |
| L8 | - | VCCAUX | L8 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| L9 | - | VCCAUX | L9 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| N6 | - | GND | N6 | - | GND | - |
| U2 | - | GND | U2 | - | GND | - |
| V1 | - | GND | V1 | - | GND | - |
| A18 | - | GND | A18 | - | GND | - |
| B17 | - | GND | B17 | - | GND | - |
| F13 | - | GND_PLL1 | F13 | - | GND | - |
| G12 | - | VCCAUX | G12 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| H10 | - | VCCAUX | H10 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| H11 | - | VCCAUX | H11 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| J10 | - | GND | J10 | - | GND | - |
| K10 | - | GND | K10 | - | GND | - |
| L10 | - | VCCAUX | L10 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| L11 | - | VCCAUX | L11 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| M12 | - | VCCAUX | M12 | - | VCC | EF3L40CG324B要求供电>=2.5V,必须供电 |
| N13 | - | GND | N13 | - | GND | - |
| U17 | - | GND | U17 | - | GND | - |
| V18 | - | GND | V18 | - | GND | - |
