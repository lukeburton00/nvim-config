require('neo-tree').setup {
    filesystem = {
        hijack_netrw_behavior = "open_current",
        follow_current_file = { enabled = true },
        filtered_items = {
            visible = true,
        }
    },
}

vim.keymap.set("n", "<leader><space>", '<CMD>Neotree current reveal<CR>')
