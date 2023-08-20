" BEGIN VUNDLE
  set nocompatible              " be iMproved, required
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  set rtp+=/usr/bin/git
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugin
  " call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  ""Plugin 'Valloric/YouCompleteMe'
  ""Plugin 'davidhalter/jedi-vim'
  Plugin 'tomasr/molokai'
  Plugin 'tpope/vim-surround'
  Plugin 'fholgado/minibufexpl.vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'octol/vim-cpp-enhanced-highlight' 
  Plugin 'lilydjwg/fcitx.vim'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'iamcco/markdown-preview.vim'
  Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plugin 'junegunn/fzf.vim'
  Plugin 'linrongbin16/fzfx.vim'
  Plugin 'preservim/tagbar'
  Plugin 'morhetz/gruvbox'
  
  "candidates
  "Plugin 'Raimondi/delimitMate'
  "Plugin 'honza/vim-snippets'

  "Plugin 'ctrlpvim/ctrlp.vim'
  "Plugin 'dyng/ctrlsf.vim'
  "Plugin 'majutsushi/tagbar'
  "Plugin 'rking/ag.vim'
  "Plugin 'Lokaltog/vim-easymotion'
  "Plugin 'vim-scripts/matchit.zip'

  "Plugin 'tomtom/tcomment_vim'
  "Plugin 'terryma/vim-multiple-cursors'

  "Plugin 'scrooloose/syntastic'
  "Plugin 'klen/python-mode'
  "Plugin 'xolox/vim-lua-ftplugin'
  "Plugin 'xolox/vim-misc'
  "Plugin 'fatih/vim-go'
  "Plugin 'posva/vim-vue'  

  "Plugin 'tpope/vim-fugitive'
  "Plugin 'gregsexton/gitv'
  "Plugin 'airblade/vim-gitgutter'
  "Plugin 'bling/vim-airline'
  "Plugin 'noahfrederick/vim-hemisu'
  "Plugin 'raymond-w-ko/vim-lua-indent'
  "Plugin 'zaki/zazen'
  "Plugin 'Xuyuanp/nerdtree-git-plugin'
  "Plugin 'jistr/vim-nerdtree-tabs'
  " Plugin 'SirVer/ultisnips'

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
  "END VUNDLE 

"""""""""""""""""""""""NERDTree BEGIN
 nmap <F2> :NERDTreeToggle<CR>
 let g:NERDTreeDirArrows = 0
 let g:nerdtree_tabs_open_on_gui_startup = 0

" nerdtree-git-plugin symbols 
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
"""""""""""""""""""""""""""""""""END

""""""""""""""""""""""""""" YouCompleteMe BEGIN
   " let g:ycm_error_symbol = '>>'
   " let g:ycm_warning_symbol = '>*'

   " highlight YcmErrorSection    ctermbg=darkgrey ctermfg=lightred
   " highlight YcmWarningSection  ctermbg=darkgrey ctermfg=lightred
   " " Specifies Python interpreter to run jedi
   " let g:ycm_python_binary_path = 'python'
   " " Completion when typing inside comments
   " let g:ycm_complete_in_comments = 1  
   " " Query the UltiSnips plugin
   " let g:ycm_use_ultisnips_completer = 1 
   " " Collect identifiers from strings and comments
   " let g:ycm_collect_identifiers_from_comments_and_strings = 1   
   " " " Seed its identifier database
   " let g:ycm_seed_identifiers_with_syntax=1
   " " collect identifiers from tags files
   " let g:ycm_collect_identifiers_from_tags_files = 1
   " " typing 2 chars
   " let g:ycm_min_num_of_chars_for_completion = 2 
   " "youcompleteme  默认tab  s-tab 和自动补全冲突
   " let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
   " let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
   " " Where GoTo* commands result should be opened, same-buffer
   " let g:ycm_goto_buffer_command = 'same-buffer'
   " nnoremap <F2> :YcmCompleter GoToImplementationElseDeclaration<CR>
   " let g:ycm_add_preview_to_completeopt = 0
   " let g:ycm_autoclose_preview_window_after_completion = 1
   " let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
   " let g:ycm_auto_trigger = 0
   " " blacklist
   " " let g:ycm_filetype_blacklist = {
       " " \ 'tagbar' : 1,
       " " \ 'gitcommit' : 1,
       " " \}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""END

   " VIM {{{
   syntax on
   set shell=bash
   "let mapleader=','
   set shortmess=atI              " Close welcome page
   set fillchars=vert:\           " no fill char when vsplit 
   set history=1000                " Store lots of :cmdline history
   set noswapfile                  " Don't use swapfile
   set nobackup                    " Don't create annoying backup files
   set noerrorbells                " No beeps
   " set cursorline                  " Highlight the current line
   " hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
   " set cursorcolumn               " Highlight the current column
   " set mouse=a                      " enable mouse
   set clipboard+=unnamed
   set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
   set linespace=-2                " Only in GUI!! How to change the space between lines in vim?
   set updatetime=100
   set switchbuf=vsplit                   " Open new buffers always in new tabs
   set wildignore+=*/.git/*,       " Linux/MacOSX
      \*/.hg/*,*/.svn/*,
      \*/cscope*,*/*.csv/,
      \*/*.log,*tags*,*/bin/*        
   set showcmd                     " Show me what I'm typing
   set showmode                    " Show current mode down the bottom
   set number                      " Show line numbers
   set numberwidth=4               " Number width
   set noshowmatch                 " Do not show matching brackets by flickering
   set showtabline=1               " show tab title
   set wildmenu                    " vim 自身命令行模式智能补全
   " set wildmode=longest,list,full

   set incsearch                   " Shows the match while typing
   set hlsearch                   " Highlight found searches
   set ignorecase                  " Search case insensitive...
   set smartcase                   " ... but not when search pattern contains upper case characters

   set shiftwidth=4                " Default indent settings
   set softtabstop=4               " 
   set expandtab                   " 
   set autoindent                  " Automatic indentation
   set smartindent                 " Smart indent

   set encoding=utf-8              " Set default encoding to UTF-8
   " set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,default
   set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
   set termencoding=utf-8

   " set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
   set fileformats=unix
   set formatoptions+=tcroqw       " 

   set splitright                  " Split vertical windows right to the current windows
   set splitbelow                  " Split horizontal windows below to the current windows
   set autowrite                   " Automatically save before :next, :make etc.
   set autoread                    " Automatically reread changed files without asking me anything
   set laststatus=2                " Always show the status line. or 1
   " set autochdir                   " 自动切换工作目录为当前文件所在的目录  
   " }}}
   
   " THEME{{{ 
     " set lines=50
     " set columns=200
     set colorcolumn=100
     " hi ColorColumn     guifg=grey guibg=grey
     set guioptions=''
     set background=dark            " Background color
     set t_Co=256                   " 启用256色
     set gcr=a:blinkon0             " 禁止光标闪烁
     set guioptions-=l              " 禁止显示滚动条
     set guioptions-=L
     set guioptions-=r
     set guioptions-=R
     set guioptions-=m              " 禁止显示菜单栏
     set guioptions-=T              " 禁止显示工具栏
     set laststatus=2               " 总是显示状态栏
     " set ruler                      " 显示光标当前位置
     set wrap                       " 禁止折行
     
     set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 17  " 设置 gvim 显示字体
     " colorscheme morning 
     " colorscheme solarized
     colorscheme gruvbox
     "" }}}

   " Remember last location{{{
   if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
   endif
   " }}}

   "" A buffer becomes hidden when it is abandoned {{{
   set hidden
   " set wildmode=list:longest
   set ttyfast
   "" }}}

   " Smart way to move between windows {{{
   map <C-j> <Esc> <C-W>j
   map <C-k> <Esc> <C-W>k
   map <C-h> <Esc> <C-W>h
   map <C-l> <Esc> <C-W>l
   " }}}
  
   " Switch buffer {{{
     "nmap <S-H> :tabp<CR>
     "nmap <S-L> :tabn<CR>
   " }}}

   " Switch tab {{{
   noremap <A-1> 1gt
   noremap <A-2> 2gt
   noremap <A-3> 3gt
   noremap <A-4> 4gt
   noremap <A-5> 5gt
   noremap <A-6> 6gt
   noremap <A-7> 7gt
   noremap <A-8> 8gt
   noremap <A-9> 9gt
   noremap <A-0> :tablast<CR>
   " }}}
  
 " hotkey settings BEGIN
   " save file with sudo
   ""cmap w!! %!sudo tee > /dev/null %
   " remove searchs highlight
   noremap <silent><leader>/ :nohls<CR>
   " select all
   map <c-a> ggvG$ 
   " quickly save the current file
   nnoremap <leader>w :wa<CR>
   nnoremap k gk
   nnoremap j gj
   "设置快捷键将选中文本块复制至系统剪贴板
   vnoremap <leader>y "+y        
   "设置快捷键将系统剪贴板内容粘贴至 vim
   nmap <leader>p "+p           
   " nnoremap <leader>x :x<CR>
   nnoremap te :tabedit  
   " nnoremap ne :e 
   " map ; to : 
   " nnoremap ; :
   " fix for ctags ctrl+] not working
   "nmap <c-]> g<c-]>
   "inoremap <esc> <esc>:set iminsert=0<cr>
   " nmap <expr> <c-j> &diff ? ']c' : '<c-j>'
   " nmap <expr> <c-k> &diff ? '[c' : '<c-k>'
   "if has('conceal')
   "    set conceallevel=2 concealcursor=niv
   "endif
   "}}}


"""""""""""""""""""""" SHORT LABEL BEGIN
 function! ShortTabLabel ()
     let bufnrlist = tabpagebuflist (v:lnum)
     let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
     let filename = fnamemodify (label, ':t')
     return filename
 endfunction
 set guitablabel=%{ShortTabLabel()}
 """"""""""""""""""""""""""""""""""""END

"""""""""""""""""""""""MiniBufExplorer  BEGIN
 map <F4> :MBEToggle<cr>
 " buffer 切换快捷键
 "map <C-Tab> :MBEbn<cr>
 "map <C-S-Tab> :MBEbp<cr>
 " map <leader>f :MBEbn<cr>
 map <S-TAB> :MBEbp<cr>
 map <TAB> :MBEbn<cr>
 let g:miniBufExplorerAutoStart=1
 let g:miniBufExplCycleArround=1
 " let g:miniBufExplBuffersNeeded=1
 "hi MBEChanged guibg=darkblue 
 " hi MBEVisibleActiveNormal guibg=darkblue  guifg=green ctermbg=darkblue ctermfg=green
 " hi MBEVisibleActiveChanged guibg=darkblue guifg=green ctermbg=darkblue ctermfg=green
 hi MBEVisibleActiveNormal  cterm=bold ctermfg=darkgreen
 hi MBEVisibleActiveChanged cterm=bold ctermfg=darkgreen
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
 let g:miniBufExplBRSplit = 0
 """"""""""""""""""""""""""""""""""""""""""END

" ultisnips{ { {
 let g:UltiSnipsSnippetDirectories=["xx"] 
 " UltiSnips 的 tab 键与 YCM 冲突，重新设定
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"}}} 

"" nerdcommenter BEGIN
 let g:NERDSpaceDelims=1
"""""""""""""""""""""END

""""""""""""""""""""""""" 自动补全 BEGIN
  inoremap ( ()<ESC>i
  inoremap ) <c-r>=ClosePair(')')<CR>
  inoremap { {<CR>}<ESC>O
  inoremap } <c-r>=ClosePair('}')<CR>
  inoremap [ []<ESC>i
  " inoremap ] <c-r>=ClosePair(']')<CR>
  inoremap " ""<ESC>i
  inoremap ' ''<ESC>i
  inoremap { {}<ESC>i
 

 function! ClosePair(char)
     if getline('.')[col('.') - 1] == a:char
	 return "\<Right>"
     else
	 return a:char
     endif
 endfunction
 "设置跳出自动补全的括号
 func! SkipPair()  
     if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
	 return "\<ESC>la"  
     else  
	 return "]"  
     endif  
 endfunc  
 " 将]键绑定为跳出括号  
 " inoremap ] <c-r>=SkipPair()<CR>
"""""""""""""""""""""""""""""""""END
" simple surround {{{
vmap " S"
vmap ' S'
vmap ` S`
vmap [ S[
vmap ( S(
vmap { S{
vmap } S}
vmap ] S]
vmap ) S)
" vmap > S>
" }}}

 "新建.c,.h,.sh,.Java文件，自动插入文件头 {{{
 autocmd BufNewFile *.cpp,*.[ch],*.sh,*.Java exec ":call SetTitle()" 
 func! SetTitle()  "定义函数SetTitle，自动插入文件头 
     "如果文件类型为.sh文件 
     if &filetype == 'sh' 
	 call setline(1,"\#########################################################################") 
	 call append(line("."), "\# File Name: ".expand("%")) 
	 call append(line(".")+1, "\# Author: wangjiawei") 
	 call append(line(".")+2, "\# mail: wangjiawei07@baidu.com") 
	 call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
	 call append(line(".")+4, "\#########################################################################") 
	 call append(line(".")+5, "\#!/bin/bash") 
	 call append(line(".")+6, "") 
     else 
	 call setline(1, "/*************************************************************************") 
	 call append(line("."), "    > File Name: ".expand("%")) 
	 call append(line(".")+1, "    > Author: wangjiawei") 
	 call append(line(".")+2, "    > Mail: wangjiawei07@baidu.com") 
	 call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
	 call append(line(".")+4, " ************************************************************************/") 
	 call append(line(".")+5, "")
     endif
     if &filetype == 'cpp'
	 call append(line(".")+6, "#include <bits/stdc++.h>")
	 call append(line(".")+7, "using namespace std;")
	 call append(line(".")+8, "")
	 call append(line(".")+9, "int main()")
	 call append(line(".")+10, "{")
	 call append(line(".")+11, "")
	 call append(line(".")+11, "    return 0;")
	 call append(line(".")+12, "}")

     endif
     if &filetype == 'c'
	 call append(line(".")+6, "#include <stdio.h>")
	 call append(line(".")+7, "")
     endif
     "新建文件后，自动定位到文件末尾
     autocmd BufNewFile * normal G
 endfunc 
" }}}
 
" vim-go {{{
   "let g:go_highlight_functions = 1
   "let g:go_highlight_methods = 1
   "let g:go_highlight_fields = 1
   "let g:go_highlight_types = 1
   "let g:go_highlight_operators = 1
   "let g:go_highlight_build_constraints = 1
   "let g:go_fmt_command = "goimports"
   "let g:go_list_type = "quickfix"

   "nmap <Leader>gc :GoErrCheck<CR>
   "nmap <Leader>gb :GoBuild<CR>
   "nmap <Leader>gd :GoDoc<CR>
   "nmap <Leader>gt :GoTest<CR>
   "nmap <Leader>gi :GoInstall<CR>
   "nmap <Leader>gr :GoRename<CR>

   "function! OnGolangCompleteDone()
       "if !exists('v:completed_item') || empty(v:completed_item)
	   "return
       "endif

       "let complete_str = v:completed_item.word
       "if complete_str == ''
	   "return
       "endif

       "let line = getline('.')
       "let next_char = line[col('.')-1]
       "if  next_char == "("
	   "return
       "end
       "let cur_char =line[col('.')-2]

       "let abbr = v:completed_item.abbr
       "let startIdx = match(abbr,"(")
       "let endIdx = match(abbr,")")
       "if endIdx - startIdx > 1
	   "let argsStr = strpart(abbr, startIdx+1, endIdx - startIdx -1)
       "let argsList = split(argsStr, ",")
       "let snippet = ""
       "if cur_char != "("
	       "let snippet = "("
       "end
       "let c = 1
       "for i in argsList
	   "if c > 1 
	       "let snippet = snippet. ", "
	       "endif
	       "" strip space
	       "let arg = substitute(i, '^\s*\(.\{-}\)\s*$', '\1', '') 
	       "let snippet = snippet . '${'.c.":".arg.'}'
	       "let c += 1
	   "endfor
	   "let snippet = snippet . ")$0"
	   "call UltiSnips#Anon(snippet)
       "endif
   "endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""END

""relativenumber {{{
" set relativenumber
" augroup CursorLineOnlyInActiveWindow
    " autocmd!
    " autocmd InsertLeave * setlocal relativenumber
    " autocmd InsertEnter * setlocal norelativenumber
    " autocmd BufEnter * setlocal cursorline
    " autocmd BufLeave * setlocal nocursorline
    " autocmd CompleteDone *.go  call OnGolangCompleteDone()
" augroup END
" function! NumberToggle()
    " if(&relativenumber == 1)
        " set norelativenumber number
    " else
        " set relativenumber
    " endif
" endfunc
" nnoremap <C-n> :call NumberToggle()<CR>
"}}}

" auto load vimrc{{{
" autocmd! BufWritePost .vimrc source %
" autocmd BufNewFile,BufRead *.define setf define
" autocmd FileType go :set noexpandtab " Do not use spaces instead of tabs
" autocmd FileType lua :set shiftwidth=4 
" autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
" }}}

" Code folding {{{
" set foldenable
" set foldmethod=indent           " manual,indent,expr,syntax,diff,marker
" set foldlevel=99

" let g:FoldMethod = 0
" map <leader>zz :call ToggleFold()<CR>
" fun! ToggleFold()
    " if g:FoldMethod == 0
        " exe "normal! zM"
        " let g:FoldMethod = 1
    " else
        " exe "normal! zR"
        " let g:FoldMethod = 0
    " endif
" endfun
" }}}

" gui BEGIN
   "if has("gui_macvim")
       "" Make the window slightly transparent
       "set transparency=10 
       "" fullscreen
       "set fullscreen

       "" default <c-p>
       "let g:ctrlp_map = '<D-p>'
       "nmap <D-r> :CtrlPBufTag<CR>
       "imap <D-r> <esc>:CtrlPBufTag<CR>
       "nmap <D-R> :CtrlPBufTagAll<CR>
       "imap <D-R> <esc>:CtrlPBufTagAll<CR>

       "" delete buffer
       "nmap <D-w> :bd<CR>
       "imap <D-w> <esc>:bd<CR>

       "" comment
	"map <D-/> :TComment<CR>
	"vmap <D-/> :TComment<CR>gv

       "" ctrlsf
       "nmap <D-f> :CtrlSF <C-R>=expand("<cword>")<CR>
       "imap <D-f> <ESC>:CtrlSF <C-R>=expand("<cword>")<CR>
       "vnoremap <D-f>  y :CtrlSF"<C-R>=escape(@", '\\/.*$^~[]()"')<CR>"

       "" nerdtree
       "map <D-e> :NERDTreeTabsToggle<CR>
       "map <leader>e :NERDTreeFind<CR><CR>

       "" Window switch map {{{
	 "" map <D-j> <C-W>j
	 "" map <D-k> <C-W>k
	 "" map <D-l> <C-W>l
	 "" map <D-h> <C-W>h
       "" }}}
   "endif
" END

map T  :!ctags -R   --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q   --exclude=platform_mgr/* --exclude=android-ndk-r11c/* --exclude=output/* -f ./.tags <CR>
set tags=.tags;/


" AutoComplPop
let g:acp_behaviorKeywordCommand = "\<C-n>"
inoremap <D-n> <C-n>

set ch=1
"set foldmethod=indent
" function! SwappedExtension()
    " let [rest, ext] = [expand('%:r'), expand('%:e')]
    " if ext ==? 'h'
        " let ext = 'cpp'
    " elseif ext ==? 'cpp'
        " let ext = 'h'
    " endif
    " return rest . '.' . ext
" endfunction
" nnoremap <F8> :e <C-r><C-r>SwappedExtension()<CR><CR>
nnoremap <F8> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map <F7> :call ShowFuncName() <CR>

map <F3> :TagbarToggle <CR>

"" fzf
" ======== files ========

" find files, filter hidden and ignored files
nnoremap <leader>f :\<C-U>FzfxFiles<CR>
" find by visual selected
xnoremap <leader>f :\<C-U>FzfxFilesV<CR>
" unrestrictly find files, include hidden and ignored files
nnoremap <space>uf :\<C-U>FzfxFilesU<CR>
" unrestrictly find by visual selected
xnoremap <space>uf :\<C-U>FzfxFilesUV<CR>

" find by cursor word
nnoremap <space>wf :\<C-U>FzfxFilesW<CR>
" unrestrictly find by cursor word
nnoremap <space>uwf :\<C-U>FzfxFilesUW<CR>

" ======== history files ========
nnoremap <space>hf :\<C-U>FzfxHistoryFiles<CR>
" by visual selected
xnoremap <space>hf :\<C-U>FzfxHistoryFilesV<CR>
" by cursor word
nnoremap <space>whf :\<C-U>FzfxHistoryFilesW<CR>

" ======== buffers ========

" find buffers
nnoremap <space>b :\<C-U>FzfxBuffers<CR>
" by visual selected
xnoremap <space>b :\<C-U>FzfxBuffersV<CR>
" by cursor word
nnoremap <space>wb :\<C-U>FzfxBuffersW<CR>

" ======== live grep ========

" live grep, filter hidden and ignored files
nnoremap <S-L> :\<C-U>FzfxLiveGrep<CR>
" by visual selected
xnoremap <S-L> :\<C-U>FzfxLiveGrepV<CR>
" unrestrictly live grep, include hidden and ignored files
nnoremap <space>ul :\<C-U>FzfxLiveGrepU<CR>
" unrestrictly by visual selected
xnoremap <space>ul :\<C-U>FzfxLiveGrepUV<CR>

" by cursor word
nnoremap <S-F> :\<C-U>FzfxLiveGrepW<CR>
" unrestrictly by cursor word
nnoremap <space>uwl :\<C-U>FzfxLiveGrepUW<CR>

" ======== git branches ========

" search git branches
nnoremap <leader>gb :\<C-U>FzfxBranches<CR>
" by visual selected
xnoremap <leader>gb :\<C-U>FzfxBranchesV<CR>
" by cursor word
nnoremap <space>wgb :\<C-U>FzfxBranchesW<CR>

" ======== vim commands ========

" search vim commands
nnoremap <space>cm :\<C-U>FzfxCommands<CR>
" by visual selected
xnoremap <space>cm :\<C-U>FzfxCommandsV<CR>
" by cursor word
nnoremap <space>wcm :\<C-U>FzfxCommandsW<CR>


""" enable debug
let g:_fzfx_enable_debug = 0

""" files
let g:fzfx_find_command = (executable('fd') ? 'fd' : 'fdfind').' . --color=never --type f --type symlink --follow --ignore-case'
let g:fzfx_unrestricted_find_command = (executable('fd') ? 'fd' : 'fdfind').' . --color=never --type f --type symlink --follow --ignore-case --unrestricted'

""" live grep
let g:fzfx_grep_command = 'rg --column --line-number --no-heading --color=always --smart-case --glob "!output/*" --glob "!kaldi_align_src/*"'
let g:fzfx_unrestricted_grep_command = 'rg --column --line-number --no-heading --color=always --smart-case --unrestricted --unrestricted'
" live grep action keys
let g:fzfx_live_grep_fzf_mode_action = 'ctrl-f'
let g:fzfx_live_grep_rg_mode_action = 'ctrl-r'

""" git branches
let g:fzfx_git_branch_command = 'git branch -a --color'

""" buffers
let g:fzfx_buffers_close_action = 'ctrl-d'

""" history files
let g:fzfx_ignored_history_filetypes = {
    \ 'NvimTree': 1,
    \ 'neo-tree': 1,
    \ 'CHADTree': 1,
    \ 'undotree': 1,
    \ 'diff': 1,
    \ 'vista': 1,
    \ 'qf': 1,
    \ }
set rtp+=/usr/local/opt/fzf
""" resume cache dir
let g:fzfx_resume_cache_dir = has('nvim') ? stdpath('data').'/fzfx.vim' : '~/.cache/vim/fzfx.vim'
"set statusline=%f%m%r%h%w\ \ %{tagbar#currenttag('%s\ ','','f')}%=\ [%{"[fenc=".(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?"+":"")."]"}]\ [%{&ff}]\ [%Y]\ [%04l,%04v][%p%%]\ [LEN:%L]

" set statusline=%<%1*%f%m%r%h%w\ \-\>\ %2*\ %{tagbar#currenttag('%s','','p')}\ %=%3*\ %Y\ %4*%{\"\".(\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"\"}\ %5*[%l,%v]\ %5*%p%%\ \|\ %7*%LL
set statusline=%1*%-.40f:%l%m%r%h%w\ %2*\ %{tagbar#currenttag('%s','','p')}\ %=%3*\ %Y\ %4*%{\"\".(\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"\"}\ %5*[%l,%v]\ %5*%p%%\ \|\ %7*%LL

" hi User1 cterm=none ctermfg=white ctermbg=darkgray
" hi User2 cterm=none ctermfg=green ctermbg=darkgray
" hi User3 cterm=bold ctermfg=white ctermbg=darkgray
" hi User4 cterm=bold ctermfg=white ctermbg=darkgray
" hi User5 cterm=none ctermfg=white ctermbg=darkgray
" hi User6 cterm=none ctermfg=white ctermbg=darkgray
" hi User7 cterm=none ctermfg=white ctermbg=darkgray

hi User1 cterm=bold ctermfg=gray
hi User2 cterm=bold ctermfg=darkgreen
hi User3 cterm=bold ctermfg=gray
hi User4 cterm=bold ctermfg=gray
hi User5 cterm=bold ctermfg=gray
hi User6 cterm=bold ctermfg=gray
hi User7 cterm=bold ctermfg=gray

