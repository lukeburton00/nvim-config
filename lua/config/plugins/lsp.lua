return {
    'neovim/nvim-lspconfig',

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'hrsh7th/cmp-nvim-lsp',
    },

    config = function ()
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
            callback = function(event)
                local opts = {buffer = event.buf}

                vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol, opts)
                vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, opts)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', '<leader>rf', vim.lsp.buf.references, opts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                vim.keymap.set('n', '<leader>hs', vim.lsp.buf.signature_help, opts)
            end,
        })

        local lspconfig = require("lspconfig")
        local util = require('lspconfig.util')

        require("mason").setup()
        require("mason-lspconfig").setup {
            automatic_installation = false,
            ensure_installed = {
                "angularls",
                "lua_ls",
            },
        }

        require("mason-lspconfig").setup_handlers {
            function(server)
                lspconfig[server].setup({
                    capabilities = require('cmp_nvim_lsp').default_capabilities(),
                    settings = {
                        completions = {
                            callSnippet = "Replace"
                        }
                    }
                })
            end
        }

        lspconfig.angularls.setup {
            root_dir = util.root_pattern('angular.json', 'project.json')
        }
    end
}
