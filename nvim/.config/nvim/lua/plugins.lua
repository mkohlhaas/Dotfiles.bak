return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use {'williamboman/nvim-lsp-installer'}
  use {'neovim/nvim-lspconfig'} -- LSP config
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} } -- File Manager
  use 'NLKNguyen/papercolor-theme'
  use 'arcticicestudio/nord-vim'            -- An arctic, north-bluish clean and elegant Vim color theme.
  use 'nelstrom/vim-visual-star-search'     -- Start a * or # search from a visual block.
  use 'romainl/vim-cool'                    -- A very simple plugin that makes hlsearch more useful.
  use 'machakann/vim-highlightedyank'       -- Make the yanked region apparent!
  use 'purescript-contrib/purescript-vim'   -- Purescript language support providing syntax highlighting and indentation
  use 'onsails/lspkind-nvim'                -- This plugin adds vscode-like pictograms to neovim's built-in lsp.
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
end)
