return {
    'hrsh7th/nvim-cmp',

    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        "rafamadriz/friendly-snippets",
    },

    config = function ()
        local luasnip = require("luasnip")
        luasnip.config.setup()

        require("luasnip.loaders.from_vscode").lazy_load()
        luasnip.filetype_extend("ruby", {"rails"})
        luasnip.filetype_extend("typescript", {"angular"})
        luasnip.filetype_extend("eruby", {"html"})
        luasnip.filetype_extend("eruby", {"ruby"})

        local cmp = require("cmp")
        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },

            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
                { name = 'path' },
                { name = 'lazydev' },
            }),

            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm {select = true},
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-u>'] = cmp.mapping.scroll_docs(4),
            }),
        }
    end
}
