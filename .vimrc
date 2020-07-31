syntax on
colorscheme elflord
set number
set hlsearch
set cursorline
set tabstop=4

" 状态行设置
set statusline=%F
set laststatus=2

let mapleader=';'

" 窗口相关
" let g:netrw_winsize=20
nnoremap <silent> <leader>d :Vexplore<cr>

" 快速切换buffers
nnoremap <silent> <leader>1 :b1<cr>
nnoremap <silent> <leader>2 :b2<cr>
nnoremap <silent> <leader>3 :b3<cr>
nnoremap <silent> <leader>4 :b4<cr>
nnoremap <silent> <leader>5 :b5<cr>
nnoremap <silent> <leader>6 :b6<cr>
nnoremap <silent> <leader>7 :b7<cr>
nnoremap <silent> <leader>8 :b8<cr>
nnoremap <silent> <leader>9 :b9<cr>

" 快速回到normal模式
vnoremap <leader>n <esc>
inoremap <leader>n <esc>

" 退出、关闭
inoremap <leader>qa <esc>:qa!<cr>
inoremap <leader>q <esc>:q!<cr>
inoremap <leader>x <esc>:x!<cr>

nnoremap <leader>qa <esc>:qa!<cr>
nnoremap <leader>q <esc>:q!<cr>
nnoremap <leader>x <esc>:x!<cr>

vnoremap <leader>qa <esc>:qa!<cr>
vnoremap <leader>q <esc>:q!<cr>
vnoremap <leader>x <esc>:x!<cr>

" plugin ctags
set tags=tags;
set autochdir
nnoremap <silent> <leader>; <C-]>

" plugin taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Open = 1                  "在启动VIM后，自动打开taglist窗口
let Tlist_Use_Left_Window = 1            "在左侧窗口显示taglist
" let Tlist_Show_One_File = 1            "只显示当前文件的tag
let Tlist_File_Fold_Auto_Close = 1       "同时显示多个文件的tag，非当前文件的tag会折叠起来 
let Tlist_Exit_OnlyWindow = 1            "如果taglist是最后一个窗口，则退出VIM
