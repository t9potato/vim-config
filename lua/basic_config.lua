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
vim.opt.laststatus = 2
vim.opt.termguicolors = true

vim.opt.cot={'menu', 'noinsert', 'menuone', 'noselect'}

hlsearch=false
swapfile=false
shortmess="c"
showmode=false
syntax=true
filetype=plugin
vim.opt.cursorline=true
vim.opt.cursorcolumn=true

require('github-theme').setup()
