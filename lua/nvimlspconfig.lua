--lsp
--treesitter

require'nvim-treesitter.configs'.setup { highlight = { enable = true}}
--complete
require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.jdtls.setup{ on_attach=require'completion'.on_attach, cmd={'jdtls'} }

vim.api.nvim_set_keymap('n', '<leader> ', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<tab>', '<Plug>(completion_smart_tab)', {})
vim.api.nvim_set_keymap('i', '<s-tab>', '<Plug>(completion_smart_s_tab)', {})
