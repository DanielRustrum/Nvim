local cat = require 'lualine.themes.catppuccin'

cat.normal.c.bg = '#1E1E2E'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = cat,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = { 'packer', 'NVimTree'},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {  },
  tabline = {
    lualine_a = {'filename'},
    lualine_b = {'tabs'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'location'},
    lualine_z = {'mode'}
  },
  winbar = {
    lualine_a = {},
    lualine_b = {'filetype'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_winbar = {},
  extensions = {}
}
