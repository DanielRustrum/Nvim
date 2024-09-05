
-- The Leader Icon is out of the way now
vim.g.mapleader = "\\"
KeyState.state.setDefault("Def")
KeyState.state.swap("Def")

-- File Navigation
KeyState.keys.toggle("Tabs", "n", "t")
KeyState.keys.set("Tabs", "n", "n", "<cmd>tabnew %<CR>")
KeyState.keys.set("Tabs", "n", "<Del>", "<cmd>tabclose<CR>")
KeyState.keys.set("Tabs", "n", "o", "<cmd>tabonly<CR>")
KeyState.keys.set("Tabs", "n", "<Left>", "<cmd>tabprev<CR>")
KeyState.keys.set("Tabs", "n", "<Right>", "<cmd>tabnext<CR>")

-- Line Organization
KeyState.keys.set("Def", "v", "<S-Up>", ":m '<-2<CR>gv=gv", { silent = true })
KeyState.keys.set("Def", "v", "<S-Down>", ":m '>+1<CR>gv=gv", { silent = true })
KeyState.keys.set("Def", "v", "<S-Right>", ">gv")
KeyState.keys.set("Def", "v", "<C-/>", "gc")
KeyState.keys.set("Def", "v", "<S-Left>", "<gv")
KeyState.keys.set("Def", "n", "J", "mzJ`z")

-- Command Line Stuff
KeyState.keys.set("Def", "n", "?", ":h ")

-- Better Copy, Paste, and Delete
KeyState.keys.set("Def", "x", "p", [["_dP]])
KeyState.keys.set("Def", { "n", "v" }, "y", [["+y]])
KeyState.keys.set("Def", { "n", "v", "i" }, "<C-c>", [["+y]])
KeyState.keys.set("Def", "n", "<leader>y", [["+Y]])
KeyState.keys.set("Def", { "n", "v" }, "d", [["_d]])

-- Q is exit
KeyState.keys.set("Def", "n", "Q", "<nop>")

-- Make File Executable
KeyState.keys.set("Def", "n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Normal File Saving, why are these function IDK....
KeyState.keys.set("Def", { "n", "i" }, "<C-s>", "<cmd>w<CR>")

-- Leave UI Element or Program
vim.keymap.set({ "n", "i" }, "<C-q>", function()
	vim.cmd("q")
end)
