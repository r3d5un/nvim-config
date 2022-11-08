--  _   _        __      ___              _____             __ _       
-- | \ | |       \ \    / (_)            / ____|           / _(_)      
-- |  \| | ___  __\ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _ 
-- | . ` |/ _ \/ _ \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |
-- | |\  |  __/ (_) \  /  | | | | | | | | |___| (_) | | | | | | | (_| |
-- |_| \_|\___|\___/ \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |
--                                                                __/ |
-- by r3d5un@pm.me                                               |___/ 

-- Use `:h <option_name>` for the help pages for a given option

-- Import Configurations
require'basics'
require'plugins'
require'treesitter'
require'mappings'
require'theme'
require'lsp'
require'nvim-cmp'

-- Initialize
require'hop'.setup {
  case_insensitive = true,
}
require'luasnip.loaders.from_vscode'.load()
require'lualine'.setup()

