vim.g.mapleader = ' '

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>w', ':w<CR>' ,{ silent = true })
map('n', '<leader>q', 'ZZ' ,{ silent = true })

map('n', '<C-p>', ':Telescope buffers theme=ivy<CR>', { silent = true })
map('n', '<leader>f', ':Telescope find_files theme=ivy<CR>',{ silent = true })
map('n', '<leader>s', ':Telescope treesitter theme=ivy<CR>',{ silent = true })

map('n', 'gn', ':bn<cr>', { silent = true })
map('n', 'gp', ':bp<cr>', { silent = true })

map('v', '<', '<gv', { silent = true })
map('v', '>', '>gv', { silent = true })

map('n', '<leader>d', '"+d',{ silent = true })
map('v', '<leader>d', '"+d',{ silent = true })

map('n', '<leader>y', '"+y',{ silent = true })
map('v', '<leader>y', '"+y',{ silent = true })

map('n', '<leader>x', '"+x',{ silent = true })
map('v', '<leader>x', '"+x',{ silent = true })

map('n', '<leader>c', '"+c',{ silent = true })
map('v', '<leader>c', '"+c',{ silent = true })

map('n', '<leader>p', '"+p',{ silent = true })
map('v', '<leader>p', '"+p',{ silent = true })
map('n', '<leader>P', '"+P',{ silent = true })
map('v', '<leader>P', '"+P',{ silent = true })
