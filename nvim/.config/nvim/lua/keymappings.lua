local utils = require('utils')

utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
-- Move to next and previous buffers.
utils.map('n', '<M-Right>', ':bn<CR>')
utils.map('n', '<M-Left>',  ':bp<CR>')

-- " Start interactive EasyAlign in visual mode (e.g. vipga)
-- xmap ga <Plug>(EasyAlign)
-- " Start interactive EasyAlign for a motion/text object (e.g. gaip)
-- nmap ga <Plug>(EasyAlign)
utils.map('n', 'ga', '<Plug>(EasyAlign)')
