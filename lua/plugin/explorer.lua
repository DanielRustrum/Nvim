require("netrw").setup({
  icons = {
    symlink = '',
    directory = '',
    file = '',
  },
  -- Uses mini.icon or nvim-web-devicons if true, otherwise use the file icon specified above
  use_devicons = true,
  mappings = {
    -- Function mappings receive an object describing the node under the cursor
    ['f'] = function(payload)
        local filename = vim.fn.input("File: ", "", "file")
        local newfilepath = payload.dir .. "/" .. filename
    end,
  },
})
