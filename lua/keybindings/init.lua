vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- Normal mode, control + h
-- Key bindings to alternates split view
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

-- key bindings to alternate modes
--
-- map('i', 'jk', '<ESC>', {noremap = true, silent = false})
-- map('i', 'kj', '<ESC>', {noremap = true, silent = false})
--

-- Key bindings to toggle NvimTree
map('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = false})
map('n', '<leader>n', 'NvimTreeFindFile<CR>', {noremap = true, silent = false})
