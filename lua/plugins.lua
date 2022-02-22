vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- LSP
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'onsails/lspkind-nvim' }
    use { 'f3fora/cmp-spell' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }

    -- General Functions
    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'unblevable/quick-scope' }

    -- asthetics
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'ap/vim-css-color' }
    use 'nvim-lualine/lualine.nvim'

    -- Colorschemes
    use { 'lifepillar/vim-gruvbox8' }
    use { 'projekt0n/github-nvim-theme' }
    use { 'EdenEast/nightfox.nvim' }
    use { 'Mofiqul/dracula.nvim' }
end)
