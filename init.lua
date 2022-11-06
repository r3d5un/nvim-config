--  _   _        __      ___              _____             __ _       
-- | \ | |       \ \    / (_)            / ____|           / _(_)      
-- |  \| | ___  __\ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _ 
-- | . ` |/ _ \/ _ \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |
-- | |\  |  __/ (_) \  /  | | | | | | | | |___| (_) | | | | | | | (_| |
-- |_| \_|\___|\___/ \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |
--                                                                __/ |
-- by r3d5un@pm.me                                               |___/ 

-- Use `:h <option_name>` for the help pages for a given option

-- `vim.o` define global options
-- `vim.bo` define buffer scoped options
-- `vim.wo` define window scoped options
 
-- | |             (_)         
-- | |__   __ _ ___ _  ___ ___ 
-- | '_ \ / _` / __| |/ __/ __|
-- | |_) | (_| \__ \ | (__\__ \
-- |_.__/ \__,_|___/_|\___|___/

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

-- A comma-separated list of options fo rInsert mode completion
vim.o.completeopt = 'menuone','noinsert','noselect'

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

-- Import Configurations
require'plugins'
require'treesitter'
require'mappings'
require'theme'

--  _           
-- | |          
-- | |___ _ __  
-- | / __| '_ \ 
-- | \__ \ |_) |
-- |_|___/ .__/ 
--       | |    
--       |_|    

local lspconfig = require'lspconfig'
local completion = require'completion'

local function custom_on_attach(client)
  print('Attaching to ' .. client.name)
  completion.on_attach(client)
end

local default_config = {
  on_attach = custom_on_attach,
}

-- Language servers
lspconfig.tsserver.setup(default_config)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

