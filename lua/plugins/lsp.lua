return {
    'neovim/nvim-lspconfig',

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'hrsh7th/cmp-nvim-lsp',
    },

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
                    capabilities = require('cmp_nvim_lsp').default_capabilities(),
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
