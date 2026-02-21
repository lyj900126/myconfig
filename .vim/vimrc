" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" ----------------------最常用、最基本设置-----------------------------
set nocp                 " 设置不兼容原始vi模式
colorscheme  evening     " 配色方案
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set number               " 开启行号显示
"set rnu                  " 再显示一个相对行号
set ruler                " 总是显示光标位置
set cursorline           " 高亮显示当前行
filetype on              " 设置开启文件类型侦测
set mouse=a              " 开启鼠标支持
set mousemodel=extend    " 开启侧边滚动条



"------------------------------杂项---------------------------------------
let mapleader = " "        " 定义<leader>键
filetype plugin on         " 设置加载对应文件类型的插件
" set noeb                 " 关闭错误的提示音（bi~）
set cmdheight=1            " 设置命令行的高度
set showcmd                " select模式下显示选中的行数
"set laststatus=2         " 总是显示状态栏
set whichwrap+=<,>,h,l     " 设置光标键跨行
" set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
" set history=100               " 设置历史记录条数
set clipboard=unnamed           " 和系统共享剪贴板内容
"set list                       " 显示空格、tab
"set listchars=space:·
"set listchars+=tab:>-
" 设置Visual模式下选中内容的颜色
if &term =~ "xterm"
     " 16色方案
    hi Visual ctermfg=white ctermbg=red
else
    " 其他终端类型，可以尝试使用默认颜色方案
    hi Visual ctermfg=white ctermbg=blue guifg=white guibg=blue
endif

" 设置打开vim编辑器壁纸半透明
hi Normal guibg=NONE ctermbg=NONE   

" --------------------------代码缩进完整配置--------------------------------
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
filetype plugin on       " 载入文件类型插件
set expandtab            " 将制表符扩展为空格(关于制表符和空格，有的语言可能不同，谨慎设置)
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码


" ----------------------代码补全-----------------------------
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表


" ----------------------搜索-----------------------------
set hlsearch            " 高亮显示搜索结果，关闭高亮nohlsearch
set incsearch           " 开启实时搜索功能/增量式搜索
set noignorecase        " 搜索时大小写不敏感


" ----------------------文件缓存-----------------------------
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

" 打开文件时恢复到上一次退出时的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" ----------------------编码-----------------------------
set termencoding=utf-8            " 终端编码
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030  " 读取文件时，尝试使用的编码


" ----------------------快捷键-----------------------------
"se往右分屏;sd往下分屏
map se :set splitright<CR>:vsplit<CR>
map sd :set splitbelow<CR>:split<CR>

"复制到系统剪切板; 不保存退出vim; 保存并退出vim编辑
map <leader>c "+y
map <leader>q :q<CR>
map <leader>w :wq<CR>

"自动补全括号
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O




 "---------------------插件安装---------------------------
call plug#begin('~/.vim/plugged')     " 指定插件的安装目录
 
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }   " 文件树
Plug 'mhinz/vim-startify'                                " 开屏插件

" fzf#install() 确保你安装了最新的 fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

call plug#end()





"----------------------插件配置---------------
" ===
" === 文件树NERDTree
" ===
" "(空字符串)表示禁用该功能的默认快捷键
" 设置快捷键为 “tt“ 打开文件树
map tt :NERDTreeToggle<CR> 

let NERDTreeMapOpenExpl = ""        "禁用--调用命令在外部文件管理器打开光标所在目录
let NERDTreeMapUpdir = ""           "禁用--返回上级目录，默认会折叠当前目录
let NERDTreeMapUpdirKeepOpen = "l"  "返回上级目录时保持当前目录展开状态
let NERDTreeMapOpenSplit = ""       "禁用--在水平窗口中打开文件(默认是g)
let NERDTreeOpenVSplit = ""         "禁用--在垂直窗口中打开文件(默认是s)
let NERDTreeMapActivateNode = "i"   "激活光标所在节点，打开文件或者展开(收起)目录
let NERDTreeMapOpenInTab = "o"      "小写o在新标签打开文件，大写O展开目录下的文件
let NERDTreeMapPreview = "p"        "预览文件内容(光标仍停留在目录窗口)
let NERDTreeMapCloseDir = "n"       "关闭当前目录并返回上一级
let NERDTreeMapChangeRoot = "y"     "切换当前目录为根目录(原默认键是大写C)
let NERDTreeShowHidden=1            " 设置默认显示隐藏文件

" fzf启用文件预览功能
"let g:fzf_preview_window = ['right:70%', 'ctrl-/']

" 启用模糊搜索
set rtp+=~/.fzf
if executable('fzf')
  command! -bang -nargs=* Files call fzf#vim#files(<q-args>)
  command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'))
endif


