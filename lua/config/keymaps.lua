-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>")

keymap.set("n", "<leader>ro", ":!cscope -Rkb<cr>")
keymap.set("n", "<leader>rc", ":!ctags -R .<cr>")

-- 快速切换中文显示
keymap.set("n", "<leader>dc", ":e ++enc=cp936<cr>")

-- 快速选择
keymap.set("n", "<S-Up>", "Vk", { noremap = true, silent = true })
keymap.set("n", "<S-Down>", "Vj", { noremap = true, silent = true })
keymap.set("v", "<S-Up>", "k", { noremap = true, silent = true })
keymap.set("v", "<S-Down>", "j", { noremap = true, silent = true })
keymap.set("n", "<S-Left>", "<Left>vh", { noremap = true, silent = true })
keymap.set("n", "<S-Right>", "vl", { noremap = true, silent = true })
keymap.set("i", "<S-Up>", "<esc>vkl", { noremap = true, silent = true })
keymap.set("i", "<S-Down>", "<esc>lvjh", { noremap = true, silent = true })

keymap.set("n", "<leader>v", "<Plug>(expand_region_expand)")
keymap.set("n", "<leader>V", "<Plug>(expand_region_shrink)")
keymap.set("v", "<leader>v", "<Plug>(expand_region_expand)")
keymap.set("v", "<leader>V", "<Plug>(expand_region_shrink)")

keymap.set("n", "<C-Up>", "<Plug>(VM-Add-Cursor-Up)", { remap = true })
keymap.set("n", "<C-Down>", "<Plug>(VM-Add-Cursor-Down)", { remap = true })
keymap.set("n", "<C-Right>", "<Plug>(VM-Find-Under)", { remap = true })
keymap.set("n", "<C-Left>", "<Plug>(VM-Select-All)", { remap = true })
-- 快速退出visual或者insert模式

keymap.set("v", "<A-Left>", "<Esc><Esc>")
keymap.set("v", "<A-Right>", "<Esc><Esc>")
keymap.set("v", "<A-Up>", "<Esc><Esc>")
keymap.set("v", "<A-Down>", "<Esc><Esc>")
keymap.set("i", "<A-Left>", "<Esc><Esc>")
keymap.set("i", "<A-Right>", "<Esc><Esc>")
keymap.set("i", "<A-Up>", "<Esc><Esc>")
keymap.set("i", "<A-Down>", "<Esc><Esc>")

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
