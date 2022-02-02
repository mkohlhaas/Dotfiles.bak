return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- LSP config
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}

  -- Completion - use either one
  use {'hrsh7th/nvim-compe'}
  -- use { 'nvim-lua/completion-nvim' }

  use {
  'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'NLKNguyen/papercolor-theme'
  use 'nelstrom/vim-visual-star-search'     -- Start a * or # search from a visual block.
  use 'romainl/vim-cool'                    -- A very simple plugin that makes hlsearch more useful.
  use 'machakann/vim-highlightedyank'       -- Make the yanked region apparent!
  use 'RRethy/nvim-align'                   -- A simple, easy-to-use Vim alignment plugin.
  use 'purescript-contrib/purescript-vim'   -- Purescript language support providing syntax highlighting and indentation
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use 'arcticicestudio/nord-vim'            -- An arctic, north-bluish clean and elegant Vim color theme.
end)
