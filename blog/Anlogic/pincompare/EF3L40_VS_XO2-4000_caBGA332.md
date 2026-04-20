---
title: "EF3L40 VS XO2 4000 caBGA332 Pinout Table"
subtitle: "2026.04.09"
embed-resources: true
toc: true
toc-depth: 6
toc-location: left
---



# EF3L40&XO2-4000


**芯片对比**: EF3L40CG332B VS LCMXO2-4000-caBGA332


## IO BANK 0

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A2 | 0 | IO_LE2P_0,GPLL0_OUTP | A2 | - | NC | EF3为锁相环专用引脚,XO2为空脚 |
| A3 | 0 | IO_LE4P_0 | A3 | 0 | PT9C | - |
| A4 | 0 | IO_L3P_0 | A4 | 0 | PT10A | - |
| A5 | 0 | IO_L7N_0 | A5 | 0 | PT11B | - |
| A6 | 0 | IO_LE8N_0 | A6 | 0 | PT12D | - |
| A7 | 0 | IO_L10P_0 | A7 | 0 | PT14A | - |
| A8 | 0 | IO_LE15P_0,TCK | A8 | 0 | PT15C | - |
| A9 | 0 | IO_L17N_0,GCLKIOL_1_0 | A9 | 0 | PT18B | - |
| B2 | 0 | IO_LE2N_0,GPLL0_OUTN | B2 | 0 | PT10D | EF3为锁相环专用引脚 |
| B3 | 0 | IO_LE4N_0 | B3 | 0 | PT9D | - |
| B4 | 0 | IO_L1N_0 | B4 | 0 | PT9B | - |
| B5 | 0 | IO_L7P_0 | B5 | 0 | PT11A | - |
| B6 | 0 | IO_LE8P_0 | B6 | 0 | PT12C | - |
| B7 | 0 | IO_LE11N_0,TDI | B7 | 0 | PT13D | - |
| B8 | 0 | IO_L10N_0 | B8 | 0 | PT14B | - |
| B9 | 0 | IO_L17P_0,GCLKIOL_0_0 | B9 | 0 | PT18A | - |
| C4 | 0 | IO_L1P_0 | C4 | 0 | PT9A | - |
| C5 | 0 | IO_L3N_0 | C5 | 0 | PT10B | - |
| C6 | 0 | IO_L9P_0 | C6 | 0 | PT13A | - |
| C7 | 0 | IO_LE11P_0,TDO | C7 | 0 | PT13C | - |
| C8 | 0 | IO_LE13N_0 | C8 | 0 | PT14D | - |
| C9 | 0 | IO_LE15N_0,TMS | C9 | 0 | PT15D | - |
| D5 | 0 | IO_LE6N_0 | D5 | 0 | PT11D | - |
| D6 | 0 | IO_L5N_0 | D6 | 0 | PT12B | - |
| D7 | 0 | IO_L9N_0 | D7 | 0 | PT13B | - |
| D8 | 0 | IO_L12P_0 | D8 | 0 | PT15A | - |
| D9 | 0 | IO_LE14P_0 | D9 | 0 | PT18C | - |
| E6 | 0 | IO_LE6P_0 | E6 | 0 | PT11C | - |
| E7 | 0 | IO_L5P_0 | E7 | 0 | PT12A | - |
| E8 | 0 | IO_LE13P_0 | E8 | 0 | PT14C | - |
| E9 | 0 | IO_L12N_0 | E9 | 0 | PT15B | - |
| H9 | 0 | VCCIO0 | H9 | 0 | VCCIO0 | - |
| A11 | 0 | IO_L19P_0 | A11 | 0 | PT20A | - |
| A12 | 0 | IO_LE20N_0,GCLKIOL_3_0 | A12 | 0 | PT20D | EF3无I2C |
| A13 | 0 | IO_LE22P_0 | A13 | 0 | PT22C | - |
| A14 | 0 | IO_LE24N_0,PROGRAMN | A14 | 0 | PT23D | EF3必须上拉 |
| A15 | 0 | IO_L26P_0 | A15 | 0 | PT25A | - |
| A16 | 0 | IO_LE27N_0 | A16 | 0 | PT26D | - |
| A17 | 0 | IO_LE35P_0,INITN | A17 | 0 | PT28C | EF3必须上拉 |
| A18 | 0 | IO_L34P_0 | A18 | 0 | PT28A | - |
| A19 | 0 | IO_LE33P_0,GPLL1_OUTP | A19 | 0 | PT27C | EF3为锁相环专用引脚 |
| B10 | 0 | IO_L16N_0 | B10 | 0 | PT19B | - |
| B11 | 0 | IO_L19N_0 | B11 | 0 | PT20B | - |
| B12 | 0 | IO_L21P_0 | B12 | 0 | PT21A | - |
| B13 | 0 | IO_LE22N_0 | B13 | 0 | PT22D | - |
| B14 | 0 | IO_L25P_0 | B14 | 0 | PT24A | - |
| B15 | 0 | IO_L26N_0 | B15 | 0 | PT25B | - |
| B16 | 0 | IO_L31P_0 | B16 | 0 | PT27A | - |
| B17 | 0 | IO_LE35N_0,DONE | B17 | 0 | PT28D | - |
| B18 | 0 | IO_LE33N_0,GPLL1_OUTN | B18 | 0 | PT27D | EF3为锁相环专用引脚 |
| C10 | 0 | IO_L16P_0 | C10 | 0 | PT19A | - |
| C11 | 0 | IO_LE20P_0,GCLKIOL_2_0 | C11 | 0 | PT20C | EF3无I2C |
| C12 | 0 | IO_L21N_0 | C12 | 0 | PT21B | - |
| C13 | 0 | IO_LE24P_0,JTAGEN | C13 | 0 | PT23C | - |
| C14 | 0 | IO_L25N_0 | C14 | 0 | PT24B | - |
| C15 | 0 | IO_LE27P_0 | C15 | 0 | PT26C | - |
| C16 | 0 | IO_L31N_0 | C16 | 0 | PT27B | - |
| C17 | 0 | IO_L34N_0 | C17 | 0 | PT28B | - |
| D10 | 0 | IO_LE18P_0 | D10 | 0 | PT19C | - |
| D11 | 0 | IO_LE18N_0 | D11 | 0 | PT19D | - |
| D12 | 0 | IO_L23P_0 | D12 | 0 | PT22A | - |
| D13 | 0 | IO_L23N_0 | D13 | 0 | PT22B | - |
| D14 | 0 | IO_L28N_0 | D14 | 0 | PT23B | - |
| D15 | 0 | IO_LE29N_0 | D15 | 0 | PT24D | - |
| D16 | 0 | IO_L32N_0 | D16 | 0 | PT26B | - |
| D17 | 0 | IO_L32P_0 | D17 | 0 | PT26A | - |
| E10 | 0 | IO_LE14N_0 | E10 | 0 | PT18D | - |
| E12 | 0 | IO_L28P_0 | E12 | 0 | PT23A | - |
| E13 | 0 | IO_LE29P_0 | E13 | 0 | PT24C | - |
| E14 | 0 | IO_LE30P_0 | E14 | 0 | PT25C | - |
| E15 | 0 | IO_LE30N_0 | E15 | 0 | PT25D | - |
| H10 | 0 | VCCIO0 | H10 | 0 | VCCIO0 | - |
| H11 | 0 | VCCIO0 | H11 | 0 | VCCIO0 | - |
| H12 | 0 | VCCIO0 | H12 | 0 | VCCIO0 | - |


## IO BANK 1

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| B19 | 1 | IO_TE7N_1 | B19 | 1 | PR3D | - |
| B20 | 1 | IO_TE7P_1 | B20 | 1 | PR3C | - |
| C19 | 1 | IO_TE15N_1 | C19 | 1 | PR2D | - |
| C20 | 1 | IO_TE15P_1 | C20 | 1 | PR2C | - |
| D18 | 1 | IO_TE1P_1,GPLL1IP_FDB | D18 | 1 | PR2A | - |
| D19 | 1 | IO_TE1N_1,GPLL1IN_FDB | D19 | 1 | PR2B | - |
| D20 | 1 | IO_TE3P_1,GPLL1IP_REF | D20 | 1 | PR3A | - |
| E17 | 1 | IO_TE2P_1 | E17 | 1 | PR4C | - |
| E18 | 1 | IO_TE3N_1,GPLL1IN_REF | E18 | 1 | PR3B | - |
| E19 | 1 | IO_TE8P_1 | E19 | 1 | PR4A | - |
| E20 | 1 | IO_TE8N_1 | E20 | 1 | PR4B | - |
| F16 | 1 | IO_TE2N_1 | F16 | 1 | PR4D | - |
| F17 | 1 | IO_TE4P_1 | F17 | 1 | PR5C | - |
| F18 | 1 | IO_TE5P_1 | F18 | 1 | PR5A | - |
| F19 | 1 | IO_TE5N_1 | F19 | 1 | PR5B | - |
| F20 | 1 | IO_TE10P_1 | F20 | 1 | PR6A | - |
| G16 | 1 | IO_TE4N_1 | G16 | 1 | PR5D | - |
| G17 | 1 | IO_TE6P_1 | G17 | 1 | PR6C | - |
| G18 | 1 | IO_TE10N_1 | G18 | 1 | PR6B | - |
| G19 | 1 | IO_TE13P_1 | G19 | 1 | PR7A | - |
| G20 | 1 | IO_TE13N_1 | G20 | 1 | PR7B | - |
| H16 | 1 | IO_TE6N_1 | H16 | 1 | PR6D | - |
| H17 | 1 | IO_TE9P_1 | H17 | 1 | PR7C | - |
| H18 | 1 | IO_TE11P_1 | H18 | 1 | PR8A | - |
| H19 | 1 | IO_TE11N_1 | H19 | 1 | PR8B | - |
| H20 | 1 | IO_TE14P_1 | H20 | 1 | PR9A | - |
| J13 | 1 | VCCIO1 | J13 | 1 | VCCIO1 | - |
| J16 | 1 | IO_TE9N_1 | J16 | 1 | PR7D | - |
| J17 | 1 | IO_TE12P_1 | J17 | 1 | PR8C | - |
| J18 | 1 | IO_TE14N_1 | J18 | 1 | PR9B | - |
| J19 | 1 | IO_TE19P_1,GCLKIOT_2_1 | J19 | 1 | PR10A | - |
| J20 | 1 | IO_TE19N_1,GCLKIOT_3_1 | J20 | 1 | PR10B | - |
| K13 | 1 | VCCIO1 | K13 | 1 | VCCIO1 | - |
| K16 | 1 | IO_TE12N_1 | K16 | 1 | PR8D | - |
| K17 | 1 | IO_TE17P_1,GCLKIOT_0_1 | K17 | 1 | PR10C | - |
| K18 | 1 | IO_TE16P_1 | K18 | 1 | PR9C | - |
| K19 | 1 | IO_TE16N_1 | K19 | 1 | PR9D | - |
| L13 | 1 | VCCIO1 | L13 | 1 | VCCIO1 | - |
| L17 | 1 | IO_TE17N_1,GCLKIOT_1_1 | L17 | 1 | PR10D | - |
| L18 | 1 | IO_TE20P_1,CSON,DOUT | L18 | 1 | PR13A | EF3可作为级联配置数据输出脚 |
| L19 | 1 | IO_TE18N_1 | L19 | 1 | PR13D | - |
| L20 | 1 | IO_TE18P_1 | L20 | 1 | PR13C | - |
| M13 | 1 | VCCIO1 | M13 | 1 | VCCIO1 | - |
| M16 | 1 | IO_TE26P_1,SCLK | M16 | 1 | PR15C | - |
| M17 | 1 | IO_TE24P_1 | M17 | 1 | PR14C | - |
| M18 | 1 | IO_TE21N_1,D7 | M18 | 1 | PR14B | XO2不支持并行加载模式 |
| M19 | 1 | IO_TE21P_1,D6 | M19 | 1 | PR14A | XO2不支持并行加载模式 |
| M20 | 1 | IO_TE20N_1 | M20 | 1 | PR13B | - |
| N16 | 1 | IO_TE31P_1 | N16 | 1 | PR16C | - |
| N17 | 1 | IO_TE24N_1,USRCLK | N17 | 1 | PR14D | - |
| N18 | 1 | IO_TE22P_1 | N18 | 1 | NC | - |
| N19 | 1 | IO_TE23N_1,D5 | N19 | 1 | PR15B | XO2不支持并行加载模式 |
| N20 | 1 | IO_TE23P_1,D4 | N20 | 1 | PR15A | XO2不支持并行加载模式 |
| P16 | 1 | IO_TE28P_1,D0 | P16 | 1 | PR17C | XO2不支持并行加载模式 |
| P17 | 1 | IO_TE26N_1 | P17 | 1 | PR15D | - |
| P18 | 1 | IO_TE27N_1,D3 | P18 | 1 | PR16B | XO2不支持并行加载模式 |
| P19 | 1 | IO_TE27P_1,D2 | P19 | 1 | PR16A | XO2不支持并行加载模式 |
| P20 | 1 | IO_TE22N_1 | P20 | 1 | NC | - |
| R16 | 1 | IO_TE28N_1,D1 | R16 | 1 | PR17D | XO2不支持并行加载模式 |
| R17 | 1 | IO_TE31N_1 | R17 | 1 | PR16D | - |
| R18 | 1 | IO_TE33P_1 | R18 | 1 | PR18A | - |
| R19 | 1 | IO_TE29N_1 | R19 | 1 | PR17B | - |
| R20 | 1 | IO_TE29P_1 | R20 | 1 | PR17A | - |
| T17 | 1 | IO_TE30N_1 | T17 | 1 | PR18D | - |
| T18 | 1 | IO_TE35N_1 | T18 | 1 | PR19B | - |
| T19 | 1 | IO_TE35P_1 | T19 | 1 | PR19A | - |
| T20 | 1 | IO_TE33N_1 | T20 | 1 | PR18B | - |
| U17 | 1 | IO_TE30P_1 | U17 | 1 | PR18C | - |
| U18 | 1 | IO_TE34N_1 | U18 | 1 | PR20D | - |
| U19 | 1 | IO_TE32N_1 | U19 | 1 | PR20B | - |
| U20 | 1 | IO_TE32P_1 | U20 | 1 | PR20A | - |
| V19 | 1 | IO_TE25N_1 | V19 | 1 | PR19D | ELF3为配置时钟引脚 |
| V20 | 1 | IO_TE34P_1 | V20 | 1 | PR20C | - |
| W20 | 1 | IO_TE25P_1,CSN | W20 | 1 | PR19C | ELF3为配置片选引脚 |


## IO BANK 2

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| N9 | 2 | VCCIO2 | N9 | 2 | VCCIO2 | - |
| T6 | 2 | IO_R30P_2 | T6 | 2 | PB6A | EF3为真差分 |
| T7 | 2 | IO_R32N_2 | T7 | 2 | PB7D | EF3为真差分 |
| T8 | 2 | IO_RE35N_2 | T8 | 2 | PB9D | - |
| T9 | 2 | IO_RE25N_2 | T9 | 2 | PB10D | - |
| U4 | 2 | IO_R32P_2 | U4 | 2 | PB7C | EF3为真差分 |
| U5 | 2 | IO_R30N_2 | U5 | 2 | PB6B | EF3为真差分 |
| U6 | 2 | IO_RE35P_2 | U6 | 2 | PB9C | - |
| U7 | 2 | IO_RE25P_2 | U7 | 2 | PB10C | - |
| U8 | 2 | IO_R24P_2 | U8 | 2 | PB12A | EF3为真差分 |
| U9 | 2 | IO_R24N_2 | U9 | 2 | PB12B | EF3为真差分 |
| V4 | 2 | IO_RE33P_2 | V4 | 2 | PB3C | - |
| V5 | 2 | IO_RE29P_2 | V5 | 2 | PB4A | XO2SPI片选引脚，ELF3不支持外接FLASH的主动串行模式 |
| V6 | 2 | IO_RE27N_2 | V6 | 2 | PB6D | - |
| V7 | 2 | IO_R26P_2 | V7 | 2 | PB9A | EF3为真差分，XO2主动/从动串行时钟引脚，与EF3不兼容 |
| V8 | 2 | IO_RE23N_2 | V8 | 2 | PB10B | - |
| V9 | 2 | IO_RE18P_2,GCLKIOR_0_2 | V9 | 2 | PB13A | - |
| W3 | 2 | IO_R34P_2 | W3 | 2 | PB4C | EF3为真差分 |
| W4 | 2 | IO_RE31P_2 | W4 | 2 | PB3A | - |
| W5 | 2 | IO_RE29N_2 | W5 | 2 | PB4B | - |
| W6 | 2 | IO_R28P_2 | W6 | 2 | PB7A | EF3为真差分 |
| W7 | 2 | IO_R26N_2 | W7 | 2 | PB9B | EF3为真差分，XO2主串，从串模式SO，与EF3不兼容 |
| W8 | 2 | IO_RE22P_2 | W8 | 2 | PB12C | - |
| W9 | 2 | IO_RE18N_2,GCLKIOR_1_2 | W9 | 2 | PB13B | - |
| Y2 | 2 | IO_R34N_2 | Y2 | 2 | PB4D | EF3为真差分 |
| Y3 | 2 | IO_RE33N_2 | Y3 | 2 | PB3D | - |
| Y4 | 2 | IO_RE31N_2 | Y4 | 2 | PB3B | - |
| Y5 | 2 | IO_RE27P_2 | Y5 | 2 | PB6C | - |
| Y6 | 2 | IO_R28N_2 | Y6 | 2 | PB7B | EF3为真差分 |
| Y7 | 2 | IO_RE23P_2 | Y7 | 2 | PB10A | - |
| Y8 | 2 | IO_RE22N_2 | Y8 | 2 | PB12D | - |
| Y9 | 2 | IO_R21P_2 | Y9 | 2 | PB15A | EF3为真差分 |
| N10 | 2 | VCCIO2 | N10 | 2 | VCCIO2 | - |
| N11 | 2 | VCCIO2 | N11 | 2 | VCCIO2 | - |
| N12 | 2 | VCCIO2 | N12 | 2 | VCCIO2 | - |
| T11 | 2 | IO_RE14P_2 | T11 | 2 | PB20C | - |
| T12 | 2 | IO_R7P_2 | T12 | 2 | PB21C | EF3为真差分 |
| T13 | 2 | IO_R5N_2 | T13 | 2 | PB23D | EF3为真差分 |
| T14 | 2 | IO_RE2N_2 | T14 | 2 | PB26B | - |
| T15 | 2 | IO_R1N_2 | T15 | 2 | PB27D | EF3为真差分 |
| U10 | 2 | IO_R19P_2 | U10 | 2 | PB18C | EF3为真差分 |
| U11 | 2 | IO_R19N_2 | U11 | 2 | PB18D | EF3为真差分 |
| U12 | 2 | IO_RE14N_2 | U12 | 2 | PB20D | - |
| U13 | 2 | IO_R7N_2 | U13 | 2 | PB21D | EF3为真差分 |
| U14 | 2 | IO_RE4P_2 | U14 | 2 | PB24C | - |
| U15 | 2 | IO_RE2P_2 | U15 | 2 | PB26A | - |
| U16 | 2 | IO_R1P_2 | U16 | 2 | PB27C | EF3为真差分 |
| V10 | 2 | IO_R21N_2 | V10 | 2 | PB15B | EF3为真差分 |
| V11 | 2 | IO_R17N_2 | V11 | 2 | PB18B | EF3为真差分 |
| V12 | 2 | IO_R15P_2 | V12 | 2 | PB21A | EF3为真差分 |
| V13 | 2 | IO_R5P_2 | V13 | 2 | PB23C | EF3为真差分 |
| V14 | 2 | IO_RE9N_2 | V14 | 2 | PB24B | - |
| V15 | 2 | IO_RE4N_2 | V15 | 2 | PB24D | - |
| V16 | 2 | IO_RE8P_2 | V16 | 2 | PB29A | - |
| V17 | 2 | IO_R3N_2 | V17 | 2 | PB30B | EF3为真差分，XO2主串，从串模式SI，与EF3不兼容 |
| W10 | 2 | IO_RE20P_2 | W10 | 2 | PB15C | - |
| W11 | 2 | IO_R17P_2 | W11 | 2 | PB18A | EF3为真差分 |
| W12 | 2 | IO_RE16N_2,GCLKIOR_3_2 | W12 | 2 | PB20B | - |
| W13 | 2 | IO_R11P_2 | W13 | 2 | PB23A | EF3为真差分 |
| W14 | 2 | IO_RE9P_2 | W14 | 2 | PB24A | - |
| W15 | 2 | IO_R13N_2 | W15 | 2 | PB26D | EF3为真差分 |
| W16 | 2 | IO_RE10N_2 | W16 | 2 | PB27B | - |
| W17 | 2 | IO_R3P_2 | W17 | 2 | PB30A | EF3为真差分，XO2从串配置片选引脚，与EF3不兼容 |
| W18 | 2 | IO_RE6P_2 | W18 | 2 | PB30C | - |
| W19 | 2 | IO_RE12P_2 | W19 | 2 | PB29C | - |
| Y10 | 2 | IO_RE20N_2 | Y10 | 2 | PB15D | - |
| Y12 | 2 | IO_RE16P_2,GCLKIOR_2_2 | Y12 | 2 | PB20A | - |
| Y13 | 2 | IO_R15N_2 | Y13 | 2 | PB21B | EF3为真差分 |
| Y14 | 2 | IO_R11N_2 | V14 | 2 | PB24B | EF3为真差分 |
| Y15 | 2 | IO_R13P_2 | Y15 | 2 | PB26C | EF3为真差分 |
| Y16 | 2 | IO_RE10P_2 | Y16 | 2 | PB27A | - |
| Y17 | 2 | IO_RE8N_2 | Y17 | 2 | PB29B | - |
| Y18 | 2 | IO_RE6N_2 | Y18 | 2 | PB30D | - |
| Y19 | 2 | IO_RE12N_2 | Y19 | 2 | PB29D | - |


## IO BANK 3

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| L8 | 3 | VCCIO3 | L8 | 3 | VCCIO3 | - |
| M5 | 3 | IO_BE12P_3 | M5 | 3 | PL15C | - |
| M8 | 3 | VCCIO3 | M8 | 3 | VCCIO3 | - |
| N4 | 3 | IO_BE12N_3 | N4 | 3 | PL15D | - |
| N5 | 3 | IO_BE10P_3 | N5 | 3 | PL16C | - |
| P1 | 3 | IO_BE11P_3 | P1 | 3 | PL15A | - |
| P2 | 3 | IO_BE11N_3 | P2 | 3 | PL15B | - |
| P3 | 3 | IO_BE9P_3 | P3 | 3 | PL16A | - |
| P4 | 3 | IO_BE10N_3 | P4 | 3 | PL16D | - |
| P5 | 3 | IO_BE4P_3 | P5 | 3 | PL17C | - |
| R1 | 3 | IO_BE9N_3 | R1 | 3 | PL16B | - |
| R2 | 3 | IO_BE6P_3,GCLKIOB_0_3 | R2 | 3 | PL17A | - |
| R3 | 3 | IO_BE6N_3,GCLKIOB_1_3 | R3 | 3 | PL17B | - |
| R4 | 3 | IO_BE4N_3 | R4 | 3 | PL17D | - |
| R5 | 3 | IO_BE5P_3 | R5 | 3 | PL18C | - |
| T1 | 3 | IO_BE8P_3 | T1 | 3 | PL18A | - |
| T2 | 3 | IO_BE8N_3 | T2 | 3 | PL18B | - |
| T3 | 3 | IO_BE7P_3 | T3 | 3 | PL19A | - |
| T4 | 3 | IO_BE5N_3 | T4 | 3 | PL18D | - |
| U1 | 3 | IO_BE7N_3 | U1 | 3 | PL19B | - |
| U2 | 3 | IO_BE2P_3 | U2 | 3 | PL20A | - |
| U3 | 3 | IO_BE2N_3 | U3 | 3 | PL20B | - |
| V1 | 3 | IO_BE3N_3 | V1 | 3 | PL20D | - |
| V2 | 3 | IO_BE3P_3 | V2 | 3 | PL20C | - |
| W1 | 3 | IO_BE1N_3 | W1 | 3 | PL19D | - |
| W2 | 3 | IO_BE1P_3 | W2 | 3 | PL19C | - |


## IO BANK 4

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| J1 | 4 | IO_BE7P_4 | J1 | 4 | PL9A | - |
| K1 | 4 | IO_BE5N_4 | K1 | 4 | PL9D | - |
| K2 | 4 | IO_BE5P_4 | K2 | 4 | PL9C | - |
| K3 | 4 | IO_BE7N_4 | K3 | 4 | PL9B | - |
| K4 | 4 | IO_BE6P_4 | K4 | 4 | PL10A | - |
| K5 | 4 | VCCIO4 | K5 | 4 | VCCIO4 | - |
| L1 | 4 | IO_BE2P_4 | L1 | 4 | PL14C | - |
| L2 | 4 | IO_BE4P_4 | L2 | 4 | PL13C | - |
| L3 | 4 | IO_BE4N_4 | L3 | 4 | PL13D | - |
| L4 | 4 | IO_BE6N_4 | L4 | 4 | PL10B | - |
| M1 | 4 | IO_BE8P_4,GCLKIOB_2_4 | M1 | 4 | PL10C | - |
| M2 | 4 | IO_BE8N_4,GCLKIOB_3_4 | M2 | 4 | PL10D | - |
| M3 | 4 | IO_BE3P_4 | M3 | 4 | PL13A | - |
| M4 | 4 | IO_BE2N_4 | M4 | 4 | PL14D | - |
| N1 | 4 | IO_BE3N_4 | N1 | 4 | PL13B | - |
| N2 | 4 | IO_BE1P_4 | N2 | 4 | PL14A | - |
| N3 | 4 | IO_BE1N_4 | N3 | 4 | PL14B | - |


## IO BANK 5

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| B1 | 5 | IO_BE15N_5 | B1 | 5 | PL3D | - |
| C1 | 5 | IO_BE14N_5 | C1 | 5 | PL2D | - |
| C2 | 5 | IO_BE15P_5 | C2 | 5 | PL3C | - |
| D1 | 5 | IO_BE10N_5 | D1 | 5 | PL2B | - |
| D2 | 5 | IO_BE10P_5 | D2 | 5 | PL2A | - |
| D3 | 5 | IO_BE14P_5 | D3 | 5 | PL2C | - |
| D4 | 5 | IO_BE12N_5 | D4 | 5 | PL4D | - |
| E1 | 5 | IO_BE11P_5,GPLL0IP_REF | E1 | 5 | PL4A | - |
| E2 | 5 | IO_BE13N_5,GPLL0IN_FDB | E2 | 5 | PL3B | - |
| E3 | 5 | IO_BE13P_5,GPLL0IP_FDB | E3 | 5 | PL3A | - |
| E4 | 5 | IO_BE12P_5 | E4 | 5 | PL4C | - |
| F1 | 5 | IO_BE4N_5 | F1 | 5 | PL5B | - |
| F2 | 5 | IO_BE4P_5 | F2 | 5 | PL5A | - |
| F3 | 5 | IO_BE11N_5,GPLL0IN_REF | F3 | 5 | PL4B | - |
| F4 | 5 | IO_BE8P_5 | F4 | 5 | PL6C | - |
| F5 | 5 | IO_BE6P_5 | F5 | 5 | PL5C | - |
| G1 | 5 | IO_BE2P_5 | G1 | 5 | NC | - |
| G2 | 5 | IO_BE9N_5,GCLKIOB_5_5 | G2 | 5 | PL6B | - |
| G3 | 5 | IO_BE9P_5,GCLKIOB_4_5 | G3 | 5 | PL6A | - |
| G4 | 5 | IO_BE7P_5 | G4 | 5 | PL7C | - |
| G5 | 5 | IO_BE6N_5 | G5 | 5 | PL5D | - |
| H1 | 5 | IO_BE3N_5 | H1 | 5 | PL7B | - |
| H2 | 5 | IO_BE3P_5 | H2 | 5 | PL7A | - |
| H3 | 5 | IO_BE2N_5 | H3 | 5 | NC | - |
| H4 | 5 | IO_BE5P_5 | H4 | 5 | PL8C | - |
| H5 | 5 | IO_BE8N_5 | H5 | 5 | PL6D | - |
| J2 | 5 | IO_BE1N_5 | J2 | 5 | PL8B | - |
| J3 | 5 | IO_BE1P_5 | J3 | 5 | PL8A | - |
| J4 | 5 | IO_BE5N_5 | J4 | 5 | PL8D | - |
| J5 | 5 | IO_BE7N_5 | J5 | 5 | PL7D | - |
| J8 | 5 | VCCIO5 | J8 | 5 | VCCIO5 | - |
| K8 | 5 | VCCIO5 | K8 | 5 | VCCIO5 | - |


## IO BANK Other

| EF3L40CG332B | | | LCMXO2-4000-caBGA332 | | | |
| 引脚编号 | IO BANK | 引脚说明 | 引脚编号 | IO BANK | 引脚说明 | 差异备注 |
|----------|---------|----------|----------|---------|----------|----------|
| A1 | - | GND | A1 | - | GND | - |
| C3 | - | GND,GND_PLLA0 | C3 | - | GND | EF3同时为PLL地 |
| H8 | - | GND | H8 | - | GND | - |
| J9 | - | GND | J9 | - | GND | - |
| K9 | - | VCCAUX | K9 | - | VCC | - |
| L5 | - | GND | L5 | - | GND | - |
| L9 | - | VCCAUX | L9 | - | VCC | - |
| M9 | - | GND | M9 | - | GND | - |
| N8 | - | GND | N8 | - | GND | - |
| V3 | - | GND | V3 | - | GND | - |
| Y1 | - | GND | Y1 | - | GND | - |
| A10 | - | GND | A10 | - | GND | - |
| A20 | - | GND | A20 | - | GND | - |
| C18 | - | GND, GND_PLLA1 | C18 | - | GND | EF3同时为PLL地 |
| E11 | - | GND | E11 | - | GND | - |
| H13 | - | GND | H13 | - | GND | - |
| J10 | - | VCCAUX | J10 | - | VCC | - |
| J11 | - | VCCAUX | J11 | - | VCC | - |
| J12 | - | GND | J12 | - | GND | - |
| K10 | - | GND | K10 | - | GND | - |
| K11 | - | GND | K11 | - | GND | - |
| K12 | - | VCCAUX | K12 | - | VCC | - |
| K20 | - | GND | K20 | - | GND | - |
| L10 | - | GND | L10 | - | GND | - |
| L11 | - | GND | L11 | - | GND | - |
| L12 | - | VCCAUX | L12 | - | VCC | - |
| L16 | - | GND | L16 | - | GND | - |
| M10 | - | VCCAUX | M10 | - | VCC | - |
| M11 | - | VCCAUX | M11 | - | VCC | - |
| M12 | - | GND | M12 | - | GND | - |
| N13 | - | GND | N13 | - | GND | - |
| T10 | - | GND | T10 | - | GND | - |
| V18 | - | GND | V18 | - | GND | - |
| Y11 | - | GND | Y11 | - | GND | - |
| Y20 | - | GND | Y20 | - | GND | - |
