if &compatible || !(has('nvim') || has('patch-8.2.1978'))
  echohl WarningMsg
  echom "visualstar.vim isn't compatible with your vim version"
  echohl None
  finish
endif

xnoremap <Plug>(VisualstarSearch-*) <cmd>call visualstar#visualstar('*')<CR>//<CR>
xnoremap <Plug>(VisualstarSearch-#) <cmd>call visualstar#visualstar('#')<CR>//<CR>

xnoremap <Plug>(VisualstarSearchReplace-*) <cmd>call visualstar#visualstar('*')<CR>:%s///c<Left><Left>
xnoremap <Plug>(VisualstarSearchReplace-#) <cmd>call visualstar#visualstar('#')<CR>:%s///c<Left><Left>
nnoremap <Plug>(VisualstarSearchReplace-*) <cmd>normal! *<CR><C-O>:%s///c<Left><Left>
nnoremap <Plug>(VisualstarSearchReplace-#) <cmd>normal! *<CR><C-O>:%s///c<Left><Left>

" Default mappings
" ----------------
xmap * <Plug>(VisualstarSearch-*)
xmap # <Plug>(VisualstarSearch-#)

" Extra mappings
" --------------
map <unique> <leader>* <Plug>(VisualstarSearchReplace-*)
map <unique> <leader># <Plug>(VisualstarSearchReplace-#)
