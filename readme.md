# CLDMT 智能计算与系统工程平台

> 企业门户网站 — [www.cldmt.com](https://www.cldmt.com)

## 项目结构

```
cldmt/
├── index.md                 # 企业门户首页
├── readme.md                # 本文件 — 仓库说明
├── CNAME                    # 自定义域名 www.cldmt.com
├── _config.yml              # Jekyll 配置（站点信息、插件、scope）
├── _layouts/                # 页面模板
│   ├── default.html         #   基础 HTML 骨架
│   ├── home.html            #   首页（Hero + 内容区）
│   ├── column.html          #   专栏 / 目录页
│   └── article.html         #   文章详情页
├── _includes/               # 可复用片段
│   ├── header.html          #   导航栏（首页 | 核心业务 | 技术博客 | 合作生态）
│   └── footer.html          #   页脚
├── assets/css/main.css      # 全站样式（品红光爆主题）
│
├── core_block/              # ★ 核心业务
│   ├── index.md             #   业务总览
│   ├── ai.md                #   AI 智能计算
│   ├── robot.md             #   机器人系统集成
│   └── chip.md              #   芯片与硬件定制
│
├── blog/                    # ★ 技术博客
│   ├── index.md             #   博客首页（Anlogic + Xilinx 入口）
│   ├── Anlogic.md           #   安路专栏
│   ├── Xilinx.md            #   赛灵思专栏
│   ├── Anlogic/             #   安路技术文章（~50 篇）
│   └── Xilinx/              #   赛灵思技术文章
│
├── partners/                # ★ 合作生态
│   ├── index.md             #   生态总览
│   └── wtmec/               #   唯特美科合作专区
│       ├── index.md         #     产品概览
│       ├── power.md         #     电源管理
│       ├── industrial.md    #     工业控制
│       ├── connectivity.md  #     通信与连接
│       ├── embedded.md      #     嵌入式处理
│       └── storage.md       #     存储与接口
│
├── pdf/                     # 技术文档资源（Pin List、应用笔记等）
└── pic/                     # 图片资源
```

## 导航结构

| 导航项 | 路径 | 说明 |
|--------|------|------|
| 首页 | `/` | 企业门户 — 核心业务、博客、合作生态入口 |
| 核心业务 | `/core_block/` | AI · 机器人 · 芯片定制 |
| 技术博客 | `/blog/` | Anlogic + Xilinx 技术专栏 |
| 合作生态 | `/partners/` | 合作伙伴产品专区 |

## 技术栈

- **Jekyll** — GitHub Pages 原生静态站点生成器
- **jekyll-relative-links** — `.md` 相对路径自动转链接
- **jekyll-seo-tag** — SEO meta 标签

## 如何新增文章

1. 在对应目录下创建 `.md` 文件（如 `blog/Anlogic/新文章.md`）
2. 添加 front matter：
   ```yaml
   ---
   title: "文章标题"
   layout: article
   ---
   ```
3. 正文使用标准 Markdown
4. 在专栏主页（如 `blog/Anlogic.md`）添加链接指向新文章

### 链接规范

- 站内链接统一使用 `.md` 相对路径：`[链接文字](../Anlogic/Flash_Selection_UG.md)`
- 跨区域链接使用相对路径回溯：`[安路专栏](../../blog/Anlogic.md)`
- `jekyll-relative-links` 插件会在构建时自动将 `.md` 转为 `.html`

### 区域标识（section）

`partners/` 和 `core_block/` 下的页面通过 `_config.yml` 的 scope 自动注入 `section` 变量，布局模板据此显示对应的面包屑导航。无需在每篇文章中手动设置。

## 注意事项

- 路径区分大小写
- 提交后约 1-2 分钟部署生效
- 浏览器缓存可能需要手动清除

---

*最后更新: 2026年1月*