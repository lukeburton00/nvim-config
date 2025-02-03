return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "saghen/blink.cmp"
    },

    event = "VeryLazy",

    config = function ()
        require("mason").setup()
        require("mason-lspconfig").setup {
            automatic_installation = false,
            ensure_installed = {
                "lua_ls",
            },
        }

        require("mason-lspconfig").setup_handlers {
            function(server)
                local opts = {
                    capabilities = require('blink.cmp').get_lsp_capabilities(capabilities),
                }

                if server == "angularls" then
                    local util = require('lspconfig.util')
                    opts.root_dir = util.root_pattern('angular.json', 'project.json')
                end

                local lspconfig = require("lspconfig")
                lspconfig[server].setup(opts)
            end
        }
    end
}
