" ---------------  基本配置 --------------"
" 开启行号
set number

" 打开语法高亮
syntax on

" 底部显示当前命令
set showcmd

" 支持使用鼠标
"set mouse=a

" 启用256色
set t_Co=256

" 开启文本类型检查
"filetype indent on
filetype off 
set nocompatible

"鼠标复制粘贴
"恢复鼠标右键复制功能
set mouse=          
"去掉行号，方便复制内容
set nonu

"--------------- 缩进 ------------------"
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent

" 按下 Tab 键时，Vim 显示的空格数。
set tabstop=2
" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set shiftwidth=4
" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
set expandtab
" Tab 转为多少个空格。
set softtabstop=2

" ------------ 搜索------------------"
"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch
" 搜索时，高亮显示匹配结果。
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch
"搜索时忽略大小写。
set ignorecase
" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
set smartcase

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php,*cpp write


" ----------- 插件 Vundle ------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'codota/tabnine-vim'
" C++高亮
Plugin 'octol/vim-cpp-enhanced-highlight'

" 配色主题
Plugin 'acarapetis/vim-colors-github'

" Bazel相关
Plugin 'google/vim-maktaba'
Plugin 'bazelbuild/vim-bazel'

" 用来提供一个导航目录的侧边栏
Plugin 'scrooloose/nerdtree'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plugin 'vim-airline/vim-airline'

" 可以在 vim 中使用 tab 补全
"Plug 'vim-scripts/SuperTab'
"
" 可以在文档中显示 git 信息
Plugin 'airblade/vim-gitgutter'

" go 主要插件
Plugin 'fatih/vim-go', { 'tag': '*' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plugin 'dgryski/vim-godef'

call vundle#end()
filetype plugin indent on    " required

