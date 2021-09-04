--lsp
--treesitter
local custom_attach = function(client)
    require'completion'.on_attach(client)
end

require'nvim-treesitter.configs'.setup { highlight = { enable = true}}
--complete
require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.rust_analyzer.setup{
    on_attach=custom_attach
--require'diagnostic'.on_attach
}
require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.jdtls.setup{ on_attach=require'completion'.on_attach, cmd={'jdtls'} }
