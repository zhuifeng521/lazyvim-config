-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

vim.opt.foldmethod = "indent"

-- vim.g.neovide_floating_blur_amount_x = 2.0
-- vim.g.neovide_floating_blur_amount_y = 2.0
-- vim.g.neovide_transparency = 0.9
-- vim.g.neovide_scroll_animation_length = 0.3
vim.g.neovide_hide_mouse_when_typing = true

vim.g.neovide_profiler = false
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_vfx_mode = "sonicboom"
