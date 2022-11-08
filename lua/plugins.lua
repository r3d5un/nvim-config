--        _             _           
--       | |           (_)          
--  _ __ | |_   _  __ _ _ _ __  ___ 
-- | '_ \| | | | |/ _` | | '_ \/ __|
-- | |_) | | |_| | (_| | | | | \__ \
-- | .__/|_|\__,_|\__, |_|_| |_|___/
-- | |             __/ |            
-- |_|            |___/             

-- Plugins managed by packer.nvim
-- Quickstart guide: https://github.com/wbthomason/packer.nvim#quickstart

-- To install plugins run `:PackerCompile` and `:PackerInstall`

-- vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- LSP package manager and configuration plguins
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'sheerun/vim-polyglot'
  use 'anott03/nvim-lspinstall'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use 'jremmen/vim-ripgrep'
  use 'navarasu/onedark.nvim'
  -- Configure GitHub Copilot with `:Copilot setup`
  -- Enable Copilot with `:Copilot enable`
  -- Help available through `:help copilot`
  use 'github/copilot.vim'
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }
  -- Autocompletion plugins
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lua'
  use {"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)

