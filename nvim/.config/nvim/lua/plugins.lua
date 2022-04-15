return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'

  use { 'inkarkat/vim-AdvancedSorters', requires = 'inkarkat/vim-ingo-library' }

  -- Highly extendable fuzzy finder
  -- :checkhealth telescope
  -- sudo xbps-install rg fd
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'psiska/telescope-hoogle.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'NLKNguyen/papercolor-theme'
  use 'arcticicestudio/nord-vim'            -- An arctic, north-bluish clean and elegant Vim color theme.
  use 'nelstrom/vim-visual-star-search'     -- Start a * or # search from a visual block.
  use 'romainl/vim-cool'                    -- A very simple plugin that makes hlsearch more useful.
  use 'machakann/vim-highlightedyank'       -- Make the yanked region apparent!
  use 'purescript-contrib/purescript-vim'   -- Purescript language support providing syntax highlighting and indentation
  use 'onsails/lspkind-nvim'                -- This plugin adds vscode-like pictograms to neovim's built-in lsp.
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use { 'Mephistophiles/surround.nvim', config = function() require"surround".setup {mappings_style = "sandwich"} end }
  use { 'folke/trouble.nvim', requires = "kyazdani42/nvim-web-devicons", config = function() require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    } end }
  use 'rhysd/vim-grammarous'                -- powerful grammar checker for Vim
  use 'tjdevries/vlog.nvim'                 -- logger for neovim
  use 'mbbill/undotree'
  use 'tidalcycles/vim-tidal'

  if PackerBootstrap then
    require('packer').sync()
  end
end)
