-- Leader == Space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap
local silentnoremap = { noremap = true, silent = true }

-- My maps - i - insert, n - normal, ...
map('i', 'jk', '<Esc>', silentnoremap)
map('c', 'jk', '<C-c>', silentnoremap)
map('n', '<C-n>', ':tabNext<CR>', silentnoremap)
map('n', '<leader>q', ':q<CR>', silentnoremap)
map('n', '<leader>s', ':update<CR>', silentnoremap)
map('n', '<leader>t', ':GFiles<CR>', silentnoremap)
map('n', '<leader>g', ':Files<CR>', silentnoremap)
map('n', '<leader>b', ':Buffers<CR>', silentnoremap)
map('n', '<leader>l', ':NERDTreeFind<CR>', silentnoremap)
map('n', '<leader>c', ':nohlsearch<CR>', silentnoremap)
map('v', '<leader>f', [[y:Ag\V<C-r>=escape(@",'/\')<CR><CR>]], silentnoremap)

-- Move up and down
map('n', '<C-k>', ':m-2<CR>', silentnoremap)
map('n', '<C-j>', ':m+1<CR>', silentnoremap)

-- Do not put deleted item in yank
map('v', 'p', '"_dP', silentnoremap)

-- Rspec tests
map('n', 't<C-t>', ':TestNearest<CR>', silentnoremap)
map('n', 't<C-f>', ':TestFile<CR>', silentnoremap)
map('n', 't<C-l>', ':TestLast<CR>', silentnoremap)
map('n', 't<C-v>', ':TestVisit<CR>', silentnoremap)
