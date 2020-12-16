if &compatible || !(has('nvim') || has('patch-8.2.1978'))
  echohl WarningMsg
  echom "visualstar.vim isn't compatible with your vim version"
  echohl None
  finish
endif

let g:visualstar_default_mappings_disabled = get(g:,'visualstar_default_mappings_disabled',0)
let g:visualstar_extra_mappings_disabled = get(g:,'visualstar_extra_mappings_disabled',0)

xnoremap <Plug>(VisualstarSearch-*) <cmd>call visualstar#visualstar('*')<CR>/<C-R>/<CR>
xnoremap <Plug>(VisualstarSearch-#) <cmd>call visualstar#visualstar('#')<CR>/<C-R>/<CR>

xnoremap <Plug>(VisualstarSearchReplace-*) <cmd>call visualstar#visualstar('*')<CR>:%s/<C-R>///c<Left><Left>
xnoremap <Plug>(VisualstarSearchReplace-#) <cmd>call visualstar#visualstar('#')<CR>:%s/<C-R>///c<Left><Left>
nnoremap <Plug>(VisualstarSearchReplace-*) <cmd>normal! *<CR><C-O>:%s/<C-R>///c<Left><Left>
nnoremap <Plug>(VisualstarSearchReplace-#) <cmd>normal! *<CR><C-O>:%s/<C-R>///c<Left><Left>

" Default mappings
" ----------------
if !g:visualstar_default_mappings_disabled
  xmap * <Plug>(VisualstarSearch-*)
  xmap # <Plug>(VisualstarSearch-#)
endif

" Extra mappings
" --------------
if !g:visualstar_extra_mappings_disabled
  " silent! + <unique> = don't map if already mapped to something
  silent! map <unique> <leader>* <Plug>(VisualstarSearchReplace-*)
  silent! map <unique> <leader># <Plug>(VisualstarSearchReplace-#)
endif

" vim: et ts=2
