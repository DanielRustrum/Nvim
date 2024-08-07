-- The Leader Icon is out of the way now
vim.g.mapleader = "\\"

-- File Navigation
vim.keymap.set("n", "e", vim.cmd.Ex)
vim.keymap.set("n", "<S-t>", "<cmd>tabnew %<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader><S-t>", "<cmd>tabonly<CR>")
vim.keymap.set("n", "<Left-t>", "<cmd>tabprev<CR>")
vim.keymap.set("n", "<Right-t>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "t", "<cmd>tabnext<CR>")

-- Line Organization
vim.keymap.set("v", "<S-Up>", "<cmd>m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Right>", ">gv")
vim.keymap.set("v", "<S-Down>", "<cmd>m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-/>", "gc")
vim.keymap.set("v", "<S-Left>", "<gv")

-- Command Line Stuff
vim.keymap.set("n", "!", ":! ")
vim.keymap.set("n", "?", ":h ")

-- I have no Clue... I forgot
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Better Copy, Paste, and Delete
vim.keymap.set("x", "p", [["_dP]])
vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set({"n", "v", "i"}, "<C-c>", [["+y]])
vim.keymap.set("n", "<leader>y", [["+Y]])
vim.keymap.set({"n", "v"}, "d", [["_d]])

-- Q is exit
vim.keymap.set("n", "Q", "<nop>")

-- No CLue Again
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- WTF?
vim.keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- Make File Executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Normal File Saving, why are these function IDK....
vim.keymap.set({"n", "i"}, "<C-s>", function()
   vim.cmd("w")
end)

-- Leave UI Element or Program
vim.keymap.set({"n", "i"}, "<C-q>", function()
   vim.cmd("q")
end)

