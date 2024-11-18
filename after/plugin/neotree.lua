require('neo-tree').setup {
    filesystem = {
        hijack_netrw_behavior = "open_current",
    },
}

vim.keymap.set("n", "<leader><space>", '<CMD>Neotree current<CR>')
