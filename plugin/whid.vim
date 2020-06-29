if exists('g:loaded_whid') | finish | endif " Prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults
"" Highlights
hi def link WhidHeader      Number
hi def link WhidSubHeader   Identifier
" command to run our plugin
command! Whid lua require'whid'.whid()

let &cpo = s:save_cpo " and restore later
unlet s:save_cpo

let g_loaded_whid = 1
