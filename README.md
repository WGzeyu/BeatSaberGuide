# BeatSaberGuide

Beat Saber 节奏光剑新手教程网站，托管于 GitHub Pages。

**网址**: [https://bs.wgzeyu.com](https://bs.wgzeyu.com)

---

## 目录结构

```
BeatSaberGuide/
├── _config.yml          # Jekyll 配置文件
├── _layouts/            # 页面布局模板
│   ├── default.html     # 基础布局
│   ├── guide.html       # 教程内容页布局
│   └── guide-frame.html # iframe框架页布局
├── _includes/           # 可复用组件
├── _plugins/            # Jekyll 插件
│   └── rainbow-tag.rb   # 自定义标签插件
├── assets/              # 静态资源（CSS、JS、图片、字体）
├── _guides/             # 教程 Markdown 内容
│   ├── pc-guide/        # PC平台教程
│   ├── oq-guide/        # Quest平台选择页
│   ├── oq-guide-qp/     # QuestPatcher教程
│   ├── oq-guide-bmbf/   # BMBF教程（已过时）
│   ├── buy/             # 购买教程
│   ├── pc-faq/          # 问题解答
│   ├── drive/           # 网盘页
│   └── songs/           # 曲包同步
├── speedlimit/          # 共享图片/视频资源
├── index.html           # 网站主页
└── README.md
```

---

## 如何修改教程内容

### 1. 找到对应的 Markdown 文件

所有教程内容都在 `_guides/` 目录下：

| 教程页面 | Markdown 文件路径 |
|----------|------------------|
| PC平台教程 | `_guides/pc-guide/guide.md` |
| Quest平台教程（选择页） | `_guides/oq-guide/guide.md` |
| QuestPatcher教程 | `_guides/oq-guide-qp/guide.md` |
| BMBF教程（已过时） | `_guides/oq-guide-bmbf/guide.md` |
| 购买教程 | `_guides/buy/guide.md` |
| 曲包同步 | `songs/readme.md` |

### 2. Markdown 基本语法

```markdown
## 章节标题 {#anchor-id}

段落内容，支持 **粗体**、*斜体*、`代码` 等格式。

### 子章节标题 {#sub-anchor}

- 列表项1
- 列表项2

[链接文字](../other-page/)
![图片描述](img/image.png)
```

### 3. 特殊格式

#### 页面标题和简介
在 `guide.md` 的 Front Matter 中配置：
```yaml
---
title: "Beat Saber 新手教程 - PC平台"
heading: "Beat Saber 新手教程 - PC平台"
lead: "本教程**[彩虹]仅适用于Steam等PC平台[/彩虹]**"
---
```

#### 彩虹文字（文字本身彩虹色）
```markdown
**[彩虹]这是彩虹高亮文字[/彩虹]**
```

#### 彩虹背景警告框（整段彩虹边框动画）
```markdown
[彩虹框]
这里是警告内容，支持多行文字和链接。
[/彩虹框]
```

#### 红色背景警告框
```markdown
[警告框]
这里是警告内容。
[/警告框]
```

#### 懒加载图片
```markdown
[懒加载]图片描述|占位符路径|真实图片路径[/懒加载]
```

#### 视频（MP4自动转换为video标签）
```markdown
![视频描述](../speedlimit/pc-guide/demo.mp4)
```

### 4. 侧边栏导航配置

在每个 `guide.md` 文件的 Front Matter 配置侧边栏：

```yaml
---
title: "页面标题"
layout: guide
sidebar:
  - id: chapter1
    title: 第一章
  - id: chapter2
    title: 第二章
    children:
      - id: section2-1
        title: 2.1 小节
---
```

`id` 对应章节标题的锚点 ID：`## 章节标题 {#chapter1}`

---

## 本地预览

需要 Ruby 环境，安装 Jekyll 后运行：

```bash
# 安装依赖
bundle install

# 启动本地服务器
bundle exec jekyll serve

# 访问 http://localhost:4000
```

---

## 部署

本项目使用 GitHub Pages 自动部署：

1. 推送到 `main` 分支
2. GitHub Actions 自动构建
3. 部署到 `gh-pages` 分支

---

## 协议

教程内容采用 [CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/) 授权。

允许在醒目注明原作者及原链接并保持内容同步更新的前提下完整转载。

作者：WGzeyu