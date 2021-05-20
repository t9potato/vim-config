let mapleader=" "

"terminal
function Term() abort
    let bufNum = bufnr('term://')
    let termNum = bufwinnr('term://')
    if termNum > 0 && winnr('$') > 1
        execute termNum . 'wincmd c'
    else
        execute 'sp term://zsh'
        :resize 10<CR>
    endif
endfunction
command! -bang -nargs=* Term call Term()

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>e ZZ
nnoremap <silent> <leader>q :bdelete<CR>
nnoremap <leader>! ZQ

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <ESC> <C-\><C-n>

nnoremap <silent> <leader>t :Term<CR>
nnoremap <silent> <leader><tab> :bnext<CR>
nnoremap <silent> <leader><s-tab> :bprevious<CR>
inoremap <C-f> <C-x><C-f>
