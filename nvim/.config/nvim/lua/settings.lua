local utils = require('utils')

local cmd = vim.cmd
local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'colorscheme PaperColor'

g.neovide_cursor_vfx_mode = 'pixiedust'
bo.shiftwidth = indent
bo.tabstop = indent
bo.softtabstop = indent
o.hidden = true
o.breakindent = true
o.ignorecase = true
o.scrolloff = 8
-- o.sidescrolloff = 999
o.splitbelow = true
o.splitright = true
o.clipboard = 'unnamed,unnamedplus'
o.timeoutlen = 500
o.updatetime = 300
o.inccommand = "split"
o.cmdheight = 1
wo.number = true
wo.relativenumber = true
wo.scrolloff = 8
wo.cursorline = true
