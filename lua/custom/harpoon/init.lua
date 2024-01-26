local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()

vim.keymap.set('n', '<leader>ha', function () harpoon:list():append() end)
vim.keymap.set('n', '<leader>hl', function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set({'n', 'i'}, '<C-j>', function () harpoon:list():select(1) end)
vim.keymap.set({'n', 'i'}, '<C-k>', function () harpoon:list():select(2) end)
vim.keymap.set({'n', 'i'}, '<C-l>', function () harpoon:list():select(3) end)
vim.keymap.set({'n', 'i'}, '<C-h>', function () harpoon:list():select(4) end)

return {}
