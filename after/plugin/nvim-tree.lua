local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  local preview = require('nvim-tree-preview')

  vim.keymap.set('n', '<Tab>', preview.watch, opts 'Preview (Watch)')
  vim.keymap.set('n', '<Esc>', preview.unwatch, opts 'Close Preview/Unwatch')

  -- custom mappings
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
  vim.keymap.set('n', '<leader><space>', api.tree.toggle)
  vim.keymap.set('n', '<leader>t', api.tree.focus)
end

require("nvim-tree").setup {
  on_attach = my_on_attach,
  renderer = {
      highlight_git = true,
  },

  git = {
      enable = true,
      ignore = false,
  }
}
