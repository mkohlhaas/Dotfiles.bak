-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

local utils = require('utils')

local cmd = vim.cmd
local g   = vim.g     -- global variables
local o   = vim.o     -- general settings
local wo  = vim.wo    -- window-scoped options
local bo  = vim.bo    -- buffer-scoped options
local set = vim.opt   -- acts like the :set command in vimscript; set global, window and buffer settings

cmd 'syntax enable'
cmd 'filetype plugin indent on'
-- o.termguicolors    = true
-- cmd 'colorscheme nord'
cmd 'colorscheme PaperColor'
-- set.background     = 'light'

set.completeopt    = 'menu,menuone,noselect'
set.signcolumn     = 'yes'
set.hidden         = true
set.breakindent    = true
set.number         = true
set.relativenumber = true
set.cursorline     = true
set.shiftwidth     = 2     -- set shift width to 4 spaces.
set.tabstop        = 2     -- set tab width to 4 columns.
set.expandtab      = true  -- Use space characters instead of tabs.
set.scrolloff      = 8     -- Do not let cursor scroll below or above N number of lines when scrolling.
set.incsearch      = true  -- While searching though a file incrementally highlight matching characters as you type.
set.ignorecase     = true  -- Ignore capital letters during search.
set.smartcase      = true  -- Override the ignorecase option if searching for capital letters.
set.showcmd        = true  -- Show partial command you type in the last line of the screen.= true
set.showmode       = true  -- Show the mode you are on the last line.
set.showmatch      = true  -- Show matching words during a search.
set.hlsearch       = true  -- Use highlighting when doing a search.
set.history        = 1000  -- Set the commands to save in history default number is 20.
