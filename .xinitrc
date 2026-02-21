#!/bin/sh

prefix="/usr"
exec_prefix="${prefix}"
xrdb="xrdb"
xinitdir="/etc/X11/xinit"
xclock="xclock"
xterm="xterm"
twm="twm"
xmodmap="xmodmap"

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="$xinitdir/.Xresources"
sysmodmap="$xinitdir/.Xmodmap"

# merge in defaults and keymaps

if [ -f "$sysresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$sysresources"
    else
        "$xrdb" -nocpp -merge "$sysresources"
    fi
fi

if [ -f "$sysmodmap" ]; then
    "$xmodmap" "$sysmodmap"
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$userresources"
    else
        "$xrdb" -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    "$xmodmap" "$usermodmap"
fi

# start some nice programs

if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#"$twm" &
#"$xclock" -geometry 50x50-1+1 &
#"$xterm" -geometry 80x50+494+51 &
#"$xterm" -geometry 80x20+494-0 &
#exec "$xterm" -geometry 80x66+0+0 -name login

# 用于禁用屏幕保护程序
xset s off
# 禁用DPMS电源管理协议功能,避免系统在空闲一段时间后自动将显示器置于待机、挂起或关闭状态
xset -dpms

# 会话类型指定X11环境
export XDG_SESSION_TYPE="x11"

#启动dwm窗口
exec dwm
