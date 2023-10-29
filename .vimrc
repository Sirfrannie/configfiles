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
set nowrap
set sidescrolloff=10
set noswapfile "disable .swp
set shiftwidth=4
set tabstop=4
set hlsearch
set ruler
set number

" <C-_> = <C-/>
autocmd filetype c,cpp,java noremap <C-_> :call Comment('\/\/')<CR>
autocmd filetype python noremap <C-_> :call Comment('#')<CR>

set background=dark
