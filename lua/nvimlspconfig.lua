--lsp
--treesitter
require'nvim-treesitter.configs'.setup { highlight = { enable = true}}

-- complete
--local lsp = require'lspconfig'
-- lsp.pyright.setup{ on_attach=require'completion'.on_attach }
-- lsp.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
-- lsp.clangd.setup{ on_attach=require'completion'.on_attach }
-- lsp.jdtls.setup{ on_attach=require'completion'.on_attach, cmd={'jdtls'} }
-- vim.api.nvim_set_keymap('i', '<tab>', '<Plug>(completion_smart_tab)', {})
-- vim.api.nvim_set_keymap('i', '<s-tab>', '<Plug>(completion_smart_s_tab)', {})
 
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            -- For `luasnip` user.
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
    }
})


local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }, _config or {})
end

require'lspconfig'.rust_analyzer.setup(config({}))
require'lspconfig'.pyright.setup(config({}))
require'lspconfig'.clangd.setup(config({}))

vim.api.nvim_set_keymap('n', '<leader> ', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {})
