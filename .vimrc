function! Comment(symbol)
	execute ':s/^\(\s*\)/\1'.a:symbol.' '
	try 
		execute ':s/^\(\s*\)'.a:symbol.' '.a:symbol.' '.'/\1' 
	catch
	endtry
endfunction 

function! Mode()
    let l:mode = mode()
    if l:mode ==# 'n'
        setlocal statusline=%#SNormal#\ NORMAL\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'i'
        setlocal statusline=%#SInsert#\ INSERT\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'v'
        setlocal statusline=%#SElse#\ VISUAL\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'V'
        setlocal statusline=%#SElse#\ V-LINE\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'R'
        setlocal statusline=%#SElse#\ REPLACE\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'r'
        setlocal statusline=%#SElse#\ REPLACE\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 'c'
        setlocal statusline=%#SElse#\ COMMAND\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    elseif l:mode ==# 't'
        setlocal statusline=%#SElse#\ TERMINAL\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    else
        setlocal statusline=%#SElse#\ UNKNOWN\ %#Defualt#\ %f%=\ %l\ %p%%\ 
    endif
endfunction
       

colorscheme evergarden 
filetype on
filetype indent on
syntax on

let  &t_SI = "\e[6 q"
let  &t_EI = "\e[2 q"
let  &t_SR = "\e[4 q"

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize=75


set mouse=a
set expandtab
set wrap
set sidescrolloff=10
set number
set noswapfile "disable .swp
set shiftwidth=4
set tabstop=4
set hlsearch
set ruler 
set timeoutlen=1000
set ttimeoutlen=0
set showmode
set scrolloff=3
set cursorline

map <leader>n :tabn<CR>

" gvim required
noremap <C-c> "+yyy
noremap <C-v> "+p 
inoremap <C-v> <Esc>"+pa


" <C-_> = <C-/>
autocmd filetype c,cpp,java noremap <C-_> :call Comment('\/\/')<CR>
autocmd filetype python noremap <C-_> :call Comment('#')<CR>
autocmd filetype make set noexpandtab

set statusline=%#SNormal#\ NORMAL\ %#Defualt#\ %f%=\ %l\ %p%%\ 
call Mode()
set laststatus=2

autocmd ModeChanged * call Mode() 
