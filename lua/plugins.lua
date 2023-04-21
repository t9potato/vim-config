local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '

require('lazy').setup({
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- {'rafamadriz/friendly-snippets'},
        },
    },
    -- Autocompletion
    {'hrsh7th/nvim-cmp', 
        dependencies = {
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua', ft = 'lua'},
        }
    },
    -- { 'onsails/lspkind-nvim', lazy = true }

    -- General Functions
    { 'nvim-lua/popup.nvim', lazy = true },
    { 'nvim-lua/plenary.nvim', lazy = true },
    'nvim-telescope/telescope.nvim',

    -- asthetics
    'kyazdani42/nvim-web-devicons',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', },
    { 'romgrk/nvim-treesitter-context', lazy = true, },
    { "catppuccin/nvim", as = "catppuccin", priority = 1000, config = function()
        vim.cmd([[colorscheme catppuccin]])
    end, },

    -- mini
    'echasnovski/mini.tabline',
    'echasnovski/mini.statusline',
        
    { 'glacambre/firenvim',
        build = function() vim.fn['firenvim#install'](0) end ,
        lazy = true,
    },
})
