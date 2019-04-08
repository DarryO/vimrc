set nu
set nowrap
set clipboard=unnamed
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map = $
" autocmd VimEnter * NERDTree
" autocmd BufWinEnter * NERDTreeMirror
" autocmd VimEnter * wincmd w
"
let g:vim_json_syntax_conceal = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | wincmd h | endif
let NERDTreeMapOpenInTab='<Enter>'
set colorcolumn=120
silent! nmap <F3> :NERDTreeToggle<CR>
silent! nmap <F12> :set wrap!<CR>


silent! nmap <F11> :set paste!<CR>

" silent! map <F3> :NERDTreeFind<CR>
" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"


map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
				exec "!g++ % -o %<"
				exec "!time ./%<"
	elseif &filetype == 'cpp'
				exec "!g++ % -o %<"
				exec "!time ./%<"
	elseif &filetype == 'java'
				exec "!javac %"
				exec "!time java %<"
	elseif &filetype == 'sh'
				:!time bash %
	elseif &filetype == 'python'
				exec "!time python %"
	elseif &filetype == 'html'
				exec "!firefox % &"
	elseif &filetype == 'go'
		"        exec "!go build %<"
				exec "!time go run %"
	elseif &filetype == 'mkd'
				exec "!~/.vim/markdown.pl % > %.html &"
				exec "!firefox %.html &"
	endif
endfunc
let g:loaded_comfortable_motion = 1

func! Convert2To4()
    set ts=2 sts=2 noet
    retab!
    set ts=4 sts=4 et
    retab
endfunc
command! S2to4 call Convert2To4()


" Uncomment the following to have Vim jump to the last position when
" " reopening a file
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif

" some mistake happened while in comment
let loaded_matchparen = 1
