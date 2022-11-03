local group = vim.api.nvim_create_augroup("autogr", { clear = true })
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.txt", "*.tex", "*.html" },
    callback = function()
        vim.schedule(function()
            vim.cmd([[
            :setlocal spell spelllang=en_au
            ]])
            map('n', '<C-s>', ']sz=', {})
            map('n', '<C-S>', '[sz=', {})
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
            ]])
            map('n', 'j', 'gj', {silent=true})
            map('n', 'k', 'gk', {silent=true})
            map('v', 'j', 'gj', {silent=true})
            map('v', 'k', 'gk', {silent=true})
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
