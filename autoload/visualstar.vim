fun! visualstar(star_or_hash)
	let l:temp = @"  "store

	"use noau to not trigger other plugins
	noau normal! ""y

	let @/ = @"
	let @" = l:temp  "restore

	let @/ = substitute(@/, '\\', '\\\\', 'g')  "Escape all backslashes
	let @/ = substitute(@/, '\n', '\\n', 'g' )  "Escape newlines

	if a:star_or_hash ==# '*'
		let @/ = substitute(@/, '/', '\/', 'g')  "Escape all slashes, bcoz we shall search with slash
		let l:command = '/'
	elseif a:star_or_hash ==# '#'
		let @/ = substitute(@/, '?', '\?', 'g')  "Escape all stars, bcoz we shall search with star
		let l:command = '?'
	endif

	let @/ = '\V' . @/   "Very nomagic
endfun

