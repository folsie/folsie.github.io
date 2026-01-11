# GitHub Pages 页面层级结构说明

## 📁 项目结构总览

```
cldmt/
├── 📄 index.html          # 主站点首页 (HTML格式)
├── 📄 index.md            # 主站点首页 (Markdown格式)  
├── 📄 README.md           # GitHub仓库说明 + 备用入口
├── 📄 CNAME               # 自定义域名配置 (www.cldmt.com)
├── 📁 blog/               # 博客文章主目录
│   ├── 📄 Anlogic.md      # Anlogic专栏主页
│   ├── 📄 Anlogic.html    # Anlogic专栏主页(HTML)
│   ├── 📄 Xilinx.md       # Xilinx专栏主页
│   ├── 📄 Xilinx.html     # Xilinx专栏主页(HTML)
│   ├── 📁 Anlogic/        # Anlogic技术文章目录
│   │   ├── 📄 page1.md    # Anlogic文章1 (Markdown)
│   │   ├── 📄 page1.html  # Anlogic文章1 (HTML)
│   │   ├── 📄 page2.md    # Anlogic文章2 (Markdown)
│   │   └── 📄 page2.html  # Anlogic文章2 (HTML)
│   └── 📁 Xilinx/         # Xilinx技术文章目录
│       ├── 📄 page3.md    # Xilinx文章1 (Markdown)
│       └── 📄 page3.html  # Xilinx文章1 (HTML)
└── 📁 pic/                # 图片资源目录 (如果存在)
```

## 🌐 访问路径映射

### 主站点入口
- `https://www.cldmt.com/` → `index.html`
- `https://www.cldmt.com/index.md` → 渲染为HTML
- `https://www.cldmt.com/README.md` → 渲染为HTML

### 技术专栏主页
- `https://www.cldmt.com/blog/Anlogic` → `blog/Anlogic.html`
- `https://www.cldmt.com/blog/Anlogic.html` → 直接访问
- `https://www.cldmt.com/blog/Xilinx` → `blog/Xilinx.html`
- `https://www.cldmt.com/blog/Xilinx.html` → 直接访问

### 具体文章页面
- `https://www.cldmt.com/blog/Anlogic/page1` → `blog/Anlogic/page1.html`
- `https://www.cldmt.com/blog/Anlogic/page1.html` → 直接访问
- `https://www.cldmt.com/blog/Anlogic/page2` → `blog/Anlogic/page2.html`
- `https://www.cldmt.com/blog/Xilinx/page3` → `blog/Xilinx/page3.html`

## 🔗 链接使用规范

### 1. 站内链接推荐格式
```markdown
<!-- 相对路径链接 -->
[Anlogic专栏](../blog/Anlogic.html)
[Xilinx文章](./Xilinx/page3.html)

<!-- 绝对路径链接 -->
[首页](/)
[技术专栏](/blog/)
```

### 2. 文件对应关系
- 每个 `.md` 文件都有一个对应的 `.html` 文件
- GitHub Pages 会自动将 `.md` 渲染为 HTML
- 建议同时维护两种格式以确保兼容性

### 3. 图片资源路径
```markdown
![图片描述](../pic/image.png)    # 上级目录的pic文件夹
![图片描述](./assets/image.png)  # 当前目录的assets文件夹
```

## 🚀 GitHub Pages 处理流程

1. **文件查找顺序**: 
   - `index.html` > `index.md` > `README.md`
   - 对于目录: `index.html` > `index.md` > 自动列表

2. **Markdown渲染**:
   - 所有 `.md` 文件自动转换为 HTML
   - 支持 GitHub Flavored Markdown
   - 保持 YAML front matter

3. **自定义域名**:
   - `CNAME` 文件指定 `www.cldmt.com`
   - SSL 证书自动配置

## 📝 最佳实践

### 新建文章步骤:
1. 在对应品牌目录下创建 `.md` 文件
2. 添加 YAML front matter
3. 使用相对路径链接其他内容
4. 可选: 生成对应的 `.html` 文件
5. 更新专栏主页的导航链接

### 示例文章结构:
```markdown
---
title: "文章标题"
subtitle: "2024.01.01"
category: "教程"
---

# 文章标题

正文内容...

[返回专栏](../Anlogic.html)
```

### 导航菜单示例 (在专栏主页):
```markdown
## 📖 文章列表

- [文章1](./Anlogic/page1.html)
- [文章2](./Anlogic/page2.html)
- [返回首页](../../index.html)
```

## ⚠️ 注意事项

1. **路径大小写**: GitHub Pages 路径区分大小写
2. **缓存问题**: 更新后可能需要清除浏览器缓存
3. **构建时间**: 更改后需要1-2分钟部署生效
4. **错误页面**: 不存在的路径显示404页面

## 🔧 故障排查

如果链接不工作:
1. 检查文件路径是否正确
2. 验证文件是否提交到仓库
3. 检查文件名大小写
4. 等待GitHub Pages构建完成

---

*最后更新: 2026年1月11日*  
*GitHub Pages 自动部署系统*