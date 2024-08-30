require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "clangd",
    },

	automatic_installation = true,
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}
