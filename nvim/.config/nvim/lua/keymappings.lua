local utils = require('nvimutils')

utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
-- Move to next and previous buffers.
utils.map('n', '<M-Left>', ':bn<CR>')
utils.map('n', '<M-Right>',  ':bp<CR>')
utils.map('n', '<M-j>', ':bn<CR>')
utils.map('n', '<M-k>',  ':bp<CR>')
-- reselect pasted text
utils.map('n', 'gp', '`[v`]')

utils.map('n', '<leader>xx', '<cmd>Trouble<cr>')
utils.map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>')
utils.map('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>')
utils.map('n', '<leader>xl', '<cmd>Trouble loclist<cr>')
utils.map('n', '<leader>xq', '<cmd>Trouble quickfix<cr>')
utils.map('n', 'gR', '<cmd>Trouble lsp_references<cr>')

utils.map('n', 'k', 'kzz')
utils.map('n', 'j', 'jzz')
utils.map('n', 'G', 'Gzz')
utils.map('n', 'n', 'nzz')
utils.map('n', 'N', 'Nzz')

vim.cmd [[nmap <C-j> <Plug>(grammarous-open-info-window)]]
vim.cmd [[nmap <C-n> <Plug>(grammarous-move-to-next-error)]]
vim.cmd [[nmap <C-p> <Plug>(grammarous-move-to-previous-error)]]

utils.map('n', '<C-s>',  ':set spell!<CR>')
utils.map('n', '<Leader>w',  ':w<CR>')
