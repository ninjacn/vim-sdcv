" Searching word with sdcv at Vim.

function! SearchWord()
	"let expl=system('sdcv -n ' .
	let expl=system('ydcv ' .
				\  expand("<cword>"))
	windo if
				\ expand("%")=="diCt-tmp" |
				\ q!|endif
	100vsp diCt-tmp
	setlocal buftype=nofile bufhidden=hide noswapfile
	1s/^/\=expl/
	1
endfunction

