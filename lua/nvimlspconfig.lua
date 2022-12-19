--lsp
--treesitter
require'nvim-treesitter.configs'.setup {highlight = { enable = true }}

-- complete
--
local lsp = require('lsp-zero')

lsp.preset('recommended')
local lspkind = require('lspkind')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set('n', '<leader> ', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>h', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '<leader>n', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', '<leader>b', function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()
