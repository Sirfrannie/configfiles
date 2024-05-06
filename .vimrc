function! Comment(symbol)
	execute ':s/^\(\s*\)/\1'.a:symbol.' '
	try 
		execute ':s/^\(\s*\)'.a:symbol.' '.a:symbol.' '.'/\1' 
	catch
	endtry
endfunction

filetype on
filetype indent on
syntax on

set mouse=a
set expandtab
set wrap
set sidescrolloff=10
set noswapfile "disable .swp
set shiftwidth=4
set tabstop=4
set hlsearch
set ruler
set number
set timeoutlen=1000
set ttimeoutlen=0

map <leader>n :tabn<CR>

" gvim required
noremap <C-c> "+yyy
noremap <C-v> "+p 
inoremap <C-v> <Esc>"+pa


" <C-_> = <C-/>
autocmd filetype c,cpp,java noremap <C-_> :call Comment('\/\/')<CR>
autocmd filetype python noremap <C-_> :call Comment('#')<CR>

colorscheme evergarden

