---
title: "PH1P100GEG324 VS PH1P50GEG324 Pinout Table"
publish_date: "2026-04-09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# PH1P50&PH1P100


**芯片对比**: PH1P50GEG324 VS PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25


## IO BANK 0

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| E9 | 0 | IO_C0_0,CCLK_0 | E9 | 0 | IO_C0_0,CCLK_0 | PH1P50为HD IO，PH1P100为HR IO,作为配置专用IO功能一致 |
| P7 | 0 | INITN_0 | P7 | 0 | INITN_0 | PH1P100和PH1P50器件加载时钟引脚，推荐使用4.7k上拉 |
| P9 | 0 | PROGRAMN_0 | P9 | 0 | PROGRAMN_0 | PH1P100和PH1P50器件需要上拉，推荐使用4.7K。 |
| R9 | 0 | VCCIO_0 | R9 | 0 | VCCIO_0 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V） |
| E10 | 0 | TCK_0 | E10 | 0 | TCK_0 | TDI,TDO,TMS，TCK推荐通过4.7K电阻上拉 |
| E11 | 0 | TDI_0 | E11 | 0 | TDI_0 | - |
| E12 | 0 | TMS_0 | E12 | 0 | TMS_0 | - |
| E13 | 0 | TDO_0 | E13 | 0 | TDO_0 | - |
| P10 | 0 | DONE_0 | P10 | 0 | DONE_0 | PH1P100和PH1P50器件需要上拉，推荐使用4.7K。 |
| P11 | 0 | M2_0 | P11 | 0 | M2_0 | - |
| P12 | 0 | M0_0 | P12 | 0 | M0_0 | PH1P100和PH1P50器件加载模式选择引脚，功能一致 |
| P13 | 0 | M1_0 | P13 | 0 | M1_0 | - |


## IO BANK 11, 12

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| T9 | 12 | IO_L24P_12,D17,T3 | T9 | 11 | IO_L24P_11,D17,T3 | - |
| K17 | 12 | IO_L1P_12,D0,MOSI,T0 | K17 | 11 | IO_L1P_11,D0,MOSI,T0 | - |
| K18 | 12 | IO_L1N_12,D1,MISO,DIN,T0 | K18 | 11 | IO_L1N_11,D1,MISO,DIN,T0 | - |
| L13 | 12 | IO_L6P_12,SPICSN,BUSY,T0 | L13 | 11 | IO_L6P_11,SPICSN,BUSY,T0 | - |
| L14 | 12 | IO_L2P_12,D2,WPN,T0 | L14 | 11 | IO_L2P_11,D2,WPN,T0 | - |
| L15 | 12 | IO_L3P_12,HSWAPEN,T0_DQS_P | L15 | 11 | IO_L3P_11,HSWAPEN,T0_DQS_P | - |
| L16 | 12 | IO_L3N_12,USRCLK,T0_DQS_N | L16 | 11 | IO_L3N_11,USRCLK,T0_DQS_N | PH1P50器件USRCLK在MSPI模式下可作为CCLK时钟源；
如果作为普通IO功能一致； |
| L17 | 12 | VCCIO_12 | L17 | 11 | VCCIO_11 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK11
PH1P100器件为BANK12 |
| L18 | 12 | IO_L4P_12,D4,T0 | L18 | 11 | IO_L4P_11,D4,T0 | - |
| M13 | 12 | IO_L6N_12,D8,T0_VREF,T0 | M13 | 11 | IO_L6N_11,D8,T0_VREF,T0 | - |
| M14 | 12 | IO_L2N_12,D3,HOLDN,T0 | M14 | 11 | IO_L2N_11,D3,HOLDN,T0 | - |
| M16 | 12 | IO_L10P_12,D14,T1 | M16 | 11 | IO_L10P_11,D14,T1 | - |
| M17 | 12 | IO_L10N_12,D15,T1 | M17 | 11 | IO_L10N_11,D15,T1 | - |
| M18 | 12 | IO_L4N_12,D5,T0 | M18 | 11 | IO_L4N_11,D5,T0 | - |
| N13 | 12 | VCCIO_12 | N13 | 11 | VCCIO_11 | - |
| N14 | 12 | IO_L8P_12,D11,T1 | N14 | 11 | IO_L8P_11,D11,T1 | - |
| N15 | 12 | IO_L11P_12,GCLKIOT3,T1 | N15 | 11 | IO_L11P_11,GCLKIOT3,T1 | - |
| N16 | 12 | IO_L11N_12,GCLKIOC3,T1 | N16 | 11 | IO_L11N_11,GCLKIOC3,T1 | - |
| N17 | 12 | IO_L9P_12,T1_DQS_P | N17 | 11 | IO_L9P_11,T1_DQS_P | - |
| P14 | 12 | IO_L8N_12,D12,T1 | P14 | 11 | IO_L8N_11,D11,T1 | - |
| P15 | 12 | IO_L13P_12,GCLKIOT1,T2 | P15 | 11 | IO_L13P_11,GCLKIOT1,T2 | - |
| P16 | 12 | VCCIO_12 | P16 | 11 | VCCIO_11 | - |
| P17 | 12 | IO_L12P_12,GCLKIOT2,T1 | P17 | 11 | IO_L11P_11,GCLKIOT2,T1 | - |
| P18 | 12 | IO_L9N_12,D13,T1_DQS_N | P18 | 11 | IO_L9N_11,D13,T1_DQS_N | - |
| R10 | 12 | IO_L25_12 | R10 | 11 | IO_L25_11 | - |
| R11 | 12 | IO_L0_12 | R11 | 11 | IO_L0_11 | - |
| R12 | 12 | IO_L5P_12,D6,T0 | R12 | 11 | IO_L5P_11,D6,T0 | - |
| R13 | 12 | IO_L5N_12,D7,T0 | R13 | 11 | IO_L5N_11,D7,T0 | - |
| R15 | 12 | IO_L13N_12,GCLKIOC1,T2 | R15 | 11 | IO_L13N_11,GCLKIOC1,T2 | - |
| R16 | 12 | IO_L15P_12,RDWRN,T2_DQS_P | R16 | 11 | IO_L15P_11,RDWRN,T2_DQS_P | - |
| R17 | 12 | IO_L12N_12,GCLKIOC2,T1 | R17 | 11 | IO_L11N_11,GCLKIOC2,T1 | - |
| R18 | 12 | IO_L7P_12,D9,T1 | R18 | 11 | IO_L7P_11,D9,T1 | - |
| T10 | 12 | IO_L24N_12,D16,T3 | T10 | 11 | IO_L24N_11,D16,T3 | - |
| T11 | 12 | IO_L19P_12,D26,T3 | T11 | 11 | IO_L19P_11,D26,T3 | - |
| T12 | 12 | VCCIO_12 | T12 | 11 | VCCIO_11 | - |
| T13 | 12 | IO_L23P_12,D19,T3 | T13 | 11 | IO_L23P_11,D19,T3 | - |
| T14 | 12 | IO_L14P_12,GCLKIOT0,T2 | T14 | 11 | IO_L14P_11,GCLKIOT0,T2 | - |
| T15 | 12 | IO_L14N_12,GCLKIOC0,T2 | T15 | 11 | IO_L14N_11,GCLKIOC0,T2 | - |
| T16 | 12 | IO_L15N_12,CSON,DOUT,T2_DQS_N | T16 | 11 | IO_L15N_11,CSON,DOUT,T2_DQS_N | - |
| T18 | 12 | IO_L7N_12,D10,T1 | T18 | 11 | IO_L7N_11,D10,T1 | - |
| U11 | 12 | IO_L19N_12,D25,T3_VREF,T3 | U11 | 11 | IO_L19N_11,D25,T3_VREF,T3 | - |
| U12 | 12 | IO_L20P_12,D24,T3 | U12 | 11 | IO_L20P_11,D24,T3 | - |
| U13 | 12 | IO_L23N_12,D18,T3 | U13 | 11 | IO_L23N_11,D18,T3 | - |
| U14 | 12 | IO_L22P_12,D21,T3 | U14 | 11 | IO_L22P_11,D21,T3 | - |
| U15 | 12 | VCCIO_12 | U15 | 11 | VCCIO_11 | - |
| U16 | 12 | IO_L18P_12,D28,T2 | U16 | 11 | IO_L18P_11,D28,T2 | - |
| U17 | 12 | IO_L17P_12,D30,T2 | U17 | 11 | IO_L17P_11,D30,T2 | - |
| U18 | 12 | IO_L17N_12,D29,T2 | U18 | 11 | IO_L17N_11,D29,T2 | - |
| V10 | 12 | IO_L21P_12,T3_DQS_P | V10 | 11 | IO_L21P_11,T3_DQS_P | - |
| V11 | 12 | IO_L21N_12,D22,T3_DQS_N | V11 | 11 | IO_L21N_11,D22,T3_DQS_N | - |
| V12 | 12 | IO_L20N_12,D23,T3 | V12 | 11 | IO_L20N_11,D23,T3 | - |
| V14 | 12 | IO_L22N_12,D20,T3 | V14 | 11 | IO_L22N_11,D20,T3 | - |
| V15 | 12 | IO_L16P_12,CSN,T2 | V15 | 11 | IO_L16P_11,CSN,T2 | - |
| V16 | 12 | IO_L16N_12,D31,T2 | V16 | 11 | IO_L16N_11,D31,T2 | - |
| V17 | 12 | IO_L18N_12,D27,T2 | V17 | 11 | IO_L18N_11,D27,T2 | - |
| V18 | 12 | VCCIO_12 | V18 | 11 | VCCIO_11 | - |


## IO BANK 12, 13

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A11 | 13 | IO_L4N_13,T0 | A11 | 12 | IO_L4N_12,,T0 | - |
| A13 | 13 | IO_L9P_13,T1_DQS_P | A13 | 12 | IO_L9P_12,ADC2P,T1_DQS_P | - |
| A14 | 13 | IO_L9N_13,T1_DQS_N | A14 | 12 | IO_L9N_12,ADC2N,T1_DQS_N | - |
| A15 | 13 | IO_L8P_13,T1 | A15 | 12 | IO_L8P_12,ADC3P,T1 | - |
| A16 | 13 | IO_L8N_13,T1 | A16 | 12 | IO_L8N_12,ADC3N,T1 | - |
| A17 | 13 | VCCIO_13 | A17 | 12 | VCCIO_12 | - |
| A18 | 13 | IO_L10N_13,T1 | A18 | 12 | IO_L10N_12,T1 | - |
| B11 | 13 | IO_L4P_13,T0 | B11 | 12 | IO_L4P_12,,T0 | - |
| B12 | 13 | IO_L3N_13,T0_DQS_N | B12 | 12 | IO_L3N_12,ADC6N,T0_DQS_N | - |
| B13 | 13 | IO_L2P_13,T0 | B13 | 12 | IO_L2P_12,ADC7P,T0 | - |
| B14 | 13 | IO_L2N_13,T0 | B14 | 12 | IO_L2N_12,ADC7N,T0 | - |
| B16 | 13 | IO_L7P_13,T1 | B16 | 12 | IO_L7P_12,ADC4P,T1 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| B17 | 13 | IO_L7N_13,T1 | B17 | 12 | IO_L7N_12,ADC4N,T1 | - |
| B18 | 13 | IO_L10P_13,T1 | B18 | 12 | IO_L10P_12,T1 | - |
| C12 | 13 | IO_L3P_13,T0_DQS_P | C12 | 12 | IO_L3P_12,ADC6P,T0_DQS_P | - |
| C13 | 13 | VCCIO_13 | C13 | 12 | VCCIO_12 | - |
| C14 | 13 | IO_L1N_13,T0 | C14 | 12 | IO_L1N_12,ADC8N,T0 | - |
| C15 | 13 | IO_L12N_13,GCLKIOC2,T1 | C15 | 12 | IO_L12N_12,GCLKIOC2,T1 | - |
| C16 | 13 | IO_L20P_13,T3 | C16 | 12 | IO_L20P_12,T3 | - |
| C17 | 13 | IO_L20N_13,T3 | C17 | 12 | IO_L20N_12,T3 | - |
| D12 | 13 | IO_L6P_13,T0 | D12 | 12 | IO_L6P_12,,T0 | - |
| D13 | 13 | IO_L6N_13,T0_VREF,T0 | D13 | 12 | IO_L6N_12,,T0_VREF,T0 | - |
| D14 | 13 | IO_L1P_13,T0 | D14 | 12 | IO_L1P_12,ADC8P,T0 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| D15 | 13 | IO_L12P_13,GCLKIOT2,T1 | D15 | 12 | IO_L12P_12,GCLKIOT2,T1 | - |
| D16 | 13 | VCCIO_13 | D16 | 12 | VCCIO_12 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK12
PH1P100器件为BANK13 |
| D17 | 13 | IO_L16N_13,T2 | D17 | 12 | IO_L16N_12,T2 | - |
| D18 | 13 | IO_L21N_13,T3_DQS_N | D18 | 12 | IO_L21N_12,T3_DQS_N | - |
| E15 | 13 | IO_L11P_13,GCLKIOT3,T1 | E15 | 12 | IO_L11P_12,GCLKIOT3,T1 | - |
| E16 | 13 | IO_L11N_13,GCLKIOC3,T1 | E16 | 12 | IO_L11N_12,GCLKIOC3,T1 | - |
| E17 | 13 | IO_L16P_13,T2 | E17 | 12 | IO_L16P_12,T2 | - |
| E18 | 13 | IO_L21P_13,T3_DQS_P | E18 | 12 | IO_L21P_12,T3_DQS_P | - |
| F13 | 13 | IO_L5P_13,T0 | F13 | 12 | IO_L5P_12,ADC5P,T0 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| F14 | 13 | IO_L5N_13,T0 | F14 | 12 | IO_L5N_12,ADC5N,T0 | - |
| F15 | 13 | IO_L14P_13,GCLKIOT0,T2 | F15 | 12 | IO_L14P_12,GCLKIOT0,T2 | - |
| F16 | 13 | IO_L14N_13,GCLKIOC0,T2 | F16 | 12 | IO_L14N_12,GCLKIOC0,T2 | - |
| F18 | 13 | IO_L22N_13,T3 | F18 | 12 | IO_L22N_12,T3 | - |
| G13 | 13 | IO_L0_13 | G13 | 12 | IO_L0_12 | - |
| G14 | 13 | IO_L15N_13,T2_DQS_N | G14 | 12 | IO_L15N_12,T2_DQS_N | - |
| G15 | 13 | VCCIO_13 | G15 | 12 | VCCIO_12 | - |
| G16 | 13 | IO_L13N_13,GCLKIOC1,T2 | G16 | 12 | IO_L12N_12,GCLKIOC1,T2 | - |
| G17 | 13 | IO_L18N_13,T2 | G17 | 12 | IO_L18N_12,T2 | - |
| G18 | 13 | IO_L22P_13,T3 | G18 | 12 | IO_L22P_12,T3 | - |
| H14 | 13 | IO_L15P_13,T2_DQS_P | H14 | 12 | IO_L15P_12,T2_DQS_P | - |
| H15 | 13 | IO_L19N_13,T3_VREF,T3 | H15 | 12 | IO_L19N_12,T3_VREF,T3 | - |
| H16 | 13 | IO_L13P_13,GCLKIOT1,T2 | H16 | 12 | IO_L12P_12,GCLKIOT1,T2 | - |
| H17 | 13 | IO_L18P_13,T2 | H17 | 12 | IO_L18P_12,T2 | - |
| H18 | 13 | VCCIO_13 | H18 | 12 | VCCIO_12 | - |
| J13 | 13 | IO_L17N_13,T2 | J13 | 12 | IO_L17N_12,T2 | - |
| J14 | 13 | IO_L19P_13,T3 | J14 | 12 | IO_L19P_12,T3 | - |
| J15 | 13 | IO_L24N_13,T3 | J15 | 12 | IO_L24N_12,T3 | - |
| J17 | 13 | IO_L23P_13,T3 | J17 | 12 | IO_L23P_12,T3 | - |
| J18 | 13 | IO_L23N_13,T3 | J18 | 12 | IO_L23N_12,T3 | - |
| K13 | 13 | IO_L17P_13,T2 | K13 | 12 | IO_L17P_12,T2 | - |
| K14 | 13 | VCCIO_13 | K14 | 12 | VCCIO_12 | - |
| K15 | 13 | IO_L24P_13,T3 | K15 | 12 | IO_L24P_12,T3 | - |
| K16 | 13 | IO_L25_13 | K16 | 12 | IO_L25_12 | - |


## IO BANK 13, 14

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A8 | 14 | IO_L2N_14,GCLKIOC2,T1 | A8 | 13 | IO_L2N_13,GCLKIOC2,T1 | - |
| A9 | 14 | IO_L4N_14,GCLKIOC0,T2 | A9 | 13 | IO_L4N_13,GCLKIOC0,T2 | - |
| B8 | 14 | IO_L2P_14,GCLKIOT2,T1 | B8 | 13 | IO_L2P_13,GCLKIOT2,T1 | - |
| B9 | 14 | IO_L1N_14,GCLKIOC3,T1 | B9 | 13 | IO_L1N_13,GCLKIOC3,T1 | - |
| C9 | 14 | IO_L1P_14,GCLKIOT3,T1 | C9 | 13 | IO_L1P_13,GCLKIOT3,T1 | - |
| D9 | 14 | IO_L0_14,T0_VREF,T0 | D9 | 13 | IO_L0_13,T0_VREF,T0 | - |
| A10 | 14 | IO_L4P_14,GCLKIOT0,T2 | A10 | 13 | IO_L4P_13,GCLKIOT0,T2 | - |
| B10 | 14 | VCCIO_14 | B10 | 13 | VCCIO_13 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK13
PH1P100器件为BANK14 |
| C10 | 14 | IO_L3N_14,GCLKIOC1,T2 | C10 | 13 | IO_L3N_13,GCLKIOC1,T2 | - |
| C11 | 14 | IO_L3P_14,GCLKIOT1,T2 | C11 | 13 | IO_L3P_13,GCLKIOT1,T2 | - |
| D10 | 14 | IO_L5_14,T3_VREF,T3 | D10 | 13 | IO_L5_13,T3_VREF,T3 | - |


## IO BANK 31, 32

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| K3 | 32 | IO_R2P_32,T0 | K3 | 31 | IO_R2P_31,T0 | - |
| K4 | 32 | VCCIO_32 | K4 | 31 | VCCIO_31 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK31
PH1P100器件为BANK32 |
| K5 | 32 | IO_R5P_32,T0 | K5 | 31 | IO_R5P_31,T0 | - |
| K6 | 32 | IO_R0_32 | K6 | 31 | IO_R0_31 | - |
| L1 | 32 | IO_R1P_32,T0 | L1 | 31 | IO_R1P_31,T0 | - |
| L3 | 32 | IO_R2N_32,T0 | L3 | 31 | IO_R2N_31,T0 | - |
| L4 | 32 | IO_R5N_32,T0 | L4 | 31 | IO_R5N_31,T0 | - |
| L5 | 32 | IO_R6N_32,T0_VREF,T0 | L5 | 31 | IO_R6N_31,T0_VREF,T0 | - |
| L6 | 32 | IO_R6P_32,T0 | L6 | 31 | IO_R6P_31,T0 | - |
| M1 | 32 | IO_R1N_32,T0 | M1 | 31 | IO_R1N_31,T0 | - |
| M2 | 32 | IO_R4N_32,T0 | M2 | 31 | IO_R4N_31,T0 | - |
| M3 | 32 | IO_R4P_32,T0 | M3 | 31 | IO_R4P_31,T0 | - |
| M4 | 32 | IO_R16P_32,T2 | M4 | 31 | IO_R16P_31,T2 | - |
| M6 | 32 | IO_R18P_32,T2 | M6 | 31 | IO_R18P_31,T2 | - |
| N1 | 32 | IO_R3N_32,T0_DQS_N | N1 | 31 | IO_R3N_31,T0_DQS_N | - |
| N2 | 32 | IO_R3P_32,T0_DQS_P | N2 | 31 | IO_R3P_31,T0_DQS_P | - |
| N3 | 32 | VCCIO_32 | N3 | 31 | VCCIO_31 | - |
| N4 | 32 | IO_R16N_32,T2 | N4 | 31 | IO_R16N_31,T2 | - |
| N5 | 32 | IO_R13P_32,GCLKIOT1,T2 | N5 | 31 | IO_R13P_31,GCLKIOT1,T2 | - |
| N6 | 32 | IO_R18N_32,T2 | N6 | 31 | IO_R18N_31,T2 | - |
| P2 | 32 | IO_R15P_32,T2_DQS_P | P2 | 31 | IO_R15P_31,T2_DQS_P | - |
| P3 | 32 | IO_R14N_32,GCLKIOC0,T2 | P3 | 31 | IO_R14N_31,GCLKIOC0,T2 | - |
| P4 | 32 | IO_R14P_32,GCLKIOT0,T2 | P4 | 31 | IO_R14P_31,GCLKIOT0,T2 | - |
| P5 | 32 | IO_R13N_32,GCLKIOC1,T2 | P5 | 31 | IO_R13N_31,GCLKIOC1,T2 | - |
| P6 | 32 | VCCIO_32 | P6 | 31 | VCCIO_31 | - |
| R1 | 32 | IO_R17P_32,T2 | R1 | 31 | IO_R17P_31,T2 | - |
| R2 | 32 | IO_R15N_32,T2_DQS_N | R2 | 31 | IO_R15N_31,T2_DQS_N | - |
| R3 | 32 | IO_R11P_32,GCLKIOT3,T1 | R3 | 31 | IO_R11P_31,GCLKIOT3,T1 | - |
| R5 | 32 | IO_R19N_32,T3_VREF,T3 | R5 | 31 | IO_R19N_31,T3_VREF,T3 | - |
| R6 | 32 | IO_R19P_32,T3 | R6 | 31 | IO_R19P_31,T3 | - |
| R7 | 32 | IO_R23P_32,T3 | R7 | 31 | IO_R23P_31,T3 | - |
| R8 | 32 | IO_R24P_32,T3 | R8 | 31 | IO_R24P_31,T3 | - |
| T1 | 32 | IO_R17N_32,T2 | T1 | 31 | IO_R17N_31,T2 | - |
| T2 | 32 | VCCIO_32 | T2 | 31 | VCCIO_31 | - |
| T3 | 32 | IO_R11N_32,GCLKIOC3,T1 | T3 | 31 | IO_R11N_31,GCLKIOC3,T1 | - |
| T4 | 32 | IO_R12N_32,GCLKIOC2,T1 | T4 | 31 | IO_R12N_31,GCLKIOC2,T1 | - |
| T5 | 32 | IO_R12P_32,GCLKIOT2,T1 | T5 | 31 | IO_R12P_31,GCLKIOT2,T1 | - |
| T6 | 32 | IO_R23N_32,T3 | T6 | 31 | IO_R23N_31,T3 | - |
| T8 | 32 | IO_R24N_32,T3 | T8 | 31 | IO_R24N_31,T3 | - |
| U1 | 32 | IO_R7P_32,T1 | U1 | 31 | IO_R7P_31,T1 | - |
| U2 | 32 | IO_R9P_32,T1_DQS_P | U2 | 31 | IO_R9P_31,T1_DQS_P | - |
| U3 | 32 | IO_R8N_32,T1 | U3 | 31 | IO_R8N_31,T1 | - |
| U4 | 32 | IO_R8P_32,T1 | U4 | 31 | IO_R8P_31,T1 | - |
| U5 | 32 | VCCIO_32 | U5 | 31 | VCCIO_31 | - |
| U6 | 32 | IO_R22N_32,T3 | U6 | 31 | IO_R22N_31,T3 | - |
| U7 | 32 | IO_R22P_32,T3 | U7 | 31 | IO_R22P_31,T3 | - |
| U8 | 32 | IO_R25_32 | U8 | 31 | IO_R25_31 | - |
| U9 | 32 | IO_R21P_32,T3_DQS_P | U9 | 31 | IO_R21P_31,T3_DQS_P | - |
| V1 | 32 | IO_R7N_32,T1 | V1 | 31 | IO_R7N_31,T1 | - |
| V2 | 32 | IO_R9N_32,T1_DQS_N | V2 | 31 | IO_R9N_31,T1_DQS_N | - |
| V4 | 32 | IO_R10N_32,T1 | V4 | 31 | IO_R10N_31,T1 | - |
| V5 | 32 | IO_R10P_32,T1 | V5 | 31 | IO_R10P_31,T1 | - |
| V6 | 32 | IO_R20N_32,T3 | V6 | 31 | IO_R20N_31,T3 | - |
| V7 | 32 | IO_R20P_32,T3 | V7 | 31 | IO_R20P_31,T3 | - |
| V8 | 32 | VCCIO_32 | V8 | 31 | VCCIO_31 | - |
| V9 | 32 | IO_R21N_32,T3_DQS_N | V9 | 31 | IO_R21N_31,T3_DQS_N | - |


## IO BANK 32, 33

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | 33 | IO_R9N_33,T1_DQS_N | A1 | 32 | IO_R9N_32,T1_DQS_N | - |
| A3 | 33 | IO_R8N_33,T1 | A3 | 32 | IO_R8N_32,T1 | - |
| A4 | 33 | IO_R8P_33,T1 | A4 | 32 | IO_R8P_32,T1 | - |
| A5 | 33 | IO_R3N_33,T0_DQS_N | A5 | 32 | IO_R3N_32,T0_DQS_N | - |
| A6 | 33 | IO_R3P_33,T0_DQS_P | A6 | 32 | IO_R3P_32,T0_DQS_P | - |
| A7 | 33 | VCCIO_33 | A7 | 32 | VCCIO_32 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK32
PH1P100器件为BANK33 |
| B1 | 33 | IO_R9P_33,T1_DQS_P | B1 | 32 | IO_R9P_32,T1_DQS_P | - |
| B2 | 33 | IO_R10N_33,T1 | B2 | 32 | IO_R10N_32,T1 | - |
| B3 | 33 | IO_R10P_33,T1 | B3 | 32 | IO_R10P_32,T1 | - |
| B4 | 33 | IO_R7N_33,T1 | B4 | 32 | IO_R7N_32,T1 | - |
| B6 | 33 | IO_R2N_33,T0 | B6 | 32 | IO_R2N_32,T0 | - |
| B7 | 33 | IO_R2P_33,T0 | B7 | 32 | IO_R2P_32,T0 | - |
| C1 | 33 | IO_R16N_33,T2 | C1 | 32 | IO_R16N_32,T2 | - |
| C2 | 33 | IO_R16P_33,T2 | C2 | 32 | IO_R16P_32,T2 | - |
| C3 | 33 | VCCIO_33 | C3 | 32 | VCCIO_32 | - |
| C4 | 33 | IO_R7P_33,T1 | C4 | 32 | IO_R7P_32,T1 | - |
| C5 | 33 | IO_R1N_33,T0 | C5 | 32 | IO_R1N_32,T0 | - |
| C6 | 33 | IO_R1P_33,T0 | C6 | 32 | IO_R1P_32,T0 | - |
| C7 | 33 | IO_R4N_33,T0 | C7 | 32 | IO_R4N_32,T0 | - |
| D2 | 33 | IO_R14N_33,GCLKIOC0,T2 | D2 | 32 | IO_R14N_32,GCLKIOC0,T2 | - |
| D3 | 33 | IO_R12N_33,GCLKIOC2,T1 | D3 | 32 | IO_R12N_32,GCLKIOC2,T1 | - |
| D4 | 33 | IO_R11N_33,GCLKIOC3,T1 | D4 | 32 | IO_R11N_32,GCLKIOC3,T1 | - |
| D5 | 33 | IO_R11P_33,GCLKIOT3,T1 | D5 | 32 | IO_R11P_32,GCLKIOT3,T1 | - |
| D6 | 33 | VCCIO_33 | D6 | 32 | VCCIO_32 | - |
| D7 | 33 | IO_R6N_33,T0_VREF,T0 | D7 | 32 | IO_R6N_32,T0_VREF,T0 | - |
| D8 | 33 | IO_R4P_33,T0 | D8 | 32 | IO_R4P_32,T0 | - |
| E1 | 33 | IO_R18N_33,T2 | E1 | 32 | IO_R18N_32,T2 | - |
| E2 | 33 | IO_R14P_33,GCLKIOT0,T2 | E2 | 32 | IO_R14P_32,GCLKIOT0,T2 | - |
| E3 | 33 | IO_R12P_33,GCLKIOT2,T1 | E3 | 32 | IO_R12P_32,GCLKIOT2,T1 | - |
| E5 | 33 | IO_R5N_33,T0 | E5 | 32 | IO_R5N_32,T0 | - |
| E6 | 33 | IO_R5P_33,T0 | E6 | 32 | IO_R5P_32,T0 | - |
| E7 | 33 | IO_R6P_33,T0 | E7 | 32 | IO_R6P_32,T0 | - |
| F1 | 33 | IO_R18P_33,T2 | F1 | 32 | IO_R18P_32,T2 | - |
| F2 | 33 | VCCIO_33 | F2 | 32 | VCCIO_32 | - |
| F3 | 33 | IO_R13N_33,GCLKIOC1,T2 | F3 | 32 | IO_R13N_32,GCLKIOC1,T2 | - |
| F4 | 33 | IO_R13P_33,GCLKIOT1,T2 | F4 | 32 | IO_R13P_32,GCLKIOT1,T2 | - |
| F5 | 33 | IO_R0_33 | F5 | 32 | IO_R0_32 | - |
| F6 | 33 | IO_R19N_33,T3_VREF,T3 | F6 | 32 | IO_R19N_32,T3_VREF,T3 | - |
| G1 | 33 | IO_R17N_33,T2 | G1 | 32 | IO_R17N_32,T2 | - |
| G2 | 33 | IO_R15N_33,T2_DQS_N | G2 | 32 | IO_R15N_32,T2_DQS_N | - |
| G3 | 33 | IO_R20N_33,T3 | G3 | 32 | IO_R20N_32,T3 | - |
| G4 | 33 | IO_R20P_33,T3 | G4 | 32 | IO_R20P_32,T3 | - |
| G5 | 33 | VCCIO_33 | G5 | 32 | VCCIO_32 | - |
| G6 | 33 | IO_R19P_33,T3 | G6 | 32 | IO_R19P_32,T3 | - |
| H1 | 33 | IO_R17P_33,T2 | H1 | 32 | IO_R17P_32,T2 | - |
| H2 | 33 | IO_R15P_33,T2_DQS_P | H2 | 32 | IO_R15P_32,T2_DQS_P | - |
| H4 | 33 | IO_R21N_33,T3_DQS_N | H4 | 32 | IO_R21N_32,T3_DQS_N | - |
| H5 | 33 | IO_R24N_33,T3 | H5 | 32 | IO_R24N_32,T3 | - |
| H6 | 33 | IO_R24P_33,T3 | H6 | 32 | IO_R24P_32,T3 | - |
| J1 | 33 | VCCIO_33 | J1 | 32 | VCCIO_32 | - |
| J2 | 33 | IO_R22N_33,T3 | J2 | 32 | IO_R22N_32,T3 | - |
| J3 | 33 | IO_R22P_33,T3 | J3 | 32 | IO_R22P_32,T3 | - |
| J4 | 33 | IO_R21P_33,T3_DQS_P | J4 | 32 | IO_R21P_32,T3_DQS_P | - |
| J5 | 33 | IO_R25_33 | J5 | 32 | IO_R25_32 | - |
| K1 | 33 | IO_R23N_33,T3 | K1 | 32 | IO_R23N_32,T3 | - |
| K2 | 33 | IO_R23P_33,T3 | K2 | 32 | IO_R23P_32,T3 | - |


## IO BANK 0

| PH1P50GEG324 | | | PH1P100GEG324 V0.1                                                                                                                                                    2025-04-25 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | - | GND | A2 | - | GND | - |
| B5 | - | GND | B5 | - | GND | - |
| C8 | - | GND | C8 | - | GND | - |
| D1 | - | GND | D1 | - | GND | - |
| E4 | - | GND | E4 | - | GND | - |
| E8 | - | NC | E8 | - | NC | - |
| F7 | - | GND | F7 | - | GND | - |
| F8 | - | VCCINT | F8 | - | VCCINT | - |
| F9 | - | GND | F9 | - | GND | - |
| G7 | - | VCCINT | G7 | - | VCCINT | - |
| G8 | - | GND | G8 | - | GND | - |
| G9 | - | VCCINT | G9 | - | VCCINT | - |
| H3 | - | GND | H3 | - | GND | - |
| H7 | - | GND | H7 | - | GND | - |
| H8 | - | VCCINT | H8 | - | VCCINT | - |
| H9 | - | NC | H9 | 0 | GNDADC_0 | - |
| J6 | - | GND | J6 | - | GND | - |
| J7 | - | VCCINT | J7 | - | VCCINT | - |
| J8 | - | GND | J8 | - | GND | - |
| J9 | - | NC | J9 | 0 | VREFN_0 | - |
| K7 | - | GND | K7 | - | GND | - |
| K8 | - | VCCINT | K8 | - | VCCINT | - |
| K9 | - | NC | K9 | 0 | VN_0 | - |
| L2 | - | GND | L2 | - | GND | - |
| L7 | - | VCCINT | L7 | - | VCCINT | PH1P50器件和PH1P100器件典型值为0.95V（0.92~0.98V） |
| L8 | - | GND | L8 | - | GND | - |
| L9 | - | NC | L9 | - | NC | - |
| M5 | - | GND | M5 | - | GND | - |
| M7 | - | GND | M7 | - | GND | - |
| M8 | - | VCCINT | M8 | - | VCCINT | - |
| M9 | - | GND | M9 | - | GND | - |
| N7 | - | VCCINT | N7 | - | VCCINT | - |
| N8 | - | GND | N8 | - | GND | - |
| N9 | - | VCCINT | N9 | - | VCCINT | - |
| P1 | - | GND | P1 | - | GND | - |
| P8 | - | NC | P8 | - | NC | - |
| R4 | - | GND | R4 | - | GND | - |
| T7 | - | GND | T7 | - | GND | - |
| V3 | - | GND | V3 | - | GND | - |
| A12 | - | GND | A12 | - | GND | - |
| B15 | - | GND | B15 | - | GND | - |
| C18 | - | GND | C18 | - | GND | - |
| D11 | - | GND | D11 | - | GND | - |
| E14 | - | GND | E14 | - | GND | - |
| F10 | - | NC | F10 | - | NC | - |
| F11 | - | GND | F11 | - | GND | - |
| F12 | - | VCCAUX | F12 | - | VCCAUX | PH1P50器件PH1P100器件的VCCAUX典型值为1.8V(1.71~1.89V) |
| F17 | - | GND | F17 | - | GND | - |
| G10 | - | GND | G10 | - | GND | - |
| G11 | - | NC | G11 | - | NC | - |
| G12 | - | GND | G12 | - | GND | - |
| H10 | - | NC | H10 | 0 | VCCADC_0 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC，为NC管脚
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| H11 | - | GND | H11 | - | GND | - |
| H12 | - | VCCAUX | H12 | - | VCCAUX | - |
| H13 | - | GND | H13 | - | GND | - |
| J10 | - | NC | J10 | 0 | VP_0 | - |
| J11 | - | VCCINT | J11 | - | VCCINT | - |
| J12 | - | GND | J12 | - | GND | - |
| J16 | - | GND | J16 | - | GND | - |
| K10 | - | NC | K10 | 0 | VREFP_0 | - |
| K11 | - | GND | K11 | - | GND | - |
| K12 | - | VCCAUX | K12 | - | VCCAUX | - |
| L10 | - | NC | L10 | - | NC | - |
| L11 | - | VCCINT | L11 | - | VCCINT | - |
| L12 | - | GND | L12 | - | GND | - |
| M10 | - | VCCINT | M10 | - | VCCINT | - |
| M11 | - | GND | M11 | - | GND | - |
| M12 | - | VCCAUX | M12 | - | VCCAUX | - |
| M15 | - | GND | M15 | - | GND | - |
| N10 | - | GND | N10 | - | GND | - |
| N11 | - | VCCINT | N11 | - | VCCINT | - |
| N12 | - | GND | N12 | - | GND | - |
| N18 | - | GND | N18 | - | GND | - |
| R14 | - | GND | R14 | - | GND | - |
| T17 | - | GND | T17 | - | GND | - |
| U10 | - | GND | U10 | - | GND | - |
| V13 | - | GND | V13 | - | GND | - |
| PH1P100GEG324 | - | - | PH1P50GEG324 | - | - | - |
