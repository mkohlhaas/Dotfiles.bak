local utils = require('utils')

utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
-- Move to next and previous buffers.
utils.map('n', '<M-Right>', ':bn<CR>')
utils.map('n', '<M-Left>',  ':bn<CR>')
