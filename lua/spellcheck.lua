vim.cmd([[
 au BufEnter *.txt :setlocal spell spelllang=en_au
 au BufEnter *.txt :nnoremap <C-s> ]sz=
 au BufEnter *.txt :nnoremap <C-S> [sz=
 au BufEnter *.wiki :setlocal spell spelllang=en_au
 au BufEnter *.wiki :nnoremap <C-s> ]sz=
 au BufEnter *.wiki :nnoremap <C-S> [sz=
 au BufEnter *.html :setlocal spell spelllang=en_au
 au BufEnter *.html :nnoremap <C-s> ]sz=
 au BufEnter *.html :nnoremap <C-S> [sz=
 au BufEnter *.tex :set wrap linebreak nolist spell
 au BufEnter *.tex :nnoremap <C-s> ]sz=
 au BufEnter *.tex :nnoremap <C-S> [sz=
 au BufEnter *.tex :nnoremap j gj
 au BufEnter *.tex :nnoremap k gk
 au BufEnter *.tex :vnoremap j gj
 au BufEnter *.tex :vnoremap k gk
 au BufEnter *.docx :set wrap linebreak nolist spell
 au BufEnter *.docx :nnoremap <C-s> ]sz=
 au BufEnter *.docx :nnoremap <C-S> [sz=
 au BufEnter *.docx :nnoremap j gj
 au BufEnter *.docx :nnoremap k gk
 au BufEnter *.docx :vnoremap j gj
 au BufEnter *.docx :vnoremap k gk
 ]])
