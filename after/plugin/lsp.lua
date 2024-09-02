local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
    },
}

lspconfig.lua_ls.setup {}

require("mason-lspconfig").setup_handlers {
    function(server)
        lspconfig[server].setup({})
    end
}
