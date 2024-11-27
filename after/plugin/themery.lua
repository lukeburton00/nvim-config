require("themery").setup({
    themes = {
        {
            name = "Mocha",
            colorscheme = "catppuccin-mocha",
        },
        {
            name = "Rose Pine",
            colorscheme = "rose-pine"
        },
        {
            name = "Darker",
            colorscheme = "material",
            before = [[ 
                vim.g.material_style = 'darker'
            ]]
        },
        {
            name = "Oceanic",
            colorscheme = "material",
            before = [[ 
                vim.g.material_style = 'oceanic'
            ]]
        },
        {
            name = "Pale Night",
            colorscheme = "material",
            before = [[ 
                vim.g.material_style = 'palenight'
            ]]
        },
        {
            name = "Deep Ocean",
            colorscheme = "material",
            before = [[ 
                vim.g.material_style = 'deep ocean'
            ]]
        },
        {
            name = "Dragon",
            colorscheme = "kanagawa-dragon",
        },
        {
            name = "Wave",
            colorscheme = "kanagawa-wave",
        },
        {
            name = "Lackluster",
            colorscheme = "lackluster-hack",
        },
    }
})

vim.keymap.set("n", "<leader>th", "<CMD>Themery<CR>")
