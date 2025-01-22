return {
    "aktersnurra/no-clown-fiesta.nvim",
    priority = 1000,
    lazy = false,

    opts = {
        styles = {
            type = { bold = true },
            lsp = { underline = false },
            match_paren = { underline = true },
        },
    },

    config = function(_, opts)
        local plugin = require "no-clown-fiesta"
        plugin.setup(opts)
        return plugin.load()
    end,
}
