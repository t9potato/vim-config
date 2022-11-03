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

    -- General Functions
    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'jinh0/eyeliner.nvim' }

    -- asthetics
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'romgrk/nvim-treesitter-context' }
    use { 'rebelot/kanagawa.nvim' }

    -- mini
    use { 'echasnovski/mini.starter' }
    use { 'echasnovski/mini.tabline' }
    use { 'echasnovski/mini.statusline' }

    -- games
    use { 'ThePrimeagen/vim-be-good' }
end)
