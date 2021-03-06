if &compatible || !(has('nvim') || has('patch-8.2.1978'))
  echohl WarningMsg
  echom "visualstar.vim isn't compatible with your vim version"
  echohl None
  finish
endif

xnoremap <Plug>(VisualstarSearch-*)
                        \ <cmd>call visualstar#visualstar('*')<CR>/<C-R>/<CR>

xnoremap <Plug>(VisualstarSearch-#)
                        \ <cmd>call visualstar#visualstar('#')<CR>?<C-R>/<CR>

xnoremap <expr> <Plug>(VisualstarSearchReplace) "
                        \<cmd>call visualstar#visualstar('*')<CR>"
                        \.':%s/<C-R>///c'. ( &gdefault ?  '' : 'g<Left>' )
                        \.'<Left><Left>'

nnoremap <expr> <Plug>(VisualstarSearchReplace)  "
                        \<cmd>normal! *<CR><C-O>"
                        \.':%s/<C-R>///c'. ( &gdefault ?  '' : 'g<Left>' )
                        \.'<Left><Left>'

let g:visualstar_mappings_disabled = get(g:,'visualstar_mappings_disabled',0)
if !g:visualstar_mappings_disabled
  xmap * <Plug>(VisualstarSearch-*)
  xmap # <Plug>(VisualstarSearch-#)
endif

" vim: et ts=2
