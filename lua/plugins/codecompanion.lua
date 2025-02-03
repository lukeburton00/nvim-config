return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    event = 'BufReadPost',

    config = function ()
        require("codecompanion").setup({
            strategies = {
                chat = {
                    adapter = "openai"
                },
                inline = {
                    adapter = "openai"
                }
            }
        })
    end
}
