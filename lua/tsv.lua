vim.cmd([[
au BufRead,BufNewFile *.tsv setfiletype tsv
au BufRead,BufNewFile *.tsv :setlocal listchars=eol:\ ,tab:»-,trail:·,precedes:…,extends:…,nbsp:‗
au BufRead,BufNewFile *.tsv :setlocal nowrap
au BufRead,BufNewFile *.tsv :setlocal tabstop=20
au BufRead,BufNewFile *.tsv :setlocal list
au BufRead,BufNewFile *.tsv :setlocal noexpandtab
au BufRead,BufNewFile *.tsv :setlocal shiftwidth=20
]])
