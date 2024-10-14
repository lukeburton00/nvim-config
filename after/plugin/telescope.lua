require('telescope').setup {}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.lsp_document_symbols)

vim.keymap.set('n', '<leader>gs', builtin.live_grep)

vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
