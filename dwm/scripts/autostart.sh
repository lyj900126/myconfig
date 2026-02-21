#!/bin/bash

/bin/bash ~/dwm/scripts/dwm-status.sh &
feh --bg-fill --randomize ~/dwm/images/* 
udiskie &       #挂载移动硬盘
numlockx &      #开启小键盘
fcitx5 &        #fcitx5输入法
picom &
#synology-drive &    #群晖同步客户端
mpd &           #mpd音乐后台进程
rustdesk &      #桌面远程
#slstatus &





