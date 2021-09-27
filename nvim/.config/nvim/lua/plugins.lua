return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- LSP config
  use {'neovim/nvim-lspconfig'}
  -- use { 'kabouzeid/nvim-lspinstall'}

  -- Completion - use either one
  use {'hrsh7th/nvim-compe'}
  -- use { 'nvim-lua/completion-nvim' }

  use {
  'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'NLKNguyen/papercolor-theme'
  use 'nelstrom/vim-visual-star-search' -- Start a * or # search from a visual block.
  use 'romainl/vim-cool'                -- A very simple plugin that makes hlsearch more useful.
end)
