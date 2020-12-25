# visualstar.vim

#### Q. What is this?

A simple plugin to enable `*` and `#` searching selected text from Visual mode

#### Q. But I don't use `*` or `#`! I have mapped something else to them!

Seriously?

Well, include the following lines in your `.vimrc` -
```vim
let g:visualstar_mappings_disabled = 1
xmap A <Plug>(VisualstarSearch-*)
xmap B <Plug>(VisualstarSearch-#)
```
And replace `A` and `B` with whatever you have mapped to `*` and `#`

#### Q. Are there any hidden features?

No no, I will not tell you that there is a `<Plug>(VisualstarSearchReplace)` that can be used in `nmap` and `xmap` mappings. :wink:
