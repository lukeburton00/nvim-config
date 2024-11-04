require('telescope').setup {}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-u' }})<cr>")
vim.keymap.set('n', '<C-p>', builtin.lsp_document_symbols)

vim.keymap.set('n', 's', builtin.live_grep)

vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
