-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>")

-- CTRL SHIFT + 方向 快速跳转
keymap.set("i", "<C-S-Up>", "<Up><Up><Up><Up><Up><Up><Up>")
keymap.set("i", "<C-S-Down>", "<Down><Down><Down><Down><Down><Down>")
keymap.set("i", "<C-S-Left>", "<Home>")
keymap.set("i", "<C-S-Right>", "<End>")
keymap.set("n", "<C-S-Up>", "10k")
keymap.set("n", "<C-S-Down>", "10j")
keymap.set("n", "<C-S-Left>", "^")
keymap.set("n", "<C-S-Right>", "$")
keymap.set("v", "<C-S-Up>", "10k")
keymap.set("v", "<C-S-Down>", "10j")
keymap.set("v", "<C-S-Left>", "^")
keymap.set("v", "<C-S-Right>", "$h")
-- c-s = :%s/

keymap.set("n", "<A-s>", ":<c-u>%s/\\v//gc<left><left><left><left>")
keymap.set("v", "<A-s>", ":s/\\v//gc<left><left><left><left>")

-- tab na-- telescope general
keymap.set("n", "<leader>lds", "<cmd>Telescope lsp_document_symbols<cr>")
keymap.set("n", "<leader>tgf", "<cmd>Telescope lsp_references<cr>")
keymap.set("n", "<leader>cbf", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
