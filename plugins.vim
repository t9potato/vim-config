call plug#begin('~/.config/nvim/plugged')
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(69) } }
Plug 'neovim/nvim-lspconfig' 
Plug 'nvim-lua/completion-nvim'
Plug 's1n7ax/nvim-terminal'
"asthetics
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ap/vim-buftabline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ap/vim-css-color'
Plug 'kyazdani42/nvim-web-devicons'
"colorschemes
Plug 'shaunsingh/nord.nvim'
call plug#end()
