local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<CR>"] = function(bufnr)
          require("telescope.actions.set").edit(bufnr, "tab drop")
        end,
				["<C-t>"] = actions.select_default
      },
    },
  }
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.grep_string, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {}) 
