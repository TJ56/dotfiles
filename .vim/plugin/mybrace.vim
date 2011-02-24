"""""""""""""""
" cursor in the brace
" open brace at the end of line, cursor in the new line, close brace in next
"   next line
" 2 {{ means 1 {
" fast {}, cursor will at end of {}
"
"""""""""""""""
set showmatch
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {   
inoremap {}     {}  
" cursor in the parentheses
inoremap (  ()<Left>
inoremap (( (
inoremap () ()
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ") "

inoremap " ""<Left>
inoremap "" ""
inoremap ' ''<Left>
inoremap '' ''
inoremap [ []<Left>
inoremap [[ [
inoremap [] []
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

"folding mark, for vim marker fdm
inoremap {{{ {{{
inoremap }}} }}}<CR><C-y><C-y><Space>vim:fdm=marker
