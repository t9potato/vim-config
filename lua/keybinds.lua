vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n','<leader>s' ,':w<CR>' ,{silent = true, noremap = true})
vim.api.nvim_set_keymap('n','<leader>q' ,':bdelete<CR>' ,{silent = true, noremap = true})
vim.api.nvim_set_keymap('n','<leader>e' ,'ZZ' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader>!' ,'ZQ' ,{noremap = true})


vim.api.nvim_set_keymap('n','<leader>h' ,'<C-w>h' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader>j' ,'<C-w>j' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader>k' ,'<C-w>k' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader>l' ,'<C-w>l' ,{noremap = true})


vim.api.nvim_set_keymap('t','<C-h>' ,'<C-\\><C-n><C-w>h' ,{noremap = true})
vim.api.nvim_set_keymap('t','<C-j>' ,'<C-\\><C-n><C-w>j' ,{noremap = true})
vim.api.nvim_set_keymap('t','<C-k>' ,'<C-\\><C-n><C-w>k' ,{noremap = true})
vim.api.nvim_set_keymap('t','<C-l>' ,'<C-\\><C-n><C-w>l' ,{noremap = true})
vim.api.nvim_set_keymap('t','<ESC>' ,'<C-\\><C-n>' ,{noremap = true})


vim.api.nvim_set_keymap('n','<leader>r' ,':call Term(10)<CR>' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader><tab>' ,':bnext<CR>' ,{noremap = true})
vim.api.nvim_set_keymap('n','<leader><s-tab>' ,':bprev<CR>' ,{noremap = true})
vim.api.nvim_set_keymap('i','<C-f>','<C-x><C-f>',{noremap = true})

vim.api.nvim_set_keymap('n','<leader>tf',':Telescope find_files<CR>',{noremap=true, silent=true})
vim.api.nvim_set_keymap('n','<leader>tc',':Telescope treesitter<CR>',{noremap=true, silent=true})
