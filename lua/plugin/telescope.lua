local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>h', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

require("telescope").setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
})

require("telescope").load_extension("ui-select")
