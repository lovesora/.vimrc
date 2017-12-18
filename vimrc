" ---------------------------------------------------------------
" 依赖：
" ---------------------------------------------------------------
" tags:
" brew install ctags
" npm install -g git+https://github.com/ramitos/jsctags.git
" ---------------------------------------------------------------
" YCM:
" cd ~/.vim/bundle/YouCompleteMe/
" ./install.sh
" ---------------------------------------------------------------
" tern_for_vim:
" cd ~/.vim/bundle/tern_for_vim
" npm install
" cd ~/project/.tern-project
" {
"     libs": [
"         browser",
"         jquery"
"     ],
"     loadEagerly": [
"         importantfile.js"
"     ],
"     plugins": {}
" }
" ---------------------------------------------------------------
" js-format
" npm install -g js-beautify
" ---------------------------------------------------------------
" ack.vim
" require ag
" mac: brew install the_silver_searcher
" ---------------------------------------------------------------


" ---------------------------------------------------------------
" nerdcommenter
" ---------------------------------------------------------------
"
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
" ---------------------------------------------------------------


" ---------------------------------------------------------------
" vim 配置
" ---------------------------------------------------------------
set nocompatible                    " 去掉有关vi一致性模式，避免以前版本的bug和局限
" syntax on                           " 代码高亮
syntax enable
set nocursorcolumn
set nocursorline
set norelativenumber
set synmaxcol=200
syntax sync minlines=256

filetype on                         " 检测文件的类型
filetype plugin indent on

" set t_Co=256
set history=200
set scrolljump=10
set autoread
set nobackup
set noswapfile
set cursorcolumn
set title                           " change the terminal's title
set novisualbell                    " don't beep
set noerrorbells                    " don't beep
set tm=500
set nostartofline                   " keep cursor postion when switching between buffers
" set nowrap                          " disable wrap

set ignorecase                      " 设置搜索时忽略大小写
set foldmethod=indent               " 代码折叠
set foldlevelstart=99               " 设置打开文件默认不折叠代码
setlocal foldlevel=4                " 设置折叠层数为
set ma

set lazyredraw
set ttyfast

set autoindent                      " 设置自动对齐
set smartindent                     " 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
" set cindent                         " 自动缩进，适合js

set incsearch                       " 在程序中查询一单词，自动匹配单词的位置
set backspace=2                     " 设置退格键可用

set number                          " 显示绝对行号
set relativenumber                  " 显示相对行号
autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

set backspace=indent,eol,start      " 让backspace能够删除特定字符

" clipboard
set clipboard=unnamed               " 系统剪切板
set pastetoggle=<F9>                " 切换到拷贝模式

" 特殊字符显示
set listchars=tab:>-,trail:-,extends:#,nbsp:~,precedes:<    " 显示tab，空格，末尾空格
set list                            " 显示特殊字符

" 设置tab为4个空格
set shiftwidth=4                    " 设置自动对齐tab为4个空格
set softtabstop=4
set ts=4                            " 设置tab键为四个空格
set expandtab                       " 设置tab为空格
retab                               " 转换所有的tab

" comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " 取消自动注释

" buffer
set hidden "                        " 设置不需要保存就可以切换buffer

" File encode:encode for varied filetype
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8


" 设置自动备份
" if has("vms")
"     set nobackup
" else
"     set backup
" endif


" ---------------------------------------------------------------
" vundle 配置
" ---------------------------------------------------------------
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim  " 启用vundle来管理vim插件
call vundle#begin() 

Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

" nerdtree
Plugin 'scrooloose/nerdtree'                                        " 目录结构
Plugin 'scrooloose/nerdcommenter'                                   " 注释
Plugin 'Xuyuanp/nerdtree-git-plugin'                                " 基于nerd的git文件管理

" IDE
Plugin 'bling/vim-airline'                                          " 增强状态栏
Plugin 'vim-airline/vim-airline-themes'                             " airline theme
Plugin 'sjl/vitality.vim'                                           " 修改在不同模式下光标的显示方式
Plugin 'godlygeek/tabular'                                          " 对齐
Plugin 'tomasr/molokai'                                             " 颜色主题
Plugin 'mhinz/vim-startify'                                         " 启动状体

" 代码辅助
Plugin 'Yggdroot/indentLine'                                        " 显示垂直对齐
Plugin 'airblade/vim-gitgutter'                                     " 文件编辑时的git提示
Plugin 'Raimondi/delimitMate'                                       " 用于补全括号和引号
Plugin 'Valloric/YouCompleteMe', {'do': './install.py'}             " 代码自动补全
Plugin 'ternjs/tern_for_vim'                                        " javascript代码补全
Plugin 'ruanyl/vim-eslint', {'do': 'npm install'}                   " vim-eslint
Plugin 'scrooloose/syntastic'                                       " 语法检查
Plugin 'FooSoft/vim-argwrap'                                        " 参数一行变多行
Plugin 'majutsushi/tagbar'                                          " Tag
Plugin 'MattesGroeger/vim-bookmarks'                                " Bookmarks

" 搜索
Plugin 'kien/ctrlp.vim'                                             " 文件搜索打开
Plugin 'tacahiroy/ctrlp-funky'                                      " 函数搜索
Plugin 'vim-scripts/matchit.zip'                                    " 允许:%s使用正则匹配
Plugin 'Lokaltog/vim-easymotion'                                    " 高级搜索
Plugin 'unblevable/quick-scope'                                     " 单词匹配
Plugin 'mileszs/ack.vim'                                            " 全局搜索

" 编辑
Plugin 'terryma/vim-multiple-cursors'                               " 多行编辑
Plugin 'christoomey/vim-sort-motion'                                " 排序
Plugin 'tpope/vim-repeat'                                           " 重复命令
Plugin 'tpope/vim-surround'                                         " 包围文本

" html
Plugin 'mattn/emmet-vim'                                            " Emmet
Plugin 'Valloric/MatchTagAlways'                                    " html tag配对显示

" javascript
Plugin 'Chiel92/vim-autoformat', {'on': 'Autoformat'}               " 自动格式化
" bad performance
" Plugin 'pangloss/vim-javascript'                                    " 对齐，语法

" json
Plugin 'elzr/vim-json'                                              " json语法高亮

" css
Plugin 'gko/vim-coloresque'                                         " 显示颜色

" md
Plugin 'vim-markdown'                                               " markdown

" snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
" h: vundle         - 获取帮助



" ---------------------------------------------------------------
" theme
" ---------------------------------------------------------------
colorscheme molokai



" ---------------------------------------------------------------
" nerdtree
" ---------------------------------------------------------------
" vim打开文件时自动打开pwd文件夹目录树
" autocmd vimenter * NERDTree
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置bookmark
" let g:NERDTreeBookmarksFile='~/.NERDTreeBookmarks'


" ---------------------------------------------------------------
" nerd tree git
" ---------------------------------------------------------------
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



" ---------------------------------------------------------------
" YCM
" ---------------------------------------------------------------
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
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>       " 跳转到定义处

" ---------------------------------------------------------------
" tern_for_vim
" ---------------------------------------------------------------
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript setlocal omnifunc=tern#Complete
" set omnifunc=syntaxcomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


" ---------------------------------------------------------------
" indentLine
" ---------------------------------------------------------------
let g:indentLine_enabled = 1            " 启用indentLine
let g:indentLine_char = '|'             " 修改显示字符
" let g:indentLine_setColors = '#eee'     " 设置字符颜色


" ---------------------------------------------------------------
" CtrlP
" ---------------------------------------------------------------
let g:ctrlp_show_hidden = 1             " 搜索隐藏文件
let g:ctrlp_cmd = 'CtrlP'               " 修改shortcut
let g:ctrlp_working_path_mode = 'ra'    " 设置默认搜索目录为当前文件所在目录
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }



" ---------------------------------------------------------------
" ctrlp-funky
" ---------------------------------------------------------------
let g:ctrlp_funky_matchtype = 'path'    " MATCHED CHARS HIGHLIGHTING



" ----------------------------------------------------------------------------
" syntastic
" ----------------------------------------------------------------------------
let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol='❗'
let g:syntastic_style_error_symbol='»'
let g:syntastic_style_warning_symbol='•'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["java"] }
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty \<", "inserting implicit ", "unescaped \&" , "lacks \"action", "lacks value", "lacks \"src", "is not recognized!", "discarding unexpected", "replacing obsolete "]


" ---------------------------------------------------------------
" Powerline
" ---------------------------------------------------------------
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


" ---------------------------------------------------------------
" nerdcommenter
" ---------------------------------------------------------------
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




" ---------------------------------------------------------------
" vim-startify
" ---------------------------------------------------------------
let g:startify_change_to_vcs_root = 1


" ---------------------------------------------------------------
" tagbar
" require ctags, jsctags
" brew install ctags
" npm install -g git+https://github.com/ramitos/jsctags.git
" ---------------------------------------------------------------
set tags=./tags,tags;/                  " 设置tags文件
" let g:tagbar_type_javascript = {
"     \ 'ctagsbin' : 'jsctags'
"     \ }
function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction
autocmd BufWritePost *.js call UpdateTags()

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }
" let g:tagbar_type_make = {
"             \ 'kinds':[
"                 \ 'm:macros',
"                 \ 't:targets'
"             \ ]
" \}
let g:tagbar_show_linenumbers = 1       " 设置显示绝对行号
let g:tagbar_indent = 2                 " tagbar缩进大小
let g:tagbar_sort = 0                   " 设置tag的排序，默认字符排序，设置0以代码中的位置排序
let g:tagbar_left = 1                   " 设置tagbar打开时的位置
let g:tagbar_autofocus = 1              " 当tagbar打开时自动对焦到tagbar
let g:tagbar_width = 40                 " 设置tagbar默认宽度


" ---------------------------------------------------------------
" airline
" ---------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1


" ---------------------------------------------------------------
" easymotion
" ---------------------------------------------------------------
let g:EasyMotion_smartcase = 1      " 忽略大小写


" ---------------------------------------------------------------
" vim-autoformat
" require: npm install -g js-beautify
" ---------------------------------------------------------------
autocmd FileType javascript,json,html,css,scss noremap <buffer>  <leader><leader>f :Autoformat<cr>



" ---------------------------------------------------------------
" vim-javascript
" ---------------------------------------------------------------
let g:javascript_plugin_jsdoc = 1               " Enables syntax highlighting for JSDocs.
let g:javascript_plugin_ngdoc = 1               " Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.


" ---------------------------------------------------------------
" vim-markdown
" ---------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_frontmatter=1


" ---------------------------------------------------------------
" Bookmarks
" ---------------------------------------------------------------
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_no_default_key_mappings = 1



" ---------------------------------------------------------------
" ack.vim
" require ag
" mac: brew install the_silver_searcher
" or
" ubuntu: apt-get install silversearcher-ag
" ---------------------------------------------------------------
let g:ackprg = 'ag --nogroup --nocolor --column'



" ---------------------------------------------------------------
" vim-json
" ---------------------------------------------------------------
let g:vim_json_syntax_conceal = 0



" ---------------------------------------------------------------
" vim-json
" ---------------------------------------------------------------

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ---------------------------------------------------------------
" 快捷键配置 mapping
" ---------------------------------------------------------------
" map
mapc
mapc!

let mapleader=" "                   " 设置leader键


" custom
" imap <C-i>d <Esc>:read !date<CR>a


" search
let g:ctrlp_map = '<c-p>'
nnoremap <leader>sa :Ack<space>
nnoremap <Leader>sf :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>sF :execute 'CtrlPFunky ' . expand('<cword>')<Cr>


" edit
" comment
map <C-_> <plug>NERDCommenterToggle
imap <C-_> <Esc><plug>NERDCommenterToggle
" Snippet Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"
" YCM
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']


" jump
nnoremap <Leader>t :TagbarToggle<CR>
autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
" <C-o> 跳转到上次编辑
nnoremap <Leader>o :Startify<CR>


" buffer 通过索引快速跳转
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>
" inoremap <C-[> <Esc>:bp<CR>
" inoremap <C-]> <Esc>:bn<CR>
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


" nerdtree
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
map <leader>ws :vertical resize 31<CR>
map [[ gT
map ]] gt


" argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>                            " 将参数从一行转为多行


" terryma/vim-multiple-cursors
" Default mapping
let g:multi_cursor_next_key='<C-n>'                                 " 下一个匹配
let g:multi_cursor_prev_key='<C-m>'                                 " 上一个匹配
let g:multi_cursor_skip_key='<C-x>'                                 " 跳过这个匹配
let g:multi_cursor_quit_key='<Esc>'                                 " 退出多行编辑模式


" Emmet vim
" 注释
" autocmd filetype *html* imap <c-_> <c-y>/
" 注释
" autocmd filetype *html* map <c-_> <c-y>/
" 展开
" autocmd filetype *html* map <Tab> <c-y>,
" 展开
" autocmd filetype *html* imap <Tab> <c-y>,
" imap <Tab> <Esc>:echo 'echo'<CR>i
inoremap <special> jk <ESC>
noremap <Tab> :call ExpandEmmetInHtml()<CR>i

function ExpandEmmetInHtml()
    if (getline(".")[col(".")-1] != ' ')
        execute "normal \<Plug>(emmet-expand-abbr)"
    else
        execute "normal i\<Tab>\<Esc>"
    endif
endfunction



" easymotion
map <leader>sl <Plug>(easymotion-lineforward)
map <leader>sj <Plug>(easymotion-j)
map <leader>sk <Plug>(easymotion-k)
map <leader>sh <Plug>(easymotion-linebackward)
vmap <leader>sl <Plug>(easymotion-lineforward)
vmap <leader>sj <Plug>(easymotion-j)
vmap <leader>sk <Plug>(easymotion-k)
vmap <leader>sh <Plug>(easymotion-linebackward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


" quick-scope
" let g:qs_highlight_on_keys = ['f', 'F']
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']


" tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>


" bookmark
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

nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>
