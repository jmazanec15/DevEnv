-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "folke/tokyonight.nvim"

  use "preservim/nerdtree"

  use "ctrlpvim/ctrlp.vim"
end)
