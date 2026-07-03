---
title: "安路科技PCIe系统应用指导"
publish_date: "2026-04-01"
---

# 安路科技PCIe技术文档体系(完整版)

## 一、文档资源全景图

### 1.1 核心技术文档分类

| 文档类型 | PH1A系列 | PH1P系列 | PH2A系列 | 说明 |
|---------|---------|---------|---------|------|
| **用户手册** | UG913, UG713(100子系列) | UG1313 | UG1112 | 系统架构、接口定义、协议详解 |
| **IP定制向导** | IPUG011 | IPUG028 | IPUG160 | IP核配置参数、功能选项 |
| **复位时钟指南** | TN705 | - | - | 时钟树设计、复位策略 |
| **寄存器手册** | UG716 | - | - | 完整寄存器映射、位域定义 |
| **硬件设计指南** | - | UG1307 | - | PCB设计、SERDES约束 |
| **参考设计** | APUG032, APUG050, APUG033 | - | APUG089, APUG069 | 接口桥接、DMA实现、验证 |

### 1.2 文档版本与兼容性

| 文档名称 | 版本 | 发布日期 | 支持TD软件版本 |
|---------|------|---------|---------------|
| TN705 | v1.2 | 2024.04 | TD 5.6.5+ |
| UG713 | v1.2 | 2023.02 | TD 5.6.5+ |
| UG716 | v1.3 | 2023.03 | - |
| UG913 | 最新 | - | TD 5.6.5+ |
| UG1112 | 最新 | - | TD 6.0.2+ |
| UG1307 | 最新 | - | PH1P专用 |
| UG1313 | 最新 | - | PH1P专用 |
| IPUG011 | v1.5 | 2024.04 | TD 5.5.1+ |
| IPUG028 | v1.1 | 2024.07 | PH1P专用 |
| IPUG160 | v1.0 | 2024.03 | TD 6.0.2+ |
| APUG069 | v3.0 | 2023.12 | TD 5.6.4+ |
| APUG050 | v1.3 | 2024.01 | PH1A专用 |
| APUG089 | v1.0 | 2024.05 | TD 6.0.2+ |
| APUG053 | V1.0 | 2022.03 | TD 5.5.1+ |

---

## 二、时钟与复位体系(TN705核心内容)

### 2.1 PH1A100时钟架构

#### 时钟信号说明

| 时钟信号 | 方向 | 功能描述 | 频率要求 |
|---------|------|---------|---------|
| **app_auxclk** | 输入 | PCIe IP加载配置的驱动时钟,必须是Free running时钟 | 参见DS700_Datasheet |
| **core_clk** | 输出 | PCIe硬核用户侧主时钟,用于驱动所有用户接口 | Gen1:62.5MHz, Gen2:125MHz |
| **muxd_aux_clk** | 输出 | 低功耗模式下的工作时钟 | 由PHY输出或用户提供 |
| **muxd_aux_clk_g** | 输出 | 受power gate影响的aux_clk | L1.2状态时无输出 |

#### 时钟关系与约束

```
                    ┌─────────┐
app_auxclk ────────→│  PCIe   │──→ core_clk(125MHz)
                    │  Hard   │
refclk ───────────→│   IP    │──→ muxd_aux_clk
                    └─────────┘
                       ↓
                    PLL配置
```

**关键约束(TN705):**
- app_auxclk必须在PCIe IP加载前保持稳定
- core_clk直接使用难以达到125MHz+的fmax
- **推荐PLL方案**: core_clk → PLL → 同频0度相移输出 → BUFG → 用户逻辑

#### PLL配置示例(TN705)

**PLL参数(基于125MHz参考时钟):**
```
PLL位置约束: X79Y119Z0
推荐配置:
  - Mode: Normal
  - C0: Feedback时钟
  - C1: 输出到core_clk_c,经BUFG驱动用户逻辑
```

**时序优化建议:**
- 将PLL约束在硬核附近(X79Y119Z0)
- 使用PH1_LOGIC_BUFG连接PLL输出
- 避免core_clk直接上BUFG

### 2.2 PH1A100复位体系

#### 复位信号定义

| 复位信号 | 方向 | 复位类型 | 功能描述 |
|---------|------|---------|---------|
| **app_perst_n** | 输入 | Warm Reset | 上位机PERST#,需Vaux在位 |
| **app_power_up_rst_n** | 输入 | Cold Reset | 上电复位,可复位底层SERDES |
| **app_button_rst_n** | 输入 | 按键复位 | 用户自定义按键复位 |
| **core_rst_n** | 输出 | 输出复位 | 表示IP初始化完成,开始输出core_clk |
| **training_rst_n** | 输出 | Hot Reset指示 | 接收到Hot Reset请求时拉高1个周期 |

#### 复位策略与配置保留(TN705关键方案)

**问题**: Cold/Warm/Hot Reset会清空PCIe配置信息,导致IP回到上电默认状态

**推荐解决方案**: 使用cfg_rom + drp_dbi总线保留配置

```
复位架构:
┌─────────────────────────────────────────────────┐
│  PCIe IP                        cfg_rom         │
│  ┌───────────────────────┐    ┌──────────┐    │
│  │  app_power_up_rst_n   │    │ 128深度  │    │
│  └──────────┬────────────┘    │  68位宽  │    │
│             │                └────┬─────┘    │
│             ↓                     │          │
│  ┌───────────────────────┐       │          │
│  │  dbi_int_mux          │◄──────┘          │
│  │  (Rom配置恢复逻辑)    │                  │
│  └──────────┬────────────┘                  │
│             │                               │
│             ↓                               │
│  ┌───────────────────────┐                  │
│  │  ext_app_ltssm_enable │                  │
│  └───────────────────────┘                  │
└─────────────────────────────────────────────────┘
```

**配置恢复流程:**
1. 上电时IP自动从txt文件加载配置到ROM(128深度×68位宽)
2. 复位后,dbi_int_mux读取ROM并重新写入PCIe硬核
3. 配置完成后,释放ext_app_ltssm_enable和drp_dbi总线给用户

**软件配置步骤:**
1. 在IP配置界面使能"Export DAT file"
2. 生成.dat文件
3. 例化ROM,位宽68,深度128,初始化数据为.dat内容
4. 复位逻辑需与PCIe IP复位保持一致

#### LTSSM控制机制

**app_ltssm_enable信号作用:**
- 延迟Link Training,允许用户在LTSSM=Detect时通过DBI编程
- Cold Reset场景: 配置寄存器编程后再拉高,开始建链
- Hot Reset场景: 读取寄存器状态后再拉高,允许复位

**典型初始化流程(UG713图2-5):**

```
1. 上电 → Detect状态 → app_ltssm_enable=0
2. core_rst_n置1 → IP初始化完成
3. DBI编程(可选) → 配置sticky寄存器
4. app_ltssm_enable=1 → 开始Link Training
5. LTSSM: Polling → Configuration → L0
6. 建链成功 → smlh_link_up=1, rdlh_link_up=1
7. Root Complex枚举 → 配置BAR,使能BME/MSE/ISE
8. 开始传输TLP报文
```

### 2.3 PHY Routing优化建议(TN705)

**推荐设置:**
- Phy Opt → Optimize Routing → fix_hold = ON

**原因:**
- 避免Timing Report中Set input delay的Hold Check负Slack
- 提升接口时序余量
- 可调整effort和opt_timing从MEDIUM到HIGH

---

## 三、PCIe硬核架构详解(UG713/UG913/UG1112)

### 3.1 PH1A100硬核特性(UG713)

#### 硬核资源分布(UG713图1-1)

```
PH1A100 (SFG676封装):
┌─────────────────────────────────────────┐
│  PCIe Controller Hard核(蓝色方框)     │
│  位置: 通过PIPE接口连接Bank 94          │
│                                         │
│  SERDES DUAL资源:                      │
│  - Bank 91                              │
│  - Bank 92                              │
│  - Bank 93                              │
│  - Bank 94 (PCIe专用,不可他用)         │
└─────────────────────────────────────────┘
```

#### 协议支持(UG713表1-5)

**基本协议:**
- PCI Express Base Spec Rev 5.0, Version 1.0 (最高Gen2)
- PCI Local Bus Spec Rev 3.0
- PCI Bus Power Management Spec Rev 1.2

**可选功能:**
- SR-IOV (Single Root I/O Virtualization)
- ARI (Alternative Routing-ID Interpretation)
- ATS (Address Translation Services)
- PRS (Page Request Services)
- FLR (Function Level Reset)
- IDO (ID-Based Ordering)
- TPH (TLP Processing Hints)
- Atomic Operations
- DPA (Dynamic Power Allocation)
- L1 Substates (L1SS)
- Extended Tag Support
- SRIS (Separate Refclk Independent SSC)
- RN (Readiness Notifications)
- ASPM (Active State Power Management)
- AER (Advanced Error Reporting)
- ACS (Access Control Services)

#### 性能参数(UG713表1-2)

| PCIe Gen | 线速率 | 通道数 | 用户数据位宽 | 应用时钟 |
|---------|-------|-------|-------------|---------|
| Gen1 | 2.5G | 1-lane | 64bit | 62.5MHz |
| Gen1 | 2.5G | 2-lane | 64bit | 62.5MHz |
| Gen2 | 5.0G | 1-lane | 64bit | 125MHz |
| Gen2 | 5.0G | 2-lane | 64bit | 125MHz |

**带宽计算:**
- Gen1×1: 2.5Gbps = 250MB/s
- Gen1×2: 5Gbps = 500MB/s
- Gen2×1: 5Gbps = 500MB/s
- Gen2×2: 10Gbps = 1GB/s

#### 设备类型(UG713表1-1)

| device_type[3:0] | 模式 |
|------------------|------|
| 4'b0000 | PCI Express Endpoint |
| 4'b0001 | Legacy PCI Express Endpoint |
| 4'b0100 | Root Port of PCI Express Root Complex |

### 3.2 BAR空间架构(UG713图1-4)

#### BAR配置

| BAR | 存储类型 | 访问接口 | 默认类型 | 预取配置 |
|-----|---------|---------|---------|---------|
| BAR0 | Application Register | ELBI | Memory | Non-prefetchable(可配) |
| BAR2 | App Reg 或 RAM/FIFO/ROM | TRGT1 | Memory(EP)/IO(LEP) | Non-prefetchable(可配) |
| BAR4 | App Reg 或 RAM/FIFO/ROM | TRGT1 | Memory(EP)/IO(LEP) | Non-prefetchable(可配) |

#### 地址空间映射(UG713图2-4)

```
MEM/IO请求路由:
┌─────────────────────────────────────────┐
│  CFG Request → TRGT0 → LBC → CDM       │
│                                         │
│  MEM/IO Request  ─┐                     │
│                   ├──→ TRGT0 → ELBI    │
│                   │   (用户寄存器)     │
│                   │                     │
│                   └──→ TRGT1          │
│                       (RAM/FIFO/ROM)   │
└─────────────────────────────────────────┘

地址匹配:
MEM_FUNC0_BAR0_TARGET_MAP → 匹配BAR0地址
MEM_FUNC0_BAR1_TARGET_MAP → 匹配BAR1地址
```

### 3.3 配置空间架构(UG713图1-5)

#### 地址分配

| 地址范围 | 空间类型 |
|---------|---------|
| 0x000~0x0FF | PCI配置空间 |
| 0x100~0x6FF | PCIe能力寄存器 |
| 0x700~0xCFF | PCIe控制器自定义寄存器 |
| 0xD00~0xFFF | 保留 |

#### 能力寄存器(UG713表1-5)

| Capability ID | 名称 | PF支持 | VF支持 |
|--------------|------|--------|--------|
| 01h | PCI Power Management | ✓ | ✗ |
| 05h | MSI | ✓ | ✗ |
| 10h | PCI Express | ✓ | ✓ |
| 11h | MSI-X | ✓ | ✓ |

#### 扩展能力寄存器(UG713表1-6)

| Ext Cap ID | 名称 | PF | VF |
|-----------|------|----|----|
| 16'h0001 | Advanced Error Reporting(AER) | ✓ | ✗ |
| 16'h0003 | Device Serial Number | ✓ | ✗ |
| 16'h000b | Vendor-specific(RAS_DES) | ✓ | ✗ |
| 16'h000c | Configuration Access Correlation | ✓ | ✗ |
| 16'h000d | ACS | ✓ | ✓ |
| 16'h000e | ARI | ✓ | ✓ |
| 16'h000f | ATS | ✓ | ✗ |
| 16'h0010 | SR-IOV | ✓ | ✗ |
| 16'h0013 | Page Request(PRS) | ✓ | ✗ |
| 16'h0016 | Dynamic Power Allocation(DPA) | ✓ | ✗ |
| 16'h0017 | TPH Requester | ✓ | ✗ |
| 16'h0018 | LTR | ✓ | ✗ |
| 16'h0019 | Secondary PCIe | ✓ | ✗ |
| 16'h001e | L1 PM Substates | ✓ | ✗ |
| 16'h0022 | Readiness Time Reporting(RTR) | ✓ | ✓ |
| 16'h0025 | Data Link Feature | ✓ | ✗ |
| 16'h0026 | Physical Layer 16.0 GT/s | ✓ | ✗ |
| 16'h0027 | Lane Margining | ✓ | ✗ |

---

## 四、接口系统详解(UG713核心内容)

### 4.1 时钟复位接口(UG713表2-1)

| 信号 | 宽度 | 方向 | 描述 |
|-----|------|------|------|
| app_perst_n | 1 | I | Warm复位,上位机PERST# |
| app_power_up_rst_n | 1 | I | Cold复位,上电复位 |
| app_button_rst_n | 1 | I | 用户按键复位 |
| app_ltssm_enable | 1 | I | LTSSM使能,控制Link Training |
| core_rst_n | 1 | O | 输出复位,IP初始化完成 |
| core_clk | 1 | O | 主时钟,驱动用户接口 |
| muxd_aux_clk | 1 | O | 低功耗时钟 |
| app_auxclk | 1 | I | 加载配置的驱动时钟 |
| smlh_link_up | 1 | O | 物理层建链成功 |
| rdlh_link_up | 1 | O | 数据链路层建链成功 |
| link_req_rst_not | 1 | O | 复位请求指示 |
| app_clk_req_n | 1 | I | 移除参考时钟请求 |
| app_init_rst | 1 | I | RC端Hot Reset请求 |
| training_rst_n | 2 | O | 收到Hot Reset请求 |

### 4.2 发送接口XALI0/1(UG713表2-3)

#### 接口组成
```
XALI0/1 Interface:
├── Header通路
│   ├── client0/1_tlp_fmt[1:0]
│   ├── client0/1_tlp_type[4:0]
│   ├── client0/1_tlp_tc[2:0]
│   ├── client0/1_tlp_attr[2:0]
│   ├── client0/1_tlp_addr[63:0]
│   ├── client0/1_tlp_tid[9:0]
│   └── ...其他Header字段
├── Data通路
│   └── client0/1_tlp_data[63:0]
└── 控制信号
    ├── client0/1_tlp_hv
    ├── client0/1_tlp_dv
    ├── client0/1_tlp_eot
    └── xadm_client0/1_halt
```

#### 地址对齐模式(UG713 2.3.3.1)

| 模式 | client_addr_align_en | 地址要求 | byte_en | byte_len | 数据排列 |
|-----|---------------------|---------|---------|----------|---------|
| Dword对齐 | 0 | Bit[1:0]=00 | 指定FBE/LBE | 向上取整到4B | 用户上移 |
| Byte对齐 | 1 | 字节对齐 | 0x0(不使用) | 实际字节长度 | 控制器处理 |

**协议规则(UG713 2.3.3.2):**
1. 无有效载荷(MRd): tlp_dv保持低
2. 有效载荷(MWr): hv和dv同时拉高
3. 结束: hv+dv最后一个周期拉高eot
4. xadm_halt拉高: 保持数据和Header不变
5. 空闲: xadm_halt默认=1
6. bad_eot: 与eot同时拉高,终止传输

#### Request时序示例(UG713图2-11~2-18)

**MRd请求:**
```
client1_tlp_fmt=0x0, type=0x00
client1_tlp_byte_len=0x4 (4字节)
client1_tlp_tag: 0~3 (TAG递增)
```

**MWr请求:**
```
client1_tlp_fmt=0x3, type=0x00
client1_tlp_byte_len=0x800
client1_tlp_addr=0xcda7_add6_9ab2_4000
```

**Atomic操作:**
```
FetchAdd: fmt=0x2, type=0x0c
Swap: fmt=0x2, type=0x0d
CAS: fmt=0x2, type=0x0e
```

### 4.3 接收接口TRGT1(UG713表2-7)

#### 接口组成
```
TRGT1 Interface:
├── Header通路
│   ├── radm_trgt1_fmt[1:0]
│   ├── radm_trgt1_type[4:0]
│   ├── radm_trgt1_addr[63:0]
│   ├── radm_trgt1_reqid[15:0]
│   ├── radm_trgt1_tag[9:0]
│   └── ...其他Header字段
├── Data通路
│   ├── radm_trgt1_data[63:0]
│   └── radm_trgt1_dwen[1:0]
├── 状态信号
│   ├── radm_trgt1_tlp_abort
│   ├── radm_trgt1_dllp_abort
│   └── radm_trgt1_ecrc_err
└── 反压控制
    ├── trgt1_radm_halt
    ├── radm_grant_tlp_type[2:0]
    └── trgt1_radm_pkt_halt[2:0]
```

#### 反压控制机制(UG713图2-22)

```
接收队列架构:
┌─────────────────────────────────────────┐
│  Posted Queue    │  Non-Posted Queue   │
│  FIFO            │  FIFO               │
└────────┬─────────┴────────┬────────────┘
         │                 │
         ▼                 ▼
┌─────────────────────────────────────────┐
│  Order Controller                      │
│  (根据ordering rules控制输出)          │
└────────────────┬────────────────────────┘
                 │
        ┌────────┴────────┐
        ▼                 ▼
  trgt1_radm_halt  Packet/Halt Tracker
  (全局暂停)       (按TLP类型暂停)
```

**Packet Halt控制(UG713 2.4.3.1):**
- radm_grant_tlp_type[2:0]: 0=Posted, 1=Non-Posted, 2=CPL
- trgt1_radm_pkt_halt[2:0]: 暂停特定类型TLP
- 防止Non-Posted阻塞Posted报文

### 4.4 接收接口RBYP(UG713表2-10)

#### 接口特点
- 无Buffer,直通模式
- 用于接收CPL TLP
- 用户逻辑必须确保能实时接收

#### 接口组成
```
RBYP Interface:
├── Header信号
│   ├── radm_bypass_fmt, type, tc, attr
│   ├── radm_bypass_reqid, tag
│   └── radm_bypass_addr[63:0]
├── Data信号
│   ├── radm_bypass_data[63:0]
│   └── radm_bypass_dwen[1:0]
└── 状态信号
    ├── radm_bypass_tlp_abort
    ├── radm_bypass_dllp_abort
    └── radm_bypass_ecrc_err
```

### 4.5 DBI接口(UG713表2-12)

#### 功能
- 访问控制器内部CDM寄存器
- 访问ELBI接口的用户寄存器
- drp_dbi_addr[0]: 0=内部,1=外部

#### 协议规则(UG713 2.7.3)
1. drp_dbi_cs拉高表示活动周期
2. drp_dbi_wr指示写操作(0000=读,其他=写byte)
3. drp_dbi_cs和lbc_dbi_ack握手
4. 访问4KB空间: drp_dbi_addr[11:0] + func_num + vfunc_num

#### 访问示例
```
访问PF1的VF1,地址0x70(PCIE Capability):
drp_dbi_addr[11:0] = 12'h70
drp_dbi_func_num = 1
drp_dbi_vfunc_num = 1
drp_dbi_vfunc_active = 1
```

### 4.6 中断接口

#### Legacy中断(UG713表2-14)
- sys_int[1:0]: 每bit对应一个PF
- 跳变触发: 低→高=Assert_INTx, 高→低=Deassert_INTx
- INTx类型由Interrupt Pin寄存器决定

#### MSI接口(UG713表2-15)
- ven_msi_req: 请求信号,保持高直到ven_msi_grant
- ven_msi_vector[4:0]: MSI Data后5位(Multi-message模式)
- cfg_msi_mask[63:0]: Per Vector Mask

#### MSI-X接口(UG713表2-16)
- msix_addr[63:0]: MSI-X地址
- msix_data[31:0]: MSI-X数据
- cfg_msix_table_size[21:0]: 表大小
- cfg_msix_table_offset[57:0]: 表偏移

---

## 五、寄存器系统详解(UG716)

### 5.1 寄存器地址映射(UG716)

#### PF本地地址映射(UG716表1-7)

| 属性 | DBI Address[11:0] for PF0 | DBI Address[11:0] for PF1 |
|-----|--------------------------|--------------------------|
| Type 0 Header | 0x0 | 0x0 |
| PM | 0x40 | 0x40 |
| MSI | 0x50 | 0x50 |
| PCIE | 0x70 | 0x70 |
| MSIX | 0xB0 | 0xB0 |
| AER | 0x100 | 0x100 |
| SN | 0x148 | 0x148 |
| ARI | 0x158 | 0x158 |
| SPCIE | 0x168 | — |
| PL16G | 0x178 | — |
| MARGIN | 0x19C | — |
| SRIOV | 0x1AC | 0x1AC |
| TPH | 0x1EC | 0x1EC |
| ATS | 0x278 | 0x278 |
| ACS | 0x288 | 0x288 |
| PRS | 0x294 | 0x294 |
| LTR | 0x2A4 | — |
| L1SUB | 0x2AC | — |
| DPA | 0x2BC | 0x2BC |
| RTR | 0x2FC | 0x2FC |
| RAS_DES | 0x308 | 0x308 |
| DLINK | 0x408 | — |
| PORT_LOGIC | 0x700 | — |

#### VF本地地址映射(UG716表1-8)

| 属性 | DBI Address[11:0] |
|-----|-------------------|
| Type 0 Header | 0x0 |
| PCIE | 0x70 |
| MSIX | 0xB0 |
| ARI | 0x158 |
| ACS | 0x288 |
| RTR | 0x2FC |
| PORT_LOGIC | — |

### 5.2 关键寄存器详解(UG716部分内容)

#### 0x00 DEVICE_ID_VENDOR_ID_REG
- Bit[15:0]: Device ID
- Bit[31:16]: Vendor ID

#### 0x04 STATUS_COMMAND_REG
**Status字段:**
- Bit[6:0]: Capabilities List
- Bit[8]: 66MHz Capable
- Bit[9]: Fast B2B Capable
- Bit[10]: Reserved

**Command字段:**
- Bit[2]: Bus Master Enable(BME)
- Bit[1]: Memory Space Enable(MSE)
- Bit[0]: I/O Space Enable(ISE)

#### 0x70-0xA0 PCIE Capability(UG716表2.4)

**0x70 PCIE_CAP_ID_PCIE_NEXT_CAP_PTR_PCIE_CAP_REG:**
- Bit[7:0]: Capability ID(0x10)
- Bit[15:8]: Next Capability Pointer
- Bit[16]: Capability Version

**0x74 DEVICE_CAPABILITIES_REG:**
- Bit[3:0]: Max Payload Size Supported
- Bit[5:4]: Phantom Functions Supported
- Bit[8:6]: Extended Tag Field Supported
- Bit[27:26]: L1 PM Substates Supported

**0x78 DEVICE_CONTROL_DEVICE_STATUS:**
**Device Control:**
- Bit[7:5]: Max Payload Size
- Bit[4]: Extended Tag Field Enable
- Bit[2]: Aux Power PM Enable
- Bit[0]: Correctable Error Reporting Enable

**Device Status:**
- Bit[6]: Unsupported Request Reporting Status
- Bit[5]: Fatal Error Reporting Status
- Bit[4]: Non-Fatal Error Reporting Status
- Bit[3]: Unsupported Request Detected

**0x7C LINK_CAPABILITIES_REG:**
- Bit[3:0]: Max Link Width
- Bit[19:12]: Max Link Speed

**0x80 LINK_CONTROL_LINK_STATUS_REG:**
**Link Control:**
- Bit[7:4]: Link Speed

**Link Status:**
- Bit[3:0]: Negotiated Link Width
- Bit[19:16]: Link Speed

---

## 六、硬件设计指南(UG1307)

### 6.1 SERDES约束

**PH1P硬件特性:**
- 支持SERDES Quad共用
- 需要正确的参考时钟分配
- 需要符合阻抗匹配要求

### 6.2 PCB设计建议

**关键设计点:**
1. 差分对阻抗控制: 85Ω±10%
2. 差分对长度匹配: <5mil
3. 避免过孔和stub
4. 参考平面完整

---

## 七、Native接口转AXI Stream设计

### 7.1 PH1A系列(APUG050)

#### 接口映射
| PCIe Native接口 | AXI Stream接口 | 功能 |
|---------------|---------------|------|
| Client0 | RQ | 发送请求 |
| Radm_Bypass | RC | 接收完成 |
| Radm_Trgt1 | CQ | 接收请求 |
| Client1 | CC | 发送完成 |

#### 接口位宽
- RQ/RC/CQ/CC: 128bit
- 边带信号: 包含TLP类型、地址、长度等

#### 资源占用(EP工程)
- Lut6: 2921 (1.26%)
- Slice: 3418 (1.48%)
- ERAM: 11 (1.2%)

### 7.2 PH2A系列(APUG089)

#### 接口特性
- 支持数据位宽: 512/256/128/64bit
- 提供完善边带信号(TLP类型、地址、长度)
- 支持ECRC校验

#### 资源占用
- LUT: 6084 (2.47%)
- Slice: 10813 (2.19%)
- ERAM: 157 (13.08%)

#### 验证环境
- FPGA: PH2A106FLG676
- TD软件: 6.0.2 108839+
- 支持Gen4×8

---

## 八、DMA设计详解

### 8.1 SGDMA参考设计(APUG069)

#### 核心特性
- Scatter Gather DMA模式
- 数据位宽: PH1A(64/128bit), PH2A(512bit)
- 支持AXI4-MM和AXI4-Stream
- 单通道H2C和C2H传输

#### 性能指标(PH1A400, Gen3×4)
- H2C速率: 22Gbit/s
- C2H速率: 26Gbit/s

#### 资源占用(AXI4-Stream模式)
- LUT6: 7399
- REG: 4554
- ERAM: 23
- GCLK: 7

#### 软件支持
- Linux驱动: Ubuntu 20.04/CentOS 7.4
- Windows驱动: 提供测试程序

---

## 九、高级应用场景

### 9.1 PCIe与SERDES共享(APUG053)

#### X1模式
- PCIe使用Bank83 Lane1
- Lane0用于其他协议(5Gbps/2.5Gbps/1.25Gbps)

#### X2模式
- PCIe使用Bank83
- Bank82用于其他协议

#### 硬件要求
- 器件: PH1A400SFG900
- X1 TD版本: 5.5.1.47579+
- X2 TD版本: 5.5.35105+

### 9.2 RC-EP对接验证(APUG039)

#### 验证环境
- RC板: PH1A400 Demo板
- EP板: PH1A/PH2A Demo板
- 连接: PCIe软排线

### 9.3 Block DMA设计(APUG033)
- 固定长度数据块传输
- 基于Native接口
- 低延迟

---

## 十、设计工具链总结

### 10.1 TD软件版本要求

| FPGA系列 | 最低TD版本 | 推荐功能 |
|---------|-----------|---------|
| PH1A系列 | 5.6.5 98980+ | fix_hold优化 |
| PH2A系列 | 6.0.2 108839+ | Gen4×8支持 |
| PH1P系列 | 特定版本 | SERDES配置 |

### 10.2 仿真工具
- ModelSim SE-64 2020.4
- VCS/Verdi 2017.12

### 10.3 驱动支持
- Linux: Ubuntu 20.04, CentOS 7.4
- Windows: 提供驱动安装包

---

## 十一、常见设计问题与解决方案

### 11.1 时钟相关问题

**问题1**: core_clk直接使用导致fmax不足
**解决**: 使用PLL方案,core_clk → PLL → 0度相移输出 → BUFG

**问题2**: 复位后配置丢失
**解决**: 使用cfg_rom + drp_dbi总线保留配置

**问题3**: app_auxclk不稳定
**解决**: 使用板载晶振,确保free running

### 11.2 时序问题

**问题1**: Set input delay的Hold Check负Slack
**解决**: 使能Phy Opt → Optimize Routing → fix_hold = ON

**问题2**: 接口时序违例
**解决**: 调整PLL位置至X79Y119Z0附近

### 11.3 LTSSM问题

**问题1**: 无法建链
**排查**:
1. 检查smlh_link_up和rdlh_link_up
2. 检查smlh_ltssm_state
3. 检查app_ltssm_enable时序

**问题2**: 建链后数据传输失败
**排查**:
1. 检查BME/MSE/ISE使能
2. 检查BAR配置
3. 检查TLP格式

### 11.4 DMA相关问题

**问题1**: 传输速率低
**优化**:
1. 增大MPS和MRRS
2. 使用Poll模式
3. 优化DMA描述符链表

**问题2**: DMA超时
**排查**:
1. 检查Completion Timeout设置
2. 检查流控信用
3. 检查链路带宽

---

## 十二、技术选型建议

### 12.1 低成本场景
- **IP核**: PH1A PCIe Gen1/2×1/×2
- **接口**: Native接口+ELBI总线
- **DMA**: Block DMA
- **验证**: RC-EP对接验证

### 12.2 高性能场景
- **IP核**: PH2A PCIe Gen3/4×4/×8
- **接口**: Native转AXI Stream(512bit)
- **DMA**: SGDMA(AXI4-MM模式)
- **验证**: PC-EP Linux驱动验证

### 12.3 混合协议场景
- **IP核**: PH1A PCIe×1/×2
- **方案**: 与SERDES DUAL共享
- **约束**: 注意参考时钟分配和速率限制

### 12.4 虚拟化场景
- **IP核**: PH2A PCIe + SR-IOV
- **配置**: 4个PF, 最多256个VF
- **高级特性**: ATS, PASID, ARI

---

## 十三、开发流程最佳实践

### 13.1 设计流程
```
1. 需求分析
   ↓
2. IP配置(IPUG011/IPUG160)
   - 选择Device Type
   - 配置Gen/Lane
   - 配置BAR空间
   - 配置中断
   ↓
3. 接口选择
   - Native接口(UG713)
   - AXI Stream(APUG050/APUG089)
   - ELBI/TRGT1总线
   ↓
4. 时钟复位设计
   - PLL方案(TN705)
   - cfg_rom配置保留
   - app_ltssm_enable控制
   ↓
5. 综合实现
   - 使能fix_hold
   - PLL位置约束
   ↓
6. 仿真验证
   - ModelSim/VCS
   - TLP报文验证
   ↓
7. 上板测试
   - RC-EP对接
   - DMA性能测试
```

### 13.2 调试技巧

**信号监控**:
- cxpl_debug_info: LTSSM状态、链路状态
- smlh_ltssm_state: LTSSM状态机
- radm_trgt1_*: 接收TLP详情

**错误定位**:
- radm_trgt1_tlp_abort: TLP格式错误
- radm_trgt1_ecrc_err: ECRC错误
- trgt_cpl_timeout: 完成超时

---

## 十四、附录

### 14.1 文档索引

**时钟复位:**
- TN705: PH1A100复位和时钟使用指南

**用户手册:**
- UG713: PH1A100 PCIe用户手册(100子系列)
- UG913: PH1A系列PCIe用户手册
- UG1112: PH2A系列PCIe用户手册
- UG1313: PH1P系列PCIe用户手册

**IP配置:**
- IPUG011: PH1A PCIe定制向导IP
- IPUG028: PH1P PCIe定制向导IP
- IPUG160: PH2A PCIe定制向导IP

**硬件设计:**
- UG1307: PH1P硬件设计指南
- UG716: PH1A100寄存器说明

**参考设计:**
- APUG032: PCIe Native转AXI Stream
- APUG050: PH1A Native转AXI Stream
- APUG033: Block DMA
- APUG069: SGDMA
- APUG089: PH2A Native转AXI Stream
- APUG039: RC-EP对接
- APUG053: SERDES共享

### 14.2 关键缩略语

| 缩略语 | 全称 | 说明 |
|-------|------|------|
| PCIe | PCI Express | 高速串行总线 |
| LTSSM | Link Training and Status State Machine | 链路训练状态机 |
| TLP | Transaction Layer Packet | 事务层报文 |
| DBI | Data Bus Interface | 数据总线接口 |
| ELBI | External Local Bus Interface | 外部本地总线接口 |
| AER | Advanced Error Reporting | 高级错误报告 |
| FLR | Function Level Reset | 功能级复位 |
| SR-IOV | Single Root I/O Virtualization | 单根IO虚拟化 |
| MSI/MSI-X | Message Signaled Interrupt | 消息中断 |
| DMA | Direct Memory Access | 直接内存访问 |
| ATU | Address Translation Unit | 地址翻译单元 |

### 14.3 版本历史

- v1.0: 初始版本,基于10份文档
- v2.0: 补充7份新文档,增加时钟复位、寄存器、硬件设计等内容

---

**文档生成日期**: 2026-03-12
**参考文档总数**: 17份
**覆盖FPGA系列**: PH1A, PH1P, PH2A
**核心技术模块**: PCIe硬核、接口转换、DMA、时钟复位、寄存器系统
