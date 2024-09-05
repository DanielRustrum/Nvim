require("catppuccin").setup({
	flavour = "mocha",
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
	show_end_of_buffer = false,
	term_colors = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	no_italic = false,
	no_bold = false,
	no_underline = false,
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = function(_)
		return {
			NeoTreeNormal = { bg = "#1e1e2e" },
			NeoTreeNormalNC = { bg = "#1e1e2e" },
            LuaLineNormal = { bg = "#1e1e2e" },
			LualineNormalNC = { bg = "#1e1e2e" }
		}
	end,
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	},
	highlight_overrides = {
		all = function(colors)
			return {
				NvimTreeNormal = { fg = colors.none },
				CmpBorder = { fg = "#3e4145" },
			}
		end,
		latte = function(latte)
			return {
				Normal = { fg = latte.base },
			}
		end,
		frappe = function(frappe)
			return {
				["@comment"] = { fg = frappe.surface2, style = { "italic" } },
			}
		end,
		macchiato = function(macchiato)
			return {
				LineNr = { fg = macchiato.overlay1 },
			}
		end,
		mocha = function(mocha)
			return {
				Comment = { fg = mocha.flamingo },
			}
		end,
	},
})

vim.cmd.colorscheme("catppuccin")
