vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }

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

    --bar
    use { 'SmiteshP/nvim-gps' }
    use { 'nvim-lualine/lualine.nvim' }

    -- Colorschemes
    use { 'projekt0n/github-nvim-theme' }
end)
