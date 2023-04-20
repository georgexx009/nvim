vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

-- main keymaps
keymap.set("n", "<leader>x", ":q<CR>")

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>ss", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split
keymap.set("n", "<C-y>", "<C-w>h") -- go to split on the left
keymap.set("n", "<C-o>", "<C-w>l") -- go to split on the right
keymap.set("n", "<C-u>", "<C-w>j") -- go to split down
keymap.set("n", "<C-i>", "<C-w>k") -- go to split up

-- nvim-tree
keymap.set("n", "<leader>ep", ":NvimTreeToggle<CR>")
