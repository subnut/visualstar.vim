if &compatible || !(has('nvim') || has('patch-8.2.1978'))

  echohl WarningMsg
  echom "visualstar.vim isn't compatible with your vim version"
  echohl None

  xnoremap <Plug>(visualstar-*) *
  xnoremap <Plug>(visualstar-#) #

else

  xnoremap <Plug>(visualstar-*) <cmd>call visualstar#visualstar('*')<CR>//<CR>
  xnoremap <Plug>(visualstar-#) <cmd>call visualstar#visualstar('#')<CR>//<CR>

endif

nnoremap <Plug>(visualstar-*) *
nnoremap <Plug>(visualstar-#) #
snoremap <Plug>(visualstar-*) *
snoremap <Plug>(visualstar-#) #
onoremap <Plug>(visualstar-*) *
onoremap <Plug>(visualstar-#) #
