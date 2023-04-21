--lsp
--treesitter
require'nvim-treesitter.configs'.setup {highlight = { enable = true }}

-- complete
--
local lsp = require('lsp-zero')

lsp.preset('recommended')

require("mason").setup {
    providers = {
        "mason.providers.registry-api", -- This is the default provider. You can still include it here if you want, as a fallback to the client provider.
        "mason.providers.client",
    }
}

local cmp = require('cmp')
-- local lspkind = require('lspkind')
--  cmp.setup {
--      formating = {
--          format = lspkind.cmp_format({
--              mode = 'symbol',
--              maxwidth = 50,
--              ellipsis_char = '...',
--              before = function (entry, vim_item)
--                 -- ...
--                  return vim_item
--              end
--          })
--      }
--  }
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({mapping = {
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping(function(fallback)
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.confirm({ select = true })
        else
            fallback()
        end
    end, { "i" }),
    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif has_words_before() then
            cmp.complete()
        else
            fallback()
        end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
    end, { "i", "s" }),
},})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set('n', '<leader> ', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>h', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '<leader>n', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', '<leader>b', function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

-- vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
