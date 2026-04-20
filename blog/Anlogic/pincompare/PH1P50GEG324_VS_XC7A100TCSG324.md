---
title: "PH1P50GEG324 VS XC7A100TCSG324 Pinout Table"
subtitle: "2026.04.09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# PH1P50GEG324&XC7A100TCSG324


**芯片对比**: PH1P50GEG324 VS XC7A100TCSG324


## IO BANK 0

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| E9 | 0 | IO_C0_0,CCLK_0 | E9 | 0 | CCLK_0 | PH1P50可作为普通IO使用，XC7A100为专用IO使用 |
| H9 | 0 | GNDADC_0 | H9 | 0 | GNDADC_0 | - |
| J9 | 0 | VREFN_0 | J9 | 0 | VREFN_0 | - |
| K9 | 0 | VN_0 | K9 | 0 | VN_0 | - |
| P7 | 0 | INITN_0 | P7 | 0 | INIT_B_0 | PH1P50需要上拉，推荐使用4.7K |
| P9 | 0 | PROGRAMN_0 | P9 | 0 | PROGRAM_B_0 | PH1P50需要上拉，推荐使用4.7K |
| R9 | 0 | VCCIO_0 | R9 | 0 | VCCO_0 | PH1P50供电范围1.8V~3.3V，XC7A100供电范围1.14-3.465V |
| E10 | 0 | TCK_0 | E10 | 0 | TCK_0 | PH1P50需要上拉，推荐使用4.7K |
| E11 | 0 | TDI_0 | E11 | 0 | TDI_0 | PH1P50需要上拉，推荐使用4.7K |
| E12 | 0 | TMS_0 | E12 | 0 | TMS_0 | PH1P50需要上拉，推荐使用4.7K |
| E13 | 0 | TDO_0 | E13 | 0 | TDO_0 | PH1P50需要上拉，推荐使用4.7K |
| H10 | 0 | VCCADC_0 | H10 | 0 | VCCADC_0 | - |
| J10 | 0 | VP_0 | J10 | 0 | VP_0 | - |
| K10 | 0 | VREFP_0 | K10 | 0 | VREFP_0 | - |
| P10 | 0 | DONE_0 | P10 | 0 | DONE_0 | PH1P50需要上拉，推荐使用4.7K，XC7A100推荐使用330R |
| P11 | 0 | M2_0 | P11 | 0 | M2_0 | - |
| P12 | 0 | M0_0 | P12 | 0 | M0_0 | - |
| P13 | 0 | M1_0 | P13 | 0 | M1_0 | - |


## IO BANK 11, 14

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| T9 | 11 | IO_L24P_11,D17,T3 | T9 | 14 | IO_L24P_T3_A01_D17_14 | - |
| K17 | 11 | IO_L1P_11,D0,MOSI,T0 | K17 | 14 | IO_L1P_T0_D00_MOSI_14 | - |
| K18 | 11 | IO_L1N_11,D1,MISO,DIN,T0 | K18 | 14 | IO_L1N_T0_D01_DIN_14 | - |
| L13 | 11 | IO_L6P_11,SPICSN,BUSY,T0 | L13 | 14 | IO_L6P_T0_FCS_B_14 | - |
| L14 | 11 | IO_L2P_11,D2,WPN,T0 | L14 | 14 | IO_L2P_T0_D02_14 | - |
| L15 | 11 | IO_L3P_11,HSWAPEN,T0_DQS_P | L15 | 14 | IO_L3P_T0_DQS_PUDC_B_14 | PH1P50为1是高阻态，为0是弱上拉，XC7A100功能相同 |
| L16 | 11 | IO_L3N_11,USRCLK,T0_DQS_N | L16 | 14 | IO_L3N_T0_DQS_EMCCLK_14 | PH1P50和XC7A100当作外部主动配置的时钟源 |
| L17 | 11 | VCCIO_11 | L17 | 14 | VCCO_14 | PH1P50器件VCCIO范围要求和XC7A100一致（1.14V-3.465V） |
| L18 | 11 | IO_L4P_11,D4,T0 | L18 | 14 | IO_L4P_T0_D04_14 | - |
| M13 | 11 | IO_L6N_11,D8,T0_VREF,T0 | M13 | 14 | IO_L6N_T0_D08_VREF_14 | - |
| M14 | 11 | IO_L2N_11,D3,HOLDN,T0 | M14 | 14 | IO_L2N_T0_D03_14 | - |
| M16 | 11 | IO_L10P_11,D14,T1 | M16 | 14 | IO_L10P_T1_D14_14 | - |
| M17 | 11 | IO_L10N_11,D15,T1 | M17 | 14 | IO_L10N_T1_D15_14 | - |
| M18 | 11 | IO_L4N_11,D5,T0 | M18 | 14 | IO_L4N_T0_D05_14 | - |
| N13 | 11 | VCCIO_11 | N13 | 14 | VCCO_14 | - |
| N14 | 11 | IO_L8P_11,D11,T1 | N14 | 14 | IO_L8P_T1_D11_14 | - |
| N15 | 11 | IO_L11P_11,GCLKIOT3,T1 | N15 | 14 | IO_L11P_T1_SRCC_14 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| N16 | 11 | IO_L11N_11,GCLKIOC3,T1 | N16 | 14 | IO_L11N_T1_SRCC_14 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| N17 | 11 | IO_L9P_11,T1_DQS_P | N17 | 14 | IO_L9P_T1_DQS_14 | - |
| P14 | 11 | IO_L8N_11,D12,T1 | P14 | 14 | IO_L8N_T1_D12_14 | - |
| P15 | 11 | IO_L13P_11,GCLKIOT1,T2 | P15 | 14 | IO_L13P_T2_MRCC_14 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| P16 | 11 | VCCIO_11 | P16 | 14 | VCCO_14 | - |
| P17 | 11 | IO_L11P_11,GCLKIOT2,T1 | P17 | 14 | IO_L12P_T1_MRCC_14 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| P18 | 11 | IO_L9N_11,D13,T1_DQS_N | P18 | 14 | IO_L9N_T1_DQS_D13_14 | - |
| R10 | 11 | IO_L25_11 | R10 | 14 | IO_25_14 | - |
| R11 | 11 | IO_L0_11 | R11 | 14 | IO_0_14 | - |
| R12 | 11 | IO_L5P_11,D6,T0 | R12 | 14 | IO_L5P_T0_D06_14 | - |
| R13 | 11 | IO_L5N_11,D7,T0 | R13 | 14 | IO_L5N_T0_D07_14 | - |
| R15 | 11 | IO_L13N_11,GCLKIOC1,T2 | R15 | 14 | IO_L13N_T2_MRCC_14 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| R16 | 11 | IO_L15P_11,RDWRN,T2_DQS_P | R16 | 14 | IO_L15P_T2_DQS_RDWR_B_14 | - |
| R17 | 11 | IO_L11N_11,GCLKIOC2,T1 | R17 | 14 | IO_L12N_T1_MRCC_14 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| R18 | 11 | IO_L7P_11,D9,T1 | R18 | 14 | IO_L7P_T1_D09_14 | - |
| T10 | 11 | IO_L24N_11,D16,T3 | T10 | 14 | IO_L24N_T3_A00_D16_14 | - |
| T11 | 11 | IO_L19P_11,D26,T3 | T11 | 14 | IO_L19P_T3_A10_D26_14 | - |
| T12 | 11 | VCCIO_11 | T12 | 14 | VCCO_14 | - |
| T13 | 11 | IO_L23P_11,D19,T3 | T13 | 14 | IO_L23P_T3_A03_D19_14 | - |
| T14 | 11 | IO_L14P_11,GCLKIOT0,T2 | T14 | 14 | IO_L14P_T2_SRCC_14 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| T15 | 11 | IO_L14N_11,GCLKIOC0,T2 | T15 | 14 | IO_L14N_T2_SRCC_14 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| T16 | 11 | IO_L15N_11,CSON,DOUT,T2_DQS_N | T16 | 14 | IO_L15N_T2_DQS_DOUT_CSO_B_14 | - |
| T18 | 11 | IO_L7N_11,D10,T1 | T18 | 14 | IO_L7N_T1_D10_14 | - |
| U11 | 11 | IO_L19N_11,D25,T3_VREF,T3 | U11 | 14 | IO_L19N_T3_A09_D25_VREF_14 | - |
| U12 | 11 | IO_L20P_11,D24,T3 | U12 | 14 | IO_L20P_T3_A08_D24_14 | - |
| U13 | 11 | IO_L23N_11,D18,T3 | U13 | 14 | IO_L23N_T3_A02_D18_14 | - |
| U14 | 11 | IO_L22P_11,D21,T3 | U14 | 14 | IO_L22P_T3_A05_D21_14 | - |
| U15 | 11 | VCCIO_11 | U15 | 14 | VCCO_14 | - |
| U16 | 11 | IO_L18P_11,D28,T2 | U16 | 14 | IO_L18P_T2_A12_D28_14 | - |
| U17 | 11 | IO_L17P_11,D30,T2 | U17 | 14 | IO_L17P_T2_A14_D30_14 | - |
| U18 | 11 | IO_L17N_11,D29,T2 | U18 | 14 | IO_L17N_T2_A13_D29_14 | - |
| V10 | 11 | IO_L21P_11,T3_DQS_P | V10 | 14 | IO_L21P_T3_DQS_14 | - |
| V11 | 11 | IO_L21N_11,D22,T3_DQS_N | V11 | 14 | IO_L21N_T3_DQS_A06_D22_14 | XC7A100支持BPI,A00-A28是地址输出；PH1P50不支持 |
| V12 | 11 | IO_L20N_11,D23,T3 | V12 | 14 | IO_L20N_T3_A07_D23_14 | - |
| V14 | 11 | IO_L22N_11,D20,T3 | V14 | 14 | IO_L22N_T3_A04_D20_14 | - |
| V15 | 11 | IO_L16P_11,CSN,T2 | V15 | 14 | IO_L16P_T2_CSI_B_14 | - |
| V16 | 11 | IO_L16N_11,D31,T2 | V16 | 14 | IO_L16N_T2_A15_D31_14 | XC7A100支持BPI,A00-A28是地址输出；PH1P50不支持 |
| V17 | 11 | IO_L18N_11,D27,T2 | V17 | 14 | IO_L18N_T2_A11_D27_14 | - |
| V18 | 11 | VCCIO_11 | V18 | 14 | VCCO_14 | - |


## IO BANK 12, 15

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A11 | 12 | IO_L4N_12,T0 | A11 | 15 | IO_L4N_T0_15 | - |
| A13 | 12 | IO_L9P_12,ADC2P,T1_DQS_P | A13 | 15 | IO_L9P_T1_DQS_AD3P_15 | - |
| A14 | 12 | IO_L9N_12,ADC2N,T1_DQS_N | A14 | 15 | IO_L9N_T1_DQS_AD3N_15 | - |
| A15 | 12 | IO_L8P_12,ADC3P,T1 | A15 | 15 | IO_L8P_T1_AD10P_15 | - |
| A16 | 12 | IO_L8N_12,ADC3N,T1 | A16 | 15 | IO_L8N_T1_AD10N_15 | - |
| A17 | 12 | VCCIO_12 | A17 | 15 | VCCO_15 | - |
| A18 | 12 | IO_L10N_12,ADC1N,T1 | A18 | 15 | IO_L10N_T1_AD11N_15 | - |
| B11 | 12 | IO_L4P_12,T0 | B11 | 15 | IO_L4P_T0_15 | - |
| B12 | 12 | IO_L3N_12,ADC6N,T0_DQS_N | B12 | 15 | IO_L3N_T0_DQS_AD1N_15 | - |
| B13 | 12 | IO_L2P_12,ADC7P,T0 | B13 | 15 | IO_L2P_T0_AD8P_15 | - |
| B14 | 12 | IO_L2N_12,ADC7N,T0 | B14 | 15 | IO_L2N_T0_AD8N_15 | - |
| B16 | 12 | IO_L7P_12,ADC4P,T1 | B16 | 15 | IO_L7P_T1_AD2P_15 | PH1P50和XC7A100可复用为ADC引脚 |
| B17 | 12 | IO_L7N_12,ADC4N,T1 | B17 | 15 | IO_L7N_T1_AD2N_15 | - |
| B18 | 12 | IO_L10P_12,ADC1P,T1 | B18 | 15 | IO_L10P_T1_AD11P_15 | - |
| C12 | 12 | IO_L3P_12,ADC6P,T0_DQS_P | C12 | 15 | IO_L3P_T0_DQS_AD1P_15 | - |
| C13 | 12 | VCCIO_12 | C13 | 15 | VCCO_15 | - |
| C14 | 12 | IO_L1N_12,ADC8N,T0 | C14 | 15 | IO_L1N_T0_AD0N_15 | - |
| C15 | 12 | IO_L12N_12,GCLKIOC2,T1 | C15 | 15 | IO_L12N_T1_MRCC_15 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| C16 | 12 | IO_L20P_12,T3 | C16 | 15 | IO_L20P_T3_A20_15 | - |
| C17 | 12 | IO_L20N_12,T3 | C17 | 15 | IO_L20N_T3_A19_15 | - |
| D12 | 12 | IO_L6P_12,T0 | D12 | 15 | IO_L6P_T0_15 | - |
| D13 | 12 | IO_L6N_12,T0_VREF,T0 | D13 | 15 | IO_L6N_T0_VREF_15 | - |
| D14 | 12 | IO_L1P_12,ADC8P,T0 | D14 | 15 | IO_L1P_T0_AD0P_15 | PH1P50和XC7A100可复用为ADC引脚 |
| D15 | 12 | IO_L12P_12,GCLKIOT2,T1 | D15 | 15 | IO_L12P_T1_MRCC_15 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| D16 | 12 | VCCIO_12 | D16 | 15 | VCCO_15 | PH1P50器件VCCIO范围要求和XC7A100一致（1.14V-3.465V） |
| D17 | 12 | IO_L16N_12,T2 | D17 | 15 | IO_L16N_T2_A27_15 | - |
| D18 | 12 | IO_L21N_12,T3_DQS_N | D18 | 15 | IO_L21N_T3_DQS_A18_15 | - |
| E15 | 12 | IO_L11P_12,GCLKIOT3,T1 | E15 | 15 | IO_L11P_T1_SRCC_15 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| E16 | 12 | IO_L11N_12,GCLKIOC3,T1 | E16 | 15 | IO_L11N_T1_SRCC_15 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| E17 | 12 | IO_L16P_12,T2 | E17 | 15 | IO_L16P_T2_A28_15 | XC7A100支持BPI,A00-A28是地址输出；PH1P50不支持 |
| E18 | 12 | IO_L21P_12,T3_DQS_P | E18 | 15 | IO_L21P_T3_DQS_15 | - |
| F13 | 12 | IO_L5P_12,ADC5P,T0 | F13 | 15 | IO_L5P_T0_AD9P_15 | PH1P50和XC7A100可复用为ADC引脚 |
| F14 | 12 | IO_L5N_12,ADC5N,T0 | F14 | 15 | IO_L5N_T0_AD9N_15 | - |
| F15 | 12 | IO_L14P_12,GCLKIOT0,T2 | F15 | 15 | IO_L14P_T2_SRCC_15 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| F16 | 12 | IO_L14N_12,GCLKIOC0,T2 | F16 | 15 | IO_L14N_T2_SRCC_15 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| F18 | 12 | IO_L22N_12,T3 | F18 | 15 | IO_L22N_T3_A16_15 | - |
| G13 | 12 | IO_L0_12 | G13 | 15 | IO_0_15 | - |
| G14 | 12 | IO_L15N_12,T2_DQS_N | G14 | 15 | IO_L15N_T2_DQS_ADV_B_15 | - |
| G15 | 12 | VCCIO_12 | G15 | 15 | VCCO_15 | - |
| G16 | 12 | IO_L12N_12,GCLKIOC1,T2 | G16 | 15 | IO_L13N_T2_MRCC_15 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| G17 | 12 | IO_L18N_12,T2 | G17 | 15 | IO_L18N_T2_A23_15 | - |
| G18 | 12 | IO_L22P_12,T3 | G18 | 15 | IO_L22P_T3_A17_15 | - |
| H14 | 12 | IO_L15P_12,T2_DQS_P | H14 | 15 | IO_L15P_T2_DQS_15 | - |
| H15 | 12 | IO_L19N_12,T3_VREF,T3 | H15 | 15 | IO_L19N_T3_A21_VREF_15 | - |
| H16 | 12 | IO_L12P_12,GCLKIOT1,T2 | H16 | 15 | IO_L13P_T2_MRCC_15 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| H17 | 12 | IO_L18P_12,T2 | H17 | 15 | IO_L18P_T2_A24_15 | - |
| H18 | 12 | VCCIO_12 | H18 | 15 | VCCO_15 | - |
| J13 | 12 | IO_L17N_12,T2 | J13 | 15 | IO_L17N_T2_A25_15 | - |
| J14 | 12 | IO_L19P_12,T3 | J14 | 15 | IO_L19P_T3_A22_15 | - |
| J15 | 12 | IO_L24N_12,T3 | J15 | 15 | IO_L24N_T3_RS0_15 | - |
| J17 | 12 | IO_L23P_12,T3 | J17 | 15 | IO_L23P_T3_FOE_B_15 | XC7A100T是flash output enable；PH1P50不支持 |
| J18 | 12 | IO_L23N_12,T3 | J18 | 15 | IO_L23N_T3_FWE_B_15 | XC7A100T是flash write enable；PH1P50不支持 |
| K13 | 12 | IO_L17P_12,T2 | K13 | 15 | IO_L17P_T2_A26_15 | - |
| K14 | 12 | VCCIO_12 | K14 | 15 | VCCO_15 | - |
| K15 | 12 | IO_L24P_12,T3 | K15 | 15 | IO_L24P_T3_RS1_15 | XC7A100T是Revision select outputs；PH1P50不支持 |
| K16 | 12 | IO_L25_12 | K16 | 15 | IO_25_15 | - |


## IO BANK 13, 16

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A8 | 13 | IO_L2N_13,GCLKIOC2,T1 | A8 | 16 | IO_L12N_T1_MRCC_16 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| A9 | 13 | IO_L4N_13,GCLKIOC0,T2 | A9 | 16 | IO_L14N_T2_SRCC_16 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| B8 | 13 | IO_L2P_13,GCLKIOT2,T1 | B8 | 16 | IO_L12P_T1_MRCC_16 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| B9 | 13 | IO_L1N_13,GCLKIOC3,T1 | B9 | 16 | IO_L11N_T1_SRCC_16 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| C9 | 13 | IO_L1P_13,GCLKIOT3,T1 | C9 | 16 | IO_L11P_T1_SRCC_16 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| D9 | 13 | IO_L0_13,T0_VREF,T0 | D9 | 16 | IO_L6N_T0_VREF_16 | - |
| A10 | 13 | IO_L4P_13,GCLKIOT0,T2 | A10 | 16 | IO_L14P_T2_SRCC_16 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| B10 | 13 | VCCIO_13 | B10 | 16 | VCCO_16 | PH1P50器件VCCIO范围要求和XC7A100一致（1.14V-3.465V） |
| C10 | 13 | IO_L3N_13,GCLKIOC1,T2 | C10 | 16 | IO_L13N_T2_MRCC_16 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| C11 | 13 | IO_L3P_13,GCLKIOT1,T2 | C11 | 16 | IO_L13P_T2_MRCC_16 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| D10 | 13 | IO_L5_13,T3_VREF,T3 | D10 | 16 | IO_L19N_T3_VREF_16 | - |


## IO BANK 31, 34, 35

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| K3 | 31 | IO_R2P_31,T0 | K3 | 34 | IO_L2P_T0_34 | - |
| K4 | 31 | VCCIO_31 | K4 | 34 | VCCO_34 | PH1P50器件VCCIO范围要求和XC7A100一致（1.14V-3.465V） |
| K5 | 31 | IO_R5P_31,T0 | K5 | 34 | IO_L5P_T0_34 | - |
| K6 | 31 | IO_R0_31 | K6 | 34 | IO_0_34 | - |
| L1 | 31 | IO_R1P_31,T0 | L1 | 34 | IO_L1P_T0_34 | - |
| L3 | 31 | IO_R2N_31,T0 | L3 | 34 | IO_L2N_T0_34 | - |
| L4 | 31 | IO_R5N_31,T0 | L4 | 34 | IO_L5N_T0_34 | - |
| L5 | 31 | IO_R6N_31,T0_VREF,T0 | L5 | 34 | IO_L6N_T0_VREF_34 | - |
| L6 | 31 | IO_R6P_31,T0 | L6 | 34 | IO_L6P_T0_34 | - |
| M1 | 31 | IO_R1N_31,T0 | M1 | 34 | IO_L1N_T0_34 | - |
| M2 | 31 | IO_R4N_31,T0 | M2 | 34 | IO_L4N_T0_34 | - |
| M3 | 31 | IO_R4P_31,T0 | M3 | 34 | IO_L4P_T0_34 | - |
| M4 | 31 | IO_R16P_31,T2 | M4 | 34 | IO_L16P_T2_34 | - |
| M6 | 31 | IO_R18P_31,T2 | M6 | 34 | IO_L18P_T2_34 | - |
| N1 | 31 | IO_R3N_31,T0_DQS_N | N1 | 34 | IO_L3N_T0_DQS_34 | - |
| N2 | 31 | IO_R3P_31,T0_DQS_P | N2 | 34 | IO_L3P_T0_DQS_34 | - |
| N3 | 31 | VCCIO_31 | N3 | 34 | VCCO_34 | - |
| N4 | 31 | IO_R16N_31,T2 | N4 | 34 | IO_L16N_T2_34 | - |
| N5 | 31 | IO_R13P_31,GCLKIOT1,T2 | N5 | 34 | IO_L13P_T2_MRCC_34 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| N6 | 31 | IO_R18N_31,T2 | N6 | 34 | IO_L18N_T2_34 | - |
| P2 | 31 | IO_R15P_31,T2_DQS_P | P2 | 34 | IO_L15P_T2_DQS_34 | - |
| P3 | 31 | IO_R14N_31,GCLKIOC0,T2 | P3 | 34 | IO_L14N_T2_SRCC_34 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| P4 | 31 | IO_R14P_31,GCLKIOT0,T2 | P4 | 34 | IO_L14P_T2_SRCC_34 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| P5 | 31 | IO_R13N_31,GCLKIOC1,T2 | P5 | 34 | IO_L13N_T2_MRCC_34 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| P6 | 31 | VCCIO_31 | P6 | 34 | VCCO_34 | - |
| R1 | 31 | IO_R17P_31,T2 | R1 | 34 | IO_L17P_T2_34 | - |
| R2 | 31 | IO_R15N_31,T2_DQS_N | R2 | 34 | IO_L15N_T2_DQS_34 | - |
| R3 | 31 | IO_R11P_31,GCLKIOT3,T1 | R3 | 34 | IO_L11P_T1_SRCC_34 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| R5 | 31 | IO_R19N_31,T3_VREF,T3 | R5 | 34 | IO_L19N_T3_VREF_34 | - |
| R6 | 31 | IO_R19P_31,T3 | R6 | 34 | IO_L19P_T3_34 | - |
| R7 | 31 | IO_R23P_31,T3 | R7 | 35 | IO_L23P_T3_34 | - |
| R8 | 31 | IO_R24P_31,T3 | R8 | 35 | IO_L24P_T3_34 | - |
| T1 | 31 | IO_R17N_31,T2 | T1 | 34 | IO_L17N_T2_34 | - |
| T2 | 31 | VCCIO_31 | T2 | 34 | VCCO_34 | - |
| T3 | 31 | IO_R11N_31,GCLKIOC3,T1 | T3 | 34 | IO_L11N_T1_SRCC_34 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| T4 | 31 | IO_R12N_31,GCLKIOC2,T1 | T4 | 34 | IO_L12N_T1_MRCC_34 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| T5 | 31 | IO_R12P_31,GCLKIOT2,T1 | T5 | 34 | IO_L12P_T1_MRCC_34 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| T6 | 31 | IO_R23N_31,T3 | T6 | 35 | IO_L23N_T3_34 | - |
| T8 | 31 | IO_R24N_31,T3 | T8 | 35 | IO_L24N_T3_34 | - |
| U1 | 31 | IO_R7P_31,T1 | U1 | 34 | IO_L7P_T1_34 | - |
| U2 | 31 | IO_R9P_31,T1_DQS_P | U2 | 34 | IO_L9P_T1_DQS_34 | - |
| U3 | 31 | IO_R8N_31,T1 | U3 | 34 | IO_L8N_T1_34 | - |
| U4 | 31 | IO_R8P_31,T1 | U4 | 34 | IO_L8P_T1_34 | - |
| U5 | 31 | VCCIO_31 | U5 | 34 | VCCO_34 | - |
| U6 | 31 | IO_R22N_31,T3 | U6 | 35 | IO_L22N_T3_34 | - |
| U7 | 31 | IO_R22P_31,T3 | U7 | 34 | IO_L22P_T3_34 | - |
| U8 | 31 | IO_R25_31 | U8 | 35 | IO_25_34 | - |
| U9 | 31 | IO_R21P_31,T3_DQS_P | U9 | 34 | IO_L21P_T3_DQS_34 | - |
| V1 | 31 | IO_R7N_31,T1 | V1 | 34 | IO_L7N_T1_34 | - |
| V2 | 31 | IO_R9N_31,T1_DQS_N | V2 | 34 | IO_L9N_T1_DQS_34 | - |
| V4 | 31 | IO_R10N_31,T1 | V4 | 34 | IO_L10N_T1_34 | - |
| V5 | 31 | IO_R10P_31,T1 | V5 | 34 | IO_L10P_T1_34 | - |
| V6 | 31 | IO_R20N_31,T3 | V6 | 34 | IO_L20N_T3_34 | - |
| V7 | 31 | IO_R20P_31,T3 | V7 | 34 | IO_L20P_T3_34 | - |
| V8 | 31 | VCCIO_31 | V8 | 34 | VCCO_34 | - |
| V9 | 31 | IO_R21N_31,T3_DQS_N | V9 | 34 | IO_L21N_T3_DQS_34 | - |


## IO BANK 32, 35

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | 32 | IO_R9N_32,T1_DQS_N | A1 | 35 | IO_L9N_T1_DQS_AD7N_35 | - |
| A3 | 32 | IO_R8N_32,T1 | A3 | 35 | IO_L8N_T1_AD14N_35 | - |
| A4 | 32 | IO_R8P_32,T1 | A4 | 35 | IO_L8P_T1_AD14P_35 | - |
| A5 | 32 | IO_R3N_32,T0_DQS_N | A5 | 35 | IO_L3N_T0_DQS_AD5N_35 | - |
| A6 | 32 | IO_R3P_32,T0_DQS_P | A6 | 35 | IO_L3P_T0_DQS_AD5P_35 | - |
| A7 | 32 | VCCIO_32 | A7 | 35 | VCCO_35 | PH1P50器件VCCIO范围要求和XC7A100一致（1.14V-3.465V） |
| B1 | 32 | IO_R9P_32,T1_DQS_P | B1 | 35 | IO_L9P_T1_DQS_AD7P_35 | - |
| B2 | 32 | IO_R10N_32,T1 | B2 | 35 | IO_L10N_T1_AD15N_35 | - |
| B3 | 32 | IO_R10P_32,T1 | B3 | 35 | IO_L10P_T1_AD15P_35 | - |
| B4 | 32 | IO_R7N_32,T1 | B4 | 35 | IO_L7N_T1_AD6N_35 | - |
| B6 | 32 | IO_R2N_32,T0 | B6 | 35 | IO_L2N_T0_AD12N_35 | - |
| B7 | 32 | IO_R2P_32,T0 | B7 | 35 | IO_L2P_T0_AD12P_35 | - |
| C1 | 32 | IO_R16N_32,T2 | C1 | 35 | IO_L16N_T2_35 | - |
| C2 | 32 | IO_R16P_32,T2 | C2 | 35 | IO_L16P_T2_35 | - |
| C3 | 32 | VCCIO_32 | C3 | 35 | VCCO_35 | - |
| C4 | 32 | IO_R7P_32,T1 | C4 | 35 | IO_L7P_T1_AD6P_35 | XC7A100可复用为ADC引脚，PH1P50不可复用为ADC引脚 |
| C5 | 32 | IO_R1N_32,T0 | C5 | 35 | IO_L1N_T0_AD4N_35 | - |
| C6 | 32 | IO_R1P_32,T0 | C6 | 35 | IO_L1P_T0_AD4P_35 | XC7A100可复用为ADC引脚，PH1P50不可复用为ADC引脚 |
| C7 | 32 | IO_R4N_32,T0 | C7 | 35 | IO_L4N_T0_35 | - |
| D2 | 32 | IO_R14N_32,GCLKIOC0,T2 | D2 | 35 | IO_L14N_T2_SRCC_35 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| D3 | 32 | IO_R12N_32,GCLKIOC2,T1 | D3 | 35 | IO_L12N_T1_MRCC_35 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| D4 | 32 | IO_R11N_32,GCLKIOC3,T1 | D4 | 35 | IO_L11N_T1_SRCC_35 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| D5 | 32 | IO_R11P_32,GCLKIOT3,T1 | D5 | 35 | IO_L11P_T1_SRCC_35 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| D6 | 32 | VCCIO_32 | D6 | 35 | VCCO_35 | - |
| D7 | 32 | IO_R6N_32,T0_VREF,T0 | D7 | 35 | IO_L6N_T0_VREF_35 | - |
| D8 | 32 | IO_R4P_32,T0 | D8 | 35 | IO_L4P_T0_35 | - |
| E1 | 32 | IO_R18N_32,T2 | E1 | 35 | IO_L18N_T2_35 | - |
| E2 | 32 | IO_R14P_32,GCLKIOT0,T2 | E2 | 35 | IO_L14P_T2_SRCC_35 | PH1P50是全局时钟输入引脚，XC7A100是单区域时钟输入引脚。单端和差分均可从P端口输入 |
| E3 | 32 | IO_R12P_32,GCLKIOT2,T1 | E3 | 35 | IO_L12P_T1_MRCC_35 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| E5 | 32 | IO_R5N_32,T0 | E5 | 35 | IO_L5N_T0_AD13N_35 | - |
| E6 | 32 | IO_R5P_32,T0 | E6 | 35 | IO_L5P_T0_AD13P_35 | XC7A100可复用为ADC引脚，PH1P50不可复用为ADC引脚 |
| E7 | 32 | IO_R6P_32,T0 | E7 | 35 | IO_L6P_T0_35 | - |
| F1 | 32 | IO_R18P_32,T2 | F1 | 35 | IO_L18P_T2_35 | - |
| F2 | 32 | VCCIO_32 | F2 | 35 | VCCO_35 | - |
| F3 | 32 | IO_R13N_32,GCLKIOC1,T2 | F3 | 35 | IO_L13N_T2_MRCC_35 | PH1P50和XC7A100的差分时钟N端输入，不可输入单端时钟 |
| F4 | 32 | IO_R13P_32,GCLKIOT1,T2 | F4 | 35 | IO_L13P_T2_MRCC_35 | PH1P50是全局时钟输入引脚，XC7A100是多区域时钟输入引脚。单端和差分均可从P端口输入 |
| F5 | 32 | IO_R0_32 | F5 | 35 | IO_0_35 | - |
| F6 | 32 | IO_R19N_32,T3_VREF,T3 | F6 | 35 | IO_L19N_T3_VREF_35 | - |
| G1 | 32 | IO_R17N_32,T2 | G1 | 35 | IO_L17N_T2_35 | - |
| G2 | 32 | IO_R15N_32,T2_DQS_N | G2 | 35 | IO_L15N_T2_DQS_35 | - |
| G3 | 32 | IO_R20N_32,T3 | G3 | 35 | IO_L20N_T3_35 | - |
| G4 | 32 | IO_R20P_32,T3 | G4 | 35 | IO_L20P_T3_35 | - |
| G5 | 32 | VCCIO_32 | G5 | 35 | VCCO_35 | - |
| G6 | 32 | IO_R19P_32,T3 | G6 | 35 | IO_L19P_T3_35 | - |
| H1 | 32 | IO_R17P_32,T2 | H1 | 35 | IO_L17P_T2_35 | - |
| H2 | 32 | IO_R15P_32,T2_DQS_P | H2 | 35 | IO_L15P_T2_DQS_35 | - |
| H4 | 32 | IO_R21N_32,T3_DQS_N | H4 | 35 | IO_L21N_T3_DQS_35 | - |
| H5 | 32 | IO_R24N_32,T3 | H5 | - | IO_L24N_T3_35 | - |
| H6 | 32 | IO_R24P_32,T3 | H6 | - | IO_L24P_T3_35 | - |
| J1 | 32 | VCCIO_32 | J1 | 35 | VCCO_35 | - |
| J2 | 32 | IO_R22N_32,T3 | J2 | - | IO_L22N_T3_35 | - |
| J3 | 32 | IO_R22P_32,T3 | J3 | 35 | IO_L22P_T3_35 | - |
| J4 | 32 | IO_R21P_32,T3_DQS_P | J4 | 35 | IO_L21P_T3_DQS_35 | - |
| J5 | 32 | IO_R25_32 | J5 | - | IO_25_35 | - |
| K1 | 32 | IO_R23N_32,T3 | K1 | - | IO_L23N_T3_35 | - |
| K2 | 32 | IO_R23P_32,T3 | K2 | - | IO_L23P_T3_35 | - |


## IO BANK Other

| PH1P50GEG324 | | | XC7A100TCSG324 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | - | GND | A2 | - | GND | - |
| B5 | - | GND | B5 | - | GND | - |
| C8 | - | GND | C8 | - | GND | - |
| D1 | - | GND | D1 | - | GND | - |
| E4 | - | GND | E4 | - | GND | - |
| E8 | - | NC | E8 | - | VCCBATT_0 | PH1P50为NC引脚，XC7A100为VCCBAT电压引脚 |
| F7 | - | GND | F7 | - | GND | - |
| F8 | - | VCCINT | F8 | - | VCCINT | - |
| F9 | - | GND | F9 | - | GND | - |
| G7 | - | VCCINT | G7 | - | VCCINT | - |
| G8 | - | GND | G8 | - | GND | - |
| G9 | - | VCCINT | G9 | - | VCCINT | - |
| H3 | - | GND | H3 | - | GND | - |
| H7 | - | GND | H7 | - | GND | - |
| H8 | - | VCCINT | H8 | - | VCCINT | - |
| J6 | - | GND | J6 | - | GND | - |
| J7 | - | VCCINT | J7 | - | VCCINT | - |
| J8 | - | GND | J8 | - | GND | - |
| K7 | - | GND | K7 | - | GND | - |
| K8 | - | VCCINT | K8 | - | VCCINT | - |
| L2 | - | GND | L2 | - | GND | - |
| L7 | - | VCCINT | L7 | - | VCCINT | PH1P50推荐范围为0.93-0.98V（典型值为0.95V)
XC7A100推荐范围为0.95-1.05V（典型值为1V) |
| L8 | - | GND | L8 | - | GND | - |
| L9 | - | NC | L9 | - | DXN_0 | PH1P50为NC引脚，XC7A100为DXN引脚 |
| M5 | - | GND | M5 | - | GND | - |
| M7 | - | GND | M7 | - | GND | - |
| M8 | - | VCCINT | M8 | - | VCCINT | - |
| M9 | - | GND | M9 | - | GND | - |
| N7 | - | VCCINT | N7 | - | VCCINT | - |
| N8 | - | GND | N8 | - | GND | - |
| N9 | - | VCCINT | N9 | - | VCCINT | - |
| P1 | - | GND | P1 | - | GND | - |
| P8 | - | NC | P8 | - | CFGBVS_0 | PH1P50为NC引脚，XC7A100用来控制多个CONFIG IOBANK的电压配置 |
| R4 | - | GND | R4 | - | GND | - |
| T7 | - | GND | T7 | - | GND | - |
| V3 | - | GND | V3 | - | GND | - |
| A12 | - | GND | A12 | - | GND | - |
| B15 | - | GND | B15 | - | GND | - |
| C18 | - | GND | C18 | - | GND | - |
| D11 | - | GND | D11 | - | GND | - |
| E14 | - | GND | E14 | - | GND | - |
| F10 | - | NC | F10 | - | VCCBRAM | PH1P50为NC引脚，XC7A100为VCCBRAM电压引脚 |
| F11 | - | GND | F11 | - | GND | - |
| F12 | - | VCCAUX | F12 | - | VCCAUX | PH1P50和XC7A100推荐范围为1.71-1.89V（典型值为1.8V） |
| F17 | - | GND | F17 | - | GND | - |
| G10 | - | GND | G10 | - | GND | - |
| G11 | - | NC | G11 | - | VCCBRAM | - |
| G12 | - | GND | G12 | - | GND | - |
| H11 | - | GND | H11 | - | GND | - |
| H12 | - | VCCAUX | H12 | - | VCCAUX | - |
| H13 | - | GND | H13 | - | GND | - |
| J11 | - | VCCINT | J11 | - | VCCINT | - |
| J12 | - | GND | J12 | - | GND | - |
| J16 | - | GND | J16 | - | GND | - |
| K11 | - | GND | K11 | - | GND | - |
| K12 | - | VCCAUX | K12 | - | VCCAUX | - |
| L10 | - | NC | L10 | - | DXP_0 | PH1P50为NC引脚，XC7A100为DXP引脚 |
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
| PH1P50GEG324 | - | - | XC7A100TCSG324 | - | - | - |
