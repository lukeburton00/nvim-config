return {
    'hrsh7th/nvim-cmp',

    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        "rafamadriz/friendly-snippets",
    },

    config = function ()
        local luasnip = require("luasnip")
        luasnip.config.setup {}
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

            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
                { name = 'lazydev' },
            },

            mapping = cmp.mapping.preset.insert {
                ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                },
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
            },
        }
    end
}
