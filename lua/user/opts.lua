local opts = {
	global = {},
	plugin = {
		todo_comments = {
			keywords = {
				FIX = {
					color = "error",
					icon = " ",
					alt = { "FIXME", "BUG", "FIXIT", "FIX" },
				},
				TODO = { icon = " ", color = "info" },
				HACK = { icon = " ", color = "warning" },
				WARN = {
					icon = " ",
					color = "warning",
					alt = { "WARNING", "XXX", "ISSUE" },
				},
				PERF = {
					icon = " ",
					alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
				},
				NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
				TEST = {
					icon = "⏲ ",
					color = "test",
					alt = { "TESTING", "PASSED", "FAILED" },
				},
			},
		},
	},
}

return opts
