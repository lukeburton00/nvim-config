return {
    'echasnovski/mini.nvim',
    version = '*',

    config = function ()
        -- Modules
        require("mini.ai").setup()
        require("mini.surround").setup()
        require("mini.move").setup()
        require("mini.pairs").setup()

        require("mini.icons").setup()
        MiniIcons.mock_nvim_web_devicons()

        require("mini.statusline").setup()
        require("mini.cursorword").setup()

        local starter = require "mini.starter"
        local hooks = {
            clear_statusline = function(buff)
                vim.opt_local.statusline = " "
                vim.cmd "highlight StatusLine ctermbg=None guibg=None"
                return buff
            end,

            local_keymap = function(buff)
                vim.keymap.set("n", "q", "<cmd>q<cr>", { buffer = 0 })
                vim.keymap.set("n", "j", "<cmd>normal <Down><cr>", { buffer = 0 })
                vim.keymap.set("n", "k", "<cmd>normal <Up><cr>", { buffer = 0 })
                return buff
            end,
        }

        starter.setup {
            autoopen = true,
            silent = true,
            evaluate_single = true,
            footer = "",

            items = {
                {
                    { name = "Files", action = "Telescope find_files", section = "" },
                    { name = "Git", action = function() require("lazygit").lazygit() end, section = "" },
                    { name = "Explorer", action = function() require("yazi").yazi() end, section = "" },
                    {
                        name = "Bonsai",
                        action = function()
                            if vim.fn.has("win32") == 0 then
                                local buf = vim.api.nvim_create_buf(false, true)
                                vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
                                local width = 80
                                local height = 20
                                local ui_width = vim.api.nvim_get_option("columns")
                                local ui_height = vim.api.nvim_get_option("lines")
                                local row = math.floor((ui_height - height) / 2)
                                local col = math.floor((ui_width - width) / 2)
                                local opts = {
                                    style = 'minimal',
                                    relative = 'editor',
                                    width = width,
                                    height = height,
                                    row = row,
                                    col = col
                                }
                                local win = vim.api.nvim_open_win(buf, true, opts)
                                vim.cmd("term cbonsai -l")
                                vim.cmd("setlocal nonumber norelativenumber")
                            end
                        end,
                        section = "",
                    }
                },
            },

            header = "",

            content_hooks = {
                starter.gen_hook.adding_bullet(" "),
                starter.gen_hook.aligning("center", "center"),
                hooks.clear_statusline,
                hooks.local_keymap,
            },

            query_updaters = "abcdefghilmnopqrstuvwxyz0123456789_-.",
        }
    end
}
