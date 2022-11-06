--  _                      _ _   _            
-- | |                    (_) | | |           
-- | |_ _ __ ___  ___  ___ _| |_| |_ ___ _ __ 
-- | __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
-- | |_| | |  __/  __/\__ \ | |_| ||  __/ |   
--  \__|_|  \___|\___||___/_|\__|\__\___|_|   
                                            
-- Install a parser for a specific language using `:TSInstall <language>`.
-- For example: `:TSInstall python
--
-- To see installed parsers run `:TSInstallInfo`

require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  ensure_installed = {
    'bash',
    'c_sharp',
    'css',
    'html',
    'javascript',
    'java',
    'markdown',
    'json',
    'dockerfile',
    'lua',
    'python',
    'vim',
    'yaml',
    'toml',
    'rust',
    'r',
    'latex',
    'sql',
  }
}

