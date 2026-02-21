# 使用封装好的ohmyzsh配置zsh
source ~/.config/omz/omz.zsh

# 配置自动执行startx
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

# 配置 默认编辑器
export EDITOR='vim'

#别名alias
alias pacman='sudo pacman'       #常用，已设置
alias timeshift-gtk='sudo timeshift-gtk'       # timeshift-gtk快照备份
alias ll='ls -lh'
alias lla='ls -alh'
#alias vim='sudo env HOME=$HOME vim'
#alias nvim='sudo env HOME=$HOME nvim'

neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
