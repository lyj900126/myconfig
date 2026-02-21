<!-- markdown-toc GFM -->

* [dwm窗口管理器](#dwm窗口管理器)
* [前置软件](#前置软件)
* [安装使用](#安装使用)
* [已打补丁](#已打补丁)
* [快捷键](#快捷键)

<!-- markdown-toc -->

# dwm窗口管理器
自用的dwm配置，状态栏只显示了实时网速、声音、日期时间
## 前置软件
```shell
# 字体
sudo pacman -S wqy-microhei ttf-nerd-fonts-symbols
yay -S ttf-joypixels

# alsa声音、bc计算器(计算网速)、rofi程序启动器
sudo pacman -S alsa-utils bc rofi 

# mpd音乐播放器三件套
sudo pacman -S mpd mpc ncmpcpp

# 任务栏固定的程序为：rofi启动菜单、pcmanfm文件管理、edge浏览器、trilium笔记、微信、向日葵远程、steam加速器
yay -S rofi pcmanfm microsoft-edge-stable-bin trilium-cn-bin wechat-universal-bwrap sunloginclient watt-toolkit-bin

# 手动下载qq音乐官网的AppImage包，默认启动路径在~/下载

```

## 安装使用
```shell
# 克隆本仓库,并进入目录安装，默认放在~/dwm
git clone https://github.com/lyj900126/dwm.git ～/dwm
cd ～/dwm && sudo make clean install
```

## 已打补丁
```
--restartsig        热重启
--autostart         自启动脚本
--hide_vacant_tags  隐藏工作区
--scratchpad        额外终端
--doublepressquit   退出dwm需重复2次操作
--fullgaps          窗口间距
--pertag            保留工作区布局
--viewontag         跟随窗口移动
--statuscmd         发送信号补丁
--systray           系统托盘
--fancybar          多窗口显示全部标题(已移除)
--launchers         任务栏固定程序启动器
```

## 常用快捷键
默认的MODKEY键为Mod1Mask---[Alt]键;
Mod4Mask---[win]键
```
默认按键	                我的设置	                实现功能
[Mod]+[Shift]+[Enter]	    [Mod]+[Shift]+[Enter]	    打开st终端
[Mod]+[P]	                [Mod4Mask]+[R]	            打开dmenu程序启动器，或者rofi
[Mod]+[Enter]	            [Mod]+[Enter]	            将鼠标悬停在工作区的一个窗口，将其与主区域中的窗口交换。
[Mod]+[Shift]+1..9	        [Mod]+[Shift]+1..9	        通过使用鼠标突出显示后，并按 Alt+Shift+1..9，窗口可以在不同工作区之间移动。
[Mod]+[Shift]+[C]	        [Mod]+[Q]	                关闭当前窗口
[Mod]+[Shift]+[Q]	        [Mod]+[Shift]+[Q]	        退出dwm
[Mod]+[Shift]+[Ctrl]+[Q]	[Mod]+[Shift]+[Ctrl]+[Q]	热重启dwm，免退出刷新，启用新配置（补丁doublepressquit）
[Mod]+[T]	                [Mod]+[T]	                平铺窗口
[Mod]+[F]	                [Mod]+[F]	                浮动窗口
[Mod]+[M]	                [Mod]+[M]	                全屏堆叠
[Mod]+[G]	                [Mod]+[G]	                网格窗口（补丁gaplessgrid）（补丁未打）
[Mod]+[J]/[K]	            [Mod]+[J]/[K]	            在一个工作区内的多个活动窗口进行切换
[Mod] + [i / d]	            [Mod] + [i / d]	            增加或减少主窗口的窗口个数
[Mod]+[H]/[L]	            [Mod]+[H]/[L]	            平铺窗口下，调整主窗口的占比
[Mod]+[-]/[=] 	            [Mod]+[-]/[=] 	            调整窗口与窗口之间的间距（补丁fullgaps）
[Mod]+[Shift]+[=]	        [Mod]+[Shift]+[=]	        在使用 [Alt]+[-]/[=] 调整过间距的情况可以用这个快捷键复原（补丁fullgaps）
[Mod]+[`]	                [Mod]+[`]	                任意时候可以打开一个可隐藏的终端； [`]是反引号键，位于键盘左上角Esc下边（补丁scratchpad）
[Mod]+[R]	                [Mod]+[R]	                让窗口浮动
                            [F2]                        增加音量
                            [F3]                        减少音量
                            [F4]                        静音
                            [Home]                      mpc play播放音乐
                            [End]                       mpc stop停止播放音乐
                            [Mod4Mask]+[Space]          mpc toggle继续播放/暂停播放
                            [PgUp]                      mpc prev上一首
                            [PgDown]                    mpc next下一首
                            [Mod4Mask]+[1..9]           打开任务栏对应顺序的程序
                            [Mod4Mask]+[q]              打开qq音乐AppImage包
```
