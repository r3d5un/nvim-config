-- | |             (_)         
-- | |__   __ _ ___ _  ___ ___ 
-- | '_ \ / _` / __| |/ __/ __|
-- | |_) | (_| \__ \ | (__\__ \
-- |_.__/ \__,_|___/_|\___|___/

-- `vim.o` define global options
-- `vim.bo` define buffer scoped options
-- `vim.wo` define window scoped options

-- Enable 24-bit RBG color in the TUI.
vim.o.termguicolors = true

-- Syntax highlighting
vim.o.syntax = 'on'

-- Enable sound notifications for errors
vim.o.errorbells = true

-- Override 'ignorecase' options if the search contains uppercase characters
vim.o.smartcase = true

-- If in Insert, Replace or Visual mode put a message on the last line.
vim.o.showmode = true

-- Disable swapfile for the buffer (buffer-scoped)
vim.bo.swapfile = false;

-- Disable backups
vim.o.backup = false

-- Undo configurations
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true

-- Configure search
vim.o.incsearch = true
vim.o.hlsearch = true

-- When on a buffer becomes hidden it is abandoned
vim.o.hidden = true

-- Configure indentation
vim.bo.autoindent = true
vim.bo.smartindent = true

-- Configure tab sizes
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Configure line numbers sidebar
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable signcolumn
vim.wo.signcolumn = 'yes'

-- Disable text wrap
vim.wo.wrap = false
