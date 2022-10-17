local group = vim.api.nvim_create_augroup("autogr", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.txt", "*.tex", "*.html" },
    callback = function()
        vim.schedule(function()
            vim.cmd([[
            :setlocal spell spelllang=en_au
            :nnoremap <C-s> ]sz=
            :nnoremap <C-S> [sz=
            ]])
        end)
    end,
    group = group
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.tex",
    callback = function()
        vim.schedule(function()
            vim.cmd([[
            :set wrap linebreak nolist
            :nnoremap j gj
            :nnoremap k gk
            :vnoremap j gj
            :vnoremap k gk                       
            ]])
        end)
    end,
    group = group
})


vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.tsv",
    callback = function()
        vim.schedule(function()
            vim.cmd([[
            :setlocal listchars=eol:\ ,tab:»-,trail:·,precedes:…,extends:…,nbsp:‗
            :setlocal tabstop=20
            :setlocal list
            :setlocal noexpandtab
            :setlocal shiftwidth=20
            ]])
        end)
    end,
    group = group
})
