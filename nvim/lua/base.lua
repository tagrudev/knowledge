vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.syntax = 'on'

vim.opt.encoding = 'utf-8'
vim.opt.backup = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.listchars= [[tab:\|\]]
vim.opt.list = true
vim.opt.foldmethod = 'indent'
vim.opt.foldnestmax = 10
vim.opt.foldlevel = 2

vim.o.autoread = true
vim.o.number = true

vim.g.indentLine_char = '│'
vim.g.ndentLine_first_char = '│'

-- Ouhh tabs to spaces
vim.cmd[[
  set expandtab
  set smarttab
]]

-- Remove trailing white spaces
vim.cmd [[autocmd BufWritePre * :%s/\s\+$//e]]

-- Threat jst like html
vim.cmd [[au BufNewFile,BufRead *.ejs set filetype=html]]

-- Spell checking
vim.cmd [[autocmd BufRead,BufNewFile *.md setlocal spell]]
vim.cmd [[autocmd FileType gitcommit setlocal spell]]

-- Yank == Copy
vim.opt.clipboard:append { 'unnamedplus' }

