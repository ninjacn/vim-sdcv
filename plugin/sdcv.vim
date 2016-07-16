" Searching word with sdcv at Vim.

function! SearchWord()
	let expl=system('sdcv --color -n ' .
				\  expand("<cword>"))
	windo if
				\ expand("%")=="diCt-tmp" |
				\ q!|endif
	40vsp diCt-tmp
	setlocal buftype=nofile bufhidden=hide noswapfile
	1s/^/\=expl/
	1
endfunction

