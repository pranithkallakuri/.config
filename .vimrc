set laststatus=2
set nowrap

set hlsearch
set incsearch

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

let mapleader=' ' "Space
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

set cscopequickfix=s-,g-,c-,d-,i-,t-,e-
nmap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <leader>cf :cs find f <C-R>=expand("<cword>")<CR><CR>
if filereadable("./cscope.out")
    cs add ./cscope.out
endif

set wildmenu
