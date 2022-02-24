vim.opt.clipboard = 'unnamedplus'
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.smartindent = true
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 1
vim.opt.termguicolors = true

vim.opt.cot={'menu', 'noinsert', 'menuone', 'noselect'}

vim.api.nvim_command([[
colorscheme gruvbox8
set nohlsearch
set noswapfile
set noshowmode
set shortmess+=c
syntax enable
set filetype=plugin
set cursorline
set cursorcolumn
]])

vim.api.nvim_command([[
augroup AutoCompileLatex
autocmd BufEnter *.tex :set wrap linebreak nolist spell
autocmd BufWritePost *.tex :silent !bibtex %:t:r > /dev/null
autocmd BufWritePost *.tex :silent !compiler % > /dev/null
augroup END 
]])

require('github-theme').setup()
