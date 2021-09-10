vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>q', ':bdelete<CR>' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>e', 'ZZ' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>!', 'ZQ' ,{noremap=true, silent=true})


vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l' ,{noremap=true, silent=true})


vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>' ,{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope buffers<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope buffers<CR>', {noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>r', ':call Term(10)<CR>' ,{noremap=true, silent=true})
vim.api.nvim_set_keymap('i', '<C-f>','<C-x><C-f>', {noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>tf', ':Telescope find_files<CR>',{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>tc', ':Telescope treesitter<CR>',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', 'd', '"_d',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'd', '"_d',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>d', '"+d',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<leader>d', '"+d',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', 'x', '"_x',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'x', '"_x',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>x', '"+x',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<leader>x', '"+x',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', 'c', '"_c',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'c', '"_c',{noremap=true, silent=true})

vim.api.nvim_set_keymap('n', '<leader>c', '"+c',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<leader>c', '"+c',{noremap=true, silent=true})


vim.api.nvim_set_keymap('n', 'p', '"+p',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'p', '"+p',{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'P', '"+P',{noremap=true, silent=true})
vim.api.nvim_set_keymap('v', 'P', '"+P',{noremap=true, silent=true})
