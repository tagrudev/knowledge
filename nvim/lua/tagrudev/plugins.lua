local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use '/Users/tagrudev/.fzf/bin'
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use 'junegunn/fzf.vim' -- Fzf interface
  use 'hrvladev/quill' -- Theme

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'slim-template/vim-slim'
  use 'janko-m/vim-test'
  use 'Yggdroot/indentLine'
  use 'kana/vim-textobj-user'
  use 'nelstrom/vim-textobj-rubyblock'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'scrooloose/nerdtree'
  use 'ap/vim-css-color'
  use 'easymotion/vim-easymotion'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'lmeijvogel/vim-yaml-helper'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

  use 'rstacruz/vim-closer'

  -- cmp plugins
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

  -- Null LS
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Toggleterm
  use {"akinsho/toggleterm.nvim", tag = 'v2.*' }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
