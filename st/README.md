st - 简单终端
--------------------
安装自suckless的st终端，打了几个补丁，更换字体以及配色。


前置要求
------------
```shell
# 安装字体
sudo pacman -S adobe-source-code-pro-fonts

```


安装使用
------------
```
#克隆本仓库到电脑，路径无要求,默认在～/st
git clone https://github.com/lyj900126/st.git ~/st

#编译安装st
sudo make clean install
```

已打补丁
----------
```
-anysize占满全屏
-hidecursor打字时隐藏光标
-scrollback屏幕回滚
-alpha半透明背景

```

颜色参考
-------
```
	/* 8 normal colors */
	"#110f18",  /* black */
	"#ff6767",  /* red */
	"#61ffca",  /* green: */
	"#ffca85",  /* yellow */
	"#a277ff",  /* blue */
	"#a277ff",  /* magenta */
	"#61ffca",  /* cyan */
	"#edecee",  /* gray90 */

```

常用快捷键
------------
```
Ctrl+Shift+PgUp/PgDn         st终端的快捷键调大字体/调小字体

```
