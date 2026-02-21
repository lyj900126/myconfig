# gvim编辑器

vim编辑器安装: 
sudo pacman -S gvim

(任选其一)在家目录clone本仓库  
git clone https://github.com/lyj900126/gvim.git ~/.vim

git clone ssh://git@github.com:/lyj900126/gvim.git ~/.vim
git clone ssh://git@lxyun.top:5030/git/gvim.git ~/.vim


打开vim，执行PlugInstall命令安装插件
:PlugInstall

快捷键：
```
“tt“ 打开文件树
"o"  打开文件
"O"  打开所选目录下的所有子目录
"X"  闭所选目录下的所有子目录
"P"  跳到当前的根目录
"i"  使用一个水平分割窗口来打开选中的文件
"s"  使用一个垂直窗口来打开选中的文件
"se" 往右分屏
"sd" 往下分屏
"空格+c" 复制到系统剪切板
"空格+q" 不保存退出vim
"空格+w" 保存并退出vim编辑
```
