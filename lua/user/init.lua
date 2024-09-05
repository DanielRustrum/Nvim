require "key-state.api"

require "user.globals"
require "user.utils"
require "user.options"
require "user.bindings"
require "user.lazy"

require "plugin.colorscheme"
require "plugin.telescope"
require "plugin.treesitter"
require "plugin.mason"
require "plugin.null-ls"
require "plugin.autocomplete"
require "plugin.smartcolumn"
require "plugin.noice"
require "plugin.lualine"
require "plugin.comments"
require "plugin.neotree"

KeyState.state.swap("Def")
-- Sourcing LuaLine Hack
-- ISSUE: Winbar background color isn't displaying correctly 

local timer = vim.loop.new_timer()
timer:start(2000, 0, vim.schedule_wrap(function()
    vim.cmd("so ~/.config/nvim/lua/plugin/lualine.lua")
end))
