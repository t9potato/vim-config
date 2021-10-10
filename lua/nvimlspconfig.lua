--lsp
--treesitter
require'nvim-treesitter.configs'.setup { highlight = { enable = true}}

--complete
local lsp = require'lspconfig'

lsp.pyright.setup{ on_attach=require'completion'.on_attach }
lsp.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
lsp.clangd.setup{ on_attach=require'completion'.on_attach }
lsp.jdtls.setup{ on_attach=require'completion'.on_attach, cmd={'jdtls'} }

vim.api.nvim_set_keymap('n', '<leader> ', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<tab>', '<Plug>(completion_smart_tab)', {})
vim.api.nvim_set_keymap('i', '<s-tab>', '<Plug>(completion_smart_s_tab)', {})
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {})
