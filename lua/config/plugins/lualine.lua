return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function ()
        require("lualine").setup {
            sections = {
                lualine_b = {''},
                lualine_c = {''},
                lualine_x = {'filetype'},
                lualine_y = {''},
                lualine_z = {'location'}
            }
        }
    end
}
