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
vim.opt.hls = false
vim.opt.relativenumber = true
vim.opt.laststatus = 3
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.shortmess = 'filnxtToOFc'

vim.opt.guicursor = ''

vim.opt.cot={'menu', 'noinsert', 'menuone', 'noselect'}
vim.opt.swf = false
vim.opt.filetype="plugin"

if vim.loop.os_uname().sysname == "Windows_NT"
then
    vim.opt.shell = "bash"
end

vim.api.nvim_command([[
syntax enable
colorscheme kanagawa
]])
