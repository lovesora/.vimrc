" ------------------------------------------------------------------------------------------------------------------------------
" 依赖：
" ------------------------------------------------------------------------------------------------------------------------------
" tags:
" brew install ctags
" js:
" npm install -g git+https://github.com/ramitos/jsctags.git
" ts:
" npm install --global git+https://github.com/Perlence/tstags.git
" ------------------------------------------------------------------------------------------------------------------------------
" YCM:
" cd ~/.vim/bundle/YouCompleteMe/
" ./install.sh
" ------------------------------------------------------------------------------------------------------------------------------
" js-format
" npm install -g js-beautify
" ------------------------------------------------------------------------------------------------------------------------------
" ack.vim
" require ag
" mac: brew install the_silver_searcher
" or
" ubuntu: apt-get install silversearcher-ag
" ------------------------------------------------------------------------------------------------------------------------------
" dash
" http://xclient.info/s/dash.html?_=4e3cdc67aaa43723cc2ef97687b967eb
" ------------------------------------------------------------------------------------------------------------------------------
" ale
" npm i -g htmlhint stylelint eslint tslint alex
" ------------------------------------------------------------------------------------------------------------------------------



" ------------------------------------------------------------------------------------------------------------------------------
" 快捷键配置 mapping
" ------------------------------------------------------------------------------------------------------------------------------
" 屏幕控制
" <C-e>                 屏幕向下移动一行
" <C-y>                 屏幕向上移动一行
" <C-d>                 向下移动半屏
" <C-f>                 向下移动一屏
" <C-b>                 向上移动一屏
" <C-u>                 向上移动半屏
" z-                    将光标所在行移到屏幕底部
" z.                    将光标所在行移到屏幕中间
" z<CR>                 将光标所在行移到屏幕顶部


" 光标控制
" h j k l               左下上右
" 0 ^ $                 行首，非空白符行首，行末
" - +                   上一行第一个字符，下一行第一个字符
" H M L                 屏首，屏中，屏尾(保持列位置不变)
" w e b                 下一个单词第一个字符，下一个单词最后一个字符，上一个单词第一个字符
" ( ) { }               上／下句首尾（无任何字符空行分隔），上／下段行（无字符空行）
" %                     匹配括号移动
" `` ''                 上一个位置
" m. `.                 标记、跳转（.指的一个字符）
" n<CR>                 向下跳转n行
" :n<CR> nG             跳转到n行
" 1G gg :0<CR>          文件第一行
" G :$<CR>              文件最后一行


" javascript
" <C-]>                 转到定义
" <Leader>et            打印变量类型
" <Leader>lr            列出变量引用
" <Leader>pd            弹出文档
" <Leader>rn            重命名变量


" typescript
" <Leader>rn            重命名变量
" <Leader>rN            重命名变量，包括注释内的变量名
" <Leader>lr            列出变量引用
" <Leader>li            列出变量引用所在的文件
" <C-]>                 跳转到变量定义
" <Leader>jd            跳转到变量类型定义
" <Leader>sa            搜索变量名
" <Leader>i             自动导入
" <Leader>et            打印变量类型

" markdown
" F8                    打开预览
" F9                    关闭预览

" default
" <C-o> 上次光标所在位置


" jump
" <C-o> 跳转到上次编辑


" buffer
" <C-^>                 切换当前缓冲区和上一个缓冲区
" <C-w>                 关闭当前缓冲区
" :ls                   列出所有缓冲区
" :b *.scss<Tab>        模糊搜索tab
" <Leader>bh            水平分屏
" <Leader>bv            垂直分屏


" nerdcommenter
" [number]<leader>cc        注释
" [number]<leader>cu        取消注释
" [number]<leader>c<space>  toggle注释
" [number]<leader>cI        在行末尾添加注释
" [number]<leader>ca        切换注释
"
" Emmet
" Emmet快捷键<c-y>/可以注释当前HTML Tag，把它映射成更通用的注释快捷键Ctrl+/
" Emmet 中有用的快捷键还有：
" <c-y>,: 展开Emmet
" <c-y>n：到下一个编辑点
" <c-y>N：到上一个编辑点
" <c-y>d：选中整个标签
" <c-y>D：选中整个标签的内容
" <c-y>k：删除当前标签


" 辅助控制
" <Leader>d 打开dash

" 选择文本
" + 扩展选择
" - 收缩选择


" 显示额外信息
" <Leader>st                    tag side bar
" <Leader>su                    undo sidebar

" Git
" Gitv                          log 可视化
" Agit                          查看单个文件的提交历史
" Gdiff, Glog, Gstatus

" lint
" <Leader>lk 跳转到上一个错误行
" <Leader>lj 跳转到下一个错误行

" fzf
" <C-p> 搜索当前pwd文件夹内的文件

" map
" mapc
" mapc!

let mapleader=" "                   " 设置leader键

" buffer 通过索引快速跳转
nnoremap <C-w> :bdelete<CR>
" nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>
nnoremap <Leader><Left> :bp<CR>
nnoremap <Leader><Right> :bn<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>11 :11b<CR>
nnoremap <Leader>12 :12b<CR>
nnoremap <Leader>13 :13b<CR>
nnoremap <Leader>14 :14b<CR>
nnoremap <Leader>15 :15b<CR>
nnoremap <Leader>16 :16b<CR>
nnoremap <Leader>17 :17b<CR>
nnoremap <Leader>18 :18b<CR>
nnoremap <Leader>19 :19b<CR>
nnoremap <Leader>10 :20b<CR>
nnoremap <Leader>bh :sp 
nnoremap <Leader>bv :vertical sb 



nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>

inoremap <special> jk <ESC>



" ------------------------------------------------------------------------------------------------------------------------------
" vim configuration
" ------------------------------------------------------------------------------------------------------------------------------
" environment
set nocompatible                    " 去掉有关vi一致性模式，避免以前版本的bug和局限
set ttyfast                         " Indicates a fast terminal connection

set nobackup                        " 禁用临时文件
set noswapfile                      " 禁用生成swap文件

set history=200                     " 设置历史记录条数(:, search)
set autoread                        " 文件在外部被修改时自动加载
au CursorHold * checktime           " 设置自动加载时机

" don't beep
set novisualbell
set noerrorbells
set tm=300                          " 设置命令超时时间

set lazyredraw                      " 在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能





" display
set title                           " change the terminal's title
set showcmd                         " 将输入的命令显示出来，便于查看当前输入的信息
" set cursorcolumn                    " 列高亮显示
" set cursorline                      " 行高亮显示
set nocursorline                    " 禁用行高亮显示
set nocursorcolumn                  " 禁用列高亮显示

" 如果使用screen也需要开256色
" $ vim ~/.screenrc
" $ termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
set t_Co=256                        " 让vim支持256色
set list                            " 显示特殊字符
set listchars=tab:>-,trail:-,extends:#,nbsp:~,precedes:<    " 显示tab，空格，末尾空格

set number                          " 显示绝对行号
set relativenumber                  " 显示相对行号
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode





" syntax highlight
set synmaxcol=200                   " 代码语法高亮的列数，超过200列不再语法高亮
syntax sync minlines=256            " 修复语法突出问题 controls how Vim synchronizes the syntax state that should apply at a particular point in the text
" syntax on                           " 代码语法高亮 will overrule settings with the defaults
syntax enable                       " 代码语法高亮 will keep current color settings.





" edit
filetype plugin indent on           " 检测文件的类型，相当于执行filetype on, filetype plugin on, filetype indent on http://easwy.com/blog/archives/advanced-vim-skills-filetype-on/
set scrolljump=10
set nostartofline                   " keep cursor postion when switching between buffers
set foldmethod=indent               " 代码折叠
set foldlevelstart=99               " 设置打开文件默认不折叠代码
setlocal foldlevel=4                " 设置折叠层数为
set showmatch                       " 插入右括号时会短暂地跳转到匹配的左括号
" set nowrap                          " disable wrap
set autoindent                      " 设置自动对齐
set smartindent                     " 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
" set cindent                         " 自动缩进，适合js
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " 取消自动注释

" File encode:encode for varied filetype
set helplang=zh
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

" 设置tab为4个空格
set shiftwidth=4                    " 设置自动对齐tab为4个空格
set ts=4                            " 设置tab键为四个空格
set softtabstop=4                   " 在按退格键时，如果前面有4个空格，则会统一清除
set expandtab                       " 设置tab为空格
retab                               " 转换所有的tab

set hidden                          " 设置不需要保存就可以切换buffer





" search
set ignorecase                      " 设置搜索时忽略大小写
" set hlsearch                        " 高亮显示搜索匹配到的字符串
set incsearch                       " 在程序中查询一单词，自动匹配单词的位置
set backspace=2                     " 设置退格键可用
set backspace=indent,eol,start      " 让backspace能够删除特定字符




" buffer
set wildmenu wildmode=full          " 设置显示buffer匹配结果




" clipboard
set clipboard=unnamed               " 系统剪切板
set pastetoggle=<F9>                " 切换到拷贝模式





" 设置自动备份
" if has("vms")
"     set nobackup
" else
"     set backup
" endif


" ------------------------------------------------------------------------------------------------------------------------------
" Plug Configuration
" ------------------------------------------------------------------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

" nerdtree
Plug 'scrooloose/nerdtree'                                        " 目录结构
Plug 'Xuyuanp/nerdtree-git-plugin'                                " 基于nerd的git文件管理
Plug 'scrooloose/nerdcommenter'                                   " 注释

" IDE
Plug 'bling/vim-airline'                                          " 增强状态栏
Plug 'vim-airline/vim-airline-themes'                             " airline theme                                 | no config
Plug 'junegunn/limelight.vim'                                     " 关灯
Plug 'sjl/vitality.vim'                                           " 修改在不同模式下光标的显示方式                | no config
Plug 'godlygeek/tabular'                                          " 对齐
Plug 'tomasr/molokai'                                             " 颜色主题
Plug 'mhinz/vim-startify'                                         " 启动显示页


" 代码辅助
Plug 'Yggdroot/indentLine'                                        " 显示垂直对齐
Plug 'tpope/vim-fugitive'                                         " git可视化
Plug 'airblade/vim-gitgutter'                                     " 文件编辑时的git提示                           | no config
Plug 'gregsexton/gitv'                                            " git树形结构                                   | no config
Plug 'cohama/agit.vim'                                            " 单个文件可视化                                | no config
Plug 'Raimondi/delimitMate'                                       " 用于补全括号和引号                            | no config
Plug 'Valloric/YouCompleteMe', {'do': './install.py --js-completer'}             " 代码自动补全
Plug 'ternjs/tern_for_vim'                                        " javascript代码补全
Plug 'w0rp/ale'                                                   " 语法检查，异步处理，速度更快，代替syntastic
Plug 'FooSoft/vim-argwrap'                                        " 参数一行变多行
Plug 'majutsushi/tagbar'                                          " Tag
Plug 'MattesGroeger/vim-bookmarks'                                " Bookmarks
Plug 'wakatime/vim-wakatime'                                      " 编程时间消耗
Plug 'rizzatti/dash.vim'                                          " dash
Plug 'terryma/vim-expand-region'                                  " visual模式下的expand选择

" 搜索
Plug 'junegunn/fzf', { 'do': './install --all' }                  " 文件搜索，代替ctrlp.vim
Plug 'vim-scripts/matchit.zip'                                    " 允许:%s使用正则匹配                           | no config
Plug 'Lokaltog/vim-easymotion'                                    " 高级搜索
Plug 'unblevable/quick-scope'                                     " 单词匹配
Plug 'mileszs/ack.vim'                                            " 全局搜索

" 编辑
Plug 'terryma/vim-multiple-cursors'                               " 多行编辑
Plug 'christoomey/vim-sort-motion'                                " 排序                                          | no config
Plug 'tpope/vim-repeat'                                           " 重复命令                                      | no config
Plug 'tpope/vim-surround'                                         " 包围文本                                      | no config
Plug 'vim-scripts/undotree.vim'                                   " undo列表

" html
Plug 'mattn/emmet-vim'                                            " Emmet
Plug 'Valloric/MatchTagAlways'                                    " html tag配对显示                              | no config

" javascript
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}               " 自动格式化
" Plug 'pangloss/vim-javascript'                                    " 对齐，语法                                    | bad performance

" typescript
Plug 'leafgarland/typescript-vim'                                 " ts highlight
Plug 'Quramy/vim-js-pretty-template'                              " provides syntax highlight for contents in Template Strings    | no config
Plug 'quramy/tsuquyomi'                                           " typescript

" json
Plug 'elzr/vim-json'                                              " json语法高亮

" css
Plug 'gko/vim-coloresque'                                         " 显示颜色                                      | no config

" md
Plug 'plasticboy/vim-markdown'                                    " markdown
Plug 'iamcco/markdown-preview.vim'                                " markdown preview

" snippet
Plug 'SirVer/ultisnips'
Plug 'lovesora/vim-snippets'


call plug#end()

" 常用命令
" PlugInstall [name ...] [#threads]         Install plugins
" PlugUpdate [name ...] [#threads]          Install or update plugins
" PlugClean[!]                              Remove unused directories (bang version will clean without prompt)
" PlugUpgrade                               Upgrade vim-plug itself
" PlugStatus                                Check the status of plugins
" PlugDiff                                  Examine changes from the previous update and the pending changes


" ------------------------------------------------------------------------------------------------------------------------------
" nerdtree
" ------------------------------------------------------------------------------------------------------------------------------
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
let NERDTreeWinSize=50
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" vim打开文件时自动打开pwd文件夹目录树
" autocmd vimenter * NERDTree
" 设置bookmark
" let g:NERDTreeBookmarksFile='~/.NERDTreeBookmarks'

" map
noremap <leader>ww <C-w>w                                           " 切换窗口
noremap <leader>wh <C-w>h                                           " 向左切换窗口
noremap <leader>wj <C-w>j                                           " 向下切换窗口
noremap <leader>wk <C-w>k                                           " 向上切换窗口
noremap <leader>wl <C-w>l                                           " 向右切换窗口
noremap <leader>wr <C-w>r                                           " 移动窗口
noremap <leader>wc :tabc<CR>                                        " 关闭tab窗口
map     <leader>we :NERDTreeToggle<CR>                              " F2 切换nerdtree
map     <leader>wa :NERDTreeFind<CR>                                " 定位到当前活动的文本
map <leader>+ :vertical resize +10<CR>
map <leader>- :vertical resize -10<CR>
map <leader>w+ :resize +10<CR>
map <leader>w- :resize -10<CR>
map <leader>ws :vertical resize 50<CR>
map [[ gT
map ]] gt




" ------------------------------------------------------------------------------------------------------------------------------
" nerd tree git
" ------------------------------------------------------------------------------------------------------------------------------
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }



" ------------------------------------------------------------------------------------------------------------------------------
" nerdcommenter
" ------------------------------------------------------------------------------------------------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" map
map <C-_> <plug>NERDCommenterToggle
imap <C-_> <Esc><plug>NERDCommenterToggle



" ------------------------------------------------------------------------------------------------------------------------------
" airline
" ------------------------------------------------------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1



" ------------------------------------------------------------------------------------------------------------------------------
" tabularize
" ------------------------------------------------------------------------------------------------------------------------------
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>



" ------------------------------------------------------------------------------------------------------------------------------
" theme
" ------------------------------------------------------------------------------------------------------------------------------
colorscheme molokai



" ------------------------------------------------------------------------------------------------------------------------------
" vim-startify
" ------------------------------------------------------------------------------------------------------------------------------
let g:startify_change_to_vcs_root = 1
nnoremap <Leader>o :Startify<CR>



" ------------------------------------------------------------------------------------------------------------------------------
" indentLine
" ------------------------------------------------------------------------------------------------------------------------------
let g:indentLine_enabled = 1            " 启用indentLine
let g:indentLine_char = '|'             " 修改显示字符
" let g:indentLine_setColors = '#eee'     " 设置字符颜色



" ------------------------------------------------------------------------------------------------------------------------------
" YCM
" type ./ to have filepath completers
" ------------------------------------------------------------------------------------------------------------------------------
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python2.7'
" nmap<C-a> :YcmCompleter FixIt<CR>  
" 
set completeopt=longest,menu                                               "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	                    "离开插入模式后自动关闭预览窗口
let g:ycm_confirm_extra_conf=0                                              "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	                            " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	                                " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0                                                  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1                                    " 语法关键字补全
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" if !exists("g:ycm_semantic_triggers")
"     let g:ycm_semantic_triggers = {}
" endif
" let g:ycm_semantic_triggers['typescript'] = ['.']
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>       " 跳转到定义处
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']



" ------------------------------------------------------------------------------------------------------------------------------
" tern_for_vim
" ------------------------------------------------------------------------------------------------------------------------------
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript setlocal omnifunc=tern#Complete
" set omnifunc=syntaxcomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" map
autocmd FileType javascript nnoremap <C-]> :TernDef<CR>
autocmd FileType javascript nnoremap <Leader>et :TernType<CR>
autocmd FileType javascript nnoremap <Leader>lr :TernRefs<CR>
autocmd FileType javascript nnoremap <Leader>pd :TernDoc<CR>
autocmd FileType javascript nnoremap <Leader>rn :TernRename<CR>



" ------------------------------------------------------------------------------------------------------------------------------
" w0rp/ale
" :ALEDetail 查看详情
" ------------------------------------------------------------------------------------------------------------------------------
let g:ale_fixers = {
\   'javascript':  ['eslint'],
\   'typescript':  ['tslint'],
\}
let g:ale_linters = {
\   'markdown':  ['alex'],
\   'scss':      ['stylelint'],
\}
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

" 'html':      ['htmlhint'],
" let g:ale_html_htmlhint_options = '--config=.htmlhintrc --format=unix'

nmap <silent> <Leader>ek <Plug>(ale_previous_wrap)
nmap <silent> <Leader>ej <Plug>(ale_next_wrap)



" ------------------------------------------------------------------------------------------------------------------------------
" argwrap
" ------------------------------------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>a :ArgWrap<CR>                            " 将参数从一行转为多行



" ------------------------------------------------------------------------------------------------------------------------------
" tagbar
" require ctags, jsctags
" brew install ctags
" npm install -g git+https://github.com/ramitos/jsctags.git
" ------------------------------------------------------------------------------------------------------------------------------
set tags=./tags,tags;                   " 设置tags文件
let g:tagbar_type_javascript = {
\ 'ctagsbin' : 'jsctags'
\ }
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }
let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }
let g:tagbar_show_linenumbers = 1       " 设置显示绝对行号
let g:tagbar_indent = 2                 " tagbar缩进大小
let g:tagbar_sort = 0                   " 设置tag的排序，默认字符排序，设置0以代码中的位置排序
let g:tagbar_left = 1                   " 设置tagbar打开时的位置
let g:tagbar_autofocus = 1              " 当tagbar打开时自动对焦到tagbar
let g:tagbar_width = 40                 " 设置tagbar默认宽度

nnoremap <Leader>st :TagbarToggle<CR>



" ------------------------------------------------------------------------------------------------------------------------------
" Bookmarks
" ------------------------------------------------------------------------------------------------------------------------------
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_no_default_key_mappings = 1

" map
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm <Plug>BookmarkToggle
    nmap mi <Plug>BookmarkAnnotate
    nmap ma <Plug>BookmarkShowAll
    nmap mj <Plug>BookmarkNext
    nmap mk <Plug>BookmarkPrev
    nmap mc <Plug>BookmarkClear
    nmap mx <Plug>BookmarkClearAll
    nmap mkk <Plug>BookmarkMoveUp
    nmap mjj <Plug>BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap ma
    unmap mj
    unmap mk
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()



" ------------------------------------------------------------------------------------------------------------------------------
" dash.vim
" ------------------------------------------------------------------------------------------------------------------------------
nmap <silent> <leader>d <Plug>DashSearch



" ------------------------------------------------------------------------------------------------------------------------------
" fzf
" ------------------------------------------------------------------------------------------------------------------------------
" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" map
" in search mode
" <C-p> previous history
" <C-n> next history
" in normal mode
nnoremap <C-p> :FZF<CR>

" ------------------------------------------------------------------------------------------------------------------------------
" easymotion
" ------------------------------------------------------------------------------------------------------------------------------
let g:EasyMotion_smartcase = 1      " 忽略大小写

map sl <Plug>(easymotion-lineforward)
map sj <Plug>(easymotion-j)
map sk <Plug>(easymotion-k)
map sh <Plug>(easymotion-linebackward)
vmap sl <Plug>(easymotion-lineforward)
vmap sj <Plug>(easymotion-j)
vmap sk <Plug>(easymotion-k)
vmap sh <Plug>(easymotion-linebackward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)



" ------------------------------------------------------------------------------------------------------------------------------
" quick-scope
" ------------------------------------------------------------------------------------------------------------------------------
" let g:qs_highlight_on_keys = ['f', 'F']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']


" ------------------------------------------------------------------------------------------------------------------------------
" ack.vim
" require ag
" mac: brew install the_silver_searcher
" or
" ubuntu: apt-get install silversearcher-ag

" .ackrc
" --ignore-dir=node_modules
" --ignore-dir=refactor

" ------------------------------------------------------------------------------------------------------------------------------
let g:ackprg = 'ag --nogroup --nocolor --column'

" nnoremap <leader>sa :Ack<space>
function! Search(string)
  set shellpipe=>
  execute "Ack! \"" . a:string . "\""
  set shellpipe=2>&1\|tee
endfunction

nnoremap <Leader>f :call Search("")<left><left>


" ------------------------------------------------------------------------------------------------------------------------------
" terryma/vim-multiple-cursors
" ------------------------------------------------------------------------------------------------------------------------------
" Default mapping
let g:multi_cursor_next_key='<C-n>'                                 " 下一个匹配
let g:multi_cursor_prev_key='<C-m>'                                 " 上一个匹配
let g:multi_cursor_skip_key='<C-x>'                                 " 跳过这个匹配
let g:multi_cursor_quit_key='<Esc>'                                 " 退出多行编辑模式



" ------------------------------------------------------------------------------------------------------------------------------
" undotree.vim
" ------------------------------------------------------------------------------------------------------------------------------
let g:undotree_SetFocusWhenToggle = 1
" Default mapping
nnoremap <Leader>su :UndotreeToggle<CR>                             " 弹出undo列表


" ------------------------------------------------------------------------------------------------------------------------------
" Emmet vim
" ------------------------------------------------------------------------------------------------------------------------------
" 注释
" autocmd filetype *html* imap <c-_> <c-y>/
" 注释
" autocmd filetype *html* map <c-_> <c-y>/
" 展开
" autocmd filetype *html* map <Tab> <c-y>,
" 展开
" autocmd filetype *html* imap <Tab> <c-y>,
" imap <Tab> <Esc>:echo 'echo'<CR>i
noremap <Tab> :call ExpandEmmetInHtml()<CR>i

function ExpandEmmetInHtml()
    if (getline(".")[col(".")-1] != ' ')
        execute "normal \<Plug>(emmet-expand-abbr)"
    else
        execute "normal i\<Tab>\<Esc>"
    endif
endfunction



" ------------------------------------------------------------------------------------------------------------------------------
" vim-autoformat
" require: npm install -g js-beautify
" ------------------------------------------------------------------------------------------------------------------------------
autocmd FileType typescript,javascript,json,html,css,scss noremap <buffer>  <leader><leader>f :Autoformat<cr>



" ------------------------------------------------------------------------------------------------------------------------------
" typescript
" ------------------------------------------------------------------------------------------------------------------------------
" quramy/tsuquyomi
let g:tsuquyomi_disable_default_mappings=1
let g:tsuquyomi_shortest_import_path=1
autocmd FileType typescript nmap <buffer> <Leader>rn <Plug>(TsuquyomiRenameSymbol)
autocmd FileType typescript nmap <buffer> <Leader>rN <Plug>(TsuquyomiRenameSymbolC)
autocmd FileType typescript nmap <buffer> <Leader>lr <Plug>(TsuquyomiReferences)
autocmd FileType typescript nmap <buffer> <Leader>li <Plug>(TsuquyomiImplementation)
" autocmd FileType typescript nmap <buffer> <Leader>jd <Plug>(TsuquyomiDefinition)
autocmd FileType typescript nmap <buffer> <C-]> <Plug>(TsuquyomiDefinition)
autocmd FileType typescript nmap <buffer> <Leader>jd <Plug>(TsuquyomiTypeDefinition)
autocmd FileType typescript nmap <buffer> <Leader>sa :TsuSearch 
autocmd FileType typescript nmap <buffer> <Leader>i  :TsuImport<CR>
autocmd FileType typescript nmap <buffer> <Leader>et  :echo tsuquyomi#hint()<CR>

let g:tsuquyomi_single_quote_import=1



" ------------------------------------------------------------------------------------------------------------------------------
" vim-json
" ------------------------------------------------------------------------------------------------------------------------------
let g:vim_json_syntax_conceal = 0



" ------------------------------------------------------------------------------------------------------------------------------
" vim-markdown
" ------------------------------------------------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_conceal = 0



" ------------------------------------------------------------------------------------------------------------------------------
" vim-markdown preview
" ------------------------------------------------------------------------------------------------------------------------------
nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"



" ------------------------------------------------------------------------------------------------------------------------------
" ultisnips
" ------------------------------------------------------------------------------------------------------------------------------
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']

" map
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"




" ------------------------------------------------------------------------------------------------------------------------------
" Yank
" ------------------------------------------------------------------------------------------------------------------------------
" nnoremap <silent> <Leader>sy :YRShow<CR>



