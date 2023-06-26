vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

-- main keymaps
keymap.set("n", "<leader>x", ":q<CR>")
keymap.set("i", "jj", "<ESC>:w<CR>")
keymap.set("n", "<leader>c", "\"+y$")

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split
keymap.set("n", "<leader>h", "<C-w>h") -- go to split on the left
keymap.set("n", "<leader>l", "<C-w>l") -- go to split on the right
keymap.set("n", "<leader>j", "<C-w>j") -- go to split down
keymap.set("n", "<leader>k", "<C-w>k") -- go to split up

-- nvim-tree
keymap.set("n", "<leader>1", ":NvimTreeToggle<CR>")

-- Yank to system clipboard keymap
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- Delete and send deletion to void register
keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")
keymap.set("n", "x", "\"_x")
keymap.set("v", "x", "\"_x")

-- highlight
keymap.set("n", "<leader>cs", ":noh<CR>")

-- fold
keymap.set("n", "<leader>zf", "zfa{") -- fold {}
keymap.set("n", "<leader>zt", "za") -- toggle fold
keymap.set("n", "<leader>zca", "zM") -- close all folds
keymap.set("n", "<leader>zoa", "zR") -- open all folds

-- Move highlighted lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move previous and forward places for pointers
keymap.set("n", "<C-m>", "<C-o>") -- Jump to previous in jump list
keymap.set("n", "<C-n>", "<C-i>") -- Jump to next in jump list
