---
title: "PH1P100SBG484 VS PH1P50SBG484 Pinout Table"
publish_date: "2026-04-09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# PH1P100SBG484 VS PH1P50SBG484


**芯片对比**: PH1P50SBG484 VS PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18


## IO BANK 0

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| U9 | 0 | M2_0 | U9 | 0 | M2_0 | - |
| F12 | 0 | VCCIO_0 | F12 | 0 | VCCIO_0 | PH1P50器件VCCIO范围要求和PH1P100一致（1.71V-3.465V） |
| G11 | 0 | DONE_0 | G11 | 0 | DONE_0 | PH1P100和PH1P50器件需要上拉，推荐使用4.7K。 |
| L12 | 0 | IO_C0_0,CCLK_0 | L12 | 0 | IO_C0_0,CCLK_0 | PH1P100和PH1P50器件加载时钟引脚，推荐使用4.7k上拉 |
| N12 | 0 | PROGRAMN_0 | N12 | 0 | PROGRAMN_0 | PH1P100和PH1P50器件需要上拉，推荐使用4.7K。 |
| R13 | 0 | TDI_0 | R13 | 0 | TDI_0 | - |
| T12 | 0 | VCCIO_0 | T12 | 0 | VCCIO_0 | - |
| T13 | 0 | TMS_0 | T13 | 0 | TMS_0 | - |
| U10 | 0 | M1_0 | U10 | 0 | M1_0 | - |
| U11 | 0 | M0_0 | U11 | 0 | M0_0 | PH1P100和PH1P50器件加载模式选择引脚，功能一致 |
| U12 | 0 | INITN_0 | U12 | 0 | INITN_0 | PH1P100和PH1P50器件需要上拉，推荐使用4.7K。 |
| U13 | 0 | TDO_0 | U13 | 0 | TDO_0 | - |
| V12 | 0 | TCK_0 | V12 | 0 | TCK_0 | TDI,TDO,TMS，TCK推荐通过4.7K电阻上拉 |


## IO BANK 0, 11

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| AA9 | 11 | IO_L8P_11,T1 | AA9 | - | NC | - |
| T14 | 11 | IO_L15P_11,T2_DQS_P | T14 | - | NC | - |
| T15 | 11 | IO_L15N_11,T2_DQS_N | T15 | - | NC | - |
| T16 | 11 | IO_L17P_11,T2 | T16 | - | NC | - |
| U15 | 11 | IO_L14P_11,GCLKIOT0,T2 | U15 | - | NC | - |
| U16 | 11 | IO_L17N_11,T2 | U16 | - | NC | - |
| V10 | 11 | IO_L10P_11,T1 | V10 | 0 | NC | - |
| V13 | 11 | IO_L13P_11,GCLKIOT1,T2 | V13 | - | NC | - |
| V14 | 11 | IO_L13N_11,GCLKIOC1,T2 | V14 | - | NC | - |
| V15 | 11 | IO_L14N_11,GCLKIOC0,T2 | V15 | - | NC | - |
| W10 | 11 | IO_L10N_11,T1 | W10 | - | NC | - |
| W11 | 11 | IO_L12P_11,GCLKIOT2,T1 | W11 | - | NC | - |
| W12 | 11 | IO_L12N_11,GCLKIOC2,T1 | W12 | - | NC | - |
| W14 | 11 | IO_L6P_11,T0 | W14 | - | NC | - |
| W15 | 11 | IO_L16P_11,T2 | W15 | - | NC | - |
| W16 | 11 | IO_L16N_11,T2 | W16 | - | NC | - |
| Y11 | 11 | IO_L11P_11,GCLKIOT3,T1 | Y11 | - | NC | - |
| Y12 | 11 | IO_L11N_11,GCLKIOC3,T1 | Y12 | - | NC | - |
| Y13 | 11 | IO_L5P_11,T0 | Y13 | - | NC | - |
| Y14 | 11 | IO_L6N_11,T0_VREF,T0 | Y14 | - | NC | - |
| Y16 | 11 | IO_L1P_11,T0 | Y16 | - | NC | - |
| Y17 | 11 | IO_L0_11 | Y17 | - | NC | PH1P100器件为BANK11普通IO
PH1P50器件为NC
PH1P100和PH1P50器件引脚不兼容 |
| AA10 | 11 | IO_L9P_11,T1_DQS_P | AA10 | - | NC | - |
| AA11 | 11 | IO_L9N_11,T1_DQS_N | AA11 | - | NC | - |
| AA13 | 11 | IO_L3P_11,T0_DQS_P | AA13 | - | NC | - |
| AA14 | 11 | IO_L5N_11,T0 | AA14 | - | NC | - |
| AA15 | 11 | IO_L4P_11,T0 | AA15 | - | NC | - |
| AA16 | 11 | IO_L1N_11,T0 | AA16 | - | NC | - |
| AB10 | 11 | IO_L8N_11,T1 | AB10 | - | NC | - |
| AB11 | 11 | IO_L7P_11,T1 | AB11 | - | NC | - |
| AB12 | 11 | IO_L7N_11,T1 | AB12 | - | NC | - |
| AB13 | 11 | IO_L3N_11,T0_DQS_N | AB13 | - | NC | - |
| AB15 | 11 | IO_L4N_11,T0 | AB15 | - | NC | - |
| AB16 | 11 | IO_L2P_11,T0 | AB16 | - | NC | - |
| AB17 | 11 | IO_L2N_11,T0 | AB17 | - | NC | - |


## IO BANK 11, 12

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| M14 | 12 | VCCIO_12 | M14 | 11 | VCCIO_11 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK11
PH1P100器件为BANK12 |
| N13 | 12 | IO_L23P_12,D19,T3 | N13 | 11 | IO_L23P_11,D19,T3 | - |
| N14 | 12 | IO_L23N_12,D18,T3 | N14 | 11 | IO_L23N_11,D18,T3 | - |
| N15 | 12 | IO_L25_12 | N15 | 11 | IO_L25_11 | - |
| N17 | 12 | IO_L21P_12,T3_DQS_P | N17 | 11 | IO_L21P_11,T3_DQS_P | - |
| P14 | 12 | IO_L19P_12,D26,T3 | P14 | 11 | IO_L19P_11,D26,T3 | - |
| P15 | 12 | IO_L22P_12,D21,T3 | P15 | 11 | IO_L22P_11,D21,T3 | - |
| P16 | 12 | IO_L24P_12,D17,T3 | P16 | 11 | IO_L24P_11,D17,T3 | - |
| P17 | 12 | IO_L21N_12,D22,T3_DQS_N | P17 | 11 | IO_L21N_11,D22,T3_DQS_N | - |
| P18 | 12 | VCCIO_12 | P18 | 11 | VCCIO_11 | - |
| P19 | 12 | IO_L5P_12,D6,T0 | P19 | 11 | IO_L5P_11,D6,T0 | - |
| P20 | 12 | IO_L0_12 | P20 | 11 | IO_L0_11 | - |
| P21 | 12 | IO_L2P_12,D2,WPN,T0 | P21 | 11 | IO_L2P_11,D2,WPN,T0 | - |
| P22 | 12 | IO_L1P_12,D0,MOSI,T0 | P22 | 11 | IO_L1P_11,D0,MOSI,T0 | - |
| R14 | 12 | IO_L19N_12,D25,T3_VREF,T3 | R14 | 11 | IO_L19N_11,D25,T3_VREF,T3 | - |
| R15 | 12 | VCCIO_12 | R15 | 11 | VCCIO_11 | - |
| R16 | 12 | IO_L22N_12,D20,T3 | R16 | 11 | IO_L22N_11,D20,T3 | - |
| R17 | 12 | IO_L24N_12,D16,T3 | R17 | 11 | IO_L24N_11,D16,T3 | - |
| R18 | 12 | IO_L20P_12,D24,T3 | R18 | 11 | IO_L20P_11,D24,T3 | - |
| R19 | 12 | IO_L5N_12,D7,T0 | R19 | 11 | IO_L5N_11,D7,T0 | - |
| R21 | 12 | IO_L2N_12,D3,HOLDN,T0 | R21 | 11 | IO_L2N_11,D3,HOLDN,T0 | - |
| R22 | 12 | IO_L1N_12,D1,MISO,DIN,T0 | R22 | 11 | IO_L1N_11,D1,MISO,DIN,T0 | - |
| T18 | 12 | IO_L20N_12,D23,T3 | T18 | 11 | IO_L20N_11,D23,T3 | - |
| T19 | 12 | IO_L6P_12,SPICSN,BUSY,T0 | T19 | 11 | IO_L6P_11,SPICSN,BUSY,T0 | - |
| T20 | 12 | IO_L6N_12,D8,T0_VREF,T0 | T20 | 11 | IO_L6N_11,D8,T0_VREF,T0 | - |
| T21 | 12 | IO_L4P_12,D4,T0 | T21 | 11 | IO_L4P_11,D4,T0 | - |
| T22 | 12 | VCCIO_12 | T22 | 11 | VCCIO_11 | - |
| U17 | 12 | IO_L18P_12,D28,T2 | U17 | 11 | IO_L18P_11,D28,T2 | - |
| U18 | 12 | IO_L18N_12,D27,T2 | U18 | 11 | IO_L18N_11,D27,T2 | - |
| U19 | 12 | VCCIO_12 | U19 | 11 | VCCIO_11 | - |
| U20 | 12 | IO_L11P_12,GCLKIOT3,T1 | U20 | 11 | IO_L11P_11,GCLKIOT3,T1 | - |
| U21 | 12 | IO_L4N_12,D5,T0 | U21 | 11 | IO_L4N_11,D5,T0 | - |
| U22 | 12 | IO_L3P_12,HSWAPEN,T0_DQS_P | U22 | 11 | IO_L3P_11,HSWAPEN,T0_DQS_P | - |
| V17 | 12 | IO_L16P_12,CSN,T2 | V17 | 11 | IO_L16P_11,CSN,T2 | - |
| V18 | 12 | IO_L14P_12,GCLKIOT0,T2 | V18 | 11 | IO_L14P_11,GCLKIOT0,T2 | - |
| V19 | 12 | IO_L14N_12,GCLKIOC0,T2 | V19 | 11 | IO_L14N_11,GCLKIOC0,T2 | - |
| V20 | 12 | IO_L11N_12,GCLKIOC3,T1 | V20 | 11 | IO_L11N_11,GCLKIOC3,T1 | - |
| V22 | 12 | IO_L3N_12,USRCLK,T0_DQS_N | V22 | 11 | IO_L3N_11,USRCLK,T0_DQS_N | - |
| W17 | 12 | IO_L16N_12,D31,T2 | W17 | 11 | IO_L16N_11,D31,T2 | - |
| W19 | 12 | IO_L12P_12,GCLKIOT2,T1 | W19 | 11 | IO_L12P_11,GCLKIOT2,T1 | - |
| W20 | 12 | IO_L12N_12,GCLKIOC2,T1 | W20 | 11 | IO_L12N_11,GCLKIOC2,T1 | - |
| W21 | 12 | IO_L7P_12,D9,T1 | W21 | 11 | IO_L7P_11,D9,T1 | - |
| W22 | 12 | IO_L7N_12,D10,T1 | W22 | 11 | IO_L7N_11,D10,T1 | - |
| Y18 | 12 | IO_L13P_12,GCLKIOT1,T2 | Y18 | 11 | IO_L13P_11,GCLKIOT1,T2 | - |
| Y19 | 12 | IO_L13N_12,GCLKIOC1,T2 | Y19 | 11 | IO_L13N_11,GCLKIOC1,T2 | - |
| Y20 | 12 | VCCIO_12 | Y20 | 11 | VCCIO_11 | - |
| Y21 | 12 | IO_L9P_12,T1_DQS_P | Y21 | 11 | IO_L9P_11,T1_DQS_P | - |
| Y22 | 12 | IO_L9N_12,D13,T1_DQS_N | Y22 | 11 | IO_L9N_11,D13,T1_DQS_N | - |
| AA18 | 12 | IO_L17P_12,D30,T2 | AA18 | 11 | IO_L17P_11,D30,T2 | - |
| AA19 | 12 | IO_L15P_12,RDWRN,T2_DQS_P | AA19 | 11 | IO_L15P_11,RDWRN,T2_DQS_P | - |
| AA20 | 12 | IO_L8P_12,D11,T1 | AA20 | 11 | IO_L8P_11,D11,T1 | - |
| AA21 | 12 | IO_L8N_12,D12,T1 | AA21 | 11 | IO_L8N_11,D12,T1 | - |
| AB18 | 12 | IO_L17N_12,D29,T2 | AB18 | 11 | IO_L17N_11,D29,T2 | - |
| AB20 | 12 | IO_L15N_12,CSON,DOUT,T2_DQS_N | AB20 | 11 | IO_L15N_11,CSON,DOUT,T2_DQS_N | - |
| AB21 | 12 | IO_L10P_12,D14,T1 | AB21 | 11 | IO_L10P_11,D14,T1 | - |
| AB22 | 12 | IO_L10N_12,D15,T1 | AB22 | 11 | IO_L10N_11,D15,T1 | - |


## IO BANK 12, 13

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| G13 | 13 | IO_L1N_13,T0 | G13 | 12 | IO_L1N_12,ADC8N,T0 | - |
| G15 | 13 | IO_L2P_13,T0 | G15 | 12 | IO_L2P_12,ADC7P,T0 | - |
| G16 | 13 | IO_L2N_13,T0 | G16 | 12 | IO_L2N_12,ADC7N,T0 | - |
| G17 | 13 | IO_L4P_13,T0 | G17 | 12 | IO_L4P_12,T0 | - |
| G18 | 13 | IO_L4N_13,T0 | G18 | 12 | IO_L4N_12,T0 | - |
| G19 | 13 | VCCIO_13 | G19 | 12 | VCCIO_12 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK12
PH1P100器件为BANK13 |
| G20 | 13 | IO_L8N_13,T1 | G20 | 12 | IO_L8N_12,ADC3N,T1 | - |
| H13 | 13 | IO_L1P_13,T0 | H13 | 12 | IO_L1P_12,ADC8P,T0 | - |
| H14 | 13 | IO_L3N_13,T0_DQS_N | H14 | 12 | IO_L3N_12,ADC6N,T0_DQS_N | - |
| H15 | 13 | IO_L5N_13,T0 | H15 | 12 | IO_L5N_12,ADC5N,T0 | - |
| H16 | 13 | VCCIO_13 | H16 | 12 | VCCIO_12 | - |
| H17 | 13 | IO_L6P_13,T0 | H17 | 12 | IO_L6P_12,T0 | - |
| H18 | 13 | IO_L6N_13,T0_VREF,T0 | H18 | 12 | IO_L6N_12,T0_VREF,T0 | - |
| H19 | 13 | IO_L12N_13,GCLKIOC2,T1 | H19 | 12 | IO_L12N_12,GCLKIOC2,T1 | - |
| H20 | 13 | IO_L8P_13,T1 | H20 | 12 | IO_L8P_12,ADC3P,T1 | - |
| H22 | 13 | IO_L7N_13,T1 | H22 | 12 | IO_L7N_12,ADC4N,T1 | - |
| J13 | 13 | VCCIO_13 | J13 | 12 | VCCIO_12 | - |
| J14 | 13 | IO_L3P_13,T0_DQS_P | J14 | 12 | IO_L3P_12,ADC6P,T0_DQS_P | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| J15 | 13 | IO_L5P_13,T0 | J15 | 12 | IO_L5P_12,ADC5P,T0 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| J16 | 13 | IO_L0_13 | J16 | 12 | IO_L0_12 | - |
| J17 | 13 | IO_L21N_13,T3_DQS_N | J17 | 12 | IO_L21N_12,T3_DQS_N | - |
| J19 | 13 | IO_L12P_13,GCLKIOT2,T1 | J19 | 12 | IO_L12P_12,GCLKIOT2,T1 | - |
| J20 | 13 | IO_L11P_13,GCLKIOT3,T1 | J20 | 12 | IO_L11P_12,GCLKIOT3,T1 | - |
| J21 | 13 | IO_L11N_13,GCLKIOC3,T1 | J21 | 12 | IO_L11N_12,GCLKIOC3,T1 | - |
| J22 | 13 | IO_L7P_13,T1 | J22 | 12 | IO_L7P_12,ADC4P,T1 | - |
| K13 | 13 | IO_L19P_13,T3 | K13 | 12 | IO_L19P_12,T3 | - |
| K14 | 13 | IO_L19N_13,T3_VREF,T3 | K14 | 12 | IO_L19N_12,T3_VREF,T3 | - |
| K16 | 13 | IO_L23N_13,T3 | K16 | 12 | IO_L23N_12,T3 | - |
| K17 | 13 | IO_L21P_13,T3_DQS_P | K17 | 12 | IO_L21P_12,T3_DQS_P | - |
| K18 | 13 | IO_L13P_13,GCLKIOT1,T2 | K18 | 12 | IO_L13P_12,GCLKIOT1,T2 | - |
| K19 | 13 | IO_L13N_13,GCLKIOC1,T2 | K19 | 12 | IO_L13N_12,GCLKIOC1,T2 | - |
| K20 | 13 | VCCIO_13 | K20 | 12 | VCCIO_12 | - |
| K21 | 13 | IO_L9P_13,T1_DQS_P | K21 | 12 | IO_L9P_12,ADC2P,T1_DQS_P | - |
| K22 | 13 | IO_L9N_13,T1_DQS_N | K22 | 12 | IO_L9N_12,ADC2P,T1_DQS_N | - |
| L13 | 13 | IO_L20N_13,T3 | L13 | 12 | IO_L20N_12,T3 | - |
| L14 | 13 | IO_L22P_13,T3 | L14 | 12 | IO_L22P_12,T3 | - |
| L15 | 13 | IO_L22N_13,T3 | L15 | 12 | IO_L22N_12,T3 | - |
| L16 | 13 | IO_L23P_13,T3 | L16 | 12 | IO_L23P_12,T3 | - |
| L17 | 13 | VCCIO_13 | L17 | 12 | VCCIO_12 | - |
| L18 | 13 | IO_L16N_13,T2 | L18 | 12 | IO_L16N_12,T2 | - |
| L19 | 13 | IO_L14P_13,GCLKIOT0,T2 | L19 | 12 | IO_L14P_12,GCLKIOT0,T2 | - |
| L20 | 13 | IO_L14N_13,GCLKIOC0,T2 | L20 | 12 | IO_L14N_12,GCLKIOC0,T2 | - |
| L21 | 13 | IO_L10N_13,T1 | L21 | 12 | IO_L10N_12,ADC1N,T1 | - |
| M13 | 13 | IO_L20P_13,T3 | M13 | 12 | IO_L20P_12,T3 | - |
| M15 | 13 | IO_L24P_13,T3 | M15 | 12 | IO_L24P_12,T3 | - |
| M16 | 13 | IO_L24N_13,T3 | M16 | 12 | IO_L24N_12,T3 | - |
| M17 | 13 | IO_L25_13 | M17 | 12 | IO_L25_12 | - |
| M18 | 13 | IO_L16P_13,T2 | M18 | 12 | IO_L16P_12,T2 | - |
| M20 | 13 | IO_L18N_13,T2 | M20 | 12 | IO_L18N_12,T2 | - |
| M21 | 13 | IO_L10P_13,T1 | M21 | 12 | IO_L10P_12,ADC1P,T1 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
如果PH1P50器件不使用ADC可当做普通IO使用 |
| M22 | 13 | IO_L15N_13,T2_DQS_N | M22 | 12 | IO_L15N_12,T2_DQS_N | - |
| N18 | 13 | IO_L17P_13,T2 | N18 | 12 | IO_L17P_12,T2 | - |
| N19 | 13 | IO_L17N_13,T2 | N19 | 12 | IO_L17N_12,T2 | - |
| N20 | 13 | IO_L18P_13,T2 | N20 | 12 | IO_L18P_12,T2 | - |
| N21 | 13 | VCCIO_13 | N21 | 12 | VCCIO_12 | - |
| N22 | 13 | IO_L15P_13,T2_DQS_P | N22 | 12 | IO_L15P_12,T2_DQS_P | - |


## IO BANK 13, 14

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A13 | 14 | IO_L10P_14,T1 | A13 | 13 | IO_L10P_13,T1 | - |
| A14 | 14 | IO_L10N_14,T1 | A14 | 13 | IO_L10N_13,T1 | - |
| A15 | 14 | IO_L9P_14,T1_DQS_P | A15 | 13 | IO_L9P_13,T1_DQS_P | - |
| A16 | 14 | IO_L9N_14,T1_DQS_N | A16 | 13 | IO_L9N_13,T1_DQS_N | - |
| A17 | 14 | VCCIO_14 | A17 | 13 | VCCIO_13 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK13
PH1P100器件为BANK14 |
| A18 | 14 | IO_L17P_14,T2 | A18 | 13 | IO_L17P_13,T2 | - |
| A19 | 14 | IO_L17N_14,T2 | A19 | 13 | IO_L17N_13,T2 | - |
| A20 | 14 | IO_L16N_14,T2 | A20 | 13 | IO_L16N_13,T2 | - |
| A21 | 14 | IO_L21N_14,T3_DQS_N | A21 | 13 | IO_L21N_13,T3_DQS_N | - |
| B13 | 14 | IO_L8N_14,T1 | B13 | 13 | IO_L8N_13,T1 | - |
| B14 | 14 | VCCIO_14 | B14 | 13 | VCCIO_13 | - |
| B15 | 14 | IO_L7P_14,T1 | B15 | 13 | IO_L7P_13,T1 | - |
| B16 | 14 | IO_L7N_14,T1 | B16 | 13 | IO_L7N_13,T1 | - |
| B17 | 14 | IO_L11P_14,GCLKIOT3,T1 | B17 | 13 | IO_L11P_13,GCLKIOT3,T1 | - |
| B18 | 14 | IO_L11N_14,GCLKIOC3,T1 | B18 | 13 | IO_L11N_13,GCLKIOC3,T1 | - |
| B20 | 14 | IO_L16P_14,T2 | B20 | 13 | IO_L16P_13,T2 | - |
| B21 | 14 | IO_L21P_14,T3_DQS_P | B21 | 13 | IO_L21P_13,T3_DQS_P | - |
| B22 | 14 | IO_L20N_14,T3 | B22 | 13 | IO_L20N_13,T3 | - |
| C13 | 14 | IO_L8P_14,T1 | C13 | 13 | IO_L8P_13,T1 | - |
| C14 | 14 | IO_L3P_14,T0_DQS_P | C14 | 13 | IO_L3P_13,T0_DQS_P | - |
| C15 | 14 | IO_L3N_14,T0_DQS_N | C15 | 13 | IO_L3N_13,T0_DQS_N | - |
| C17 | 14 | IO_L12N_14,GCLKIOC2,T1 | C17 | 13 | IO_L12N_13,GCLKIOC2,T1 | - |
| C18 | 14 | IO_L13P_14,GCLKIOT1,T2 | C18 | 13 | IO_L13P_13,GCLKIOT1,T2 | - |
| C19 | 14 | IO_L13N_14,GCLKIOC1,T2 | C19 | 13 | IO_L13N_13,GCLKIOC1,T2 | - |
| C20 | 14 | IO_L19N_14,T3_VREF,T3 | C20 | 13 | IO_L19N_13,T3_VREF,T3 | - |
| C21 | 14 | VCCIO_14 | C21 | 13 | VCCIO_13 | - |
| C22 | 14 | IO_L20P_14,T3 | C22 | 13 | IO_L20P_13,T3 | - |
| D14 | 14 | IO_L6P_14,T0 | D14 | 13 | IO_L6P_13,T0 | - |
| D15 | 14 | IO_L6N_14,T0_VREF,T0 | D15 | 13 | IO_L6N_13,T0_VREF,T0 | - |
| D16 | 14 | IO_L5N_14,T0 | D16 | 13 | IO_L5N_13,T0 | - |
| D17 | 14 | IO_L12P_14,GCLKIOT2,T1 | D17 | 13 | IO_L12P_13,GCLKIOT2,T1 | - |
| D18 | 14 | VCCIO_14 | D18 | 13 | VCCIO_13 | - |
| D19 | 14 | IO_L14N_14,GCLKIOC0,T2 | D19 | 13 | IO_L14N_13,GCLKIOC0,T2 | - |
| D20 | 14 | IO_L19P_14,T3 | D20 | 13 | IO_L19P_13,T3 | - |
| D21 | 14 | IO_L23N_14,T3 | D21 | 13 | IO_L23N_13,T3 | - |
| D22 | 14 | IO_L22N_14,T3 | D22 | 13 | IO_L22N_13,T3 | - |
| E13 | 14 | IO_L4P_14,T0 | E13 | 13 | IO_L4P_13,T0 | - |
| E14 | 14 | IO_L4N_14,T0 | E14 | 13 | IO_L4N_13,T0 | - |
| E15 | 14 | VCCIO_14 | E15 | 13 | VCCIO_13 | - |
| E16 | 14 | IO_L5P_14,T0 | E16 | 13 | IO_L5P_13,T0 | - |
| E17 | 14 | IO_L2N_14,T0 | E17 | 13 | IO_L2N_13,T0 | - |
| E18 | 14 | IO_L15N_14,T2_DQS_N | E18 | 13 | IO_L15N_13,T2_DQS_N | - |
| E19 | 14 | IO_L14P_14,GCLKIOT0,T2 | E19 | 13 | IO_L14P_13,GCLKIOT0,T2 | - |
| E21 | 14 | IO_L23P_14,T3 | E21 | 13 | IO_L23P_13,T3 | - |
| E22 | 14 | IO_L22P_14,T3 | E22 | 13 | IO_L22P_13,T3 | - |
| F13 | 14 | IO_L1P_14,T0 | F13 | 13 | IO_L1P_13,T0 | - |
| F14 | 14 | IO_L1N_14,T0 | F14 | 13 | IO_L1N_13,T0 | - |
| F15 | 14 | IO_L0_14 | F15 | 13 | IO_L0_13 | - |
| F16 | 14 | IO_L2P_14,T0 | F16 | 13 | IO_L2P_13,T0 | - |
| F18 | 14 | IO_L15P_14,T2_DQS_P | F18 | 13 | IO_L15P_13,T2_DQS_P | - |
| F19 | 14 | IO_L18P_14,T2 | F19 | 13 | IO_L18P_13,T2 | - |
| F20 | 14 | IO_L18N_14,T2 | F20 | 13 | IO_L18N_13,T2 | - |
| F21 | 14 | IO_L25_14 | F21 | 13 | IO_L25_13 | - |
| F22 | 14 | VCCIO_14 | F22 | 13 | VCCIO_13 | - |
| G21 | 14 | IO_L24P_14,T3 | G21 | 13 | IO_L24P_13,T3 | - |
| G22 | 14 | IO_L24N_14,T3 | G22 | 13 | IO_L24N_13,T3 | - |


## IO BANK 31, 32

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| R2 | 32 | IO_R3N_32,T0_DQS_N | R2 | 31 | IO_R3N_31,T0_DQS_N | - |
| R3 | 32 | IO_R3P_32,T0_DQS_P | R3 | 31 | IO_R3P_31,T0_DQS_P | - |
| R4 | 32 | IO_R13P_32,GCLKIOT1,T2 | R4 | 31 | IO_R13P_31,GCLKIOT1,T2 | - |
| R5 | 32 | VCCIO_32 | R5 | 31 | VCCIO_31 | - |
| R6 | 32 | IO_R17P_32,T2 | R6 | 31 | IO_R17P_31,T2 | - |
| T1 | 32 | IO_R1P_32,T0 | T1 | 31 | IO_R1P_31,T0 | - |
| T2 | 32 | VCCIO_32 | T2 | 31 | VCCIO_31 | - |
| T3 | 32 | IO_R0_32 | T3 | 31 | IO_R0_31 | - |
| T4 | 32 | IO_R13N_32,GCLKIOC1,T2 | T4 | 31 | IO_R13N_31,GCLKIOC1,T2 | - |
| T5 | 32 | IO_R14P_32,GCLKIOT0,T2 | T5 | 31 | IO_R14P_31,GCLKIOT0,T2 | - |
| T6 | 32 | IO_R17N_32,T2 | T6 | 31 | IO_R17N_31,T2 | - |
| U1 | 32 | IO_R1N_32,T0 | U1 | 31 | IO_R1N_31,T0 | - |
| U2 | 32 | IO_R2P_32,T0 | U2 | 31 | IO_R2P_31,T0 | - |
| U3 | 32 | IO_R6P_32,T0 | U3 | 31 | IO_R6P_31,T0 | - |
| U5 | 32 | IO_R14N_32,GCLKIOC0,T2 | U5 | 31 | IO_R14N_31,GCLKIOC0,T2 | - |
| U6 | 32 | IO_R16P_32,T2 | U6 | 31 | IO_R16P_31,T2 | - |
| U7 | 32 | IO_R25_32 | U7 | 31 | IO_R25_31 | - |
| V2 | 32 | IO_R2N_32,T0 | V2 | 31 | IO_R2N_31,T0 | - |
| V3 | 32 | IO_R6N_32,T0_VREF,T0 | V3 | 31 | IO_R6N_31,T0_VREF,T0 | - |
| V4 | 32 | IO_R12P_32,GCLKIOT2,T1 | V4 | 31 | IO_R12P_31,GCLKIOT2,T1 | - |
| V5 | 32 | IO_R16N_32,T2 | V5 | 31 | IO_R16N_31,T2 | - |
| V6 | 32 | VCCIO_32 | V6 | 31 | VCCIO_31 | - |
| V7 | 32 | IO_R19P_32,T3 | V7 | 31 | IO_R19P_31,T3 | - |
| V8 | 32 | IO_R21N_32,T3_DQS_N | V8 | 31 | IO_R21N_31,T3_DQS_N | - |
| V9 | 32 | IO_R21P_32,T3_DQS_P | V9 | 31 | IO_R21P_31,T3_DQS_P | - |
| W1 | 32 | IO_R5P_32,T0 | W1 | 31 | IO_R5P_31,T0 | - |
| W2 | 32 | IO_R4P_32,T0 | W2 | 31 | IO_R4P_31,T0 | - |
| W3 | 32 | VCCIO_32 | W3 | 31 | VCCIO_31 | - |
| W4 | 32 | IO_R12N_32,GCLKIOC2,T1 | W4 | 31 | IO_R12N_31,GCLKIOC2,T1 | - |
| W5 | 32 | IO_R15N_32,T2_DQS_N | W5 | 31 | IO_R15N_31,T2_DQS_N | - |
| W6 | 32 | IO_R15P_32,T2_DQS_P | W6 | 31 | IO_R15P_31,T2_DQS_P | - |
| W7 | 32 | IO_R19N_32,T3_VREF,T3 | W7 | 31 | IO_R19N_31,T3_VREF,T3 | - |
| W9 | 32 | IO_R24P_32,T3 | W9 | 31 | IO_R24P_31,T3 | - |
| Y1 | 32 | IO_R5N_32,T0 | Y1 | 31 | IO_R5N_31,T0 | - |
| Y2 | 32 | IO_R4N_32,T0 | Y2 | 31 | IO_R4N_31,T0 | - |
| Y3 | 32 | IO_R9P_32,T1_DQS_P | Y3 | 31 | IO_R9P_31,T1_DQS_P | - |
| Y4 | 32 | IO_R11P_32,GCLKIOT3,T1 | Y4 | 31 | IO_R11P_31,GCLKIOT3,T1 | - |
| Y6 | 32 | IO_R18P_32,T2 | Y6 | 31 | IO_R18P_31,T2 | - |
| Y7 | 32 | IO_R23N_32,T3 | Y7 | 31 | IO_R23N_31,T3 | - |
| Y8 | 32 | IO_R23P_32,T3 | Y8 | 31 | IO_R23P_31,T3 | - |
| Y9 | 32 | IO_R24N_32,T3 | Y9 | 31 | IO_R24N_31,T3 | - |
| AA1 | 32 | IO_R7P_32,T1 | AA1 | 31 | IO_R7P_31,T1 | - |
| AA3 | 32 | IO_R9N_32,T1_DQS_N | AA3 | 31 | IO_R9N_31,T1_DQS_N | - |
| AA4 | 32 | IO_R11N_32,GCLKIOC3,T1 | AA4 | 31 | IO_R11N_31,GCLKIOC3,T1 | - |
| AA5 | 32 | IO_R10P_32,T1 | AA5 | 31 | IO_R10P_31,T1 | - |
| AA6 | 32 | IO_R18N_32,T2 | AA6 | 31 | IO_R18N_31,T2 | - |
| AA7 | 32 | VCCIO_32 | AA7 | 31 | VCCIO_31 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK31
PH1P100器件为BANK32 |
| AA8 | 32 | IO_R22P_32,T3 | AA8 | 31 | IO_R22P_31,T3 | - |
| AB1 | 32 | IO_R7N_32,T1 | AB1 | 31 | IO_R7N_31,T1 | - |
| AB2 | 32 | IO_R8N_32,T1 | AB2 | 31 | IO_R8N_31,T1 | - |
| AB3 | 32 | IO_R8P_32,T1 | AB3 | 31 | IO_R8P_31,T1 | - |
| AB4 | 32 | VCCIO_32 | AB4 | 31 | VCCIO_31 | - |
| AB5 | 32 | IO_R10N_32,T1 | AB5 | 31 | IO_R10N_31,T1 | - |
| AB6 | 32 | IO_R20N_32,T3 | AB6 | 31 | IO_R20N_31,T3 | - |
| AB7 | 32 | IO_R20P_32,T3 | AB7 | 31 | IO_R20P_31,T3 | - |
| AB8 | 32 | IO_R22N_32,T3 | AB8 | 31 | IO_R22N_31,T3 | - |


## IO BANK 32, 33

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | 33 | IO_R1N_33,T0 | A1 | 32 | IO_R1N_32,T0 | - |
| B1 | 33 | IO_R1P_33,T0 | B1 | 32 | IO_R1P_32,T0 | - |
| B2 | 33 | IO_R2N_33,T0 | B2 | 32 | IO_R2N_32,T0 | - |
| C1 | 33 | VCCIO_33 | C1 | 32 | VCCIO_32 | PH1P50器件VCCIO范围要求和PH1P100一致（1.14V-3.465V）
PH1P50器件为BANK32
PH1P100器件为BANK33 |
| C2 | 33 | IO_R2P_33,T0 | C2 | 32 | IO_R2P_32,T0 | - |
| D1 | 33 | IO_R3N_33,T0_DQS_N | D1 | 32 | IO_R3N_32,T0_DQS_N | - |
| D2 | 33 | IO_R4N_33,T0 | D2 | 32 | IO_R4N_32,T0 | - |
| E1 | 33 | IO_R3P_33,T0_DQS_P | E1 | 32 | IO_R3P_32,T0_DQS_P | - |
| E2 | 33 | IO_R4P_33,T0 | E2 | 32 | IO_R4P_32,T0 | - |
| E3 | 33 | IO_R6N_33,T0_VREF,T0 | E3 | 32 | IO_R6N_32,T0_VREF,T0 | - |
| F1 | 33 | IO_R5N_33,T0 | F1 | 32 | IO_R5N_32,T0 | - |
| F2 | 33 | VCCIO_33 | F2 | 32 | VCCIO_32 | - |
| F3 | 33 | IO_R6P_33,T0 | F3 | 32 | IO_R6P_32,T0 | - |
| F4 | 33 | IO_R0_33 | F4 | 32 | IO_R0_32 | - |
| G1 | 33 | IO_R5P_33,T0 | G1 | 32 | IO_R5P_32,T0 | - |
| G2 | 33 | IO_R8N_33,T1 | G2 | 32 | IO_R8N_32,T1 | - |
| G3 | 33 | IO_R11N_33,GCLKIOC3,T1 | G3 | 32 | IO_R11N_32,GCLKIOC3,T1 | - |
| G4 | 33 | IO_R12N_33,GCLKIOC2,T1 | G4 | 32 | IO_R12N_32,GCLKIOC2,T1 | - |
| H2 | 33 | IO_R8P_33,T1 | H2 | 32 | IO_R8P_32,T1 | - |
| H3 | 33 | IO_R11P_33,GCLKIOT3,T1 | H3 | 32 | IO_R11P_32,GCLKIOT3,T1 | - |
| H4 | 33 | IO_R12P_33,GCLKIOT2,T1 | H4 | 32 | IO_R12P_32,GCLKIOT2,T1 | - |
| H5 | 33 | IO_R10N_33,T1 | H5 | 32 | IO_R10N_32,T1 | - |
| H6 | 33 | VCCIO_33 | H6 | 32 | VCCIO_32 | - |
| J1 | 33 | IO_R7N_33,T1 | J1 | 32 | IO_R7N_32,T1 | - |
| J2 | 33 | IO_R9N_33,T1_DQS_N | J2 | 32 | IO_R9N_32,T1_DQS_N | - |
| J3 | 33 | VCCIO_33 | J3 | 32 | VCCIO_32 | - |
| J4 | 33 | IO_R13N_33,GCLKIOC1,T2 | J4 | 32 | IO_R13N_32,GCLKIOC1,T2 | - |
| J5 | 33 | IO_R10P_33,T1 | J5 | 32 | IO_R10P_32,T1 | - |
| J6 | 33 | IO_R17N_33,T2 | J6 | 32 | IO_R17N_32,T2 | - |
| K1 | 33 | IO_R7P_33,T1 | K1 | 32 | IO_R7P_32,T1 | - |
| K2 | 33 | IO_R9P_33,T1_DQS_P | K2 | 32 | IO_R9P_32,T1_DQS_P | - |
| K3 | 33 | IO_R14N_33,GCLKIOC0,T2 | K3 | 32 | IO_R14N_32,GCLKIOC0,T2 | - |
| K4 | 33 | IO_R13P_33,GCLKIOT1,T2 | K4 | 32 | IO_R13P_32,GCLKIOT1,T2 | - |
| K6 | 33 | IO_R17P_33,T2 | K6 | 32 | IO_R17P_32,T2 | - |
| L1 | 33 | IO_R15N_33,T2_DQS_N | L1 | 32 | IO_R15N_32,T2_DQS_N | - |
| L3 | 33 | IO_R14P_33,GCLKIOT0,T2 | L3 | 32 | IO_R14P_32,GCLKIOT0,T2 | - |
| L4 | 33 | IO_R18N_33,T2 | L4 | 32 | IO_R18N_32,T2 | - |
| L5 | 33 | IO_R18P_33,T2 | L5 | 32 | IO_R18P_32,T2 | - |
| L6 | 33 | IO_R25_33 | L6 | 32 | IO_R25_32 | - |
| M1 | 33 | IO_R15P_33,T2_DQS_P | M1 | 32 | IO_R15P_32,T2_DQS_P | - |
| M2 | 33 | IO_R16N_33,T2 | M2 | 32 | IO_R16N_32,T2 | - |
| M3 | 33 | IO_R16P_33,T2 | M3 | 32 | IO_R16P_32,T2 | - |
| M4 | 33 | VCCIO_33 | M4 | 32 | VCCIO_32 | - |
| M5 | 33 | IO_R23N_33,T3 | M5 | 32 | IO_R23N_32,T3 | - |
| M6 | 33 | IO_R23P_33,T3 | M6 | 32 | IO_R23P_32,T3 | - |
| N1 | 33 | VCCIO_33 | N1 | 32 | VCCIO_32 | - |
| N2 | 33 | IO_R22N_33,T3 | N2 | 32 | IO_R22N_32,T3 | - |
| N3 | 33 | IO_R19N_33,T3_VREF,T3 | N3 | 32 | IO_R19N_32,T3_VREF,T3 | - |
| N4 | 33 | IO_R19P_33,T3 | N4 | 32 | IO_R19P_32,T3 | - |
| N5 | 33 | IO_R24N_33,T3 | N5 | 32 | IO_R24N_32,T3 | - |
| P1 | 33 | IO_R20N_33,T3 | P1 | 32 | IO_R20N_32,T3 | - |
| P2 | 33 | IO_R22P_33,T3 | P2 | 32 | IO_R22P_32,T3 | - |
| P4 | 33 | IO_R21N_33,T3_DQS_N | P4 | 32 | IO_R21N_32,T3_DQS_N | - |
| P5 | 33 | IO_R21P_33,T3_DQS_P | P5 | 32 | IO_R21P_32,T3_DQS_P | - |
| P6 | 33 | IO_R24P_33,T3 | P6 | 32 | IO_R24P_32,T3 | - |
| R1 | 33 | IO_R20P_33,T3 | R1 | 32 | IO_R20P_32,T3 | - |


## IO BANK 94

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A4 | 94 | TX0N_94 | A4 | 94 | TX0N_94 | - |
| A6 | 94 | TX2N_94 | A6 | 94 | TX2N_94 | - |
| A8 | 94 | RX0N_94 | A8 | 94 | RX0N_94 | - |
| B4 | 94 | TX0P_94 | B4 | 94 | TX0P_94 | - |
| B5 | 94 | PHYVCCT_94 | B5 | 94 | PHYVCCT_94 | - |
| B6 | 94 | TX2P_94 | B6 | 94 | TX2P_94 | - |
| B7 | 94 | PHYVCCT_94 | B7 | 94 | PHYVCCT_94 | - |
| B8 | 94 | RX0P_94 | B8 | 94 | RX0P_94 | PH1P50器件支持到gen3，PH1P100器件只支持到gen2 |
| B9 | 94 | PHYVCCT_94 | B9 | 94 | PHYVCCT_94 | - |
| C4 | 94 | PHYVCCT_94 | C4 | 94 | PHYVCCT_94 | - |
| C5 | 94 | TX1N_94 | C5 | 94 | TX1N_94 | - |
| C7 | 94 | TX3N_94 | C7 | 94 | TX3N_94 | - |
| C8 | 94 | PHYVCCT_94 | C8 | 94 | PHYVCCT_94 | - |
| C9 | 94 | RX3N_94 | C9 | 94 | RX3N_94 | - |
| D5 | 94 | TX1P_94 | D5 | 94 | TX1P_94 | - |
| D7 | 94 | TX3P_94 | D7 | 94 | TX3P_94 | - |
| D9 | 94 | RX3P_94 | D9 | 94 | RX3P_94 | - |
| E6 | 94 | REFCLK0N_94 | E6 | 94 | REFCLK0N_94 | - |
| F6 | 94 | REFCLK0P_94 | F6 | 94 | REFCLK0P_94 | - |
| F8 | 94 | RESREF_94 | F8 | 94 | RESREF_94 | PH1P50和PH1P100器件每四个Lane共用一个参考电阻，共需要1个参考电阻，且参考电阻是通过100欧姆1%精度电阻上拉到PHYVCCT |
| A10 | 94 | RX2N_94 | A10 | 94 | RX2N_94 | - |
| B10 | 94 | RX2P_94 | B10 | 94 | RX2P_94 | - |
| B11 | 94 | PHYVCCT_94 | B11 | 94 | PHYVCCT_94 | PH1P50器件和PH1P100器件PHYVCCT典型值为1.2V |
| C11 | 94 | RX1N_94 | C11 | 94 | RX1N_94 | - |
| D11 | 94 | RX1P_94 | D11 | 94 | RX1P_94 | - |
| E10 | 94 | REFCLK1N_94 | E10 | 94 | REFCLK1N_94 | - |
| F10 | 94 | REFCLK1P_94 | F10 | 94 | REFCLK1P_94 | - |


## IO BANK 0

| PH1P50SBG484 | | | PH1P100SBG484 V0.1                                                                                                                                                    2025-03-18 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | - | GND | A2 | - | GND | - |
| A3 | - | GND | A3 | - | GND | - |
| A5 | - | GND | A5 | - | GND | - |
| A7 | - | GND | A7 | - | GND | - |
| A9 | - | GND | A9 | - | GND | - |
| B3 | - | GND | B3 | - | GND | - |
| C3 | - | GND | C3 | - | GND | - |
| C6 | - | GND | C6 | - | GND | - |
| D3 | - | GND | D3 | - | GND | - |
| D4 | - | GND | D4 | - | GND | - |
| D6 | - | NC | D6 | - | NC | - |
| D8 | - | GND | D8 | - | GND | - |
| E4 | - | GND | E4 | - | GND | - |
| E5 | - | GND | E5 | - | GND | - |
| E7 | - | GND | E7 | - | GND | - |
| E8 | - | NC | E8 | - | NC | - |
| E9 | - | GND | E9 | - | GND | - |
| F5 | - | GND | F5 | - | GND | - |
| F7 | - | NC | F7 | - | NC | - |
| F9 | - | NC | F9 | - | NC | - |
| G5 | - | GND | G5 | - | GND | - |
| G6 | - | GND | G6 | - | GND | - |
| G7 | - | GND | G7 | - | GND | - |
| G8 | - | GND | G8 | - | GND | - |
| G9 | - | GND | G9 | - | GND | - |
| H1 | - | GND | H1 | - | GND | - |
| H7 | - | GND | H7 | - | GND | - |
| H8 | - | VCCINT | H8 | - | VCCINT | - |
| H9 | - | GND | H9 | - | GND | - |
| J7 | - | VCCINT | J7 | - | VCCINT | - |
| J8 | - | GND | J8 | - | GND | - |
| J9 | - | VCCINT | J9 | - | VCCINT | - |
| K5 | - | GND | K5 | - | GND | - |
| K7 | - | GND | K7 | - | GND | - |
| K8 | - | VCCINT | K8 | - | VCCINT | - |
| K9 | - | NC | K9 | 0 | GNDADC_0 | - |
| L2 | - | GND | L2 | - | GND | - |
| L7 | - | VCCINT | L7 | - | VCCINT | - |
| L8 | - | GND | L8 | - | GND | - |
| L9 | - | NC | L9 | 0 | VREFN_0 | - |
| M7 | - | GND | M7 | - | GND | - |
| M8 | - | VCCINT | M8 | - | VCCINT | - |
| M9 | - | NC | M9 | 0 | VN_0 | - |
| N6 | - | GND | N6 | - | GND | - |
| N7 | - | VCCINT | N7 | - | VCCINT | - |
| N8 | - | GND | N8 | - | GND | - |
| N9 | - | NC | N9 | - | NC | - |
| P3 | - | GND | P3 | - | GND | - |
| P7 | - | GND | P7 | - | GND | - |
| P8 | - | VCCINT | P8 | - | VCCINT | - |
| P9 | - | GND | P9 | - | GND | - |
| R7 | - | VCCINT | R7 | - | VCCINT | - |
| R8 | - | GND | R8 | - | GND | - |
| R9 | - | VCCINT | R9 | - | VCCINT | - |
| T7 | - | GND | T7 | - | GND | - |
| T8 | - | VCCINT | T8 | - | VCCINT | - |
| T9 | - | GND | T9 | - | GND | - |
| U4 | - | GND | U4 | - | GND | - |
| U8 | - | NC | U8 | - | NC | - |
| V1 | - | GND | V1 | - | GND | - |
| W8 | - | GND | W8 | - | GND | - |
| Y5 | - | GND | Y5 | - | GND | - |
| A11 | - | GND | A11 | - | GND | - |
| A12 | - | GND | A12 | - | GND | - |
| A22 | - | GND | A22 | - | GND | - |
| AA2 | - | GND | AA2 | - | GND | - |
| AB9 | - | GND | AB9 | - | GND | - |
| B12 | - | GND | B12 | - | GND | - |
| B19 | - | GND | B19 | - | GND | - |
| C10 | - | GND | C10 | - | GND | - |
| C12 | - | GND | C12 | - | GND | - |
| C16 | - | GND | C16 | - | GND | - |
| D10 | - | NC | D10 | - | NC | - |
| D12 | - | GND | D12 | - | GND | - |
| D13 | - | GND | D13 | - | GND | - |
| E11 | - | GND | E11 | - | GND | - |
| E12 | - | NC | E12 | - | NC | - |
| E20 | - | GND | E20 | - | GND | - |
| F11 | - | GND | F11 | - | GND | - |
| F17 | - | GND | F17 | - | GND | - |
| G10 | - | GND | G10 | - | GND | - |
| G12 | - | GND | G12 | - | GND | - |
| G14 | - | GND | G14 | - | GND | - |
| H10 | - | VCCINT | H10 | - | VCCINT | PH1P50器件和PH1P100器件典型值为0.95V |
| H11 | - | GND | H11 | - | GND | - |
| H12 | - | VCCAUX | H12 | - | VCCAUX | PH1P50器件PH1P100器件的VCCAUX分为VCCAUX和VCCAUX_IO，应用时必须都供电，典型值为1.8V(1.71~1.89) |
| H21 | - | GND | H21 | - | GND | - |
| J10 | - | GND | J10 | - | GND | - |
| J11 | - | NC | J11 | - | NC | - |
| J12 | - | GND | J12 | - | GND | - |
| J18 | - | GND | J18 | - | GND | - |
| K10 | - | NC | K10 | 0 | VCCADC_0 | PH1P50器件为ADC管脚
PH1P100器件不支持ADC
PH1P50器件的ADC引脚如果不使用建议接地处理 |
| K11 | - | GND | K11 | - | GND | - |
| K12 | - | VCCAUX_IO | K12 | - | VCCAUX_IO | - |
| K15 | - | GND | K15 | - | GND | - |
| L10 | - | NC | L10 | 0 | VP_0 | - |
| L11 | - | NC | L11 | - | NC | - |
| L22 | - | GND | L22 | - | GND | - |
| M10 | - | NC | M10 | 0 | VREFP_0 | - |
| M11 | - | GND | M11 | - | GND | - |
| M12 | - | VCCAUX_IO | M12 | - | VCCAUX_IO | - |
| M19 | - | GND | M19 | - | GND | - |
| N10 | - | NC | N10 | - | NC | - |
| N11 | - | NC | N11 | - | NC | - |
| N16 | - | GND | N16 | - | GND | - |
| P10 | - | VCCINT | P10 | - | VCCINT | - |
| P11 | - | GND | P11 | - | GND | - |
| P12 | - | VCCAUX_IO | P12 | - | VCCAUX_IO | - |
| P13 | - | GND | P13 | - | GND | - |
| R10 | - | GND | R10 | - | GND | - |
| R11 | - | VCCAUX | R11 | - | VCCAUX | - |
| R12 | - | GND | R12 | - | GND | - |
| R20 | - | GND | R20 | - | GND | - |
| T10 | - | VCCINT | T10 | - | VCCINT | - |
| T11 | - | GND | T11 | - | GND | - |
| T17 | - | GND | T17 | - | GND | - |
| U14 | - | GND | U14 | - | GND | - |
| V11 | - | GND | V11 | - | GND | - |
| V16 | - | VCCIO_11 | V16 | - | NC | - |
| V21 | - | GND | V21 | - | GND | - |
| W13 | - | VCCIO_11 | W13 | - | NC | - |
| W18 | - | GND | W18 | - | GND | - |
| Y10 | - | VCCIO_11 | Y10 | - | NC | - |
| Y15 | - | GND | Y15 | - | GND | - |
| AA12 | - | GND | AA12 | - | GND | - |
| AA17 | - | VCCIO_11 | AA17 | - | NC | PH1P50器件为NC
PH1P100器件器件为IO BANK供电管脚(1.14V~3.465V)
PH1P50器件替换为PH1P100器件，PH1P50器件可按照PH1P100器件接电源处理 |
| AA22 | - | GND | AA22 | - | GND | - |
| AB14 | - | VCCIO_11 | AB14 | - | NC | - |
| AB19 | - | GND | AB19 | - | GND | - |
| PH1P100SBG484 | - | - | PH1P50SBG484 | - | - | - |
