---
title: "Beat Saber 新手教程 - PC平台"
layout: guide
heading: "Beat Saber 新手教程 - PC平台"
lead: "本教程**[彩虹]仅适用于Steam等PC平台的最新正版BS[/彩虹]**；[Quest请点此进入一体机教程 →](../oq-guide/)"
keywords: "BeatSaber, Beat Saber, 节奏光剑, 节奏空间, Mod, 自定义歌曲, 添加歌曲, 歌曲, 自制谱, 中文, 模型, 光剑, 角色, 人物, 场景, 歌单, 曲包"
description: "BeatSaber节奏光剑的新手教程，包含了从Mod安装到自定义歌曲、模型、曲包、游戏翻译等等各种新手教程，持续更新中…"
sidebar:
  - id: jiangji
    title: 降级
  - id: modinstall
    title: 一键安装Mod
    children:
      - id: modinstall_assistant
        title: ModAssistant
      - id: modinstall_panduan
        title: 检查是否成功
  - id: chineselng
    title: 将语言改为中文
    children:
      - id: lng-shixian
        title: 实现方式
      - id: lng-shezhi
        title: 设置方法
  - id: findpath
    title: 找到游戏目录
    children:
      - id: findpath_steam
        title: Steam
      - id: findpath_oculus
        title: Rift
  - id: addsong
    title: 添加歌曲 (单曲)
    children:
      - id: addsong_beatsaver
        title: 下载歌曲
      - id: addsong_oneclick
        title: 一键添加歌曲
      - id: addsong_zipsong
        title: 手动添加歌曲
      - id: addsong_bss
        title: 游戏内下载歌曲 (新)
      - id: addsong_moresong
        title: 游戏内下载歌曲 (旧)
      - id: addsong_custom-levels_1
        title: 游戏内选项位置
  - id: addsong_folder
    title: 添加歌曲 (合集曲包)
    children:
      - id: addsong_downloadsongpack
        title: 下载歌曲包
      - id: addsong_foldereditor
        title: 添加曲包为单独歌单
      - id: addsong_foldereditor_path
        title: 添加曲包 (路径方案)
      - id: addsong_foldereditor_playlist
        title: 添加曲包 (列表方案)
      - id: addsong_custom-levels_2
        title: 游戏内选项位置
  - id: addsong_playlist_playlist
    title: 添加歌曲 (歌曲列表)
    children:
      - id: addsong_playlist
        title: 下载歌曲列表
      - id: addsong_playlist_oneclick
        title: 一键添加歌曲列表
      - id: addsong_playlist_modassistant
        title: 自动下载歌曲列表
      - id: addsong_playlist_ingame
        title: 手动添加歌曲列表
      - id: addsong_custom-levels_3
        title: 游戏内选项位置
  - id: changemodel
    title: 更换光剑、人物等模型
    children:
      - id: changemodel_installmod
        title: 添加模型功能
      - id: changemodel_modelsaber
        title: ModelSaber
      - id: changemodel_oneclick
        title: 一键添加模型
      - id: changemodel_file
        title: 手动添加模型
      - id: changemodel_moremodel
        title: 游戏内下载模型
      - id: changemodel_mods
        title: 切换模型选项位置
  - id: modmanual
    title: 手动安装Mod
    children:
      - id: modmanual_download
        title: 下载Mod
      - id: modmanual_install
        title: 安装Mod
  - id: otherguine
    title: 其他平台教程 (Quest)
---

## 前言

**当前页面只介绍PC平台（Steam、Rift平台）的新手基础操作，Quest平台请[点我进入一体机教程](../oq-guide/)；** **[彩虹]遇到问题请[点我查看PC问题解答](../pc-faq/)[/彩虹]**。

如果你还没有购买游戏，请[点我进入BeatSaber游戏购买教程](../buy/#bs_steam)。

Beat Saber已正式官方支持自定义歌曲，虽然不装Mod也能导歌，不过我们还是推荐安装Mod。Mod能极大地丰富自定义歌曲功能，例如排序、排行、搜索、回放等，加载速度更快，还能下载歌曲。

虽然游戏更新会导致Mod失效，但其实只需要重新打开Mod安装器，一键安装，就都回来了。这并非游戏开发商封杀Mod，更新游戏需要更改代码，有时会影响到一些Mod。

[警告框]
如果你按照B站视频教程操作遇到了问题，请完全重新按照本页的教程来操作<br>
我们强烈不建议按视频教程操作，很多信息都已过期，甚至可能根本就不完整，不正确<br>
本教程中出现的 `BS` 是 `BeatSaber` 的简称，`PC` 是 `电脑` 的简称
[/警告框]

---

## 降级 {#jiangji}

**由于以下几种原因，目前推荐先降级再安装Mod：**

- 近期游戏更新了底层的Unity引擎，造成了一些问题，也不兼容旧的自定义模型
- 官方提供了便捷的降级方式，一键降级1.29.1（旧Unity）且不会被自动更新
- 游戏热度降低，部分Mod作者可能已经疲于频繁的游戏更新，还没有适配新版游戏
- **最新版游戏的Mod数量还比较少，常用的Mod都还不全，而1.29.1版本的Mod非常丰富**
- 1.29.1与最新版游戏之间差不多，除了Unity版本不同，没有什么明显的变化

如果你不是很想降级，那么你可以忽略这个步骤，只不过Mod可能会少一些。

**降级教程：**

1. 关闭ModAssistant
2. 在Steam中找到 `Beat Saber`
3. 右键 → `属性` → `测试版`
4. 点击"参与测试"右侧的 **`无`**，将其切换至 `legacy1.29.1_unity_ver2019.4.28f1……`
5. 等待下载完成，即可完成降级

[彩虹框]
Pico串流助手与旧版游戏存在冲突，降级后出现手柄问题请 [点我打开手柄解决方法](https://bbs.picoxr.com/post/7265210266523975739) 即可完全解决。<br>
Pico串流助手与Mod还可能有冲突，若出现断连或卡死可以 [点我打开问题解答](../pc-faq/#modp) 试试，也许能解决。<br>
请勿填写测试代码，也不要点击 `检查代码`，这不是测试版，只是利用该功能来提供旧版本游戏。
[/彩虹框]

---

## 一键安装Mod {#modinstall}

### ModAssistant {#modinstall_assistant}

![ModAssistant](img/man2.png)

目前唯一推荐的Mod安装器，具有很完善的Mod相关功能，还可以用于支持OneClick一键添加资源功能。

#### ModAssistant（增强版）

目前ModAssistant有两个不同版本，**下方只提供推荐的增强版**，[如需下载不推荐的原版请点我](https://github.com/Assistant/ModAssistant/releases/latest)。

增强版是中文的Mod列表、默认勾选了一些常用Mod，而原版就只有英文的Mod列表。

[GH一键下载](https://github.com/beatmods-top/ModAssistant/releases/latest/download/ModAssistant.exe) | [备用网盘下载](../drive/) | [GitHub下载](https://github.com/beatmods-top/ModAssistant/releases/latest)

（网盘下载需进入其中的 `工具` 文件夹）

[警告框]
若提示 `通常不会下载ModAssistant...`，请点击：右侧的三个点 → 保留 → 显示详细信息 → 仍然保留<br>
若提示 `Windows已保护你的电脑`，请点击：更多信息 → 仍要运行<br>
**Pico**玩家需注意，Pico串流助手与Mod可能有冲突，要是出问题可以试试 [问题解答](../pc-faq/#modp) 的方法
[/警告框]

**使用方法：**

首先，你需要确保在最后一次安装或更新游戏之后，至少运行过一次游戏，退出后才能安装Mod。直接双击打开软件即可使用，无需放入游戏目录。

**仔细阅读简介内容**，同意后在左侧切换到 `Mod` 选项，勾选Mod后 **[彩虹]点击右下角的[/彩虹]** `安装或更新`，即可一键完成安装。

[警告框]
必须要点击右下角的 `安装或更新` 按钮才能完成Mod安装，不点击则不会进行任何操作！
[/警告框]

安装后在下次运行游戏时Mod将会添加至游戏目录，至此才算完成Mod安装流程，在此之前会暂存在IPA目录。如果你打算在这之后手动安装其他Mod，需要确保上次用完ModAssistant以后至少启动过一次游戏，退出游戏以后才能手动安装。

**ModAssistant只包含作者正式发布并审核通过的Mod，对于测试版或其他未正式发布Mod，请[手动安装该Mod](#modmanual)。**

[警告框]
ModAssistant会自动检测游戏版本，请不要手动将其切换为不兼容的游戏版本，否则会破坏你的游戏！<br>
如果ModAssistant提示你让你检查左下角游戏版本是否正确，请必须先检查确保没问题才能安装Mod！<br>
游戏的地板脚印上会显示版本号，必须确保这个版本号与左下角选择的游戏版本相同，否则会把游戏弄坏！<br>
**Pico**玩家需注意，Pico串流助手与Mod可能有冲突，要是出问题可以试试 [问题解答](../pc-faq/#modp) 的方法<br>
如果在安装Mod过程中遇到问题，请[点我查看Mod问题解答](../pc-faq/#modp)，还是解决不了可在右上角加群提问
[/警告框]

### 检查是否成功 {#modinstall_panduan}

进入歌曲界面、选中自定义歌曲分类（图中黄框），**与图片对比即可得知默认勾选的基础Mod是否成功生效**，没生效也不要着急，图片下方就有解决方法链接。

[懒加载]检查Mod|../speedlimit/pc-guide/modpanduannew.s.webp|../speedlimit/pc-guide/modpanduannew.webp[/懒加载]

[彩虹框]
如果你装不上任何Mod，请[点我进入Mod问题解答](../pc-faq/#modp)，里面有解决方案。（注：歌曲数量与Mod无关）
[/彩虹框]

---

## 将语言改为中文 {#chineselng}

### 实现方式 {#lng-shixian}

`社区翻译|SiraLocalizer` 这个 **Mod** 可以将社区翻译添加至游戏中，为游戏提供更多语言选项。

它现在没有上架ModAssistant，所以你需要从下方网盘中下载这个Mod，然后按照 **[手动安装Mod教程](#modmanual_install)** 来操作，即可完成安装。

#### BeatSaber游戏资源共享

依次进入 `Mod相关文件` → `【Steam与Rift平台】你的游戏版本` 文件夹即可下载该Mod。游戏版本可以在游戏菜单界面地板上的脚印内看到。

[进入网盘](../drive/)

**下载后，[点我进入手动安装Mod教程](#modmanual_install)，跟着该教程操作即可完成安装。**

[警告框]
请务必按照本页 [手动安装Mod教程](#modmanual_install) 来操作，否则缺失步骤将不生效，和没装一样<br>
如果你确认操作无误但就是不能成功汉化、没有中文选项，请在右上角加群反馈给WGzeyu
[/警告框]

### 设置方法 {#lng-shezhi}

最新版 `SiraLocalizer` 可以在首次启动时自动检测并切换为系统语言，如果因为某些原因没有自动切换，可以在以下位置找到该选项：

![语言设置](../speedlimit/pc-guide/lngnew4.mp4)

[警告框]
选择 `简体中文` 点击 `OK` 后，如果游戏还是英文、选项跳回 `English`，请**以正常方式**退出再打开游戏
[/警告框]

---

## 找到游戏目录 {#findpath}

### Steam {#findpath_steam}

![Steam路径1](img/path-steam-1.png)

![Steam路径2](img/path-steam-2.png?v=2)

### Rift {#findpath_oculus}

![Rift路径1](img/path-oculus-1.png)

![Rift路径2](img/path-oculus-2.png)

---

## 添加自定义歌曲（单曲） {#addsong}

### 下载歌曲 {#addsong_beatsaver}

Beat Saber是一个挥砍音符的音乐游戏，要有人为歌曲摆放音符你才有东西砍，这一步骤被称为"作谱"，完整能玩的歌曲也被称为"谱面"，这也就是说游戏识别不了 `.mp3` 这类纯音频文件，因为不含谱面，**你需要从教程给出渠道来下歌才能添加至游戏**。如果喜欢的歌没谱，可以自己作谱 (右上角有群)，或 [使用AI生成 (太差不推荐, 点我进入)](https://beatsage.com/)

#### BeatSaver

目前最大的BeatSaber自定义歌曲(谱面)下载网站，也是各位谱师唯一的发布地址。

[进入源站(推荐)](https://beatsaver.com/) | [进入镜像站](https://bsaber.org/?from_cache=1&sort=uploaded_desc)

进入 [BeatSaver](https://beatsaver.com/)，输入搜索内容或设置过滤方式以后，点击 `Search` 就可以找到歌曲，如果不打算搜索可以不填。

![BeatSaver搜索](img/newbeatsaver.webp)

点开歌曲可以查看详细介绍、各难度详情以及排行榜，下面是各难度详情的图标翻译：

![难度说明](img/lavel_info.png)

### 一键添加歌曲 {#addsong_oneclick}

![BeatSaver一键添加](img/oneclick-beatsaver.png)

在 [ModAssistant](#modinstall_assistant) 的 `选项` 界面中启用BeatSaver的一键添加后，重启浏览器，从 [BeatSaver](https://beatsaver.com/) 找到歌曲后点击 `One-Click` 图标即可一键添加歌曲到游戏中。

![一键添加](img/newbeatsaver_oneclick.png)

点击后会弹出OneClick窗口，可以在里面看到执行状态。

[警告框]
通过ModAssistant注册OneClick以后，请不要对ModAssistant或其所在文件夹执行更名、挪动、删除等操作，这会导致注册失效；如果注册已失效，可打开ModAssistant取消勾选OneClick后重新勾选回去。
[/警告框]

### 手动添加歌曲 {#addsong_zipsong}

![下载歌曲](img/newbeatsaver_download.png)

在 [BeatSaver](https://beatsaver.com/) 中点击 `Download` 图标即可下载，下载之后多选压缩包，右键 `解压每个压缩文件到单独的文件夹`。

[警告框]
图中是多选压缩包时的选项，如果你只选中了一个压缩包，选项名将变成 `解压到[压缩包名称]`
[/警告框]

![解压歌曲](img/song-unzip.png)

随后，将解压出的文件夹放入游戏的自定义歌曲目录中即可完成添加。

自定义歌曲目录：`Beat Saber\Beat Saber_Data\CustomLevels`

![歌曲目录](img/path_song.png)

[警告框]
游戏可能不会自动创建该文件夹，安装核心Mod之后再运行游戏，或者是使用其他方式添加歌曲，才会自动创建该目录。如果你不打算安装Mod，请手动创建该文件夹，建议从上方复制名称，确保名称路径正确<br>
安装核心Mod后将不支持识别嵌套子文件夹，而若是不装Mod，歌曲加载又会超级慢，所以强烈不建议通过嵌套子文件夹形式来进行分类，如果你想要通过文件夹分类导入歌曲，[请点我进入分类添加歌曲教程](#addsong_foldereditor_path)
[/警告框]

### 游戏内下载歌曲（新） {#addsong_bss}

使用 [ModAssistant](#modinstall_assistant) 安装 `更好的歌曲搜索|BetterSongSearch` 后，从游戏主界面左侧Mod选项中进入 `BETTER SONG SEARCH` 即可下载歌曲。

[懒加载]BetterSongSearch|img/TBSSNS.webp|../speedlimit/TBSSN.webp[/懒加载]

[警告框]
如果内容加载不出、歌曲下载缓慢或下载失败，可能是由于网络原因导致的。
[/警告框]

### 游戏内下载歌曲（旧） {#addsong_moresong}

使用 [ModAssistant](#modinstall_assistant) 安装过默认勾选的Mod后，从游戏主界面左侧Mod选项中进入 `MORE SONGS` 即可下载歌曲。

[懒加载]MoreSongs|img/Tnewloading.webp|../speedlimit/pc-guide/Tmoresong.new.webp[/懒加载]

[警告框]
如果内容加载不出、歌曲下载缓慢或下载失败，可能是由于网络原因导致的。
[/警告框]

### 游戏内选项位置 {#addsong_custom-levels_1}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情<br>
如果在添加歌曲过程中遇到问题，请[点我查看歌曲问题解答](../pc-faq/#songp)，还是解决不了可在右上角加群提问
[/警告框]

---

## 添加自定义歌曲（合集曲包） {#addsong_folder}

### 下载歌曲包 {#addsong_downloadsongpack}

![曲包预览1](img/qbv51.png)

![曲包预览2](img/qbv52.png)

#### Beat Saber游戏资源共享

我们整理的大量BeatSaber歌曲包都保存在这里，下载曲包后解压至单独的文件夹即可添加。（多选压缩包时的右键选项才有 `解压至单独文件夹`，而单选时，这个选项叫做 `解压至[压缩包名]`）

[进入网盘](../drive/) （推荐从前两个网盘的 `歌曲压缩包` 目录中下载）

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载](https://github.com/WGzeyu/BeatSpider/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

### 添加曲包为单独歌单 {#addsong_foldereditor}

在PC平台，有两种完全不同的方案可以将曲包以单独歌单形式添加至游戏中，以下是他们之间的区别：

| 方案 | 操作复杂度 | 重复歌曲占用 | 更新方式 |
|------|-----------|-------------|---------|
| 歌曲路径方案 | 更**简单** | **会**重复占用 | **自动**更新(需ResilioSync) |
| 歌曲列表方案 | 稍**复杂** | **不会**重复占用 | **一键**更新 |

如果你打算添加的曲包数量不是特别多，我推荐歌曲路径方案，否则，推荐歌曲列表方案。

**如果你想实现自动/一键更新曲包，要注意：**

- 歌曲路径方案：必须通过顶部导航栏中曲包同步中的ResilioSync渠道下载，才能实现自动更新
- 歌曲列表方案：必须从网盘中下载我提供的歌曲列表才能实现一键更新，推荐从前两个网盘下载歌曲压缩包

[警告框]
请不要同时使用两种方案添加同一曲包，只会白白浪费时间与硬盘空间。
[/警告框]

### 添加曲包为单独歌单（歌曲路径方案） {#addsong_foldereditor_path}

![歌曲路径管理器](img/bssongfoldereditor.png?v=2)

#### Beat Saber 歌曲路径管理器 (Beat Saber Song Folder Manager)

WGzeyu使用易语言编写的歌曲路径管理工具，支持拖入添加、路径纠错、更换封面等诸多功能，使用简单。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

下载 `歌曲路径管理器` 之后直接运行即可使用，这个软件可以将游戏外的文件夹设置为自定义歌曲目录。

**打开软件，将曲包解压出的文件夹拖入窗口内，然后点击 `保存列表`，即可完成曲包添加。**

无需复制文件！无需放到游戏的歌曲目录！`保存列表` 后再打开游戏，将直接可以看到这些曲包！

[彩虹框]
游戏顶部显示 `Loading x Additional Song folder` 代表正在加载你添加的歌曲文件夹，请耐心等待<br>
添加大量歌曲后的首次启动，加载就是会很慢，可能需要十多分钟，首次加载完成后再次加载速度就快了。
[/彩虹框]

[警告框]
需要使用 [ModAssistant](#modinstall_assistant) 安装 `SongCore` 这个默认勾选的核心Mod，装好之后添加的曲包才能生效。
[/警告框]

### 添加曲包为单独歌单（歌曲列表方案） {#addsong_foldereditor_playlist}

歌曲包就是歌曲文件本身，而歌曲列表只是记录了歌曲的一个**歌单**列表，在游戏中相当于一个索引的作用；把歌曲全混在一起放进歌曲目录，然后再把列表放进列表目录，游戏就能靠歌曲列表来识别出独立的分类。没有歌曲列表(歌单)一样能识别歌曲，只是不能实现以独立的分类歌单形式来显示不同的合集曲包，会混在一起。

**首先**，按照"[手动添加歌曲列表](#addsong_playlist_ingame)"教程，将歌曲列表复制到歌曲列表目录。（支持嵌套子文件夹）

![列表目录](img/path_list.png)

[警告框]
如果你只有曲包没有列表，请查看下方的 [歌曲列表](#addsong_playlist) 教程，可以用 `BS歌曲路径管理器` 将曲包生成为列表
[/警告框]

**然后**，按照"[手动添加歌曲](#addsong_zipsong)"教程，将所有歌曲移动至同一文件夹内，一起添加至歌曲目录。**[彩虹]（不支持嵌套子文件夹，若存在相同歌曲，跳过即可）[/彩虹]**

![歌曲目录](img/path_song.png)

[警告框]
如果你只有列表没有曲包，[请点我进入对应教程](#addsong_playlist_ingame)
[/警告框]

至此，曲包添加完成。

后续如果想要更新该曲包，先点击列表顶部的标题，然后再点击右上角的同步按钮即可一键完成更新，新歌单以及歌曲文件都会一起下载，无需进行其他操作。

![同步列表](img/playlist_sync.webp)

<details>
<summary>

[警告框]
需要先 [一键安装](#modinstall) 或 [手动安装](#modmanual) `PlaylistManager` 这个Mod，装好之后添加的曲包才能生效<br>
首次下载歌曲时推荐通过网盘下载，不推荐游戏内下载，由于我的曲包太大，会消耗服务器大量流量，下的还慢；以后再下载（一键同步）时，只会下载新增歌曲，数量少，直接让他自动下载就行<br>
部分歌曲列表不支持一键同步；我整理的歌曲列表，在 2022/11/23 之前发布的均不支持一键同步
[/警告框]

</summary>

如果你想通过ResilioSync实现曲包同步更新，需要注意：<br>
1. 首次下载曲包文件时，通过网盘或同步下载均可，之后请不要尝试通过ResilioSync同步更新歌曲文件<br>
2. 首次下载曲包文件时不推荐在游戏内下载，由于我的曲包太大，会下的很慢，还会消耗歌曲网站大量流量<br>
3. 下载歌曲列表时，请通过ResilioSync将列表下载到[游戏的歌曲列表目录](#addsong_playlist_ingame)，（支持嵌套子文件夹）<br>
4. 必须要在ResilioSync的歌曲列表的 `首选项` 中，取消勾选 `在文件夹存档中存储已删除的文件`<br>
5. 后续曲包更新后，可以[在游戏内通过歌曲列表下载缺失歌曲](#addsong_playlist_ingame)，变动歌曲一般不多，所以不会下多久

</details>

### 游戏内选项位置 {#addsong_custom-levels_2}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情<br>
如果在添加歌曲过程中遇到问题，请[点我查看歌曲问题解答](../pc-faq/#songp)，还是解决不了可在右上角加群提问
[/警告框]

---

## 添加自定义歌曲（歌曲列表） {#addsong_playlist_playlist}

### 下载歌曲列表 {#addsong_playlist}

歌曲列表（Playlist）就如同字面意义，是一个 `.bplist` 格式的歌曲列表，内容只是记录了有哪些歌曲，不含歌曲文件本身，所以这些歌曲列表文件都非常小，便于分享。

大多数情况下BS歌单为 `.bplist` 格式，不过有时候也可能是 `.json` 格式，实际上内容都一样，只是后缀不同。（注意：有很多其他文件也是 `.json` 格式，并不是说 `.json` 就一定是歌曲列表）

**你可以在这些地方找到.bplist格式歌曲列表：**

#### BeatSaver

歌曲下载站现已支持分享歌曲列表，里面有非常多的由玩家分享的歌曲列表。

[进入页面](https://beatsaver.com/playlists)

#### BEASTSABER

这个网站有不少国外大佬精心整理的歌曲列表，每个列表内的歌曲数量较少。

[进入页面](https://bsaber.com/category/official-playlists/)

#### BeatSaber游戏资源共享

里面有很多我们整理的歌曲列表，不过我更推荐直接下载曲包而不是列表，按"[添加曲包为单独歌单](#addsong_foldereditor)"添加。PC平台可以 [直接添加曲包文件夹为单独歌单](#addsong_foldereditor)，用不着添加歌曲列表，网盘里的列表通常是准备给Quest平台用。

[进入网盘](../drive/)

#### BS歌曲路径管理器

WGzeyu使用易语言编写的歌单工具，本来是用于PC端分类添加曲包，后来加入了导出歌单功能，现在可以将歌曲包转换为歌曲列表，不过我更推荐点击保存列表，直接就能用，无需导出歌单添加。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载(推荐)](https://github.com/WGzeyu/BeatSpider/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

#### Beatlist

一个歌曲列表编辑工具，~~虽然已经停止更新，不过依然可以使用。~~ 现在有大佬接手更新了。

[GitHub下载(推荐)](https://github.com/ranmd9a/beatlist/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

### 一键添加歌曲列表 {#addsong_playlist_oneclick}

![Playlist一键添加](img/oneclick-playlist.png)

在 [ModAssistant](#modinstall_assistant) 的 `选项` 界面中启用Playlist的一键添加后，重启浏览器，从 [BEASTSABER](https://bsaber.com/category/playlists/) 找到歌曲列表后点击 `OneClick` 图标即可一键添加歌曲列表到游戏中。

![BEASTSABER Playlist](img/bsaber-playlist.png)

[ModAssistant](#modinstall_assistant) 会在添加歌曲列表之后，自动下载列表中的歌曲文件。

[警告框]
需要先 [一键安装](#modinstall) 或 [手动安装](#modmanual) `PlaylistManager` 这个Mod，装好之后添加的歌曲列表才能生效。
[/警告框]

### 自动下载歌曲列表 {#addsong_playlist_modassistant}

打开 [ModAssistant](#modinstall_assistant)，切换至 `选项` 页面，点击 `将歌曲列表添加到游戏并下载歌曲` 或 `将歌单下载进游戏`（取决于版本，翻译文本不同）。

![ModAssistant Playlist](img/modassistant_playlist.png)

然后选择你的 `.bplist` 文件即可完成添加，[ModAssistant](#modinstall_assistant) 会添加歌曲列表并自动下载歌曲。

[警告框]
需要先 [一键安装](#modinstall) 或 [手动安装](#modmanual) `PlaylistManager` 这个Mod，装好之后添加的歌曲列表才能生效。
[/警告框]

### 手动添加歌曲列表 {#addsong_playlist_ingame}

将歌曲列表的 `.bplist` 文件，放入歌曲列表目录即可完成添加：`Beat Saber\Playlists`

![列表目录](img/path_list.png)

如果你有歌曲列表对应的歌曲包，[将歌曲添加至游戏](#addsong_zipsong) 即可。

没有对应的歌曲包也没关系，进入游戏，选择对应的歌单，先点击顶部的歌单标题后，再点击 `DOWNLOAD` 就可以在游戏中下载缺失的歌曲文件。注：下方的 `DELETE` 是删除歌曲列表的按钮，点击后可以删除整个歌曲列表。

![游戏内下载列表](img/playlist_ingame.webp?v=2)

[警告框]
需要先 [一键安装](#modinstall) 或 [手动安装](#modmanual) `PlaylistManager` 这个Mod，装好之后添加的歌曲列表才能生效。
[/警告框]

### 游戏内选项位置 {#addsong_custom-levels_3}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情<br>
如果在添加歌曲过程中遇到问题，请[点我查看歌曲问题解答](../pc-faq/#songp)，还是解决不了可在右上角加群提问
[/警告框]

---

## 更换光剑、人物等模型 {#changemodel}

### 添加模型功能 {#changemodel_installmod}

很多玩家会把模型与Mod搞混，但实际上他俩是完全不同的东西。模型是光剑/人物资源，但游戏并不支持读取你的资源；Mod是由代码组成的模块，为游戏添加了这些功能。

**[彩虹]按照[一键安装Mod](#modinstall)或[手动安装Mod](#modmanual)教程来安装对应的Mod，即可为游戏添加更换对应模型的功能。[/彩虹]**

| 模型类型 | 对应Mod |
|---------|---------|
| 自定义光剑 | `Saber Factory`（光剑工坊） |
| 自定义场景 | `Custom Platforms` |
| 自定义人物 | `Custom Avatars` |
| 自定义方块 | `Custom Notes` |

比如你想添加自定义人物，那么**你需要在安装人物Mod**（`自定义人物|CustomAvatars`）**以后**，添加人物模型（`.avatar`格式）才可以进游戏选择人物，由于人物的特殊性，你还需要通过相机Mod（`相机v2|Camera2`）来设置第三人称视角，才能从电脑上看到这个人物。

我经常见到有玩家把模型与Mod弄混，加完模型不装Mod，游戏没有更换模型的功能，也就找不到选项。甚至，还有人明明使用的是人物模型却安装了场景Mod，还跑来找我说按教程做了没用......

[警告框]
如果ModAssistant([一键安装](#modinstall))里面没有对应的Mod，请尝试 [手动安装](#modmanual) 该Mod<br>
如果你不安装对应的Mod，游戏里绝对不会有更换模型的功能，也就没有对应的选项<br>
注意！游戏最新更新的1.29.4版本（2023/05/09）由于升级了Unity版本并改为了OpenXR，导致无法兼容以前的所有模型，目前来看得让之前的模型作者重新导出模型才可以兼容新版游戏<br>
如果你现在就想换模型，可以先将游戏降级至1.29.1；如果你的游戏版本不高于1.29.1，可忽略本公告
[/警告框]

### ModelSaber {#changemodel_modelsaber}

![ModelSaber](img/modelsaber.png)

#### ModelSaber

目前最大的PC平台BS模型资源下载网站，选择模型类型即可浏览与下载。

[进入ModelSaber](https://modelsaber.com/)

### 一键添加模型 {#changemodel_oneclick}

![ModelSaber一键添加](img/oneclick-modelsaber.png)

在 [ModAssistant](#modinstall_assistant) 的 `选项` 界面中启用ModelSaber的一键添加后，重启浏览器，从 [ModelSaber](https://modelsaber.com/) 找到模型后点击 `Install` 即可一键添加模型到游戏中。

![ModelSaber Install](img/modelsaber-oneclick.png)

点击后会弹出OneClick窗口，可以在里面看到执行状态。

[警告框]
如果下载缓慢或下载失败，一般是网络原因导致。
[/警告框]

### 手动添加模型 {#changemodel_file}

![ModelSaber Download](img/modelsaber-download.png)

在 [ModelSaber](https://modelsaber.com/) 中点击 `Download` 即可下载模型。

随后，将下载到的模型文件放到对应的模型目录即可完成添加：

| 模型类型 | 目录路径 | 文件格式 |
|---------|---------|---------|
| 自定义光剑 | `Beat Saber\CustomSabers` | `.saber` |
| 自定义场景 | `Beat Saber\CustomPlatforms` | `.plat` |
| 自定义人物 | `Beat Saber\CustomAvatars` | `.avatar` |
| 自定义方块 | `Beat Saber\CustomNotes` | `.bloq` |

如果找不到目录可以自己创建一个，确保名称和路径完全相同即可。

### 游戏内下载模型 {#changemodel_moremodel}

使用 [ModAssistant](#modinstall_assistant) 安装 `模型下载器|ModelDownloader` 之后，从游戏主界面左侧Mod选项中进入 `MORE MODEL` 即可下载模型。

![More Model](img/Tmoremodel.webp)

### 切换模型选项位置 {#changemodel_mods}

![Mod选项位置](img/mods.new.new.jpg)

| 模型类型 | 选项名称 |
|---------|---------|
| 自定义光剑 | `SABERFACTORY`（光剑工坊） |
| 自定义场景 | `CUSTOM PLATFORMS` |
| 自定义人物 | `AVATARS` |
| 自定义方块 | `CUSTOM NOTES` |

[警告框]
如果在添加模型过程中遇到问题，请[点我查看模型问题解答](../pc-faq/#modusep)，还是解决不了可在右上角加群提问<br>
你需要先 [一键安装](#modinstall) 或 [手动安装](#modmanual) 安装对应的Mod，才能找到更换相应模型的选项<br>
如果ModAssistant([一键安装](#modinstall))里面没有对应的Mod，请尝试 [手动安装](#modmanual) 该Mod
[/警告框]

---

## 手动安装Mod {#modmanual}

通常我们还是建议使用 [ModAssistant](#modinstall_assistant) 来安装Mod。只不过，一些时候，如果Mod进行了大改，又或者是一个全新推出的Mod，一段时间内很可能只会以测试版发布，由于不够稳定，所以不能上架 [ModAssistant](#modinstall_assistant)。而这个时候，就需要手动下载并安装测试版Mod。其实，操作起来并不复杂。

[警告框]
测试版Mod可能会存在BUG，导致游戏出错或降低性能，如果遇到奇怪问题请先尝试移除测试版Mod。
[/警告框]

### 下载Mod {#modmanual_download}

#### BSMG Discord

国际社区的官方群组，作者首选的发布地址，可以在其中的 `#pc-mods` 分类下载测试版Mod，英文，需国际联网。

[进入频道](https://discord.gg/beatsabermods)（同时提供了PC与一体机平台的Mod，不要选错分类！）

#### BeatSaber游戏资源共享

以前会不定期搬运些Mod上去，不过现在已停更。**[彩虹]里面有中文Mod[/彩虹]**。进入 `Mod相关文件` 文件夹即可下载测试版Mod，游戏菜单界面的地板脚印内可看到版本。

[进入网盘](../drive/) **[彩虹]（同时提供了PC与一体机平台的Mod，不要选错平台！）[/彩虹]**

### 安装Mod {#modmanual_install}

**首先，使用 [ModAssistant](#modinstall_assistant) 点击 `安装或更新`，一键装上它默认勾选的核心Mod**，其他Mod均依赖这些Mod才能运行。（并不是使用ModAssistant安装你下载的Mod，而是直接安装它默认勾选的那些，先把基础打上）

[彩虹框]
如果你不打基础，手动安装的Mod **一定会无法运行**，所有Mod都依赖它默认勾选的那些核心Mod！<br>
只有在安装的基础Mod正确生效以后，手动安装的Mod才能正常运行，[点我查看如何检查是否生效](#modinstall_panduan)。
[/彩虹框]

如果你下载到的Mod是一个压缩包，请先将其解压至单独文件夹，并进入解压出的文件夹。

如果你的游戏还在运行，请先退出游戏。

**情况一：** 如果下载到的/解压出来的只有 `.dll` 文件，将其放置到：`Beat Saber\Plugins`，也就是游戏目录下的Plugins文件夹中。

**情况二：** 如果下载到的/解压出来的是多个文件夹，或者是有与游戏中名称相同的文件夹，全选之后将其放置到：`Beat Saber`，也就是游戏根目录中。如果出现替换提示请选择替换，没出现也很正常。

[警告框]
请仔细核对文件路径不要放错，放错位置也将导致Mod **一定会无法运行**<br>
如果你打开了 `Beat Saber\Beat Saber_Data` 或者它的子目录，那你就进错文件夹了！
[/警告框]

至此安装完成。如果安装的Mod未生效，请检查文件放置路径以及版本是否正确，依赖Mod是否已安装。

![手动安装Mod演示](../speedlimit/mod_new.mp4)

---

## 其他平台教程 {#otherguine}

### [**点我进入**Quest一体机教程](../oq-guide/)

当前页面仅介绍Steam等PC平台的操作，如果你在使用Quest一体机平台，请[**点我进入**Quest一体机教程](../oq-guide/)。

---

## 关于

[警告框]
此页仅介绍新手基础操作，遇到问题请[点我查看问题解答](../pc-faq/)，解决不了可在右上角加群提问。
[/警告框]

WGzeyu 版权所有 教程内容采用CC BY-NC-SA进行授权 页面样式模板 [MIT LICENSE](LICENSE)

允许在醒目注明原作者及原链接并保持内容同步更新的前提下完整转载，如果做不到，请直接分享原链接。

感谢MicroBlock为该页面提供的一些前端制作