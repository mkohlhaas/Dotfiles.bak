local utils = require('utils')

utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')
-- Move to next and previous buffers.
utils.map('n', '<M-l>', ':bn<CR>')
utils.map('n', '<M-h>',  ':bp<CR>')
utils.map('n', '<M-Right>', ':bn<CR>')
utils.map('n', '<M-Left>',  ':bp<CR>')
-- reselect pasted text
utils.map('n', 'gp', '`[v`]')

utils.map("n", "<leader>xx", "<cmd>Trouble<cr>" )
utils.map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>" )
utils.map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>" )
utils.map("n", "<leader>xl", "<cmd>Trouble loclist<cr>" )
utils.map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>" )
utils.map("n", "gR", "<cmd>Trouble lsp_references<cr>")

utils.map("n", "k", "kzz")
utils.map("n", "j", "jzz")
utils.map("n", "G", "Gzz")
