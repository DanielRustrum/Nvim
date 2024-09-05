require("key-state.var")

function KeyState.keys.set(state, mode, key, action, opts)
	opts = opts or {}

	if not KeyState.keymap[key] then
		KeyState.keymap[key] = {}
	end

	if not KeyState.keymap[key][state] then
		KeyState.keymap[key][state] = {}
	end

	table.insert(KeyState.keymap[key][state], {
		mode = mode,
		action = action,
		opts = opts,
	})
end

function KeyState.state.swap(state)
	KeyState.current_state = state

	for key, _ in pairs(KeyState.keymap) do
		if not KeyState.keymap[key] then
			return
		end

		if KeyState.keymap[key][state] then
			for _, binding in pairs(KeyState.keymap[key][state]) do
				vim.keymap.set(binding.mode, key, binding.action, binding.opts)
			end
		else
			vim.keymap.set({ "v", "i", "n" }, key, key)
		end
	end
end

function KeyState.keys.disable(state, mode, key)
	KeyState.keys.set(state, mode, key, "")
end

function KeyState.state.setDefault(state)
	KeyState.default_state = state
end

function KeyState.keys.toggle(state, mode, key)
	if KeyState.default_state == "" then
		return
	end

	KeyState.keys.set(KeyState.default_state, mode, key, function()
		print("Toggled: " .. state)
		KeyState.state.swap(state)
	end)

	KeyState.keys.set(state, mode, key, function()
		print("Toggled: " .. KeyState.default_state)
		KeyState.state.swap(KeyState.default_state)
	end)
end

function KeyState.state.getState()
	return KeyState.current_state
end

function KeyState.state.psuedo(state, callback)
	if KeyState.current_state == state then
		callback()
	end
end

function KeyState.state.default()
	KeyState.state.swap(KeyState.default_state)
end

function KeyState.state.autoSwap(state, trigger, match)
	if trigger == "file" then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = vim.api.nvim_create_augroup("Swap_On_File", { clear = true }),
			callback = function(opts)
                print(vim.bo[opts.buf].filetype)
				if vim.bo[opts.buf].filetype == match then
					KeyState.state.swap(state)
				else
					KeyState.state.swap(KeyState.default_state)
				end
			end,
		})
	end
end
