call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig' 
Plug 'nvim-lua/completion-nvim'
Plug 's1n7ax/nvim-terminal'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'unblevable/quick-scope'
"asthetics
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground', {'do': ':TSUpdate'}
Plug 'ap/vim-css-color'
"colorschemes
Plug 'lifepillar/vim-gruvbox8'
call plug#end()
