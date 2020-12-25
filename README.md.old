# visualstar.vim

`*` and `#` searching of arbitrary text from Visual mode

Needs NeoVim or Vim with patch `patch-8.2.1978`

## Usage

- Select any text in Visual mode.
- Press `*` or `#`

## Additional Features

Also included is a search-and-replace feature.

It is by default mapped to `<leader>` `*` and `<leader>` `#` if they are not mapped to anything else. It **will not overwrite** existing mapping. See [customization](#customization).

#### In Visual mode -

- Select some text
- Press the mapping (`<leader>` `*` or `<leader>` `#`)
- Type in the replacement text (cursor is already placed in appropriate position)
- Press `Enter`

#### In Normal mode -

Follow steps for _Visual mode_ mentioned above, but skip first step.  
The keyword to replace is automatically selected (like `*` and `#` in Normal mode)

<br>

## Customization

By default, visualstar.vim will **override** the `*` and `#` keys in Visual mode even if they are mapped to something else. To stop this, include the following in your `.vimrc` -
```vim
let g:visualstar_default_mappings_disabled = 1
```
Then, you can create your own mappings -
```vim
xmap * <Plug>(VisualstarSearch-*)
xmap # <Plug>(VisualstarSearch-#)
```
:warning: **NOTE:** You **must** use `xmap` only! Anything else will not work!

<br>

By default, visualstar.vim will try to map the additional search-and-replace feature to `<leader>` `*` and `<leader>` `#`. To disable this, include the following line in your `.vimrc` -
```vim
let g:visualstar_extra_mappings_disabled = 1
```
Then, you can create your own mappings -
```vim
map <leader>* <Plug>(VisualstarSearchReplace-*)
map <leader># <Plug>(VisualstarSearchReplace-#)
```
For only visual mode -
```vim
xmap <leader>* <Plug>(VisualstarSearchReplace-*)
xmap <leader># <Plug>(VisualstarSearchReplace-#)
```
For only normal mode -
```vim
nmap <leader>* <Plug>(VisualstarSearchReplace-*)
nmap <leader># <Plug>(VisualstarSearchReplace-#)
```
:warning: **NOTE:** You **must** use `map` `xmap` `nmap` mappings. `noremap` `xnoremap` `nnoremap` will not work!
