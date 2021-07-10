filetype plugin on

set noswapfile
set nohlsearch
set shortmess+=c
set noshowmode

syntax on

function! MyFoldText()
    let line = getline(v:foldstart)
    let foldedlinecount = v:foldend - v:foldstart + 1
    return ' ⭐️ '. foldedlinecount . line
endfunction

set foldtext=MyFoldText()
set fillchars=fold:\

let g:term_buf = 0
let g:term_win = 0

function! Term(height)
    if win_gotoid(g:term_win)
        hide
    else
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
    endif
endfunction
