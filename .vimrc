" plugin VundleVim Begin!
let mapleader=';'

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
" 终端开启256色支持
set t_Co=256 
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1

" Display the statusline in the tabline (first top line)
" let g:airline_statusline_ontop = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" configure whether buffer numbers should be shown
let g:airline#extensions#tabline#buffer_nr_show = 1
" configure collapsing parent directories in buffer name
let g:airline#extensions#tabline#fnamecollapse = 1
" configure truncating non-active buffer names to specified length
let g:airline#extensions#tabline#fnametruncate = 10

nnoremap <leader>1 :b1<cr>
nnoremap <leader>2 :b2<cr>
nnoremap <leader>3 :b3<cr>
nnoremap <leader>4 :b4<cr>
nnoremap <leader>5 :b5<cr>
nnoremap <leader>6 :b6<cr>
nnoremap <leader>7 :b7<cr>
nnoremap <leader>8 :b8<cr>
nnoremap <leader>9 :b9<cr>
" 使用tab键快速切换buffers
nnoremap <tab> :bn<cr>

" vim-scripts 中的插件 "
Plugin 'taglist.vim'
"ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
nnoremap <F9>  :TlistToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" 在启动VIM后，自动打开taglist窗口
let Tlist_Auto_Open = 0                  
let Tlist_Use_Left_Window = 1
" 只显示当前文件的tag
let Tlist_Show_One_File = 1
" 同时显示多个文件的tag，非当前文件的tag会折叠起来
let Tlist_File_Fold_Auto_Close = 1     
" 如果taglist是最后一个窗口，则退出VIM
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidt = 25
 
Plugin 'The-NERD-tree'
"NERDTree 配置:F2快捷键显示当前目录树
nnoremap <F8> :NERDTreeToggle<CR>
let NERDTreeWinSize=25 

Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" plugin VundleVim End!
"
" ***********************************************************************************
" ***********************************************************************************
" ***********************************************************************************
" ***********************************************************************************

syntax on
colorscheme elflord
set number
set hlsearch
set cursorline
set tabstop=4
" 允许隐藏未保存的buffer，否则是 set nohidden
set hidden 

" tab相关
let g:netrw_winsize=20
nnoremap <silent> <leader>d :Vexplore<cr>

" 快速回到normal模式
vnoremap <leader>n <esc>
inoremap <leader>n <esc>

" 退出、关闭、保存
" buffer < window < tab
" e : edit file in a new buffer
" new : blank file/buffer
" bd : close buffer
" bd! : force close buffer

" w : save
" q : quit
" qa : exit vim,unless there are some buffers which have been changed
" q! : quit without save
nnoremap <leader>x :wq!<cr>
nnoremap <leader>q :qa!<cr>

" 会话,和profile里的alias搭配使用,比如
" alias vi="/usr/bin/vim"
" alias vis="/usr/bin/vim -S ~/.vim/yanjc.session"
nnoremap <leader>mks :mksession! ~/.vim/yanjc.session<cr>

" plugin ctags
set tags=tags
set tags+=/www/wwwroot/tags
set autochdir
nnoremap <silent> <leader>; <C-]>
