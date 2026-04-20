---
marp: true
theme: default
paginate: true
size: 16:9
<!-- _backgroundImage: url("wtpptpicbg1.png") -->
<!-- _class: title -->
---
# 安路科技PCIe技术文档综合分析报告

**生成时间**: 2026年04月09日  
**分析文档**: 17份安路科技PCIe技术文档  
**文档类型**: FPGA PCIe硬核用户手册、参考设计、IP配置指南  



<!-- _backgroundImage: url("wtpptpicbg2.png") -->

## 📋 概览

### 分析目标
本报告对安路科技PH1A系列、PH1A100系列、PH1P系列和PH2A系列FPGA的PCIe技术文档进行系统化分析，梳理技术架构、接口定义、配置方法和应用场景，为用户提供完整的技术知识图谱。

### 资料来源
分析文档包含以下三类：
1. **用户手册(4份)**: PH1A/PH1A100/PH1P/PH2A系列PCIe控制器用户手册
2. **IP配置指南(3份)**: PH1A/PH1P/PH2A系列PCIe定制向导IP用户手册
3. **参考设计(10份)**: Native接口转换、DMA设计、RC-EP连接、SERDES共享等

### 核心发现
- **产品线完整**: 涵盖PH1A/PH1A100/PH1P/PH2A四个FPGA系列，支持Gen1-Gen4
- **接口丰富**: 提供Native接口和AXI Stream接口两种选择，便于不同应用场景
- **DMA方案完善**: 包含Block DMA和Scatter-Gather DMA两种实现
- **参考设计完整**: 从基础TLP传输到高级DMA应用，覆盖各种使用场景



<!-- _backgroundImage: url("assets/bg3.png") -->

## 🏗️ 技术架构概览

### 整体架构
安路科技PCIe控制器硬核采用分层架构，包含：
- **物理层(PHY)**: 通过PIPE接口连接SERDES，支持Gen1-Gen4线速率
- **数据链路层**: 负责流量控制、错误检测、链路训练
- **事务层**: 处理TLP包的生成、解析和路由

### 模块分解
| 模块名称 | 功能描述 | 关键特性 |
|----------|----------|----------|
| PCIe Controller硬核 | PCIe协议核心处理引擎 | 支持EP/RC模式，Gen1-Gen4 |
| Native接口 | 安路自定义数据接口 | XALI0/1, TRGT1, BYPASS, ELBI, DBI |
| AXI Stream转换桥 | Native接口到AXI Stream转换 | RQ/RC/CQ/CC四组接口 |
| DMA引擎 | 数据搬运加速 | Block DMA / Scatter-Gather DMA |
| 配置管理 | PCIe配置空间管理 | DBI接口，自恢复功能 |

### 数据流向
```
PCIe链路 ↔ PCIe硬核 ↔ Native接口 ↔ AXI Stream桥 ↔ 用户逻辑
                ↓
            配置空间(DBI)
                ↓
            中断控制(INT/MSI/MSI-X)
```



<!-- _backgroundImage: url("assets/bg2.png") -->

## 📊 技术规格

### 协议与标准
| 协议/标准 | 版本 | 支持的功能 | 备注 |
|-----------|------|-----------|------|
| PCIe Base Specification | Rev 5.0 | Gen1-Gen4线速率 | 不同系列支持等级不同 |
| PCI Local Bus | Rev 3.0 | Legacy PCI兼容 | Legacy Endpoint模式 |
| AMBA AXI4 | AXI4-MM/AXI4-Stream | 用户逻辑接口 | 用于DMA和桥接应用 |
| AMBA AXI4-Lite | AXI4-Lite | 寄存器访问 | 低速控制接口 |

### 性能参数
| 参数项 | 参数值 | 单位 | 说明 |
|--------|--------|------|------|
| Gen1线速率 | 2.5 | GT/s | PH1A/PH1A100/PH1P/PH2A |
| Gen2线速率 | 5.0 | GT/s | PH1A/PH1A100/PH1P/PH2A |
| Gen3线速率 | 8.0 | GT/s | PH1A/PH2A |
| Gen4线速率 | 16.0 | GT/s | 仅PH2A |
| 链路宽度 | 1/2/4/8 | Lanes | PH1A100:1-2, PH1A/PH1P:1-4, PH2A:1-8 |
| Max Payload Size | 128-2048 | Bytes | 可配置 |
| Max Read Request Size | 128-4096 | Bytes | 可配置 |

### 资源需求
| 资源类型 | PH1A100需求 | PH1A需求 | PH2A需求 |
|----------|------------|----------|----------|
| SERDES DUAL | 1个 | 1-2个 | 1-2个 |
| LUT6 | 3000-7500 | 3000-7500 | 6000-28000 |
| REG | 4000-45000 | 4000-45000 | 10000-25000 |
| ERAM | 11-52 | 11-52 | 140-157 |
| PLL | 1 | 1 | 1-2 |



<!-- _backgroundImage: url("assets/bg3.png") -->

## 🔌 接口定义

### 接口分类

#### Native接口
安路科技自定义的高性能接口，直接连接PCIe硬核，包括：
- **XALI0/XALI1**: 发送接口，用于发送Request和Completion
- **TRGT1**: 接收目标端口，接收对端Request
- **BYPASS**: 旁路接口，接收对端Completion
- **ELBI**: 外部本地总线，用于简单的寄存器访问
- **DBI**: 数据总线接口，用于配置空间访问
- **SII**: 系统信息接口
- **CRI**: 控制寄存器接口

#### AXI接口
标准AMBA AXI4接口，便于移植：
- **RQ (Requester Request)**: 发送读写请求
- **RC (Requester Completion)**: 接收完成报文
- **CQ (Completer Request)**: 接收读写请求
- **CC (Completer Completion)**: 发送完成报文
- **AXI4-MM**: 内存映射接口，用于DMA
- **AXI4-Lite**: 轻量级接口，用于寄存器访问

#### 定制IP接口
- **mgmt接口**: 配置管理接口
- **interrupt接口**: 中断接口

### 详细接口定义

#### PCIe硬核Native接口
| 接口名称 | 方向 | 位宽 | 描述 |
|----------|------|------|------|
| **时钟复位** ||||
| refclk_p/n | 输入 | 1 | 100MHz差分参考时钟 |
| core_clk | 输出 | 1 | PCIe核心时钟 |
| core_rst_n | 输出 | 1 | PCIe核心复位 |
| user_clk | 输出 | 1 | 用户侧时钟(PLL输出) |
| user_rst_n | 输出 | 1 | 用户侧复位 |
| **发送接口** ||||
| xali0_txdata | 输出 | 64/128 | Client0发送数据 |
| xali0_txcharisk | 输出 | 8/16 | TLP字符指示 |
| xali0_txdvalid | 输出 | 1 | 发送数据有效 |
| xali0_txdready | 输入 | 1 | 发送数据就绪 |
| **接收接口** ||||
| trgt1_rxdata | 输入 | 64/128 | TRGT1接收数据 |
| trgt1_rxcharisk | 输入 | 8/16 | TLP字符指示 |
| trgt1_rxdvalid | 输入 | 1 | 接收数据有效 |
| trgt1_rxdready | 输出 | 1 | 接收数据就绪 |
| **配置接口** ||||
| dbi_addr | 输入 | 19 | DBI地址 |
| dbi_wdata | 输入 | 32 | DBI写数据 |
| dbi_rdata | 输出 | 32 | DBI读数据 |
| dbi_write | 输入 | 1 | DBI写使能 |
| dbi_read | 输入 | 1 | DBI读使能 |
| **中断接口** ||||
| msi_int | 输入 | 32 | MSI中断向量 |
| msi_enable | 输出 | 4 | MSI使能 |
| intx_int | 输入 | 4 | Legacy INTx中断 |

#### AXI Stream接口(RQ/RC/CQ/CC)
| 接口名称 | 方向 | 位宽 | 描述 |
|----------|------|------|------|
| **RQ接口(512bit)** ||||
| s_axis_rq_tdata | 输入 | 512 | 请求数据 |
| s_axis_rq_tuser | 输入 | 137 | 边带信息(地址/BE/Tag等) |
| s_axis_rq_tkeep | 输入 | 16 | 字节有效 |
| s_axis_rq_tlast | 输入 | 1 | 包结束 |
| s_axis_rq_tvalid | 输入 | 1 | 数据有效 |
| s_axis_rq_tready | 输出 | 1 | 接收就绪 |
| **RC接口(512bit)** ||||
| m_axis_rc_tdata | 输出 | 512 | 完成数据 |
| m_axis_rc_tuser | 输出 | 161 | 边带信息 |
| m_axis_rc_tkeep | 输出 | 16 | 字节有效 |
| m_axis_rc_tlast | 输出 | 1 | 包结束 |
| m_axis_rc_tvalid | 输出 | 1 | 数据有效 |
| m_axis_rc_tready | 输入 | 4 | 接收就绪 |
| **CQ接口(512bit)** ||||
| m_axis_cq_tdata | 输出 | 512 | 请求数据 |
| m_axis_cq_tuser | 输出 | 183 | 边带信息 |
| m_axis_cq_tkeep | 输出 | 16 | 字节有效 |
| m_axis_cq_tlast | 输出 | 1 | 包结束 |
| m_axis_cq_tvalid | 输出 | 1 | 数据有效 |
| m_axis_cq_tready | 输入 | 1 | 接收就绪 |
| **CC接口(512bit)** ||||
| s_axis_cc_tdata | 输入 | 512 | 完成数据 |
| s_axis_cc_tuser | 输入 | 81 | 边带信息 |
| s_axis_cc_tkeep | 输入 | 16 | 字节有效 |
| s_axis_cc_tlast | 输入 | 1 | 包结束 |
| s_axis_cc_tvalid | 输入 | 1 | 数据有效 |
| s_axis_cc_tready | 输出 | 1 | 接收就绪 |

### 时序特性
- **时钟域**: core_clk与user_clk为异步时钟域，需要CDC处理
- **数据对齐**: 支持地址对齐和非对齐传输
- **反压机制**: 支持ready信号反压和暂停(Halt)机制
- **包连续性**: 支持back-to-back包传输



<!-- _backgroundImage: url("assets/bg2.png") -->

## 📝 知识点梳理

### 按技术层级分类

#### 物理层(PHY)
- SERDES PHY资源分配和约束
- PIPE接口定义
- 参考时钟要求(100MHz差分)
- Lane Reversal支持
- 链路训练和LTSSM状态机

#### 数据链路层
- 链路训练(Link Training)
- LTSSM状态机转换
- 流量控制(Flow Control)
- 错误检测(ECRC/LCRC)
- 电源管理(ASPM/L1子状态)

#### 事务层
- TLP包格式(Request/Completion)
- 配置空间访问(Type 0/Type 1)
- 地址路由和过滤
- 完成包查找表和超时
- Extended Tag支持

### 按接口类型分类

#### Native接口
- XALI0/XALI1发送时序
- TRGT1接收时序
- BYPASS接收时序
- ELBI简单访问时序
- DBI配置空间访问时序

#### AXI接口
- RQ请求包格式(128bit描述符+数据)
- RC完成包格式(96bit描述符+数据)
- CQ请求包格式(128bit描述符+数据)
- CC完成包格式(96bit描述符+数据)
- Stream模式支持

#### 定制IP接口
- mgmt接口配置访问
- msi中断发起
- cfg_mgmt接口访问

### 按应用模式分类

#### RC(Root Complex)模式
- RC配置和初始化
- Type 1配置空间
- 下游设备枚举
- 端口路由
- INTx中断检测

#### EP(Endpoint)模式
- EP配置和初始化
- Type 0配置空间
- BAR空间映射
- 中断发起(INTx/MSI/MSI-X)
- DMA主动发起



<!-- _backgroundImage: url("assets/bg3.png") -->

## 🔍 深入分析

### 关键问题1：Native接口 vs AXI Stream接口
**分析**：安路科技提供了两种接口方案：
1. **Native接口**: 直接连接PCIe硬核，性能最优，但需要熟悉安路自定义协议
2. **AXI Stream接口**: 通过桥接转换，兼容AMBA生态，便于移植

**结论**：
- 新设计且追求极致性能：推荐使用Native接口
- 需要移植现有AMBA IP：推荐使用AXI Stream接口
- 参考设计提供了两种接口的完整实现，可根据需求选择

### 关键问题2：Block DMA vs Scatter-Gather DMA
**分析**：
1. **Block DMA**: 传输物理连续的单个数据块，实现简单
2. **Scatter-Gather DMA**: 支持多个不连续块，减少CPU参与，提高效率

**结论**：
- 小数据量传输：Block DMA足够，资源消耗少
- 大数据量传输：SGDMA优势明显，中断次数少
- 安路提供两种DMA方案，可根据应用场景选择

### 关键问题3：PH1A/PH1P vs PH2A差异
**分析**：
| 特性 | PH1A/PH1P | PH2A |
|------|----------|------|
| PCIe版本 | Gen1-Gen3 | Gen1-Gen4 |
| 最大宽度 | X4 | X8 |
| AXI数据位宽 | 64/128bit | 512bit |
| 应用场景 | 中端应用 | 高端应用 |
| 价格 | 较低 | 较高 |

**结论**：
- PH1A/PH1P：性价比高，适合中端应用
- PH2A：性能更强，适合高端应用
- 根据带宽需求和成本预算选择



<!-- _backgroundImage: url("assets/bg2.png") -->

## 🔗 跨文档关联

### 版本演进关系
```
PH1A/PH1A100/PH1P → PH2A
  ├─ Native接口 → AXI Stream接口
  ├─ Gen1-Gen3 → Gen1-Gen4
  ├─ X4 → X8
  └─ 64/128bit → 512bit
```

### 功能扩展关系
- **基础功能**: PCIe硬核，Native接口
  - **接口转换**: Native → AXI Stream (APUG032/APUG050/APUG089)
  - **DMA加速**: Block DMA (APUG033) → SGDMA (APUG069)
  - **系统验证**: RC-EP连接 (APUG039)
  - **资源共享**: SERDES共享 (APUG053)

### 参考设计关系
```
IP用户手册(IPUG011/028/160)
    ↓
PCIe硬核配置
    ↓
参考设计(APUG032/033/039/050/053/069/089)
    ↓
实际应用
```



<!-- _backgroundImage: url("assets/bg3.png") -->

## 💡 关键洞察

### 洞察1：接口策略的双轨并行
安路科技采用Native + AXI Stream双轨策略：
- Native接口发挥硬核性能优势
- AXI Stream接口降低迁移门槛
- 参考设计提供两种方案，灵活应对不同需求

### 洞察2：DMA方案的梯度设计
从简单的Block DMA到复杂的SGDMA：
- Block DMA: 入门简单，适合学习和小应用
- SGDMA: 性能优异，适合生产环境
- 两种方案形成完整的产品矩阵

### 洞察3：产品线的清晰定位
- PH1A/PH1A100/PH1P: 主流中端，Gen1-Gen3
- PH2A: 高端旗舰，Gen1-Gen4
- 产品定位明确，覆盖不同应用场景



<!-- _backgroundImage: url("assets/bg2.png") -->

## 📝 结论与建议

### 主要结论
1. **技术完整**: 安路科技PCIe解决方案涵盖硬件、IP、参考设计，技术栈完整
2. **接口灵活**: Native和AXI Stream双接口，满足不同应用需求
3. **参考设计丰富**: 从基础TLP到高级DMA，覆盖各种应用场景
4. **产品线清晰**: PH1A/PH1P中端 + PH2A高端，定位明确

### 行动建议

#### 设计选型建议
- **高性能应用**: 选择PH2A + Native接口 + SGDMA
- **成本敏感应用**: 选择PH1A/PH1P + AXI Stream + Block DMA
- **快速原型**: 使用参考设计直接开发
- **定制开发**: 基于IP用户手册定制配置

#### 学习路径建议
1. **入门**: 阅读IP用户手册，理解PCIe基础配置
2. **进阶**: 研究Native接口，掌握高性能设计
3. **实践**: 运行参考设计，验证设计方案
4. **深入**: 学习DMA设计，提升系统能力

#### 开发流程建议
1. 确定FPGA型号和PCIe规格
2. 选择接口方案(Native或AXI Stream)
3. 配置PCIe硬核(IP GUI)
4. 实现用户逻辑或集成DMA
5. 仿真验证
6. 上板测试



<!-- _backgroundImage: url("assets/bg3.png") -->

## 📚 术语表

### 核心术语
| 术语 | 英文全称 | 定义 |
|------|----------|------|
| PCIe | PCI Express | 高速串行计算机扩展总线标准 |
| TLP | Transaction Layer Packet | PCIe事务层数据包 |
| BAR | Base Address Register | 基地址寄存器 |
| DMA | Direct Memory Access | 直接存储器访问 |
| EP | Endpoint | 端点设备 |
| RC | Root Complex | 根复合体 |
| MPS | Max Payload Size | 最大载荷大小 |
| MRRS | Max Read Request Size | 最大读请求大小 |

### 缩略词
| 缩略词 | 全称 | 说明 |
|--------|------|------|
| LTSSM | Link Training and Status State Machine | 链路训练和状态状态机 |
| ELBI | External Local Bus Interface | 外部本地总线接口 |
| DBI | Data Bus Interface | 数据总线接口 |
| MSI | Message Signaled Interrupt | 消息信号中断 |
| SGDMA | Scatter-Gather DMA | 分散-聚集DMA |
| AXI | Advanced eXtensible Interface | 高级可扩展接口 |



<!-- _backgroundImage: url("assets/bg2.png") -->

## 📎 附录

### A. 参考文档
1. UG713: PH1A100系列PCIe用户手册
2. UG913: PH1A系列PCIe用户手册  
3. UG1313: PH1P系列PCIe用户手册
4. UG1112: PH2A系列PCIe用户手册
5. IPUG011: PH1A系列PCIe定制向导IP
6. IPUG028: PH1P系列PCIe定制向导IP
7. IPUG160: PH2A系列PCIe定制向导IP

### B. 参考设计
1. APUG032: Native接口转AXI Stream参考设计
2. APUG033: Block DMA参考设计
3. APUG039: RC连接EP参考设计
4. APUG050: PH1A Native转AXI Stream参考设计
5. APUG053: PCIe与SERDES共享参考设计
6. APUG069: SGDMA参考设计
7. APUG089: PH2A Native转AXI Stream参考设计

### C. 工具和资源
- TD软件: 安路科技FPGA开发工具
- ModelSim: 仿真工具
- Linux驱动: PCIe驱动示例
- Demo板: AP101/AP103/AP201开发板


**报告生成完毕**

*本报告基于17份安路科技PCIe技术文档分析生成，如有疑问请参考原始资料。*
