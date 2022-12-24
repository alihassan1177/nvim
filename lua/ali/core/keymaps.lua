vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<C-w>", ":close<CR>")
keymap.set("n", "<leader>h", "<C-w>v")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>")

-- NerdTree keymaps
keymap.set("n", "<C-e>", ":Ex<CR>")
keymap.set("i", "<C-e>", "<ESC>:Ex<CR>")

-- Telescope keymaps
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>")
-- Formatting
keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>")

--Harpoon 
keymap.set("n", "<C-n>", "<cmd>lua require('harpoon.mark').add_file()<CR>")
keymap.set("n", "<C-m>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<C-h>", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
keymap.set("n", "<C-j>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
