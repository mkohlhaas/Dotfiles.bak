-- Auto install packer.nvim if not exists
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PackerBootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('plugins')
require('telescope').load_extension('fzf')
require('telescope').setup{ defaults = { file_ignore_patterns = { "node_modules" } } }
require('settings')
require('keymappings')
require('lsp')
require('complete')
