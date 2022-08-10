local status, packer = pcall(require, 'packer')

if (not status) then
  print("Sorry bro, no packer installed!")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use '/usr/local/opt/fzf'
  use 'wbthomason/packer.nvim'
  use 'junegunn/fzf.vim'
  use 'hrvladev/quill'
  use 'slim-template/vim-slim'
  use 'janko-m/vim-test'
  use 'Yggdroot/indentLine'
  use 'kana/vim-textobj-user'
  use 'nelstrom/vim-textobj-rubyblock'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'AndrewRadev/writable_search.vim'
  use 'scrooloose/nerdtree'
  use 'ap/vim-css-color'
  use 'easymotion/vim-easymotion'
  use 'Valloric/YouCompleteMe'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'lmeijvogel/vim-yaml-helper'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
end)
