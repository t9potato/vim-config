--lsp
--treesitter
require'nvim-treesitter.configs'.setup { highlight = { enable = true}}
--complete
require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
