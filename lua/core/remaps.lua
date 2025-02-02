vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>b", "<C-t>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "U", "<C-r>")

vim.keymap.set("n", "<leader>co", vim.cmd.copen)
vim.keymap.set("n", "<leader>cc", vim.cmd.cclose)

vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol)
vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_next)
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>rf', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>hs', vim.lsp.buf.signature_help)
