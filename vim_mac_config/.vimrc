"link to the svn
set fileencodings=utf-8,gb2312,gbk,gb18030

set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
"fileencodings中utf-8要在前面。
"
set guifont=Monaco:h13
"set guifontwide=WenQuanYi\ Micro\ Hei:h13

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

"line space
set linespace=2

"open nerd tree by F5
map <F5> :NERDTreeToggle<CR>
imap <F5> <ESC>:NERDTreeToggle<CR>

"auto remove ending spaces
function! RemoveEndingWhiteSpace()
    :if search("[ \t]$")
    :    %s/[ \t]\+$//
    :endif
endfunction    
au! FileWritePre * ks|RemoveEndingWhiteSpace()|'s

"auto load .vimrc after refresh
autocmd BufWritePost ~/.vimrc   so ~/.vimrc
