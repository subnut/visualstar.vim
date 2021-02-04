fun! visualstar#visualstar(star_or_hash)
  let l:temp = @"  "store

  "use noau to not trigger other plugins
  noau normal! ""y

  let @/ = @"
  let @" = l:temp  "restore

  let @/ = substitute(@/, '\\', '\\\\', 'g')  "Escape all backslashes
  let @/ = substitute(@/, '\n', '\\n', 'g' )  "Escape all newlines

  if a:star_or_hash ==# '*'

    "Escape all slashes, bcoz we shall search with slash
    let @/ = substitute(@/, '/', '\\/', 'g')

    " Note, the 2nd argument is a regexp. So, to match a literal slash, we
    " need to escape it using the backslash.

    " Note, the 3rd argument is a literal string. So, to insert a literal
    " backslash, we need to escape it using another backslash. Otherwise, the
    " backslash shall end up escaping the slash, resulting in only a slash

  elseif a:star_or_hash ==# '#'

    "Escape all questions, bcoz we shall search with question
    let @/ = substitute(@/, '?', '\\?', 'g')

  endif

  let @/ = '\V' . @/   "Very nomagic
endfun

"vim: et ts=2
