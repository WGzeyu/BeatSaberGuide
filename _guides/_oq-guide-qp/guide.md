---
title: "Beat Saber 新手教程 - Quest平台 (QuestPatcher)"
layout: guide
heading: "Beat Saber 新手教程 - Quest平台 (QuestPatcher)"
lead: "本教程**[彩虹]仅适用于一体机平台能Mod的最新版本正版BS[/彩虹]**；[其他设备点此进入PC平台教程 →](../pc-guide/)"
keywords: "BeatSaber, Beat Saber, 节奏光剑, 节奏空间, Mod, 自定义歌曲, 添加歌曲, 歌曲, 自制谱, 中文, 模型, 光剑, 角色, 人物, 场景, 歌单, 曲包"
description: "BeatSaber节奏光剑的新手指南，包含了从Mod安装到自定义歌曲、模型、曲包、游戏翻译等等各种新手教程，持续更新中…"
sidebar:
  - id: jiangji
    title: 降级
  - id: baseinstall
    title: 安装基础组件
    children:
      - id: install_usbdebug
        title: 打开usb调试
      - id: install_backup
        title: 备份游戏数据
      - id: install_qp
        title: 下载QuestPatcher
      - id: install_ddos
        title: 切换下载源
      - id: install_patch
        title: 为游戏打补丁
      - id: install_coremods
        title: 安装核心Mod
      - id: install_recovery
        title: 恢复游戏数据
  - id: addsong
    title: 添加歌曲 (单曲)
    children:
      - id: addsong_beatsaver
        title: 下载歌曲
      - id: addsong_songfolder
        title: 使用PC添加歌曲
      - id: addsong_bss
        title: 游戏内下载歌曲 (新)
      - id: addsong_songdownloader
        title: 游戏内下载歌曲 (旧)
      - id: addsong_custom-songs_1
        title: 游戏内选项位置
  - id: addsong_songpack_nav
    title: 添加歌曲 (合集曲包)
    children:
      - id: addsong_downloadsongpack
        title: 下载歌曲包
      - id: addsong_addsongpack
        title: 添加曲包为单独歌单
      - id: addsong_custom-songs_2
        title: 游戏内选项位置
  - id: addsong_playlist_nav
    title: 添加歌曲 (歌曲列表)
    children:
      - id: addsong_playlist
        title: 下载歌曲列表
      - id: addsong_addplaylist
        title: 使用PC添加歌曲列表
      - id: addsong_custom-songs_3
        title: 游戏内选项位置
  - id: chineselng
    title: 将语言改为中文
    children:
      - id: lng-shixian
        title: 实现方式
      - id: lng-shezhi
        title: 设置方法
  - id: installmod
    title: 安装Mod
    children:
      - id: installmod_download
        title: 通过电脑下载Mod
      - id: installmod_info
        title: Mod用途介绍
      - id: installmod_install
        title: 通过电脑安装Mod
      - id: installmod_manage
        title: 通过电脑管理Mod
  - id: changemodel
    title: 更换光剑、方块、墙壁
    children:
      - id: model_mod
        title: 添加模型功能
      - id: model_download
        title: 模型下载渠道
      - id: model_pc_qp
        title: 使用PC添加模型(QP)
      - id: model_pc_path
        title: 使用PC添加模型(目录)
      - id: model_manage
        title: 管理模型
  - id: otherguine
    title: 其他平台教程 (Steam)
---

## 前言

**该教程只兼容能支持Mod的最新版本的正版游戏，不兼容低于1.24.0版本的Beat Saber。如果你还没有购买游戏，请[点我进入BeatSaber游戏购买教程](../buy/#bs_quest)，请千万不要为盗版付费。**

不推荐使用盗版，有一部分盗版会额外出现卡死与崩溃问题，还可能不能按教程步骤装Mod。

Quest平台现在有两种不同的Mod方式，一个是通过BMBF，另一个是通过QuestPatcher，最终能安装的Mod数量、种类以及歌曲等等都没有区别，只是操作方式不同。

**当前页面是Quest一体机平台的QuestPatcher方案的教程，如果你是使用的其他设备，请[点此切换至PC平台教程](../pc-guide/)；如果你想使用BMBF，请[点此切换至BMBF教程](../oq-guide-bmbf/)。**

| 方案 | 界面 | 操作方式 | 特点 |
|------|------|---------|------|
| **BMBF** | 英文 | 大部分在头显内完成 | 一体机模式内下载Mod、歌曲功能成熟 |
| **QuestPatcher** | 中文 | 大部分在电脑上完成 | 傻瓜式一键操作，也可在一体机模式内下歌 |

与PC平台不同，Quest一体机平台无法直接注入Mod，而是通过类似"破解"的重新封包方式来安装，所以，在打完补丁之后，你将无法使用原版歌曲排行榜以及原版的联机功能。不过，你将可以添加自定义歌曲、使用支持自定义歌曲的排行榜Mod。

游戏更新会导致Mod失效，这时候重新按照本页的教程操作一次，就可以把Mod装回来。这并非游戏开发商封杀Mod，更新游戏需要更改代码，经常会影响到一些Mod。

[警告框]
如果你按照B站视频教程操作遇到了问题，请完全重新按照本页的教程来操作<br>
我们强烈不建议按视频教程操作，很多信息都已过期，甚至可能根本就不完整，不正确<br>
QuestPatcher只能在64位的Windows 10 / 11系统中运行，不兼容32位系统
[/警告框]

---

## 降级 {#jiangji}

**由于以下几种原因，可能需要先降级再安装Mod：**

- **最新版游戏还没有核心Mod，不能打Mod加歌曲，而旧版本的Mod非常丰富**
- 游戏热度降低，部分Mod作者可能已经疲于频繁的游戏更新，还没有适配新版游戏

**降级教程：**

1. **必须确保**你已经在头显内通过商店安装了Beat Saber
2. **必须确保**Beat Saber还没有打过补丁（如果不确定或者已经打过补丁，卸载游戏然后重新安装游戏）
3. 打开 [中国版 QuestPatcher](#install_qp)（以下简称QP）
4. 点击 QP 界面左侧的 `工具&设置`
5. **点击 `一键降级` 按钮**（该功能的原理是使用差异文件降级游戏）
6. 选择想要降级到的版本（如果不知道选哪个版本，选第一个）
7. 点击 `一键降级`
8. 等待完成后，即可按教程来打补丁装Mod

---

## 安装基础组件 {#baseinstall}

### 打开usb调试 {#install_usbdebug}

如果你已经给Quest安装过APK，那么你可以跳过这一步，USB调试用途很多，许多人在看本篇教程时已经打开，所以此处不再赘述，只做简单描述，与 [SideQuest](https://sidequestvr.com/setup-howto) 等软件一样，按照以下步骤操作即可打开USB调试：

1. [进入页面](https://developer.oculus.com/manage/)，注册为开发者，组织名称自己看着设就行
2. [进入页面](https://developer.oculus.com/downloads/package/oculus-adb-drivers/)，同意协议后即可下载驱动包
3. **[彩虹]不要双击打开压缩包，请对着压缩包右键，将压缩包解压至单独文件夹[/彩虹]**
4. 进入解压出来的文件夹，找到 `android_winusb.inf`，对着该文件右键，选择安装
5. 在手机上打开Oculus应用：`设置` > `Oculus Quest xxx ▽` > `┅ 更多设置` > `开发者模式` > `打开开关`
6. 使用手机的USB线（而不是Quest附送的）将Quest连接至电脑，并在VR中允许USB调试

[警告框]如果你没有信用卡，也不用担心不能申请开发者，你可以让已经注册为开发者的玩家通过以下操作邀请你成为开发者：[点我打开页面](https://developer.oculus.com/manage/) → 左侧 `Members` → 右上 `Add Member`[/警告框]

### 备份游戏数据 {#install_backup}

（如果你刚刚购买Beat Saber，还没有成绩数据需要备份，可以跳过此步）

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。

请进入BS的应用数据目录：`\Android\data\com.beatgames.beatsaber\files`

将其中的 `AvatarData.dat`、`PlayerData.dat` 与 `settings.cfg` 复制到电脑中保存即可完成备份。

### 下载 QuestPatcher {#install_qp}

QuestPatcher是给游戏打补丁装Mod的工具，有了它才能安装第三方Mod、才能通过Mod给游戏添加诸如自定义歌曲等功能，它的功能类似于BMBF，只不过是一个PC软件，比BMBF更简单。

![QuestPatcher](img/qp-mod.png)

#### QuestPatcher 中国版

中文界面，目标游戏已绑定为BeatSaber，相比原版增强的功能由MicroBlock与SkyQe大佬制作，感谢他们的贡献

[GH一键下载](https://github.com/MicroCBer/QuestPatcher/releases/latest/download/QuestPatcher-windows-standalone.zip) | [备用网盘下载](../drive/) | [GitHub下载(多系统)](https://github.com/MicroCBer/QuestPatcher/releases/latest)

（网盘下载需进入其中的 `工具` 目录）

#### QuestPatcher 原版

英文界面，不支持一键安装核心Mod，需手动下载安装。

[GH一键下载](https://github.com/Lauriethefish/QuestPatcher/releases/latest/download/QuestPatcher-windows-standalone.zip) | [GitHub下载(多系统)](https://github.com/Lauriethefish/QuestPatcher/releases/latest)

下载压缩包后**先右键选择将其解压至单独文件夹，再进入文件夹打开 `QuestPatcher.exe` 即可运行** QuestPatcher

<details>
<summary>⚠️ MacOS无法运行？点我展开解决方案</summary>

[警告框]
若Win10拦截，请依次在拦截页面上点击：**更多信息** → **仍要运行**<br>
若MacOS无法运行，请**点我**展开解决方案<br>
若打开就出现报错，可在右上角加群反馈，并将报错内容复制出来发给管理员MicroBlock，如果能提供详细日志就更好了：`C:\Users\用户名\AppData\Roaming\QuestPatcher\logs`
[/警告框]

若MacOS打开后提示 `无法打开"QuestPatcher"，因为无法验证开发者。`，且只能选择 `移到废纸篓` 和 `取消`，请尝试在 `访达` 中找到QuestPatcher，对其右键，然后点击右键菜单中的 `打开`，然后在弹出界面中点击 `打开`。

苹果官方的教程页：[https://support.apple.com/zh-cn/guide/mac-help/mh40616/mac](https://support.apple.com/zh-cn/guide/mac-help/mh40616/mac)

[警告框]直接双击打开时是看不到 `打开` 选项的，但在 `访达` 中右键打开，就能看到 `打开` 选项[/警告框]

</details>

### 切换下载源 {#install_ddos}

QuestPatcher的国内镜像下载源正在逐步关闭，为避免出现问题，建议切换下载源。

点击界面左侧的 `工具&设置` → 下滑 → 点击 `使用国内镜像` 即可切换是否经过国内镜像下载资源文件。

如果需要获取最新信息，可在右上角加群询问。

### 为游戏打补丁 {#install_patch}

使用USB数据线将Quest连接至电脑 [并启用USB调试](#install_usbdebug) 后，打开QuestPatcher。

![QP加载](img/qp-loading.png)

初次运行时会下载所需数据，大约需要一分钟左右，请耐心等待。

![QP打补丁](img/qp-patch-0.png)

**点击中间的 `开始打补丁！` 即可为游戏打补丁。**

这一步可能需要两分钟的时间，请耐心等待。

![QP补丁中1](img/qp-patch-1.png)

![QP补丁中2](img/qp-patch-2.png)

### 安装核心Mod {#install_coremods}

[QuestPatcher](#install_qp) 仅仅只能给游戏打个补丁，让游戏支持安装Mod，它本身不会为游戏带来任何功能。

我们平时使用的许多功能，例如自定义歌曲，都是通过Mod来实现的。

而其中，提供最基础的功能的一些Mod，被称为核心Mod，这些Mod无论如何必须全部安装并启用，即使你感觉用不到也得安装，因为有许多第三方Mod都依赖这些基础的核心Mod。

QuestPatcher左上方切换至 `管理Mod` 后，**点击右上方的 `检查核心Mod` 即可一键安装核心Mod！**

[警告框]游戏版本发生变化后，需要先删除以前安装的所有Mod，才能点击 `检查核心Mod`，否则很可能出错[/警告框]

下载核心Mod可能需要一两分钟，请耐心等待，如果此时出现问题，有可能是网络问题。

![QP核心Mod](img/qp-coremod.png)

[警告框]只有中国版QuestPatcher能一键安装核心Mod，原版(英文版)没有该功能，使用原版就只能手动安装[/警告框]

至此，Beat Saber Mod基础组件安装完成。

[警告框]打完Mod之后，首次启动游戏时如果询问是否授予访问存储的权限，请务必选择允许[/警告框]

**核心Mod介绍：**

| 名称 | 介绍 | 项目链接 |
|------|------|----------|
| custom-types | 用于支持Mod运行的核心Mod | [GitHub](https://github.com/sc2ad/Il2CppQuestTypePatching) |
| codegen | 用于支持Mod运行的核心Mod | [GitHub](https://github.com/sc2ad/BeatSaber-Quest-Codegen) |
| questui | 用于支持Mod界面功能的Mod | [GitHub](https://github.com/darknight1050/questui) |
| PinkCore | 提供了许多类似PC平台的基础功能的Mod | [GitHub](https://github.com/BSMGPink/PinkCore) |
| songloader | 用于加载自定义歌曲的Mod | [GitHub](https://github.com/darknight1050/SongLoader) |
| playlistmanager | 用于加载分类歌单的Mod | [GitHub](https://github.com/darknight1050/PlaylistManager) |
| songdownloader | 在游戏内下载歌曲的Mod | [GitHub](https://github.com/darknight1050/SongDownloader) |
| playlistcore | （1.24+） | [GitHub](https://github.com/Metalit/PlaylistCore) |
| playerdatakeeper | 用于保留玩家数据的Mod（1.24+） | [GitHub](https://github.com/Metalit/PlayerDataKeeper) |

[警告框]
请确保核心Mod要**全部**安装并启用，**否则一定会有功能不能生效**、不能正常运行<br>
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod<br>
打完Mod之后，首次启动游戏时会询问是否授予访问存储的权限，请务必选择允许；若没有出现该提示，可在应用列表中点击游戏右下角的 `…`，点击 `权限`，即可手动授予存储权限
[/警告框]

### 恢复游戏数据 {#install_recovery}

（如果你没有备份数据，请跳过此步）

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。

请进入BS的应用数据目录：`\Android\data\com.beatgames.beatsaber\files`

将之前备份的 `AvatarData.dat`、`PlayerData.dat` 与 `settings.cfg` 复制到Quest即可完成恢复。

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

找到歌曲后点击 `Download` 图标即可下载歌曲到本地。

![下载歌曲](img/newbeatsaver_download.png)

### 使用PC添加歌曲 {#addsong_songfolder}

#### 解压为文件夹

如果你下载的压缩包还没解压，请先多选要添加的歌曲压缩包，右键 `解压每个压缩文件到单独的文件夹` 即可得到单独的歌曲文件夹。

![解压歌曲](img/song-unzip.png)

[警告框]图中是多选压缩包时的选项，如果你只选中了一个压缩包，选项名将变成 `解压到[压缩包名称]`[/警告框]

#### 重命名为英文

目前只支持读取文件名为纯英文的歌曲，如果含有中文等非ASCII字符，需要重命名才能识别。（修改文件夹名称不会影响到游戏中显示的歌曲名称；禁止修改文件夹内的文件名，只允许修改文件夹名称）

**如果是WGzeyu整理的曲包则可以忽略这步，已经是纯英文命名；如果你需要批量重命名，可以使用该软件：**

#### BS歌曲路径管理器 (Beat Saber Song Folder Manager)

打开软件，顶部切换至Quest平台，拖入在电脑上保存所有歌曲的文件夹，点 `导出歌单`，即可完成批量重命名。注意：只能拖入电脑上的文件夹，如果用不到歌单，选择路径时可点取消，注意顺序重命名后才能复制到Quest。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

#### 添加歌曲

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。

将单独的歌曲文件夹复制到自定义歌曲目录即可完成添加。

自定义歌曲目录：`\ModData\com.beatgames.beatsaber\Mods\SongLoader\CustomLevels`

[警告框]如果你找不到这个文件夹，确保核心Mod已经生效的情况下，可以手动创建该文件夹[/警告框]

![歌曲目录](img/songloader_path.png)

[警告框]任何情况下均**不支持嵌套子文件夹分类**，如需以分类形式导入曲包，请查看下方的"[歌曲列表](#addsong_addsongpack)"教程[/警告框]

### 游戏内下载歌曲（新） {#addsong_bss}

按照 [Mod安装教程](#installmod) 来手动下载并安装 `BetterSongSearch` 这个Mod之后，从游戏主界面左侧Mod选项中进入 `BETTER SONG SEARCH` 即可下载歌曲。

这个Mod非常好用，你甚至可以不添加合集曲包、只从这里搜索下歌，可以尽可能地缓解歌曲过多容易引起游戏崩溃的问题。（关于这个问题我们后面下载合集曲包的部分会讲）

[懒加载]BetterSongSearch|img/TBSSNS.webp|../speedlimit/TBSSN.webp[/懒加载]

[警告框]你必须要 [安装](#installmod) `BetterSongSearch` 这个Mod并将它与自动安装的支持库都打开，才能找到它的选项[/警告框]

### 游戏内下载歌曲（旧） {#addsong_songdownloader}

进入游戏，点击左侧Mod选项面板中的 `MORE SONG` 或 `SONGDOWNLOADER` 即可进入下载界面。

![SongDownloader主界面](img/songloader_main.webp)

![SongDownloader设置](img/songloader_settings.webp)

### 游戏内选项位置 {#addsong_custom-songs_1}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请 [点我查看核心Mod安装教程](#install_coremods)<br>
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情
[/警告框]

---

## 添加自定义歌曲（合集曲包） {#addsong_songpack_nav}

### 下载歌曲包 {#addsong_downloadsongpack}

![曲包预览1](img/qbv51.png)

![曲包预览2](img/qbv52.png)

#### Beat Saber游戏资源共享

我们整理的大量BS歌曲包都保存在这里，**同时提供了歌曲包以及歌曲列表，建议一起下载**。

[进入网盘](../drive/)

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载(推荐)](https://github.com/WGzeyu/BeatSpider/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

[警告框]在一体机平台，我们建议歌曲数量不要超过600首，因为游戏有个BUG一直没修，任何浏览过的歌曲封面、播放过的歌曲浏览音频等资源，全部都会驻留在内存（RAM）中，即使那首歌曲已经在列表里翻下去、不再显示在画面中，游戏依然不会清理加载它时占用的内存（RAM），翻动歌曲列表会导致占用内存越来越多，满了就崩了，歌曲数量过多将容易在翻动歌曲列表时闪退[/警告框]

### 添加曲包为单独歌单 {#addsong_addsongpack}

歌曲包就是歌曲文件本身，而歌曲列表只是记录了歌曲的一个**歌单**列表，在游戏中相当于一个索引的作用；把歌曲全混在一起放进歌曲目录，然后再把列表放进列表目录，游戏就能靠歌曲列表来识别出独立的分类。没有歌曲列表(歌单)一样能识别歌曲，只是不能实现以独立的分类歌单形式来显示不同的合集曲包，会混在一起。

**首先**，按照"[使用PC添加歌曲列表](#addsong_addplaylist)"教程，将歌曲列表复制到歌曲列表目录。

![列表目录](img/playlist_path.png)

[警告框]
如果你只有曲包没有列表，请查看下方的 [歌曲列表](#addsong_playlist) 教程，可以用 `BS歌曲路径管理器` 将曲包生成为列表<br>
如果游戏识别不到你添加的 `.bplist` 歌曲列表，请尝试将文件重命名为纯英文文件名
[/警告框]

**然后**，按照"[使用PC添加歌曲](#addsong_songfolder)"教程，批量把歌曲命名为不含中、日文的文件名后，**[彩虹]将所有歌曲放于同一文件夹内，一起添加至歌曲目录，不要嵌套分类文件夹。[/彩虹]**（如存在相同歌曲，跳过即可）

![歌曲目录](img/songloader_path.png)

[警告框]
如果你只有列表没有曲包，[请点我进入对应教程](#addsong_addplaylist)<br>
如果你找不到这个文件夹，确保核心Mod已经生效的情况下，可以手动创建该文件夹<br>
如果你额外嵌套了分类文件夹使其与截图不一致，那么将绝对识别不到你添加的歌曲
[/警告框]

至此，曲包添加完成。

后续如果想要更新该曲包，先点击列表顶部的标题，然后再点击右下方的同步按钮即可一键完成更新，包括歌曲文件都会自动下载，无需进行其他操作。

![同步列表](img/playlist_sync_ingame.webp?v=2)

[警告框]
首次下载歌曲时推荐通过网盘下载，不推荐游戏内下载，由于我的曲包太大，会消耗服务器大量流量，下的还慢；以后再下载（一键同步）时，只会下载新增歌曲，数量少，直接让它自动下载就行<br>
部分歌曲列表不支持一键同步；我整理的歌曲列表，在 2022/11/23 之前发布的均不支持一键同步
[/警告框]

### 游戏内选项位置 {#addsong_custom-songs_2}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请 [点我查看核心Mod安装教程](#install_coremods)<br>
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情
[/警告框]

---

## 添加自定义歌曲（歌曲列表） {#addsong_playlist_nav}

### 下载歌曲列表 {#addsong_playlist}

歌曲列表（Playlist）就如同字面意义，是一个 `.bplist` 格式的歌曲列表，内容只是记录了有哪些歌曲，不含歌曲文件本身，所以这些歌曲列表文件都非常小，便于分享。

在Quest平台，导入含有大量歌曲的歌曲包通常需要歌曲列表才能实现单独分类显示，如果你下载的歌曲包没有附带歌曲列表，可以在下方下载 `BS歌曲路径管理器`，它可以将歌曲包转换为歌曲列表。

大多数情况下BS歌单为 `.bplist` 格式，不过有时候也可能是 `.json` 格式，实际上内容都一样，只是后缀不同。（注意：有很多其他文件也是 `.json` 格式，并不是说 `.json` 就一定是歌曲列表）

**你可以在这些地方找到.bplist格式歌曲列表：**

#### BeatSaver

歌曲下载站现已支持分享歌曲列表，里面有非常多的由玩家分享的歌曲列表。

[进入页面](https://beatsaver.com/playlists)

#### BEASTSABER

这个网站有不少国外大佬精心整理的歌曲列表，每个列表内的歌曲数量较少。

[进入页面](https://bsaber.com/category/official-playlists/)

#### BS游戏资源共享

里面有很多我们整理的歌曲列表，还带有对应的曲包文件，可以连列表带歌曲一起添加，歌曲非常多。

[进入网盘](../drive/)

#### BS歌曲路径管理器 (Beat Saber Song Folder Manager)

WGzeyu使用易语言编写的歌单工具，本来是用于PC端分类添加曲包，后来加入了导出歌单功能，**[彩虹]可以将曲包文件夹转换为歌曲列表[/彩虹]** 添加至Quest，同时还能将文件名中含有中文的歌曲重命名为英文。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载(推荐)](https://github.com/WGzeyu/BeatSpider/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

#### Beatlist

一个歌曲列表编辑工具，~~虽然已经停止更新，不过依然可以使用。~~ 现在有大佬接手更新了。

[GitHub下载(推荐)](https://github.com/ranmd9a/beatlist/releases/latest) | [备用下载(网盘)](../drive/) （备用下载在 `工具` 目录内）

### 使用PC添加歌曲列表 {#addsong_addplaylist}

先将 `.bplist` 文件复制到Quest中的歌曲列表存放目录，

歌曲列表目录：`\ModData\com.beatgames.beatsaber\Mods\PlaylistManager\Playlists`

![列表目录](img/playlist_path.png)

[警告框]如果游戏识别不到你添加的 `.bplist` 歌曲列表，请尝试将文件重命名为纯英文文件名[/警告框]

**如果你有歌曲列表对应的歌曲文件**，按"[使用PC添加歌曲](#addsong_songfolder)"的教程将歌曲一起放进歌曲目录即可完成添加。

**如果你还没有歌曲列表对应的歌曲文件**，可以在游戏中选择歌单后点击下载图标，即可开始下载。

![游戏内下载列表](img/playlist_download_ingame.webp?v=2)

### 游戏内选项位置 {#addsong_custom-songs_3}

![自定义歌曲位置](img/custom-levels-8.webp)

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请 [点我查看核心Mod安装教程](#install_coremods)<br>
如果某一首歌曲的Play按钮为灰色无法点击，通常是缺失Mod导致的，点击右上角的问号可查看详情
[/警告框]

---

## 将语言改为中文 {#chineselng}

### 实现方式 {#lng-shixian}

`PolyglotInject` 这个 **Mod** 可以将中文翻译添加至游戏中，为游戏提供更多语言选项。

你可以在下方网盘中下载这个Mod，然后按照 **[Mod安装教程](#installmod_install)** 来操作，即可完成安装。

#### BS游戏资源共享

依次进入 `Mod相关文件` → `【Quest一体机平台】你的游戏版本` → `汉化Mod` 文件夹即可下载该Mod。游戏版本可以在游戏菜单界面地板上的脚印内看到。

[进入网盘](../drive/)

**下载后，[点我进入安装Mod教程](#installmod_install)，跟着该教程操作即可完成安装。**

### 设置方法 {#lng-shezhi}

`PolyglotInject` 应当可以自动检测并切换为系统语言，如果因为某些原因没有自动切换，可以在该位置修改：

![语言设置](../speedlimit/pc-guide/lngnew4.mp4)

---

## 安装Mod {#installmod}

### 通过电脑下载Mod {#installmod_download}

#### Quest Modding（原QuestBoard）

Quest Mod发布网站，打开后点击顶部的 `Released Mods` 可进入Mod下载页面，每个Mod下载链接均直接引用原发布链接，未做转存，所以其中一部分Mod可能需要国际联网才能下载。

[进入Mod列表](https://computerelite.github.io/tools/Beat_Saber/questmods.html) | [进入原网站](https://www.questmodding.com/)

#### BSMG Discord

Mod国际社区的官方群组，Mod可以在左侧进入 `#quest-mods` 频道下载，需国际联网。其中频道比较多，如果进入频道找不到Mod，请仔细检查是不是选错了频道！

[进入频道](https://discord.gg/beatsabermods)

#### BS游戏资源共享

以前我会不定期搬运一些Mod上去，不过现在已停更。里面 **[彩虹]有中文Mod[/彩虹]**。进入 `Mod相关文件` 文件夹即可下载Mod，游戏菜单界面的地板脚印内可看到版本。

[进入网盘](../drive/)（同时提供了PC与一体机平台的Mod，不要选错平台！）

#### ScoreSaber排行榜

需要进入网页预先登录Steam账号后才能下载（无需在Steam购买游戏），网页会生成已内置账号的Mod。不要将mod文件分享给任何人！首次使用切勿科学！他是靠首次使用的IP地址来划分的国家，无法修改！

[进入下载](https://scoresaber.com/quest) （请在网页中选择匹配你游戏的版本）

### Mod用途介绍 {#installmod_info}

**推荐安装Mod：**

| 名称 | 介绍 |
|------|------|
| PolyglotInject | 将更多语言注入到游戏中，让游戏支持显示为中文，[点我进入下载](../drive/) |
| SongBrowser | 歌曲排序、筛选，并显示PP、难度等数据（问题较多，可能导致游戏闪退无法打开） |
| BetterSongSearch | 更好用的搜索、下载歌曲插件，功能极多、响应速度极快，还能在下载前试听歌曲 |
| ScoreSaber | 最大的跨平台排行榜，[点我进入下载](https://scoresaber.com/quest)，自动录制**回放**，可在头显内播放或手动导入电脑播放 |
| BeatLeader | 较大的跨平台排行榜，[点我进入下载](https://github.com/BeatLeader/beatleader-qmod/releases)，自动录制并上传**回放**及详情，可在网页或电脑中播放 |
| Qosmetics | 支持更换光剑、方块、墙壁模型的Mod |
| AnyTweaks | 调整画质、分辨率与刷新率，还可以显示帧率 |
| Chroma | 炫彩扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1ar4y1c7Rm)，不要与ME同时安装，推荐与NE同时安装） |
| **N**oodle**E**xtensions | 面条扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1Pu411S7dW)，不要与ME同时安装，推荐与Chroma同时安装） |
| **M**apping**E**xtensions | 谱面扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1o7411r74p)，不要与NE或Chroma同时安装） |

**注意：**

- Mod格式为 `.qmod`，如果网页中看到多个可下载的文件，结尾为 `.qmod` 的那一个才是可供安装的Mod
- **Quest平台有一部分Mod互相不兼容，尤其是旧版本游戏，新版本好了很多，但还是建议不要装太多Mod，存在不兼容问题时将导致游戏直接闪退无法打开**

[警告框]若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod[/警告框]

### 通过电脑安装Mod {#installmod_install}

打开 [QuestPatcher](#install_qp)，左上方切换至 `管理Mod`，然后将要安装的Mod拖入至软件窗口中，即可完成安装。如果拖入文件没有反应，你也可以点击右上方的 `浏览`，然后选择要安装的Mod，即可完成安装。

![QP Mod管理](img/qp-mod.png)

[警告框]
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod<br>
安装某个Mod时可能会在线下载其依赖的其他Mod，如果网络环境不是很好，可能会下载失败
[/警告框]

### 通过电脑管理Mod {#installmod_manage}

打开 [QuestPatcher](#install_qp)，左上方切换至 `管理Mod`，即可管理Mod。

![QP Mod管理](img/qp-mod.png)

[警告框]若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod[/警告框]

---

## 更换光剑、方块、墙壁 {#changemodel}

### 添加模型功能 {#model_mod}

很多玩家会把模型与Mod搞混，但实际上他俩是完全不同的东西。模型是光剑/方块资源，但游戏并不支持读取你的资源；Mod是由代码组成的模块，为游戏添加了这些功能。

**[彩虹]按照[安装Mod教程](#installmod)来安装对应的Mod，即可为游戏添加更换对应模型的功能。[/彩虹]**

**1.40.0及以上版本游戏：**

在1.40.0版本以后，`Custom Models` 代替了之前版本的 Qosmetics Mod，负责更换光剑、方块与墙壁模型。

**1.37.0及以下版本游戏：**

- 自定义光剑：`QosmeticsWhackers`
- 自定义方块：`QosmeticsCyoobs`
- 自定义墙壁：`QosmeticsBoxes`

比如你想自定义光剑，你需要在安装 `QosmeticsWhackers` Mod以后，再添加光剑模型，才能在游戏中切换光剑。

### 模型下载渠道 {#model_download}

#### Qosmetics Discord

专注于BS Quest模型的群组，作者首选的发布地址，需国际联网。光剑：`#whackers`，方块：`#cyoobs`，墙壁：`#boxes`

[进入频道](https://discord.gg/qosmetics)

Quest新版模型格式：光剑：`.whacker`，方块：`.cyoob`，墙壁：`.box`

### 使用PC添加模型(QP) {#model_pc_qp}

打开 [QuestPatcher](#install_qp)，左上方切换至 `杂项`，在上方的管理文件类型中，选择你要添加的模型类型，然后将模型文件直接拖入软件窗口即可完成添加，如果拖入没反应，你也可以点击下方的 `浏览`，选择文件添加。

[警告框]QuestPatcher同时支持新版与旧版格式模型，切换文件类型时你需要选择新版模型才能添加[/警告框]

![QP模型管理](img/qp-model.png)

需要按照 [管理模型教程](#model_manage) 启用后才会生效

### 使用PC添加模型(目录) {#model_pc_path}

首先，使用数据线将Quest连接至电脑的USB接口，并在Quest的 `允许访问数据` 界面中点击 `允许`。

随后，将下载到的模型放入Quest存储目录的以下位置即可完成添加：

| 模型类型 | 目录路径 | 文件格式 |
|---------|---------|---------|
| 自定义光剑 | `\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Whackers` | `.whacker` |
| 自定义方块 | `\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Cyoobs` | `.cyoob` |
| 自定义墙壁 | `\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Boxes` | `.box` |

注意：`.saber`、`.bloq`、`.pixie` 是PC的模型格式，不兼容Quest！

以自定义光剑举例，添加后目录中是这样的：

![模型目录](img/quesmodel_path.png)

需要按照 [管理模型教程](#model_manage) 启用后才会生效

### 管理模型 {#model_manage}

进入Beat Saber，点击齿轮图标，再点击 `QOSMETICS SABERS`，即可进入模型管理页面。

[警告框]需要先按照 [安装Mod教程](#installmod) 安装 `Qosmetics` Mod，才能找到这个选项[/警告框]

点击 `SELECT` 选择模型；点击 `DELETE` 删除模型；点击 `DEFAULT` 恢复默认；点击 `RELOAD` 刷新列表。

`QOSMETICS SABERS` 设置首页顶部的 `Scores are* xxx` 代表当前设置项是否支持分数提交。当你修改了会影响分数的选项时，将禁止提交分数。

![模型管理](../speedlimit/qosmetics.mp4)

[警告框]如果你不按照 [安装Mod教程](#installmod) 安装 `Qosmetics` Mod，一定会找不到这个选项[/警告框]

左侧面板为详细设置：

![光剑设置](img/newqos_saber.webp)

![方块设置](img/newqos_note.webp)

---

## 其他平台教程 {#otherguine}

### [**点我进入**Steam等PC平台教程](../pc-guide/)

当前页面仅介绍Quest一体机平台的操作，如果你在使用其他设备，请[**点我进入**Steam等PC平台教程](../pc-guide/)。

---

## 关于

[警告框]由于作者没有遇到问题，同时PC版玩的远比Quest版多，所以暂时没有整理出Quest的常见问题解答，盗版可能装不了Mod，如果正版仍然遇到问题建议再仔细看一遍教程，还解决不了可以在右上角加群提问[/警告框]

WGzeyu 版权所有 教程内容采用CC BY-NC-SA进行授权 页面样式模板 [MIT LICENSE](LICENSE)

允许在醒目注明原作者及原链接并保持内容同步更新的前提下完整转载，如果做不到，请直接分享原链接。

感谢MicroBlock为该页面提供的一些前端制作