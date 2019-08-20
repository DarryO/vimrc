set nu
set nowrap
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
nmap <F1> <nop>
let g:vim_json_syntax_conceal = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | wincmd h | endif
let NERDTreeMapOpenInTab='<Enter>'
silent! nmap <F1> :NERDTreeFromBookmark<Space>
silent! nmap <F2> :GitGutterToggle<cr>
silent! nmap <F3> :NERDTreeToggle<CR>
silent! nmap <F4> :%!python -m json.tool<CR>
silent! nmap <F10> zR
silent! nmap <F12> :set wrap!<CR>
silent! nmap <F11> :set paste!<CR>

" silent! map <F1> :NERDTreeFind<CR>
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
" disable parent match
let loaded_matchparen = 1

" Example values: Linux, Darwin, MINGW64_NT-10.0, MINGW32_NT-6.1
" This is really slow
" let uname = substitute(system('uname'), '\n', '', '')
" 
" if uname == 'Linux'
"     " do linux
"     set clipboard=unnamedplus
" elseif uname == 'Darwin'
"     " do mac command
"     set clipboard=unnamed
" else " windows
"     " do windows command
" endif"
"
if has('win32')
elseif has('unix')
elseif has('macunix')
else
endif

let g:go_version_warning=0
let g:vim_markdown_conceal=0
set conceallevel=0
let g:username = $NICKNAME
let g:email = $MAIL

autocmd FileType cc,cpp,c setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile Makefile.local set filetype=make

set cursorcolumn
set cursorline
set colorcolumn=80,120
" hi CursorLine term=bold cterm=bold guibg=53
hi CursorLine cterm=NONE ctermbg=8
hi CursorColumn cterm=NONE ctermbg=8 ctermfg=white
hi ColorColumn cterm=NONE ctermbg=8 ctermfg=white

" map <leader>f :MRU<CR>
" let g:ctrlp_map = '<c-f>'
" map <leader>j :CtrlP<cr>
" map <c-b> :CtrlPBuffer<cr>
