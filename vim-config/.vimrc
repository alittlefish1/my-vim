"call plug#begin('~/.vim/autoload')
"Plug 'jayli/vim-easycomplete'
"Plug 'SirVer/ultisnips'
"Plug 'Valloric/YouCompleteMe'
"Plug 'Shougo/neocomplete.vim'
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"call plug#end()
set laststatus=2
set encoding=utf-8
if has("autocmd")

  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

endif
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

func! SetNU()
    if &number!=0
       exec "set nonumber"
    else
        exec "set number"
    endif
endfunc

func! SetTAB()
    if &expandtab!=0
       exec "set noexpandtab"
    else
        exec "set expandtab"
    endif
endfunc

map <c-]> g<c-]>
map <silent> <F2> :call SetNU()<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :Tlist<CR>
map <F5> :w<CR>
map <F6> :call SetTAB()<CR>

" 设置easycomplete
" Highlight the symbol when holding the cursor
" let g:easycomplete_cursor_word_hl = 1
" Using nerdfont is highly recommended
"let g:easycomplete_nerd_font = 1

" GoTo code navigation
noremap gr :EasyCompleteReference<CR>
noremap gd :EasyCompleteGotoDefinition<CR>
noremap rn :EasyCompleteRename<CR>
noremap gb :BackToOriginalBuffer<CR>

set tags=tags;
"set autochdir
"去除第一行的帮助提示
let NERDTreeMinimalUI=1
"在左边占多宽
let NERDTreeWinSize=28
"不高亮显示光标所在的文件
let NERDTreeHighlightCursorline=0
"当前目录的设定
let NERDTreeChDirMode = 2
let NERDTreeWinPos = "right"
"自动退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"打开vim时自动打开
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd l 

filetype on
set hlsearch
let xxtagbar_vertical = 25
"let Tlist_Auto_Open=1	"默认打开vim时自动开启taglist
let Tlist_Show_One_File=1	"只显示当前文件
let Tlist_WinWidth= 28	"taglist窗口的宽度
let Tlist_Exit_OnlyWindow=1	"如果退出时仅剩taglist窗口，则直接退出vim
let Tlist_Use_Left_Window = 1 "在右侧窗口中显示taglist窗口

"wincmd l
"autocmd vimenter * wincmd l 

"let g:EasyGrepFileAssociations=~/.vim/plugin/EasyGrepFileAssociations "指定同步文件类型
let g:EasyGrepMode = 0 "跟踪当前扩展
let g:EasyGrepCommand = 1 "选择cmd为vimgrep，但是测试使用Grep也可以
let g:EasyGrepRecursive = 1   "启动递归搜索
"let g:EasyGrepHidden = 1 "搜索隐藏文件”
let g:EasyGrepFilesToExclude = "tags, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"   "排除不想搜索的file类型
"let g:EasyGrepAllOptionsInExplorer = 1 "在使用GrepOption是是否显示所有配置项， 1 是显示
"let g:EasyGrepWindow = 1 "默认情况下也为0  就是Quickfix窗口”
let g:EasyGrepJumpToMatch = 0 "跳转第一个..”
let g:EasyGrepInvertWholeWord = 1 "搜索整个单词”
let g:EasyGrepFileAssociationsInExplorer = 1 "文件中显示关系表
let g:EasyGrepReplaceWindowMode = 1 "全局代替时，执行当前窗口与下一个窗口拆分”
let g:EasyGrepSearchCurrentBufferDir = 0
"let g:EasyGrepRoot="/"

