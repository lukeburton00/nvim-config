return {
    "RRethy/base16-nvim",
    priority = 1000,
    lazy = false,

    config = function ()
        vim.cmd.colorscheme("base16-black-metal-immortal")
    end
}
