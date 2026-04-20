---
title: "PH1P50GEG324 VS PH1A60GEG324 Pinout Table"
subtitle: "2026.04.09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# PH1P50GEG324 VS PH1A60GEG324


**芯片对比**: PH1P50GEG324 VS PH1A60GEG324


## IO BANK 0

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| E9 | 0 | IO_C0_0,CCLK_0 | E9 | 0 | CCLK_0 | PH1A60和PH1P50器件加载时钟引脚，推荐使用4.7k上拉 |
| H9 | 0 | GNDADC_0 | H9 | - | NC_3 | - |
| J9 | 0 | VREFN_0 | J9 | - | NC_5 | - |
| K9 | 0 | VN_0 | K9 | - | NC_7 | - |
| P7 | 0 | INITN_0 | P7 | 0 | INITN_0 | PH1A60和PH1P50器件需要上拉，推荐使用4.7K |
| P9 | 0 | PROGRAMN_0 | P9 | 0 | PROGRAMN_0 | PH1A60和PH1P50器件需要上拉，推荐使用4.7K |
| R9 | 0 | VCCIO_0 | R9 | 0 | VCCIO_0 | PH1P50器件VCCIO范围要求和PH1A60一致（1.71V-3.465V） |
| E10 | 0 | TCK_0 | E10 | 0 | TCK_0 | PH1A60和PH1P50器件TDI,TDO,TMS,TCK推荐通过4.7K电阻上拉 |
| E11 | 0 | TDI_0 | E11 | 0 | TDI_0 | - |
| E12 | 0 | TMS_0 | E12 | 0 | TMS_0 | - |
| E13 | 0 | TDO_0 | E13 | 0 | TDO_0 | - |
| H10 | 0 | VCCADC_0 | H10 | - | NC_2 | PH1A60器件为NC管脚，PH1P50器件为ADC的相关管脚
PH1A60器件不支持ADC
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| J10 | 0 | VP_0 | J10 | - | NC_4 | - |
| K10 | 0 | VREFP_0 | K10 | - | NC_6 | - |
| P10 | 0 | DONE_0 | P10 | 0 | DONE_0 | PH1A60和PH1P50器件需要上拉，推荐使用4.7K |
| P11 | 0 | M2_0 | P11 | - | M2_0 | - |
| P12 | 0 | M0_0 | P12 | - | M0_0 | - |
| P13 | 0 | M1_0 | P13 | - | M1_0 | - |


## IO BANK 11, 12

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| T9 | 11 | IO_L24P_11,D17,T3 | T9 | 12 | IO_L24P_12,D17 | - |
| K17 | 11 | IO_L1P_11,D0,MOSI,T0 | K17 | 12 | IO_L1P_12,D0,MOSI | - |
| K18 | 11 | IO_L1N_11,D1,MISO,DIN,T0 | K18 | 12 | IO_L1N_12,D1,DIN,MISO | - |
| L13 | 11 | IO_L6P_11,SPICSN,BUSY,T0 | L13 | 12 | IO_L6P_12,SPICSN,BUSY | - |
| L14 | 11 | IO_L2P_11,D2,WPN,T0 | L14 | 12 | IO_L2P_12,D2,WPN | - |
| L15 | 11 | IO_L3P_11,HSWAPEN,T0_DQS_P | L15 | 12 | IO_L3P_12,HSWAPEN | - |
| L16 | 11 | IO_L3N_11,USRCLK,T0_DQS_N | L16 | 12 | IO_L3N_12,USRCLK | - |
| L17 | 11 | VCCIO_11 | L17 | 12 | VCCIO_12_1 | PH1P50器件VCCIO范围要求1.14V-3.465V
PH1A60器件VCCIO范围要求1.425-3.465V
PH1P50器件为BANK11
PH1P100器件为BANK12 |
| L18 | 11 | IO_L4P_11,D4,T0 | L18 | 12 | IO_L4P_12,D4 | - |
| M13 | 11 | IO_L6N_11,D8,T0_VREF,T0 | M13 | 12 | IO_L6N_12,D8 | - |
| M14 | 11 | IO_L2N_11,D3,HOLDN,T0 | M14 | 12 | IO_L2N_12,D3,HOLDN | - |
| M16 | 11 | IO_L10P_11,D14,T1 | M16 | 12 | IO_L10P_12,D14 | - |
| M17 | 11 | IO_L10N_11,D15,T1 | M17 | 12 | IO_L10N_12,D15 | - |
| M18 | 11 | IO_L4N_11,D5,T0 | M18 | 12 | IO_L4N_12,D5 | - |
| N13 | 11 | VCCIO_11 | N13 | 12 | VCCIO_12_2 | - |
| N14 | 11 | IO_L8P_11,D11,T1 | N14 | 12 | IO_L8P_12,D11 | - |
| N15 | 11 | IO_L11P_11,GCLKIOT3,T1 | N15 | 12 | IO_L11P_12,GCLKIOT3 | - |
| N16 | 11 | IO_L11N_11,GCLKIOC3,T1 | N16 | 12 | IO_L11N_12,GCLKIOC3 | - |
| N17 | 11 | IO_L9P_11,T1_DQS_P | N17 | 12 | IO_L9P_12 | - |
| P14 | 11 | IO_L8N_11,D11,T1 | P14 | 12 | IO_L8N_12,D12 | - |
| P15 | 11 | IO_L13P_11,GCLKIOT1,T2 | P15 | 12 | IO_L13P_12,GCLKIOT1 | - |
| P16 | 11 | VCCIO_11 | P16 | 12 | VCCIO_12_3 | - |
| P17 | 11 | IO_L11P_11,GCLKIOT2,T1 | P17 | 12 | IO_L12P_12,GCLKIOT2 | - |
| P18 | 11 | IO_L9N_11,D13,T1_DQS_N | P18 | 12 | IO_L9N_12,D13 | - |
| R10 | 11 | IO_L25_11 | R10 | 12 | IO_L25_12 | - |
| R11 | 11 | IO_L0_11 | R11 | 12 | IO_L0_12 | - |
| R12 | 11 | IO_L5P_11,D6,T0 | R12 | 12 | IO_L5P_12,D6 | - |
| R13 | 11 | IO_L5N_11,D7,T0 | R13 | 12 | IO_L5N_12,D7 | - |
| R15 | 11 | IO_L13N_11,GCLKIOC1,T2 | R15 | 12 | IO_L13N_12,GCLKIOC1 | - |
| R16 | 11 | IO_L15P_11,RDWRN,T2_DQS_P | R16 | 12 | IO_L15P_12,RDWRN | - |
| R17 | 11 | IO_L11N_11,GCLKIOC2,T1 | R17 | 12 | IO_L12N_12,GCLKIOC2 | - |
| R18 | 11 | IO_L7P_11,D9,T1 | R18 | 12 | IO_L7P_12,D9 | - |
| T10 | 11 | IO_L24N_11,D16,T3 | T10 | 12 | IO_L24N_12,D16 | - |
| T11 | 11 | IO_L19P_11,D26,T3 | T11 | 12 | IO_L19P_12,D26 | - |
| T12 | 11 | VCCIO_11 | T12 | 12 | VCCIO_12_4 | - |
| T13 | 11 | IO_L23P_11,D19,T3 | T13 | 12 | IO_L23P_12,D19 | - |
| T14 | 11 | IO_L14P_11,GCLKIOT0,T2 | T14 | 12 | IO_L14P_12,GCLKIOT0 | - |
| T15 | 11 | IO_L14N_11,GCLKIOC0,T2 | T15 | 12 | IO_L14N_12,GCLKIOC0 | - |
| T16 | 11 | IO_L15N_11,CSON,DOUT,T2_DQS_N | T16 | 12 | IO_L15N_12,CSON,DOUT | - |
| T18 | 11 | IO_L7N_11,D10,T1 | T18 | 12 | IO_L7N_12,D10 | - |
| U11 | 11 | IO_L19N_11,D25,T3_VREF,T3 | U11 | 12 | IO_L19N_12,D25 | - |
| U12 | 11 | IO_L20P_11,D24,T3 | U12 | 12 | IO_L20P_12,D24 | - |
| U13 | 11 | IO_L23N_11,D18,T3 | U13 | 12 | IO_L23N_12,D18 | - |
| U14 | 11 | IO_L22P_11,D21,T3 | U14 | 12 | IO_L22P_12,D21 | - |
| U15 | 11 | VCCIO_11 | U15 | 12 | VCCIO_12_5 | - |
| U16 | 11 | IO_L18P_11,D28,T2 | U16 | 12 | IO_L18P_12,D28 | - |
| U17 | 11 | IO_L17P_11,D30,T2 | U17 | 12 | IO_L17P_12,D30 | - |
| U18 | 11 | IO_L17N_11,D29,T2 | U18 | 12 | IO_L17N_12,D29 | - |
| V10 | 11 | IO_L21P_11,T3_DQS_P | V10 | 12 | IO_L21P_12 | - |
| V11 | 11 | IO_L21N_11,D22,T3_DQS_N | V11 | 12 | IO_L21N_12,D22 | - |
| V12 | 11 | IO_L20N_11,D23,T3 | V12 | 12 | IO_L20N_12,D23 | - |
| V14 | 11 | IO_L22N_11,D20,T3 | V14 | 12 | IO_L22N_12,D20 | - |
| V15 | 11 | IO_L16P_11,CSN,T2 | V15 | 12 | IO_L16P_12,CSN | - |
| V16 | 11 | IO_L16N_11,D31,T2 | V16 | 12 | IO_L16N_12,D31 | - |
| V17 | 11 | IO_L18N_11,D27,T2 | V17 | 12 | IO_L18N_12,D27 | - |
| V18 | 11 | VCCIO_11 | V18 | 12 | VCCIO_12_6 | - |


## IO BANK 12, 13

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A11 | 12 | IO_L4N_12,T0 | A11 | 13 | IO_L4N_13 | - |
| A13 | 12 | IO_L9P_12,ADC2P,T1_DQS_P | A13 | 13 | IO_L9P_13,GPLL1_OUTP | - |
| A14 | 12 | IO_L9N_12,ADC2N,T1_DQS_N | A14 | 13 | IO_L9N_13,GPLL1_OUTN | - |
| A15 | 12 | IO_L8P_12,ADC3P,T1 | A15 | 13 | IO_L8P_13 | - |
| A16 | 12 | IO_L8N_12,ADC3N,T1 | A16 | 13 | IO_L8N_13 | - |
| A17 | 12 | VCCIO_12 | A17 | 13 | VCCIO_13_1 | - |
| A18 | 12 | IO_L10N_12,ADC1N,T1 | A18 | 13 | IO_L10N_13 | - |
| B11 | 12 | IO_L4P_12,T0 | B11 | 13 | IO_L4P_13 | - |
| B12 | 12 | IO_L3N_12,ADC6N,T0_DQS_N | B12 | 13 | IO_L3N_13 | - |
| B13 | 12 | IO_L2P_12,ADC7P,T0 | B13 | 13 | IO_L2P_13 | - |
| B14 | 12 | IO_L2N_12,ADC7N,T0 | B14 | 13 | IO_L2N_13 | - |
| B16 | 12 | IO_L7P_12,ADC4P,T1 | B16 | 13 | IO_L7P_13 | PH1P50器件为ADC管脚
PH1A60器件不支持ADC
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| B17 | 12 | IO_L7N_12,ADC4N,T1 | B17 | 13 | IO_L7N_13 | - |
| B18 | 12 | IO_L10P_12,ADC1P,T1 | B18 | 13 | IO_L10P_13 | - |
| C12 | 12 | IO_L3P_12,ADC6P,T0_DQS_P | C12 | 13 | IO_L3P_13 | - |
| C13 | 12 | VCCIO_12 | C13 | 13 | VCCIO_13_2 | - |
| C14 | 12 | IO_L1N_12,ADC8N,T0 | C14 | 13 | IO_L1N_13 | - |
| C15 | 12 | IO_L12N_12,GCLKIOC2,T1 | C15 | 13 | IO_L12N_13,GCLKIOC2 | - |
| C16 | 12 | IO_L20P_12,T3 | C16 | 13 | IO_L20P_13 | - |
| C17 | 12 | IO_L20N_12,T3 | C17 | 13 | IO_L20N_13 | - |
| D12 | 12 | IO_L6P_12,T0 | D12 | 13 | IO_L6P_13 | - |
| D13 | 12 | IO_L6N_12,T0_VREF,T0 | D13 | 13 | IO_L6N_13 | - |
| D14 | 12 | IO_L1P_12,ADC8P,T0 | D14 | 13 | IO_L1P_13 | PH1P50器件为ADC管脚
PH1A60器件不支持ADC
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| D15 | 12 | IO_L12P_12,GCLKIOT2,T1 | D15 | 13 | IO_L12P_13,GCLKIOT2 | - |
| D16 | 12 | VCCIO_12 | D16 | 13 | VCCIO_13_3 | PH1P50器件VCCIO范围要求1.14V-3.465V
PH1A60器件VCCIO范围要求1.425-3.465V
PH1P50器件为BANK12
PH1P100器件为BANK13 |
| D17 | 12 | IO_L16N_12,T2 | D17 | 13 | IO_L16N_13,GPLL0_OUTN | - |
| D18 | 12 | IO_L21N_12,T3_DQS_N | D18 | 13 | IO_L21N_13 | - |
| E15 | 12 | IO_L11P_12,GCLKIOT3,T1 | E15 | 13 | IO_L11P_13,GCLKIOT3 | - |
| E16 | 12 | IO_L11N_12,GCLKIOC3,T1 | E16 | 13 | IO_L11N_13,GCLKIOC3 | - |
| E17 | 12 | IO_L16P_12,T2 | E17 | 13 | IO_L16P_13,GPLL0_OUTP | - |
| E18 | 12 | IO_L21P_12,T3_DQS_P | E18 | 13 | IO_L21P_13 | - |
| F13 | 12 | IO_L5P_12,ADC5P,T0 | F13 | 13 | IO_L5P_13 | PH1P50器件为ADC管脚
PH1A60器件不支持ADC
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| F14 | 12 | IO_L5N_12,ADC5N,T0 | F14 | 13 | IO_L5N_13 | - |
| F15 | 12 | IO_L14P_12,GCLKIOT0,T2 | F15 | 13 | IO_L14P_13,GCLKIOT0 | - |
| F16 | 12 | IO_L14N_12,GCLKIOC0,T2 | F16 | 13 | IO_L14N_13,GCLKIOC0 | - |
| F18 | 12 | IO_L22N_12,T3 | F18 | 13 | IO_L22N_13 | - |
| G13 | 12 | IO_L0_12 | G13 | 13 | IO_L0_13 | - |
| G14 | 12 | IO_L15N_12,T2_DQS_N | G14 | 13 | IO_L15N_13 | - |
| G15 | 12 | VCCIO_12 | G15 | 13 | VCCIO_13_6 | - |
| G16 | 12 | IO_L12N_12,GCLKIOC1,T2 | G16 | 13 | IO_L13N_13,GCLKIOC1 | - |
| G17 | 12 | IO_L18N_12,T2 | G17 | 13 | IO_L18N_13 | - |
| G18 | 12 | IO_L22P_12,T3 | G18 | 13 | IO_L22P_13 | - |
| H14 | 12 | IO_L15P_12,T2_DQS_P | H14 | 13 | IO_L15P_13 | - |
| H15 | 12 | IO_L19N_12,T3_VREF,T3 | H15 | 13 | IO_L19N_13 | - |
| H16 | 12 | IO_L12P_12,GCLKIOT1,T2 | H16 | 13 | IO_L13P_13,GCLKIOT1 | - |
| H17 | 12 | IO_L18P_12,T2 | H17 | 13 | IO_L18P_13 | - |
| H18 | 12 | VCCIO_12 | H18 | 13 | VCCIO_13_5 | - |
| J13 | 12 | IO_L17N_12,T2 | J13 | 13 | IO_L17N_13 | - |
| J14 | 12 | IO_L19P_12,T3 | J14 | 13 | IO_L19P_13 | - |
| J15 | 12 | IO_L24N_12,T3 | J15 | 13 | IO_L24N_13 | - |
| J17 | 12 | IO_L23P_12,T3 | J17 | 13 | IO_L23P_13 | - |
| J18 | 12 | IO_L23N_12,T3 | J18 | 13 | IO_L23N_13 | - |
| K13 | 12 | IO_L17P_12,T2 | K13 | 13 | IO_L17P_13 | - |
| K14 | 12 | VCCIO_12 | K14 | 13 | VCCIO_13_4 | - |
| K15 | 12 | IO_L24P_12,T3 | K15 | 13 | IO_L24P_13 | - |
| K16 | 12 | IO_L25_12 | K16 | 13 | IO_L25_13 | - |


## IO BANK 11, 13

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A8 | 13 | IO_L2N_13,GCLKIOC2,T1 | A8 | 11 | IO_L2N_11,GCLKIOC2 | - |
| A9 | 13 | IO_L4N_13,GCLKIOC0,T2 | A9 | 11 | IO_L4N_11,GCLKIOC0 | - |
| B8 | 13 | IO_L2P_13,GCLKIOT2,T1 | B8 | 11 | IO_L2P_11,GCLKIOT2 | - |
| B9 | 13 | IO_L1N_13,GCLKIOC3,T1 | B9 | 11 | IO_L1N_11,GCLKIOC3 | - |
| C9 | 13 | IO_L1P_13,GCLKIOT3,T1 | C9 | 11 | IO_L1P_11,GCLKIOT3 | - |
| D9 | 13 | IO_L0_13,T0_VREF,T0 | D9 | 11 | IO_L0_11 | - |
| A10 | 13 | IO_L4P_13,GCLKIOT0,T2 | A10 | 11 | IO_L4P_11,GCLKIOT0 | - |
| B10 | 13 | VCCIO_13 | B10 | 11 | VCCIO_11 | PH1P50器件VCCIO范围要求1.14V-3.465V
PH1A60器件VCCIO范围要求1.425-3.465V
PH1P50器件为BANK13
PH1A60器件为BANK11 |
| C10 | 13 | IO_L3N_13,GCLKIOC1,T2 | C10 | 11 | IO_L3N_11,GCLKIOC1 | - |
| C11 | 13 | IO_L3P_13,GCLKIOT1,T2 | C11 | 11 | IO_L3P_11,GCLKIOT1 | - |
| D10 | 13 | IO_L5_13,T3_VREF,T3 | D10 | 11 | IO_L5_11 | - |


## IO BANK 31, 32

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| K3 | 31 | IO_R2P_31,T0 | K3 | 32 | IO_R2P_32 | - |
| K4 | 31 | VCCIO_31 | K4 | 32 | VCCIO_32_1 | PH1P50器件VCCIO范围要求1.14V-3.465V
PH1A60器件VCCIO范围要求1.425-3.465V
PH1P50器件为BANK31
PH1A60器件为BANK32 |
| K5 | 31 | IO_R5P_31,T0 | K5 | 32 | IO_R5P_32 | - |
| K6 | 31 | IO_R0_31 | K6 | 32 | IO_R0_32 | - |
| L1 | 31 | IO_R1P_31,T0 | L1 | 32 | IO_R1P_32 | - |
| L3 | 31 | IO_R2N_31,T0 | L3 | 32 | IO_R2N_32 | - |
| L4 | 31 | IO_R5N_31,T0 | L4 | 32 | IO_R5N_32 | - |
| L5 | 31 | IO_R6N_31,T0_VREF,T0 | L5 | 32 | IO_R6N_32 | - |
| L6 | 31 | IO_R6P_31,T0 | L6 | 32 | IO_R6P_32 | - |
| M1 | 31 | IO_R1N_31,T0 | M1 | 32 | IO_R1N_32 | - |
| M2 | 31 | IO_R4N_31,T0 | M2 | 32 | IO_R4N_32 | - |
| M3 | 31 | IO_R4P_31,T0 | M3 | 32 | IO_R4P_32 | - |
| M4 | 31 | IO_R16P_31,T2 | M4 | 32 | IO_R16P_32,GPLL0_OUTP | - |
| M6 | 31 | IO_R18P_31,T2 | M6 | 32 | IO_R18P_32 | - |
| N1 | 31 | IO_R3N_31,T0_DQS_N | N1 | 32 | IO_R3N_32 | - |
| N2 | 31 | IO_R3P_31,T0_DQS_P | N2 | 32 | IO_R3P_32 | - |
| N3 | 31 | VCCIO_31 | N3 | 32 | VCCIO_32_2 | - |
| N4 | 31 | IO_R16N_31,T2 | N4 | 32 | IO_R16N_32,GPLL0_OUTN | - |
| N5 | 31 | IO_R13P_31,GCLKIOT1,T2 | N5 | 32 | IO_R13P_32,GCLKIOT1 | - |
| N6 | 31 | IO_R18N_31,T2 | N6 | 32 | IO_R18N_32 | - |
| P2 | 31 | IO_R15P_31,T2_DQS_P | P2 | 32 | IO_R15P_32 | - |
| P3 | 31 | IO_R14N_31,GCLKIOC0,T2 | P3 | 32 | IO_R14N_32,GCLKIOC0 | - |
| P4 | 31 | IO_R14P_31,GCLKIOT0,T2 | P4 | 32 | IO_R14P_32,GCLKIOT0 | - |
| P5 | 31 | IO_R13N_31,GCLKIOC1,T2 | P5 | 32 | IO_R13N_32,GCLKIOC1 | - |
| P6 | 31 | VCCIO_31 | P6 | 32 | VCCIO_32_3 | - |
| R1 | 31 | IO_R17P_31,T2 | R1 | 32 | IO_R17P_32 | - |
| R2 | 31 | IO_R15N_31,T2_DQS_N | R2 | 32 | IO_R15N_32 | - |
| R3 | 31 | IO_R11P_31,GCLKIOT3,T1 | R3 | 32 | IO_R11P_32,GCLKIOT3 | - |
| R5 | 31 | IO_R19N_31,T3_VREF,T3 | R5 | 32 | IO_R19N_32 | - |
| R6 | 31 | IO_R19P_31,T3 | R6 | 32 | IO_R19P_32 | - |
| R7 | 31 | IO_R23P_31,T3 | R7 | 32 | IO_R23P_32 | - |
| R8 | 31 | IO_R24P_31,T3 | R8 | 32 | IO_R24P_32 | - |
| T1 | 31 | IO_R17N_31,T2 | T1 | 32 | IO_R17N_32 | - |
| T2 | 31 | VCCIO_31 | T2 | 32 | VCCIO_32_4 | - |
| T3 | 31 | IO_R11N_31,GCLKIOC3,T1 | T3 | 32 | IO_R11N_32,GCLKIOC3 | - |
| T4 | 31 | IO_R12N_31,GCLKIOC2,T1 | T4 | 32 | IO_R12N_32,GCLKIOC2 | - |
| T5 | 31 | IO_R12P_31,GCLKIOT2,T1 | T5 | 32 | IO_R12P_32,GCLKIOT2 | - |
| T6 | 31 | IO_R23N_31,T3 | T6 | 32 | IO_R23N_32 | - |
| T8 | 31 | IO_R24N_31,T3 | T8 | 32 | IO_R24N_32 | - |
| U1 | 31 | IO_R7P_31,T1 | U1 | 32 | IO_R7P_32 | - |
| U2 | 31 | IO_R9P_31,T1_DQS_P | U2 | 32 | IO_R9P_32,GPLL1_OUTP | - |
| U3 | 31 | IO_R8N_31,T1 | U3 | 32 | IO_R8N_32 | - |
| U4 | 31 | IO_R8P_31,T1 | U4 | 32 | IO_R8P_32 | - |
| U5 | 31 | VCCIO_31 | U5 | 32 | VCCIO_32_5 | - |
| U6 | 31 | IO_R22N_31,T3 | U6 | 32 | IO_R22N_32 | - |
| U7 | 31 | IO_R22P_31,T3 | U7 | 32 | IO_R22P_32 | - |
| U8 | 31 | IO_R25_31 | U8 | 32 | IO_R25_32 | - |
| U9 | 31 | IO_R21P_31,T3_DQS_P | U9 | 32 | IO_R21P_32 | - |
| V1 | 31 | IO_R7N_31,T1 | V1 | 32 | IO_R7N_32 | - |
| V2 | 31 | IO_R9N_31,T1_DQS_N | V2 | 32 | IO_R9N_32,GPLL1_OUTN | - |
| V4 | 31 | IO_R10N_31,T1 | V4 | 32 | IO_R10N_32 | - |
| V5 | 31 | IO_R10P_31,T1 | V5 | 32 | IO_R10P_32 | - |
| V6 | 31 | IO_R20N_31,T3 | V6 | 32 | IO_R20N_32 | - |
| V7 | 31 | IO_R20P_31,T3 | V7 | 32 | IO_R20P_32 | - |
| V8 | 31 | VCCIO_31 | V8 | 32 | VCCIO_32_6 | - |
| V9 | 31 | IO_R21N_31,T3_DQS_N | V9 | 32 | IO_R21N_32 | - |


## IO BANK 32, 33

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | 32 | IO_R9N_32,T1_DQS_N | A1 | 33 | IO_R9N_33,GPLL1_OUTN | - |
| A3 | 32 | IO_R8N_32,T1 | A3 | 33 | IO_R8N_33 | - |
| A4 | 32 | IO_R8P_32,T1 | A4 | 33 | IO_R8P_33 | - |
| A5 | 32 | IO_R3N_32,T0_DQS_N | A5 | 33 | IO_R3N_33 | - |
| A6 | 32 | IO_R3P_32,T0_DQS_P | A6 | 33 | IO_R3P_33 | - |
| A7 | 32 | VCCIO_32 | A7 | 33 | VCCIO_33_1 | PH1P50器件VCCIO范围要求1.14V-3.465V
PH1A60器件VCCIO范围要求1.425-3.465V
PH1P50器件为BANK32
PH1A60器件为BANK33 |
| B1 | 32 | IO_R9P_32,T1_DQS_P | B1 | 33 | IO_R9P_33,GPLL1_OUTP | - |
| B2 | 32 | IO_R10N_32,T1 | B2 | 33 | IO_R10N_33 | - |
| B3 | 32 | IO_R10P_32,T1 | B3 | 33 | IO_R10P_33 | - |
| B4 | 32 | IO_R7N_32,T1 | B4 | 33 | IO_R7N_33 | - |
| B6 | 32 | IO_R2N_32,T0 | B6 | 33 | IO_R2N_33 | - |
| B7 | 32 | IO_R2P_32,T0 | B7 | 33 | IO_R2P_33 | - |
| C1 | 32 | IO_R16N_32,T2 | C1 | 33 | IO_R16N_33,GPLL0_OUTN | - |
| C2 | 32 | IO_R16P_32,T2 | C2 | 33 | IO_R16P_33,GPLL0_OUTP | - |
| C3 | 32 | VCCIO_32 | C3 | 33 | VCCIO_33_2 | - |
| C4 | 32 | IO_R7P_32,T1 | C4 | 33 | IO_R7P_33 | - |
| C5 | 32 | IO_R1N_32,T0 | C5 | 33 | IO_R1N_33 | - |
| C6 | 32 | IO_R1P_32,T0 | C6 | 33 | IO_R1P_33 | - |
| C7 | 32 | IO_R4N_32,T0 | C7 | 33 | IO_R4N_33 | - |
| D2 | 32 | IO_R14N_32,GCLKIOC0,T2 | D2 | 33 | IO_R14N_33,GCLKIOC0 | - |
| D3 | 32 | IO_R12N_32,GCLKIOC2,T1 | D3 | 33 | IO_R12N_33,GCLKIOC2 | - |
| D4 | 32 | IO_R11N_32,GCLKIOC3,T1 | D4 | 33 | IO_R11N_33,GCLKIOC3 | - |
| D5 | 32 | IO_R11P_32,GCLKIOT3,T1 | D5 | 33 | IO_R11P_33,GCLKIOT3 | - |
| D6 | 32 | VCCIO_32 | D6 | 33 | VCCIO_33_3 | - |
| D7 | 32 | IO_R6N_32,T0_VREF,T0 | D7 | 33 | IO_R6N_33 | - |
| D8 | 32 | IO_R4P_32,T0 | D8 | 33 | IO_R4P_33 | - |
| E1 | 32 | IO_R18N_32,T2 | E1 | 33 | IO_R18N_33 | - |
| E2 | 32 | IO_R14P_32,GCLKIOT0,T2 | E2 | 33 | IO_R14P_33,GCLKIOT0 | - |
| E3 | 32 | IO_R12P_32,GCLKIOT2,T1 | E3 | 33 | IO_R12P_33,GCLKIOT2 | - |
| E5 | 32 | IO_R5N_32,T0 | E5 | 33 | IO_R5N_33 | - |
| E6 | 32 | IO_R5P_32,T0 | E6 | 33 | IO_R5P_33 | - |
| E7 | 32 | IO_R6P_32,T0 | E7 | 33 | IO_R6P_33 | - |
| F1 | 32 | IO_R18P_32,T2 | F1 | 33 | IO_R18P_33 | - |
| F2 | 32 | VCCIO_32 | F2 | 33 | VCCIO_33_4 | - |
| F3 | 32 | IO_R13N_32,GCLKIOC1,T2 | F3 | 33 | IO_R13N_33,GCLKIOC1 | - |
| F4 | 32 | IO_R13P_32,GCLKIOT1,T2 | F4 | 33 | IO_R13P_33,GCLKIOT1 | - |
| F5 | 32 | IO_R0_32 | F5 | 33 | IO_R0_33 | - |
| F6 | 32 | IO_R19N_32,T3_VREF,T3 | F6 | 33 | IO_R19N_33 | - |
| G1 | 32 | IO_R17N_32,T2 | G1 | 33 | IO_R17N_33 | - |
| G2 | 32 | IO_R15N_32,T2_DQS_N | G2 | 33 | IO_R15N_33 | - |
| G3 | 32 | IO_R20N_32,T3 | G3 | 33 | IO_R20N_33 | - |
| G4 | 32 | IO_R20P_32,T3 | G4 | 33 | IO_R20P_33 | - |
| G5 | 32 | VCCIO_32 | G5 | 33 | VCCIO_33_5 | - |
| G6 | 32 | IO_R19P_32,T3 | G6 | 33 | IO_R19P_33 | - |
| H1 | 32 | IO_R17P_32,T2 | H1 | 33 | IO_R17P_33 | - |
| H2 | 32 | IO_R15P_32,T2_DQS_P | H2 | 33 | IO_R15P_33 | - |
| H4 | 32 | IO_R21N_32,T3_DQS_N | H4 | 33 | IO_R21N_33 | - |
| H5 | 32 | IO_R24N_32,T3 | H5 | 33 | IO_R24N_33 | - |
| H6 | 32 | IO_R24P_32,T3 | H6 | 33 | IO_R24P_33 | - |
| J1 | 32 | VCCIO_32 | J1 | 33 | VCCIO_33_6 | - |
| J2 | 32 | IO_R22N_32,T3 | J2 | 33 | IO_R22N_33 | - |
| J3 | 32 | IO_R22P_32,T3 | J3 | 33 | IO_R22P_33 | - |
| J4 | 32 | IO_R21P_32,T3_DQS_P | J4 | 33 | IO_R21P_33 | - |
| J5 | 32 | IO_R25_32 | J5 | 33 | IO_R25_33 | - |
| K1 | 32 | IO_R23N_32,T3 | K1 | 33 | IO_R23N_33 | - |
| K2 | 32 | IO_R23P_32,T3 | K2 | 33 | IO_R23P_33 | - |


## IO BANK Other

| PH1P50GEG324 | | | PH1A60GEG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | - | GND | A2 | - | GND_2 | - |
| B5 | - | GND | B5 | - | GND_4 | - |
| C8 | - | GND | C8 | - | GND_6 | - |
| D1 | - | GND | D1 | - | GND_7 | - |
| E4 | - | GND | E4 | - | GND_10 | - |
| E8 | - | NC | E8 | - | NC_1 | - |
| F7 | - | GND | F7 | - | GND_13 | - |
| F8 | - | VCCINT | F8 | - | VCCINT_1 | - |
| F9 | - | GND | F9 | - | GND_14 | - |
| G7 | - | VCCINT | G7 | - | VCCINT_2 | - |
| G8 | - | GND | G8 | - | GND_17 | - |
| G9 | - | VCCINT | G9 | - | VCCINT_3 | - |
| H3 | - | GND | H3 | - | GND_20 | - |
| H7 | - | GND | H7 | - | GND_21 | - |
| H8 | - | VCCINT | H8 | - | VCCINT_4 | - |
| J6 | - | GND | J6 | - | GND_24 | - |
| J7 | - | VCCINT | J7 | - | VCCINT_6 | - |
| J8 | - | GND | J8 | - | GND_25 | - |
| K7 | - | GND | K7 | - | GND_27 | - |
| K8 | - | VCCINT | K8 | - | VCCINT_7 | - |
| L2 | - | GND | L2 | - | GND_29 | - |
| L7 | - | VCCINT | L7 | - | VCCINT_9 | PH1P50器件VCCINT典型值为0.95V(0.92V-0.98V)
PH1A60器件VCCINT典型值为0.95V(0.93V-0.98V) |
| L8 | - | GND | L8 | - | GND_30 | - |
| L9 | - | NC | L9 | - | NC_9 | - |
| M5 | - | GND | M5 | - | GND_33 | - |
| M7 | - | GND | M7 | - | GND_34 | - |
| M8 | - | VCCINT | M8 | - | VCCINT_11 | - |
| M9 | - | GND | M9 | - | GND_35 | - |
| N7 | - | VCCINT | N7 | - | VCCINT_13 | - |
| N8 | - | GND | N8 | - | GND_39 | - |
| N9 | - | VCCINT | N9 | - | VCCINT_14 | - |
| P1 | - | GND | P1 | - | GND_40 | - |
| P8 | - | NC | P8 | - | TRSTN_0 | ph1p50器件为NC的管脚，PH1A60器件为TRSTN管脚;
PH1A60器件的TRSTN管脚为配置模块和 Serdes JTAG Chain 切换信号。
当 TRSTN=0，JTAG 连接到配置模块；
当 TRSTN=1，内部测试使用。 |
| R4 | - | GND | R4 | - | GND_42 | - |
| T7 | - | GND | T7 | - | GND_44 | - |
| V3 | - | GND | V3 | - | GND_47 | - |
| A12 | - | GND | A12 | - | GND_1 | - |
| B15 | - | GND | B15 | - | GND_3 | - |
| C18 | - | GND | C18 | - | GND_5 | - |
| D11 | - | GND | D11 | - | GND_8 | - |
| E14 | - | GND | E14 | - | GND_9 | - |
| F10 | - | NC | F10 | - | VCCINT_16 | PH1A60器件为VCCINT电源，PH1P50器件为NC管脚 |
| F11 | - | GND | F11 | - | GND_11 | - |
| F12 | - | VCCAUX | F12 | - | VCCAUX_1 | - |
| F17 | - | GND | F17 | - | GND_12 | - |
| G10 | - | GND | G10 | - | GND_15 | - |
| G11 | - | NC | G11 | - | VCCINT_15 | - |
| G12 | - | GND | G12 | - | GND_16 | - |
| H11 | - | GND | H11 | - | GND_18 | - |
| H12 | - | VCCAUX | H12 | - | VCCAUX_2 | - |
| H13 | - | GND | H13 | - | GND_19 | - |
| J11 | - | VCCINT | J11 | - | VCCINT_5 | - |
| J12 | - | GND | J12 | - | GND_22 | - |
| J16 | - | GND | J16 | - | GND_23 | - |
| K11 | - | GND | K11 | - | GND_26 | - |
| K12 | - | VCCAUX | K12 | - | VCCAUX_3 | - |
| L10 | - | NC | L10 | - | NC_8 | - |
| L11 | - | VCCINT | L11 | - | VCCINT_8 | - |
| L12 | - | GND | L12 | - | GND_28 | - |
| M10 | - | VCCINT | M10 | - | VCCINT_10 | - |
| M11 | - | GND | M11 | - | GND_31 | - |
| M12 | - | VCCAUX | M12 | - | VCCAUX_4 | - |
| M15 | - | GND | M15 | - | GND_32 | - |
| N10 | - | GND | N10 | - | GND_36 | - |
| N11 | - | VCCINT | N11 | - | VCCINT_12 | - |
| N12 | - | GND | N12 | - | GND_37 | - |
| N18 | - | GND | N18 | - | GND_38 | - |
| R14 | - | GND | R14 | - | GND_41 | - |
| T17 | - | GND | T17 | - | GND_43 | - |
| U10 | - | GND | U10 | - | GND_45 | - |
| V13 | - | GND | V13 | - | GND_46 | - |
| PH1P50GEG324 | - | - | PH1A60GEG324 | - | - | - |
