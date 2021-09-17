filetype plugin on

set noswapfile
set nohlsearch
set shortmess+=c
set noshowmode

syntax on

function! Term(height)
"    if win_gotoid(g:term_win)
"        hide
"    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
"    endif
endfunction

let g:vimwiki_list = [{'path': '$HOME/Documents/vim/wiki',
          \ 'path_html': '$HOME/Documents/vim/wiki_html'}]
