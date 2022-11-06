--                              _                 
--                             (_)                
--  _ __ ___   __ _ _ __  _ __  _ _ __   __ _ ___ 
-- | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
-- | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
-- |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
--                 | |   | |             __/ |    
--                 |_|   |_|            |___/     

-- Set the leader key to <Space>
vim.g.mapleader = ' '

-- Wrap `vim.api.nvim_set_keymap` into a key_mapper function
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'JK', '<ESC>')
key_mapper('v', 'jK', '<ESC>')

-- Jumps to the definition of the symbol under the cursor
key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')

-- Jumps to the declaration of the symbol under the cursor
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')

-- List all the implementations for the symbol under the cursor in the
-- quickfix window
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')

-- List all symbols in the current buffer in the quickfix window
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')

-- List all symbols in the current workspace in the quickfix window
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')

-- List all references to the symbol under the cursor in the quickfix window
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')

-- Jump to the definition of the type of the symbol under the cursor
key_mapper('n', 'gt', ':lua vim.lsp.type_definition()<CR>')

-- Display the hover context
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')

-- Display signature help context
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')

-- Select code action available at the current cursor position
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')

-- Rename all references to the symbol under the cursor
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Telescope/Fuzzy Finder
key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

-- Configure Hop
key_mapper('n', '<leader>h', ':HopWord<CR>')
key_mapper('n', '<leader>H', ':HopWord<CR>')
key_mapper('n', '<leader>t', ':HopLineStart<CR>')
key_mapper('n', '<leader>T', ':HopLineStart<CR>')

