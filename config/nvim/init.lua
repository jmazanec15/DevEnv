-- Initialize packer nvim plugin manager
require('plugins')

-- Color scheme
vim.cmd("colorscheme tokyonight-night")

-- Initialize common vim settings
local set = vim.opt

set.autoindent = true
set.syntax = on
set.ttyfast = true
set.number = true
set.relativenumber = true
set.expandtab = true
set.shiftwidth = 4

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>')

local nerdtreeaugroup = vim.api.nvim_create_augroup('nerdtree_cmds', {clear = true})

-- Enter nerd tree on opening a file
vim.api.nvim_create_autocmd('VimEnter', {
	group = nerdtreeaugroup,
	command = "NERDTree | if argc() != 0 || exists('s:std_in') | wincmd p | endif"
})

-- Exit if nerd tree tab is last one
vim.api.nvim_create_autocmd('bufenter', {
	group = nerdtreeaugroup,
	command = 'if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif'
})

-- Fuzzy search
vim.g['ctrlp_working_path_mode'] = 'ra'
set.wildignore = {'*/tmp/*','*.so','*.swp','*.zip'}
