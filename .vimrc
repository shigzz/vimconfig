set nocompatible
let mapleader=";"

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

autocmd BufWritePost $MYVIMRC source $MYVIMRC
nmap <leader><leader>w :wq<CR>
nmap <leader><leader>q :q!<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

filetype off
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/SuperTab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'skywind3000/vim-terminal-help'
Plugin 'tomlion/vim-solidity'

Plugin 'KeitaNakamura/neodark.vim'
" colorscheme monokai
Plugin 'crusoexia/vim-monokai'
" colorscheme github 
Plugin 'acarapetis/vim-colors-github'
" colorscheme one 
Plugin 'rakr/vim-one'

" go 主要插件
Plugin 'fatih/vim-go', { 'tag': '*' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plugin 'dgryski/vim-godef'

" markdown 插件
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
filetype plugin indent on

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let NERDTreeShowHidden=1
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_right= 1
nmap <leader>tt :TagbarToggle<CR>


au InsertLeave *.go,*.sh,*.php write

nmap gr :!go run %<CR>
nmap <leader>te ^[=

" vim-terminal-help
let g:terminal_key= '<leader>te'
let g:termnal_kill= '<leader>tk'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1

inoremap <C-l> <ESC>la
inoremap <leader>l <ESC>la
let g:nerdtree_tabs_open_on_console_startup=1

let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2
set foldmethod=marker

inoremap <c-g> <ESC>
inoremap <leader>a <ESC>
nnoremap <leader><leader>l <c-w>l
nnoremap <leader><leader>h <c-w>h
nnoremap <leader><leader>j <c-w>j
nnoremap <leader><leader>k <c-w>k

" 设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发补全的字符大小设置为 3
let g:ycm_min_num_of_chars_for_completion = 3
" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

set nu

set bg=light
colorscheme solarized
