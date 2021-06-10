"Vim and plaintext data files: http://briancarper.net/blog/552/
au BufRead,BufNewFile *.tsv setfiletype tsv
au BufRead,BufNewFile *.tsv :set listchars=eol:\ ,tab:»-,trail:·,precedes:…,extends:…,nbsp:‗
au BufRead,BufNewFile *.tsv :set nowrap
au BufRead,BufNewFile *.tsv :set tabstop=20
au BufRead,BufNewFile *.tsv :set list
au BufRead,BufNewFile *.tsv :set noexpandtab
au BufRead,BufNewFile *.tsv :set shiftwidth=20
