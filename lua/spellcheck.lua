vim.cmd([[
 au BufWrite *.txt :setlocal spell spelllang=en_au
 au BufWrite *.txt :nnoremap <C-s> ]sz=
 au BufWrite *.txt :nnoremap <C-S> [sz=
 au BufWrite *.wiki :setlocal spell spelllang=en_au
 au BufWrite *.wiki :nnoremap <C-s> ]sz=
 au BufWrite *.wiki :nnoremap <C-S> [sz=
 ]])
