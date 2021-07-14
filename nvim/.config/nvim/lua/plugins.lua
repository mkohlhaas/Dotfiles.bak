return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- LSP config
  use {'neovim/nvim-lspconfig'}
  -- use { 'kabouzeid/nvim-lspinstall'}

  -- Completion - use either one of this
  use {'hrsh7th/nvim-compe'}
  -- use { 'nvim-lua/completion-nvim' }
end)
