"link to the svn
set fileencodings=utf-8,gb2312,gbk,gb18030

set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
"fileencodings中utf-8要在前面。
"
if has("gui_gtk2")
    set guifont=Monaco\ 11
    set guifontwide=WenQuanYi\ Micro\ Hei\ 12
endif

"设置（软）制表符宽度为4：
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"设置自动缩进
set cindent

"显示行号
set nu

"自动语法高亮
syntax on

"解决backspace问题"
set backspace=indent,eol,start
colorscheme zenburn
"搜索问题
set hlsearch
set ignorecase 
set incsearch

"Markdown language syntax settings
augroup mkd
autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:>
augroup END

"auto new line 
"set textwidth=80

"set current working directory globally
autocmd BufEnter * lcd %:p:h
