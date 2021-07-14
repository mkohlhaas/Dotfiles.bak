local utils = require('utils')

local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

bo.shiftwidth = indent
bo.tabstop = indent
bo.softtabstop = indent
o.termguicolors = true
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
