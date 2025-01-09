require('telescope').setup {
    pickers = {
        find_files = {
            hidden = true,
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files)
vim.keymap.set('n', '<C-p>', builtin.lsp_document_symbols)

vim.keymap.set('n', '<leader>l', builtin.live_grep)

vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
