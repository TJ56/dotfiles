"                                                                      ___           ___
"                                           ___           ___         /\_ \         /\_ \ (R)
"  sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
"    ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
"   /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
"  /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
"  \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
"   \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
"
"
" Samuel's .vimrc config file
"
"          2010, 09/28, @NSYSU
"          2012, MSOnline, Hualien
 
"關閉vi compatible模式
set nocompatible

"tab-related"
"
"translate the <tab> to <space> with the counts: tabstop
"(counts of space for pressing tab)
"unset:   :set noet
set expandtab
set tabstop=4
"how many SPACE when read \t (<TAB>) char
"colorize the <Tab>
set listchars=tab:>-

"indentation-related"
"Number of spaces to use for each step of (auto)indent.
"(counts of space for indentation)
set shiftwidth=4

"explaination for <BackSpace> and <Tab> when u in insert mode editing
set softtabstop=4
set smarttab

set smartindent
set autoindent
set cindent

" show line number
set nu
set cursorline
syntax on

" setting backspace work
set backspace=indent,eol,start

" comment color(original)
"highlight Comment ctermfg=darkcyan

" directly set the background(new, but bad)
"set background=dark

" colorscheme way
" colorscheme desert
" colorscheme delek


"spell check
setlocal spell spelllang=en_us
set nospell
" set spell

"terminal setting
if $TERM == 'screen'
  set term=xterm
endif
set t_Co=256

"encoding
" 檔案編碼,檔案編碼清單 (file encoding)(file encoding list)
set fenc=utf-8 
set fencs=utf-8,big5,gbk,euc-jp,utf-16le
" 內部編碼      (encoding inside Vim)
set enc=utf-8 
" Terminal編碼  (terminal encoding)
set tenc=utf-8



" LanguageTool
let g:languagetool_jar='~/dotfiles/.vim/bundle/LanguageTool/JLanguageTool/dist/LanguageTool.jar'

set laststatus=2
"edit from pct's statusline
" 設定狀態列訊息
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

" %1* -> User1's highlight, %2*->User2's highlight
" =   -> Separation point between left and right aligned items.
" <   -> Where to truncate line if too long.  Default is at the start.
set statusline=%6*%<\ %1*[%F]
set statusline+=\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}]%m " file format
set statusline+=\ %5*[lint:%{ALEGetStatusLine()}] " linter info
set statusline+=%6*%=\ %6*%y%6*\ %3*%l%6*\/%L,\ %3*%c%6*\ \<%2*%P%6*\>

" pathogen setting "
call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
runtime ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim

" neocomplcache setting"
let g:neocomplcache_enable_at_startup=1

" filetype support
filetype on
filetype plugin on
filetype indent on

"folding series setting
"set fdm=marker
"set fdm=syntax
"set fdm=indent
"        set foldcolumn=3
"        set foldlevel=0     " fold everything deeper than 0
"        set foldnestmax=1  " dont fold everything deeper than 1
"

"reference from: http://nvie.com/posts/how-i-boosted-my-vim
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup             " don't backup
set noswapfile           " don't backup

set fileencodings=gb2312,utf-8  
set fileencoding=gb2312  
set termencoding=utf-8 

"Tabnew exchange
nmap , :tabprev<CR> 
nmap . :tabnext<CR> 

let g:gitgutter_realtime = 0
let g:vim_markdown_folding_disabled = 1


set fileformat=unix
"set fileformats=unix,dos
"set nobinary"
"

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" multiple line input , use <Shift-v> to enter visual-block mode and then <C-n> to start multi_cursor
Plug 'terryma/vim-multiple-cursors'

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" markdown preview with math support (not used on server)
" Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"Initialize plugin system
call plug#end()


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
""let g:UltiSnipsExpandTrigger="<tab>"
""let g:UltiSnipsJumpForwardTrigger="<Enter>"
""let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
""let g:UltiSnipsEditSplit="vertical"
""let g:UltiSnipsListSnippets="<c-tab>"

let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_statusline_format = ['X %d', '! %d', 'ok']
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0     "do not run while enter a file

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
