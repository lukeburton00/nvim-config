return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    event = 'InsertCharPre',

    version = '*',
    opts = {
        keymap = {
            preset = 'enter',

            ['<Tab>'] = { 'select_next' },
            ['<S-Tab>'] = { 'select_prev' },
        },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },

        completion = {
            list = {
                selection = {
                    preselect = false,
                    auto_insert = false
                }
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 500,
                window = { border = 'padded' }
            },

            ghost_text = {
                enabled = true
            }
        },

        signature = {
            enabled = true,
            window = {
                border = 'padded',
                show_documentation = true
            }
        },
    },

    opts_extend = { "sources.default" }
}
