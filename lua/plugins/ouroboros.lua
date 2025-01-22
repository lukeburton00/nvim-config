return {
    'jakemason/ouroboros',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    ft = {'c', 'cpp'},

    config = function ()
        vim.keymap.set('n', '<leader>o', '<cmd>:Ouroboros<CR>', {})
    end
}
