---
title: "Beat Saber 新手教程 - Quest平台 (BMBF)"
layout: guide
heading: "Beat Saber 新手教程 - Quest平台 (BMBF)"
lead: "本教程**[彩虹]仅适用于一体机平台能Mod的最新版本正版BS[/彩虹]**；[其他设备点此进入PC平台教程](../pc-guide/)"
keywords: "BeatSaber, Beat Saber, 节奏光剑, 节奏空间, Mod, 自定义歌曲, 添加歌曲, 歌曲, 自制谱, 中文, 模型, 光剑, 角色, 人物, 场景, 歌单, 曲包"
description: "BeatSaber节奏光剑的新手指南，BMBF方案教程"
sidebar:
  - id: warning
    title: 重要提示
  - id: otherguine
    title: 其他方案
---

## 重要提示 {#warning}

[警告框]
BMBF方案已经过时且无法使用。BMBF不支持V51及以上系统版本的Quest设备。

请[点此切换至QuestPatcher教程](../oq-guide-qp/)。
[/警告框]

---

## 其他方案 {#otherguine}

### [点我进入QuestPatcher教程](../oq-guide-qp/)

当前BMBF方案已无法使用，请切换至QuestPatcher方案。

---

## 前言

**该教程只兼容能支持Mod的最新版本的正版游戏，不兼容低于1.24.0版本的Beat Saber。**<br>
如果你还没有购买游戏，请[点我进入BeatSaber游戏购买教程](../buy/#bs_quest)，请千万不要为盗版付费。<br>
不推荐使用盗版，有一部分盗版会额外出现卡死与崩溃问题，还可能不能按教程步骤装Mod。

Quest平台现在有两种不同的Mod方式，一个是通过BMBF，另一个是通过QuestPatcher，<br>
最终能安装的Mod数量、种类以及歌曲等等都没有区别，只是操作方式不同。

**当前页面是Quest一体机平台的BMBF方案的教程，**<br>
如果你是使用的其他设备，请[点此切换至PC平台教程](../pc-guide/)；如果你想使用QP，请[点此切换至QuestPatcher教程](../oq-guide-qp/)。

**BMBF**：英文界面，操作步骤较多，大部分操作在头显内完成，一体机模式内的下载Mod、歌曲功能很成熟。<br>
**QuestPatcher**：中文界面，傻瓜式一键操作，大部分操作在电脑上完成，也可以在一体机模式内下歌。

与PC平台不同，Quest一体机平台无法直接注入mod，而是通过类似"破解"的重新封包方式来安装，<br>
所以，在打完补丁之后，你将无法使用原版歌曲排行榜以及原版的联机功能。<br>
不过，你将可以添加自定义歌曲、使用支持自定义歌曲的排行榜Mod。

游戏更新会导致Mod失效，这时候重新按照本页的教程操作一次，就可以把Mod装回来。<br>
这并非游戏开发商封杀Mod，更新游戏需要更改代码，经常会影响到一些Mod。

[警告框]
如果你按照B站视频教程操作遇到了问题，请完全重新按照本页的教程来操作，<br>
我们强烈不建议按视频教程操作，很多信息都已过期，甚至可能根本就不完整，不正确。
[/警告框]

---

## 降级 {#jiangji}

**由于以下几种原因，目前需要先降级再安装Mod：**<br>
　·近期游戏更新了底层的Unity引擎，造成了一些问题，还可能不兼容旧的自定义模型<br>
　·游戏热度降低，部分Mod作者可能已经疲于频繁的游戏更新，还没有适配新版游戏<br>
　·**最新版游戏还没有核心Mod，不能打Mod加歌曲，而1.28.0版本的Mod非常丰富**<br>
　·1.28.0与最新版游戏之间差不多，除了Unity版本不同，没有什么明显的变化

降级教程：<br>
　0. **必须确保**你已经在头显内通过商店安装了Beat Saber<br>
　1. **必须**用你买过游戏的账号登录Oculus(Meta)官网（[可点我登录官网](https://secure.oculus.com/my/orders/)）<br>
　2. **必须**进入订单页面，这样能自动把登录状态同步到旧地址（[点我直达订单页面](https://secure.oculus.com/my/orders/)）<br>
　3. [点我下载1.28.0版本游戏APK](https://securecdn.oculus.com/binaries/download/?id=8838143419592875)（[点我可选择其他版本下载](https://oculusdb.rui2015.me/id/2448060205267927?connected=versions)）<br>
　4. 使用Sidequest卸载Beat Saber（不推荐在头显内卸载，卸不干净可能会导致问题）<br>
　5. 使用Sidequest安装刚才下载的游戏APK<br>
　6. 等待安装完成后，即可完成降级步骤。

[警告框]
若APK下载失败，要么是没识别到账号要么是网络问题，若错误代码有404则一定没有识别到账号授权<br>
如果你的Quest系统更新至≥v51版本后游戏出现问题，将BMBF更新至最新版后，按照上方的降级教程将游戏卸载重装一次、再使用最新版BMBF重打补丁即可恢复正常。
[/警告框]

---

## 安装基础组件 {#baseinstall}

### 安装SideQuest {#install_sidequest}

Oculus Quest平台的实用工具，提供了例如APK安装、数据备份，以及系统选项修改等功能。

[SideQuest官网下载](https://sidequestvr.com/setup-howto)

由于官网的安装步骤以及截图已经很完善，此处不再赘述，只针对每步做个简单翻译。

1. [进入页面](https://developer.oculus.com/manage/)，注册为开发者，组织名称自己看着设就行；<br>
2. [进入页面](https://developer.oculus.com/downloads/package/oculus-adb-drivers/)，同意协议后即可下载驱动包（若系统为MacOS请跳过2-6步）；<br>
3. **对着下载到的压缩包右键，解压至单独文件夹！这一步一定不能忽略！必须要解压！！！！**；<br>
4. 都说了一定要先解压！直接双击打开是不行的！！必须先右键解压！！！！！！！！！！！；<br>
5. 不要打开压缩包，直接对着压缩包右键解压，不能打开压缩包后只解压其中某个独立文件！；<br>
6. 进入解压出来的文件夹，找到`android_winusb.inf`，对着该文件右键，选择安装；<br>
7. 在手机上打开Oculus应用：`设置` > `Oculus Quest xxx ▽` > `┅ 更多设置` > `开发者模式` > `打开开关`；<br>
8. 使用手机的USB线（而不是Quest附送的）将Quest连接至电脑，并在VR中允许USB调试。

当SideQuest左上角显示为绿色圆圈与设备名称时，代表已成功连接你的Quest设备。

[警告框]
如果你没有信用卡，也不用担心不能申请开发者，你可以让已经注册为开发者的玩家通过以下操作邀请你成为开发者：[点我打开页面](https://developer.oculus.com/manage/) → 左侧 `Members` → 右上 `Add Member`
[/警告框]

### 备份游戏数据 {#install_backup}

（如果你刚刚购买Beat Saber，还没有成绩数据需要备份，可以跳过此步）

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。<br>
请进入BS的应用数据目录：`\Android\data\com.beatgames.beatsaber\files`<br>
将其中的`AvatarData.dat`、`PlayerData.dat`与`settings.cfg`复制到电脑中保存即可完成备份。

### 安装BMBF {#install_bmbf}

BMBF是用于修改游戏添加自定义歌曲及Mod支持的基础组件，可通过SideQuest安装。

[BMBF官网下载](https://bmbf.dev/stable)

~~在BMBF官网中找到适配当前游戏版本的BMBF~~ **[彩虹]BMBF现在已经不再需要匹配游戏版本！[/彩虹]**<br>
最新版BMBF已将`libunity.so`分离，现在只需更新核心Mod即可适配新版游戏，无需更新BMBF。

**找到最靠前的最新版BMBF**，点击Assets下方的.apk文件即可下载。

[警告框]
请务必确保下的是最靠前的、也就是最新版本的BMBF，每个版本的下载区域长的都一样，<br>如果下的不是最新版BMBF，将无法兼容你的游戏版本，以前的BMBF是和游戏版本绑定的。<br>
虽然游戏更新不需要更新BMBF，但最近系统更新了Android版本，只有最新版BMBF才能兼容新系统。
[/警告框]

然后使用SideQuest安装刚才下载的APK即可

### 为BS封装补丁 {#install_bspatch}

首先，你需要确保至少启动过一次此次安装/更新的正版游戏，并退出游戏，不要在OC菜单中卸载。<br>
进入应用，右上角选择未知来源，并打开BMBF。

首先要为BMBF授予权限，打开开关后点击左上角返回<br>
然后点击`OK`<br>
点击`使用此文件夹`后，点击`允许`<br>
向下滚动简介界面，点击继续<br>
点击按钮，准备卸载BS打补丁<br>
此时BMBF会先备份安装的游戏APK<br>
然后点击`确定`以卸载BeatSaber<br>
点击按钮为BeatSaber打补丁，让游戏支持加载Mod，这一步可能需要等待两分钟左右。

[彩虹框]
如果在这一步遇到问题，99% 的可能性是由于网络问题（连不上GitHub）导致数据获取失败，<br>解决方法：先弄好网络，然后重启Quest、重装原版BS、打开一次游戏，退出游戏进入BMBF重新打Mod。<br>如果你认为和网络无关，请检查存储目录根目录下的 `BMBFservice.log` ，里面有详细的错误日志。
[/彩虹框]

点击安装已修改过的Beat Saber<br>
首次操作需要允许其安装未知应用<br>
把允许安装的开关打开后，点击返回<br>
再次点击安装Beat Saber

[警告框]
如果出现 `软件包安装程序没有响应`，请点击 `等待` 。
[/警告框]

然后要为游戏授予权限，打开开关后点击左上角返回<br>
安装后可能会出现恢复应用警告，此警告主要针对通过这些渠道安装盗版游戏的行为，<br>
而我们为正版游戏安装Mod通常没有问题，所以可以点击关闭。<br>
然后在安装提示中点击完成，不要点击打开。

[警告框]
如果此时操作BMBF界面没有响应，请尝试退出后重新进入BMBF。
[/警告框]

### 安装核心Mod {#install_coremods}

#### 安装操作步骤

只要你当前还没有安装核心Mod，在下一次同步时就会自动安装核心Mod。<br>
也就是说，通常只需要点击右上角红色的同步按钮，即可安装核心Mod。

#### 更新操作步骤

如果需要更新核心Mod，请进入`Tools`菜单点击`Check Core Mod Updates`，然后点击右上角红色的同步按钮。

#### 安装过程

[警告框]
如果网络环境不是很好，可能会下载失败，请自行解决网络问题。<br>
请务必确保正确安装核心Mod，否则将无法使用第三方Mod，甚至**连自定义歌曲的功能都没有！**
[/警告框]

核心Mod安装完成后，顶部切换至`Mods`选项将可以看到这些核心Mod，核心Mod无法禁用或卸载。<br>
至此，Beat Saber Mod基础组件安装完成。

**以下是核心Mod介绍：**

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
| playerdatakeeper | 用于保留玩家数据（以防更新等原因丢失）的Mod（1.24+） | [GitHub](https://github.com/Metalit/PlayerDataKeeper) |

[警告框]
打完Mod之后，首次启动游戏时会出现一个不同的授权窗口，请务必选择允许；<br>
若没有出现该提示，可在应用列表中点击游戏右下角的 `…`，点击 `权限`，即可手动授予存储权限。<br>
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod。
[/警告框]

### 恢复游戏数据 {#install_recovery}

（如果你没有备份数据，请跳过此步）

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。<br>
请进入BS的应用数据目录：`\Android\data\com.beatgames.beatsaber\files`<br>
将之前备份的`AvatarData.dat`、`PlayerData.dat`与`settings.cfg`复制到Quest即可完成恢复。

---

## 通过电脑进入BMBF {#bmbfpage}

### 进入BMBF {#bmbfpage_open}

将Quest连接至与电脑相同的路由器，从未知来源打开BMBF，然后进入Tools菜单，右上角小字的第二行为可使用电脑访问的BMBF页面地址。<br>
开头的`http://`与结尾的`/`可省略，注意地址中均为英文符号，将其输入浏览器地址栏按回车即可进入。

[警告框]
`http://127.0.0.1:50000/` 是无效地址，若显示这个则需按以下步骤手动找到有效地址：<br>
打开OC菜单 → 设置 → 设备 → Wi-Fi → 点击已连接的Wi-Fi → 高级 → 这时候就会显示IP地址，<br>
把这个IP地址输入到浏览器地址栏里，后面再加上 `:50000` 就可以进入。注：均为英文符号。
[/警告框]

[警告框]
图片为示例地址，你需要找到自己的地址才能使用，电脑需要与Quest连接至同一路由器。<br>
某些运行在Quest或PC端的代理程序以及某些路由器的防火墙有可能会影响到页面访问。
[/警告框]

### 防止BMBF退出 {#bmbfpage_xiumian}

当头显息屏休眠，或是头显中退出BMBF之后，BMBF会停止运行，网页也将无法正常响应。<br>
如果网页右下角显示红×(而不是绿色WiFi)，代表网页与BMBF核心断开连接，将无法正常响应。<br>
如果断开连接，刷新网页无法响应的话，请先重启BMBF再刷新网页，可尝试让头显保持亮屏，<br>
也可以切换到`Tools`菜单，点击`Toogle Running in Background`即可将切换BMBF到后台运行。

### BMBF Tools {#bmbfpage_tools}

---

## 添加自定义歌曲（单曲） {#addsong}

### 下载歌曲 {#addsong_beatsaver}

Beat Saber是一个挥砍音符的音乐游戏，要有人为歌曲摆放音符你才有东西砍，这一步骤被称为"作谱"，完整能玩的歌曲也被称为"谱面"，这也就是说游戏识别不了`.mp3`这类纯音频文件，因为不含谱面，**你需要从教程给出渠道来下歌才能添加至游戏**。如果喜欢的歌没谱，可以自己作谱 (右上角有群)，或[使用AI生成 (太差不推荐)](https://beatsage.com/)

#### BeatSaver

目前最大的BeatSaber自定义歌曲(谱面)下载网站，也是各位谱师唯一的发布地址。

[进入源站(推荐)](https://beatsaver.com/) [进入镜像站](https://bsaber.org/?from_cache=1&sort=uploaded_desc)

进入[BeatSaver](https://beatsaver.com/)，输入搜索内容或设置过滤方式以后，点击`Search`就可以找到歌曲，如果不打算搜索可以不填。<br>
点开歌曲可以查看详细介绍、各难度详情以及排行榜，下面是各难度详情的图标翻译：<br>
找到歌曲后点击`Download`图标即可下载歌曲到本地。

### 使用PC添加歌曲压缩包 {#addsong_zipsong}

[警告框]
该方案只能添加单首歌曲的压缩包，如果你有包含多首歌曲的合集曲包，<br>请按下方"使用PC添加歌曲文件夹"与"歌曲列表"的教程将曲包分类添加为单独歌单。
[/警告框]

**如果你下载的歌曲已经解压**，可以按以下步骤重新压缩。<br>
错误的单首压缩方法：~~对着文件夹，右键压缩。~~<br>
正确的单首压缩方法：进入文件夹，全选所有文件，右键压缩。

[警告框]
目前只支持读取文件名为纯英文的歌曲，如果含有中文等非ASCII字符，需要重命名才能识别。<br>
（修改文件名称不会影响到游戏中显示的歌曲名称）
[/警告框]

通过电脑进入BMBF的上传页面后，将zip文件拖入中间的巨大按钮中，或者点击该按钮并选择zip文件，即可添加完成，无需同步。

[警告框]
BMBF只能读取单首歌曲的压缩包，如果你有包含多首歌曲的合集曲包，<br>请按下方"使用PC添加歌曲文件夹"与"歌曲列表"的教程将曲包分类添加为单独歌单。
[/警告框]

### 使用PC添加歌曲文件夹 {#addsong_songfolder}

#### 解压为文件夹

如果你下载的压缩包还没解压，请先多选要添加的歌曲压缩包，右键`解压每个压缩文件到单独的文件夹`即可得到单独的歌曲文件夹。

[警告框]
图中是多选压缩包时的选项，如果你只选中了一个压缩包，选项名将变成 `解压到[压缩包名称]`
[/警告框]

#### 重命名为英文

**目前只支持读取文件名为纯英文的歌曲，如果含有中文等非ASCII字符，需要重命名才能识别。**<br>
（修改文件夹名称不会影响到游戏中显示的歌曲名称）

如果你打算添加的是WGzeyu在2021年9月1日之后发布的曲包，无需再进行重命名，已经是英文命名。<br>
如果你有大量歌曲需要批量重命名，可以使用歌曲路径管理器：

#### BS歌曲路径管理器 (Beat Saber Song Folder Manager)

打开软件，顶部切换至Quest平台，拖入保存歌曲的上一级文件夹，点击`导出歌单`，即可完成批量重命名。<br>
注意：只能拖入电脑上的文件夹，如果用不到歌单，选择路径时可点取消，注意顺序重命名后才能复制到Quest。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) [备用下载(网盘)](../drive/) （备用下载在`工具`目录内）

#### 添加歌曲

使用USB数据线，将Quest连接至电脑，并在Quest头显中允许文件传输，然后即可进入Quest的存储目录。<br>
将单独的歌曲文件夹复制到自定义歌曲目录即可完成添加。<br>
自定义歌曲目录：`\ModData\com.beatgames.beatsaber\Mods\SongLoader\CustomLevels`

[警告框]
如果你找不到这个文件夹，确保核心Mod已经生效的情况下，可以手动创建该文件夹。
[/警告框]

[警告框]
任何情况下均**不支持嵌套子文件夹分类**，如需以分类形式导入曲包，请查看下方的"歌曲列表"教程。
[/警告框]

至此添加完成，无需进入BMBF，无需同步，歌曲将在下次启动游戏时加载到游戏中。<br>
如果你需要通过BMBF管理歌曲列表，需要先进入`Tools`菜单，点击`Reload Songs Floder`，才能在BMBF中找到添加的歌曲。

### 游戏内下载歌曲（新） {#addsong_bss}

按照Mod安装教程来手动下载并安装`BetterSongSearch`这个Mod之后，<br>从游戏主界面左侧Mod选项中进入`BETTER SONG SEARCH`即可下载歌曲。<br>
这个Mod非常好用，你甚至可以不添加合集曲包、只从这里搜索下歌，可以尽可能地缓解歌曲过多容易引起游戏崩溃的问题。

[警告框]
你必须要安装 `BetterSongSearch` 这个Mod并将它与自动安装的支持库都打开，才能找到它的选项！
[/警告框]

### 游戏内下载歌曲（旧） {#addsong_songdownloader}

进入游戏，点击左侧Mod选项面板中的`MORE SONG`或`SONGDOWNLOADER`即可进入下载界面。

### 通过BMBF下载歌曲 {#addsong_oneclick}

首先，在Quest中从未知来源中打开BMBF，进入Browser，按照图示进入BeatSaver，设置筛选方式并点击`Search`来找到适合自己的歌曲，点击`OneClick`图标即可下载歌曲到游戏中，无需同步。<br>
你还可以从BEAST SABER寻找歌曲，也是点击`OneClick`图标即可下载到游戏。

### BMBF批量下载歌曲 {#addsong_syncsaber}

首先，在Quest中从未知来源中打开BMBF，然后进入SyncSaber即可设置并创建下载任务。

### 游戏内选项位置 {#addsong_custom-songs_1}

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请点我查看核心Mod安装教程<br>
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情。
[/警告框]

---

## 添加自定义歌曲（合集曲包） {#addsong_songpack_nav}

### 下载歌曲包 {#addsong_downloadsongpack}

#### Beat Saber游戏资源共享

我们整理的大量BS歌曲包都保存在这里，**同时提供了歌曲包以及歌曲列表，建议一起下载**。

[进入网盘](../drive/)

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载(推荐)](https://github.com/WGzeyu/BeatSpider/releases/latest) [备用下载(网盘)](../drive/) （备用下载在`工具`目录内）

[警告框]
在一体机平台，我们建议歌曲数量不要超过600首，因为游戏有个BUG一直没修，任何浏览过的歌曲封面、播放过的歌曲浏览音频等资源，全部都会驻留在内存（RAM）中，即使那首歌曲已经在列表里翻下去、不再显示在画面中，游戏依然不会清理加载它时占用的内存（RAM），翻动歌曲列表会导致占用内存越来越多，满了就崩了，歌曲数量过多将容易在翻动歌曲列表时闪退，这个问题在PC也存在，估计是由于PC内存管理机制不同、内存也更大，所以影响不大，很少见到，只对一体机玩家影响较大，歌曲少一些就可以了。
[/警告框]

### 添加曲包为单独歌单 {#addsong_addsongpack}

歌曲包就是歌曲文件本身，而歌曲列表只是记录了歌曲的一个歌单列表，在游戏中相当于一个索引的作用；<br>
把歌曲全混在一起放进歌曲目录，然后再把列表放进列表目录，游戏就能靠歌曲列表来识别出独立的分类。<br>
没有歌曲列表(歌单)一样能识别歌曲，只是不能实现以独立的分类歌单形式来显示不同的合集曲包，会混在一起。

首先，按照"使用PC添加歌曲列表"教程，将歌曲列表复制到歌曲列表存放目录。

[警告框]
如果你只有曲包没有列表，请查看下方的歌曲列表教程，可以用 `BS歌曲路径管理器` 将曲包生成为列表<br>
如果游戏识别不到你添加的 `.bplist` 歌曲列表，请尝试将文件重命名为纯英文文件名。
[/警告框]

然后，按照"使用PC添加歌曲文件夹"教程，批量把歌曲命名为不含中、日文的文件名后，<br>**[彩虹]将所有歌曲放于同一文件夹内，一起添加至歌曲目录，不要嵌套分类文件夹。[/彩虹]**（如存在相同歌曲，跳过即可）

[警告框]
如果你只有列表没有曲包，请点我进入对应教程<br>
如果你找不到这个文件夹，确保核心Mod已经生效的情况下，可以手动创建该文件夹。<br>
如果你额外嵌套了分类文件夹使其与截图不一致，那么将绝对识别不到你添加的歌曲。
[/警告框]

至此，曲包添加完成，虽然无需进入BMBF无需同步也能用，不过如果你打算通过BMBF管理曲包，需要先进入`Tools`菜单，点击`Reload Songs Floder`以及`Reload Playlists Floder`，才能在BMBF中找到添加的曲包。<br>
后续如果想要更新该曲包，先点击列表顶部的标题，然后再点击右下方的同步按钮即可一键完成更新，包括歌曲文件都会自动下载，无需进行其他操作。

[警告框]
首次下载歌曲时推荐通过网盘下载，不推荐游戏内下载，由于我的曲包太大，会消耗服务器大量流量，下的还慢；以后再下载（一键同步）时，只会下载新增歌曲，数量少，直接让它自动下载就行。<br>
部分歌曲列表不支持一键同步；我整理的歌曲列表，在 2022/11/23 之前发布的均不支持一键同步。
[/警告框]

### 游戏内选项位置 {#addsong_custom-songs_2}

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请点我查看核心Mod安装教程<br>
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情。
[/警告框]

---

## 添加自定义歌曲（歌曲列表） {#addsong_playlist_nav}

### 下载歌曲列表 {#addsong_playlist}

歌曲列表（Playlist）就如同字面意义，是一个`.bplist`格式的歌曲列表，内容只是记录了有哪些歌曲，不含歌曲文件本身，所以这些歌曲列表文件都非常小，便于分享。<br>
在Quest平台，导入含有大量歌曲的歌曲包通常需要歌曲列表才能实现单独分类显示，如果你下载的歌曲包没有附带歌曲列表，可以在下方下载`BS歌曲路径管理器`，它可以将歌曲包转换为歌曲列表。<br>
大多数情况下BS歌单为`.bplist`格式，不过有时候也可能是`.json`格式，实际上内容都一样，只是后缀不同。<br>
（注意：有很多其他文件也是`.json`格式，并不是说`.json`就一定是歌曲列表）

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

WGzeyu使用易语言编写的歌单工具，本来是用于PC端分类添加曲包，后来加入了导出歌单功能，<br>
**[彩虹]可以将曲包文件夹转换为歌曲列表[/彩虹]**添加至Quest，同时还能将文件名中含有中文的歌曲重命名为英文。

[GitHub下载(推荐)](https://github.com/wgzeyu/Beat-Saber-Song-Folder-Manager/releases/latest) [备用下载(网盘)](../drive/) （备用下载在`工具`目录内）

#### BeatSpider

WGzeyu为了整理曲包制作的专业谱面整理、下载软件，拥有非常多的功能来处理歌曲包、歌曲列表。

[GitHub下载(推荐)](https://github.com/WGzeyu/BeatSpider/releases/latest) [备用下载(网盘)](../drive/) （备用下载在`工具`目录内）

#### Beatlist

一个歌曲列表编辑工具，~~虽然已经停止更新，不过依然可以使用。~~现在有大佬接手更新了。

[GitHub下载(推荐)](https://github.com/ranmd9a/beatlist/releases/latest) [备用下载(网盘)](../drive/) （备用下载在`工具`目录内）

### 使用PC添加歌曲列表 {#addsong_addplaylist}

先将`.bplist`文件复制到Quest中的歌曲列表存放目录，<br>
歌曲列表目录：`\ModData\com.beatgames.beatsaber\Mods\PlaylistManager\Playlists`

[警告框]
如果游戏识别不到你添加的 `.bplist` 歌曲列表，请尝试将文件重命名为纯英文文件名。
[/警告框]

**如果你有歌曲列表对应的歌曲文件**，按"使用PC添加歌曲文件夹"的教程将歌曲一起放进歌曲目录即可完成添加。<br>
**如果你还没有歌曲列表对应的歌曲文件**，可以在游戏中选择歌单后点击下载图标，即可开始下载。<br>
虽然无需进入BMBF无需同步也能用，不过如果你打算通过BMBF管理歌曲列表，需要先进入`Tools`菜单，点击`Reload Playlists Floder`，才能在BMBF中找到添加的歌曲列表。

### 在VR中添加歌曲列表 {#addsong_playlistinvr}

首先，进入BMBF的`Browser`页面，并进入BEASTSABER（通常为默认主页），然后在网站顶部导航栏中选择Playlist，即可找到歌曲列表。<br>
点击歌曲列表的`OneClick`按钮即可完成添加。<br>
随后BMBF将添加歌单并自动下载歌单中的歌曲，等待下载完成后点击右上角红色按钮即可同步到Beat Saber中。

### 管理歌曲及歌单 {#addsong_songpack}

首先，在Quest中从未知来源中打开BMBF，然后进入Playlists即可编辑，编辑完成后需要点击右上角红色按钮才能同步到游戏。<br>
左侧打开歌单后直接从右侧拖拽歌曲即可添加。<br>
如果找不到你添加的歌曲或歌曲列表，请进入`Tools`菜单，点击`Reload Playlists Floder`（重新加载歌曲列表目录）或者`Reload Songs Floder`（重新加载歌曲目录）。

### 游戏内选项位置 {#addsong_custom-songs_3}

[警告框]
如果你的游戏中找不到图示的自定义歌曲选项则说明游戏缺失核心Mod，请点我查看核心Mod安装教程<br>
如果某一首歌曲的 `Play` 按钮为灰色点不了，通常是缺失Mod导致的，点击右上角的问号可查看详情。
[/警告框]

---

## 将语言改为中文 {#chineselng}

### 实现方式 {#lng-shixian}

`PolyglotInject`这个Mod可以将中文翻译添加至游戏中，为游戏提供更多语言选项。<br>
你可以在下方网盘中下载这个Mod，然后按照Mod安装教程来操作，即可完成安装。

#### BS游戏资源共享

依次进入`Mod相关文件` → `【Quest一体机平台】你的游戏版本` → `汉化Mod`文件夹即可下载该Mod。<br>
游戏版本可以在游戏菜单界面地板上的脚印内看到。

[进入网盘](../drive/)

[彩虹]下载后，点我进入安装Mod教程，跟着该教程操作即可完成安装。[/彩虹]

### 设置方法 {#lng-shezhi}

`PolyglotInject`应当可以自动检测并切换为系统语言， 如果因为某些原因没有自动切换，可以在该位置修改：

---

## 安装Mod {#installmod}

### 通过电脑下载Mod {#installmod_download}

#### Quest Modding（原QuestBoard）

Quest Mod发布网站，打开后点击顶部的`Released Mods`可进入Mod下载页面，<br>每个Mod下载链接均直接引用原发布链接，未做转存，所以其中一部分Mod可能需要国际联网才能下载。

[进入Mod列表](https://computerelite.github.io/tools/Beat_Saber/questmods.html) [进入原网站](https://www.questmodding.com/)

#### BSMG Discord

Mod国际社区的官方群组，Mod可以在左侧进入`#quest-mods`频道下载，需国际联网。<br>
其中频道比较多，如果进入频道找不到Mod，请仔细检查是不是选错了频道！

[进入频道](https://discord.gg/beatsabermods)

#### BS游戏资源共享

以前我会不定期搬运一些Mod上去，不过现在已停更。里面**[彩虹]有中文Mod[/彩虹]**。<br>
进入`Mod相关文件`文件夹即可下载Mod，游戏菜单界面的地板脚印内可看到版本。

[进入网盘](../drive/)（同时提供了PC与一体机平台的Mod，不要选错平台！）

#### ScoreSaber排行榜

需要进入网页预先登录Steam账号后才能下载（无需在Steam购买游戏），网页会生成已内置账号的Mod。<br>
不要将mod文件分享给任何人！首次使用切勿科学！他是靠首次使用的IP地址来划分的国家，无法修改！

[进入下载](https://scoresaber.com/quest) （请在网页中选择匹配你游戏的版本）

### Mod用途介绍 {#installmod_info}

**推荐安装Mod：**

| 名称 | 介绍 |
|------|------|
| PolyglotInject | 将更多语言注入到游戏中，让游戏支持显示为中文，[点我进入下载](../drive/) |
| SongBrowser | 歌曲排序、筛选，并显示PP、难度等数据（问题较多，可能导致游戏闪退无法打开） |
| BetterSongSearch | 更好用的搜索、下载歌曲插件，功能极多、响应速度极快，还能在下载前试听歌曲 |
| ScoreSaber | 最大的跨平台排行榜，[点我进入下载](https://scoresaber.com/quest)，自动录制回放，可在头显内播放或手动导入电脑播放 |
| BeatLeader | 较大的跨平台排行榜，[点我进入下载](https://github.com/BeatLeader/beatleader-qmod/releases)，自动录制并上传回放及详情，可在网页或电脑中播放 |
| Qosmetics | 支持更换光剑、方块、墙壁模型的Mod |
| AnyTweaks | 调整画质、分辨率与刷新率，还可以显示帧率 |
| Chroma | 炫彩扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1ar4y1c7Rm)，不要与ME同时安装，推荐与NE同时安装） |
| NoodleExtensions | 面条扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1Pu411S7dW)，不要与ME同时安装，推荐与Chroma同时安装） |
| MappingExtensions | 谱面扩展，用于支持特殊的谱面效果（[效果演示](https://www.bilibili.com/video/BV1o7411r74p)，不要与NE或Chroma同时安装） |

注意：<br>
Mod格式为`.qmod`，如果网页中看到多个可下载的文件，结尾为`.qmod`的那一个才是可供安装的Mod。<br>
**Quest平台有一部分Mod互相不兼容，尤其是旧版本游戏，新版本好了很多，但还是建议不要装太多Mod，存在不兼容问题时将导致游戏直接闪退无法打开。**

[彩虹框]
我也制作了完整的Mod中文介绍，由于过长已默认隐藏，**点我即可展开**到下方区域
[/彩虹框]

<details>
<summary>我也制作了完整的Mod中文介绍，由于过长已默认隐藏，点我展开</summary>

| Mod名称 | Mod介绍 |
|---------|---------|
| custom-types | 用于支持Mod运行的核心Mod |
| codegen | 用于支持Mod运行的核心Mod |
| questui | 用于支持Mod界面功能的Mod |
| PinkCore | 提供了许多类似PC平台的基础功能的Mod |
| songloader | 用于加载自定义歌曲的Mod |
| playlistmanager | 用于加载分类歌单的Mod |
| songdownloader | 在游戏内下载歌曲的Mod |
| playerdatakeeper | 用于保留玩家数据（以防更新等原因丢失）的Mod |
| PolyglotInject | 将更多语言注入到游戏中，让游戏支持显示为中文，[点我进入下载](../drive/) |
| SongBrowser | 歌曲排序、筛选，并显示PP、难度等数据（兼容性差，可能导致游戏闪退无法打开） |
| ScoreSaber | 最大的跨平台排行榜，[点我进入下载](https://scoresaber.com/quest)，自动录制**回放**，可在头显内播放或手动导入电脑播放 |
| BeatLeader | 较大的跨平台排行榜，[点我进入下载](https://github.com/BeatLeader/beatleader-qmod/releases)，自动录制并上传**回放**及详情，可在网页或电脑中播放 |
| Qosmetics | 支持更换光剑、方块、墙壁模型的Mod（旧） |
| QosmeticsWhackers | 支持更换光剑模型的Mod（新） |
| QosmeticsCyoobs | 支持更换方块模型的Mod（新） |
| QosmeticsBoxes | 支持更换墙壁模型的Mod（新） |
| ThinSabers | 细光剑Mod（不需要Qosmetics，这是一个独立Mod） |
| AnyTweaks(AikaTweaks) | 调整画质、分辨率与刷新率，还可以显示帧率 |
| Qounters- | 计数器Mod，给游戏过程添加更多的信息显示 |
| Chroma | 炫彩扩展，用于支持特殊的谱面效果（不要与ME同时安装，推荐与NE同时安装） |
| NoodleExtensions | 面条扩展，用于支持特殊的谱面效果（不要与ME同时安装，推荐与Chroma同时安装） |
| MappingExtensions | 谱面扩展，用于支持特殊的谱面效果（不要与NE或Chroma同时安装） |
| Replay | 回放Mod（用于旧版游戏，新版游戏请使用排行榜Mod来录制/播放回放） |
| SmoothedController | 在菜单中平滑手柄以减少抖动，使UI更易于使用 |
| CrashMod | 可以通过各种触发方式使游戏崩溃，例如可以在开始时、失误时、正确挥砍时崩溃你的游戏 |
| ChatUI | 可以在游戏里看到Twitch直播的聊天内容 |
| ThirdPerson(Play3rdPer) | 以第三人称视角进行游戏（用于视频录制） |
| Redbar | 根据你的血量改变血槽颜色 |
| StreamerTools | 通过覆盖界面增强你的BeatSaber直播，[点我查看教程](https://github.com/EnderdracheLP/streamer-tools/wiki) |
| SearchFixes | 似乎是用于增强搜索匹配算法的Mod，还可以按谱师名称搜索 |
| SaberTailor | 为每只手进行独立的手柄设置（如位置/角度偏移等） |
| CustomPillows | 你希望菜单中多一些🌶️吗？将您的抱枕添加至菜单中并编辑它们的纹理！ |
| ImageCoverExpander | 在选择歌曲界面中扩大展示歌曲封面 |
| DifficultySaver | 让你每次点开新歌都能自动选中设置的难度（无论上一次选的是哪个难度） |
| FasterScroll | 可调滚动速度，让你更快地找到歌曲 |
| QuestSounds | 自定义各种音效的Mod，[点我查看存放位置](https://github.com/EnderdracheLP/QuestSounds/#features) |
| ClockMod | 时钟 |
| JDFixer | 用于更改方块出生距离、反应时间的Mod（相当于其他音游的调速） |
| HitScoreVisualizer | 自定义砍中时弹出的分数文本样式 |
| Transitions | 删除了游戏启动时的癫痫警告，且可配置地减少切换场景耗时 |
| StopForgettingMySettings | 别™忘了我的设置（防止你的覆盖默认环境设置在重启游戏后被重置） |
| Promotion "Yeeter" | 广告屏蔽（删除主菜单中的促销曲包，还你一个干净的主菜单） |
| ShortSaber | 用于修改光剑尺寸（厚度与长度） |
| SmallQubes | 缩小方块显示尺寸（不兼容Qosmetics） |
| SliceDetails | 可查看你在每个位置上的平均切割分数等分数详情信息 |
| IntroSkip | 跳过较长的歌曲前奏与后奏 |
| CustomMainMenu | 更改主菜单的按钮文本 |
| Acculight | 根据你的最新成绩来决定选歌及成绩页面中的灯光颜色 |
| RainbowQuest | 让各种东西彩虹化 |
| RandomSongPicker | 随机选择一首歌曲 |
| CrashReporter | 自动上传崩溃日志到[analyzer.questmodding.com/crashes](https://analyzer.questmodding.com/crashes) |
| FullComboEffects | 修改全连时的成绩页面 |
| TrickSaber | 特技光剑，可以旋转或扔出光剑的Mod |
| DebrisTweaks | 完全定制调整各种碎片参数 |
| AntiVertigo | 在玩家下方生成一个立方体或圆柱体，以帮助缓解恐高症 |
| InvertedArrows | 反转方块的箭头方向（将禁用分数提交） |
| BurnMarksQeeper | 使光剑碰到地面的烧痕不会自己消失 |
| CustomBackgrounds | 导入360°全景照片作为游戏背景 |
| CustomFailText | 自定义游戏失败时的提示文本 |
| SongInfoPlus | 点击封面后显示关于歌曲的更多信息 |
| NoHealthAndSafety | 删除启动游戏时烦人的健康与安全提示窗口 |
| Cheater'sAnxiety | 在每次暂停与恢复时玩俄罗斯轮盘赌，赌输将崩溃游戏 |
| DiscordPresence | 为游戏添加Discord支持，让你的游戏状态可以显示到Discord |
| FishUtils | 自动开关方块碎片、调整暂停后恢复时的等待时间、自定义暂停按钮及暂停确认 |
| QustomBanners | 自定义横幅（保存在`/Pictures/banners/`） |
| MRCPlus | 通过MRC将自定义相机画面传输到电脑，[点我进入教程](https://github.com/Raemien/MRCPlus/wiki/Getting-Started) |
| SongDifficultyChart | 显示歌曲难度图表 |
| FingerSaber | 手指光剑，用手势追踪玩光剑的Mod |
| darthmaul | 达斯摩尔，双头光剑 |
| QonsistentSaberColors | 将菜单中的手柄颜色调整为你在"覆盖默认颜色"中设置的颜色 |
| FuckMaps | 让你尝试游玩BPM超出设定范围的歌曲时，崩溃你的游戏 |
| AddedModifiers | 增加更多修改项到你的游戏 |
| NoParticles | 可以禁用砍中时的粒子效果 |
| NoMoreBeatSaber | **删除主菜单中所有可以用来开始游戏的按钮**，恶搞Mod，不建议安装 |
| ThiccMod | 减小方块与光剑的碰撞箱（将禁用分数提交，不兼容Qosmetics等Mod） |
| QolourSwitcher | 可以在暂停菜单中更改方块颜色（需先打开自定义颜色） |
| NoPlay | 可以禁用开始按钮的Mod，以防被朋友上传垃圾成绩或回放被覆盖 |
| BroYouReallyPaused? | 在暂停菜单下面显示文字（内容可在Mod设置中编辑） |
| MoreByCore | 保留光剑戳地面留下的烧痕、屏蔽广告、游戏颜色、关粒子等功能 |
| Nya | 显示各种动漫风格猫娘图片 |
| BurnMarkTweaks | 烧痕调整 |
| SimpleBeatmapPlayCount | 记录每首歌曲的游戏次数 |
| SliceVisualizer | 在游戏区域上方显示画面，以查看挥砍准度 |
| Adblock | 广告屏蔽（移除促销曲包按钮） |
| PeripheralHUD | 将HUD移动到周边视野中，让你可以一目了然地查看连击、得分等。 |
| SpeecilTweaks | 根据你的喜好对游戏做一些调整 |
| Qubes | 在任意位置放置漂浮的方块 |
| PauseRemapper | 更改暂停键位置 |
| ImageFactory | 在游戏中放置自定义图片`/ModData/游戏/Mods/ImageFactory/Images/` |
| SessionQombo | 让连击计数器在关卡加载中保持不变的Mod |
| TimeFailed | 在你失败时显示是第几次失败 |
| CrashInfo | 崩溃信息，显示来自CrashReporter的近期崩溃回溯 |
| NoPlayBeatSaber | **禁用所有的Play按钮**，恶搞Mod，不建议安装 |
| FailButton | 失败按钮，可以在暂停菜单中一键失败，可以用于看回放 |
| QuestDiscordRPC | 将你正在玩BeatSaber这一状态展示到Discord状态 |
| Snowy | 从名字来看是下雪用的，作者没写介绍也没给GitHub链接 |
| ComboSplitter | 将连击数计数拆分为双手单独计数 |
| Vent | 一键退掉游戏并启动amongus vr（如果已安装）的mod |
| BSNightcoreQuest | 在不同的速度上移除高音补偿，让歌曲听起来像夜曲（取决于速度） |
| ScoreQolour | 当你拿到一定分数时，更新你的方块、墙壁、炸弹颜色 |
| PitchBlaq | 完全禁用灯光与频谱图（如果有），达到类似纯黑背景。 |
| Colorama | 自定义菜单颜色、雾化设置和其他美化相关选项 |

</details>

[警告框]
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod。
[/警告框]

### 使用PC安装Mod {#installmod_pc}

通过电脑进入BMBF的上传页面后，点击页面中间巨大的按钮，选择版本匹配的Quest Mod（`.qmod`）即可上传添加，随后点击右上角的红色按钮即可将其同步到Beat Saber中。<br>
有些Mod不会自动启用，你需要在同步以后才能在BMBF的`Mods`界面中启用该Mod，启用后可能需要再次同步才能生效。

[警告框]
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod。<br>
安装某个Mod时可能会在线下载其依赖的其他Mod，如果网络环境不是很好，可能会下载失败。
[/警告框]

### 在VR中安装Mod {#installmod_quest}

首先，在Quest中从未知来源中打开BMBF，进入Browser，<br>点击地球图标并选择`QuestBoard`，进入`Get Mods`即可下载Mod，最后点击右上角红色按钮即可同步到游戏中。<br>
也可以在点击地球图标后点击URL，手动进入某个Mod发布网站，点击qmod下载链接即可完成添加。

[警告框]
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod。<br>
安装某个Mod时可能会在线下载其依赖的其他Mod，如果网络环境不是很好，可能会下载失败。
[/警告框]

### 管理Mod {#installmod_manage}

通过PC或Quest进入BMBF，顶部导航栏中选择Mods，即可进入Mod管理页面，操作后点击右上角红色按钮即可同步到Beat Saber中。

[警告框]
若出现游戏打不开、直接闪退，通常是因为某个Mod出了问题，试试Mod全删干净之后只装核心Mod。
[/警告框]

---

## 更换光剑、方块、墙壁 {#changemodel}

### 添加模型功能 {#model_mod}

很多玩家会把模型与Mod搞混，但实际上他俩是完全不同的东西。<br>
模型是光剑/方块资源，但游戏并不支持读取你的资源；Mod是由代码组成的模块，为游戏添加了这些功能。

**[彩虹]按照安装Mod教程来安装对应的Mod，即可为游戏添加更换对应模型的功能。[/彩虹]**

自定义光剑：`QosmeticsWhackers`<br>
自定义方块：`QosmeticsCyoobs`<br>
自定义墙壁：`QosmeticsBoxes`<br>

比如你想自定义光剑，你需要在安装`QosmeticsWhackers`Mod以后，再添加光剑模型，才能在游戏中切换光剑。

[警告框]
注意！游戏最新更新的1.29.4版本（2023/05/09）由于升级了Unity版本并改为了OpenXR，导致无法兼容以前的所有模型，目前来看得让之前的模型作者重新导出模型才可以兼容新版游戏，还不确定有没有什么别的方法，现在的模型Mod均未更新至1.29.4以上版本，等Mod社区决定解决方法后我再更新相应的教程。<br>
如果你现在就想换模型，可以先将游戏降级至1.28.0；如果你的游戏版本不高于1.29.0，可忽略本公告
[/警告框]

### 模型下载渠道 {#model_download}

#### Qosmetics Discord

专注于BS Quest模型的群组，作者首选的发布地址，需国际联网。<br>
光剑：`#whackers`，方块：`#cyoobs`，墙壁：`#boxes`

[进入频道](https://discord.gg/qosmetics)

Quest新版模型格式：光剑：`.whacker`，方块：`.cyoob`，墙壁：`.box`

### 使用PC添加模型(BMBF) {#model_pc_bmbf}

通过电脑进入BMBF的上传页面后，点击页面中间巨大的上传按钮，选择Quest版模型文件即可上传完成。<br>
需要按照管理模型教程启用后才会生效

### 使用PC添加模型(目录) {#model_pc_path}

首先，使用数据线将Quest连接至电脑的USB接口，并在Quest的`允许访问数据`界面中点击`允许`。<br>
随后，将下载到的模型放入Quest存储目录的以下位置即可完成添加。

自定义光剑：`\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Whackers`，格式：`.whacker`<br>
自定义方块：`\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Cyoobs`，格式：`.cyoob`<br>
自定义墙壁：`\ModData\com.beatgames.beatsaber\Mods\Qosmetics\Boxes`，格式：`.box`

注意：`.saber`、`.bloq`、`.pixie`是PC的模型格式，不兼容Quest！

以自定义光剑举例，添加后目录中是这样的：<br>
需要按照管理模型教程启用后才会生效

### 在VR中下载模型 {#model_quest}

首先，在Quest中从未知来源中打开BMBF，然后进入Browser，点击地球图标并点击URL即可手动输入地址打开网页，在网页里找到新版模型，点击下载链接即可自动添加。<br>
推荐直接输入`discord.gg/qosmetics`进入Qosmetics Discord，登录并选择相应频道后即可下载模型。<br>
你也可以在点击地球图标以后选择`QuestBoard`，然后点击`Get Model`，这里也有一些Bobbie大佬制作的模型。<br>
需要按照管理模型教程启用后才会生效

### 管理模型 {#model_manage}

进入Beat Saber，点击齿轮图标，再点击`QOSMETICS SABERS`，即可进入模型管理页面。

[警告框]
需要先按照安装Mod教程安装 `Qosmetics` Mod，才能找到这个选项。
[/警告框]

点击`SELECT`选择模型；<br>
点击`DELETE`删除模型；<br>
点击`DEFAULT`恢复默认；<br>
点击`RELOAD`刷新列表。<br>
`QOSMETICS SABERS`设置首页顶部的`Scores are* xxx`代表当前设置项是否支持分数提交。当你修改了会影响分数的选项时，将禁止提交分数。

[警告框]
如果你不按照安装Mod教程安装 `Qosmetics` Mod，一定会找不到这个选项。
[/警告框]

左侧面板为详细设置

---

## 关于 {#about}

[警告框]
由于作者没有遇到问题，同时PC版玩的远比Quest版多，所以暂时没有整理出Quest的常见问题解答，盗版可能装不了Mod，如果正版仍然遇到问题建议再仔细看一遍教程，还解决不了可以在右上角加群提问。
[/警告框]

WGzeyu 版权所有 教程内容采用CC BY-NC-SA进行授权 页面样式模板 [MIT LICENSE](LICENSE)<br>
允许在醒目注明原作者及原链接并保持内容同步更新的前提下完整转载，如果做不到，请直接分享原链接。<br>
感谢MicroBlock为该页面提供的一些前端制作