require("neo-tree").setup({
	close_if_last_window = true,
	enable_diagnostics = true,
	hide_root_node = true,
	enable_git_status = true,
	popup_border_style = "rounded",
	sort_case_insensitive = false,
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
		},
		follow_current_file = {
			enable = true,
		},
		window = {
			mappings = {
				["h"] = function(state)
					local node = state.tree:get_node()
					vim.notify(Editor.fn.dump(state))
				end,
				["l"] = "hello",
			},
		},
	},
	window = {
		position = "current",
		mappings = {
			["a"] = "add",
			["<Del>"] = "delete",
			["r"] = "rename",
			["m"] = "move",

			["t"] = "none",
			["#"] = "none",
			["."] = "none",
			["/"] = "none",
			["<"] = "none",
			["<2-leftmouse>"] = "none",
			["<bs>"] = "none",
			["<c-x>"] = "none",
			["f"] = "none",
			["h"] = "none",
			["i"] = "none",
			[">"] = "none",
			["A"] = "none",
			["C"] = "none",
			["D"] = "none",
			["H"] = "none",
			["P"] = "none",
			["R"] = "none",
			["S"] = "none",
			["[g"] = "none",
			["]g"] = "none",
			["c"] = "none",
			["d"] = "none",
			["e"] = "none",
			["l"] = "none",
			["o"] = "none",
			["oc"] = "none",
			["od"] = "none",
			["og"] = "none",
			["om"] = "none",
			["on"] = "none",
			["os"] = "none",
			["ot"] = "none",
			["p"] = "none",
			["q"] = "none",
			["s"] = "none",
			["w"] = "none",
			["x"] = "none",
			["y"] = "none",
			["z"] = "none",
		},
	},
	commands = {
		hello = function() -- define a global "hello world" function
			print("Hello world")
		end,
	},
})

vim.keymap.set("n", "e", function()
	vim.cmd("Neotree dir=./")
end, {})

KeyState.state.autoSwap("Explorer", "file", "neo-tree")

