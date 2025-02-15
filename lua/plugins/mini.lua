return {
    'echasnovski/mini.nvim',
    version = '*',
    event = 'VeryLazy',

    config = function ()
        -- Modules
        require("mini.ai").setup()
        require("mini.surround").setup()
        require("mini.move").setup()

        require("mini.pairs").setup()

        require("mini.icons").setup()
        require("mini.statusline").setup()
        require("mini.cursorword").setup()
        require("mini.starter").setup()

        -- Config
        MiniIcons.mock_nvim_web_devicons()
    end
}
