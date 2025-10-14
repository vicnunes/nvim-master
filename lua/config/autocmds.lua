-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable commandline until it is needed. This gives us a cleaner look and an extra line ;)
vim.opt.cmdheight = 0

-- Function to set split border colors
local function set_split_colors()
  vim.cmd([[
    highlight VertSplit guifg=#FF5733 guibg=#1e1e2e
    highlight WinSeparator guifg=#FF5733 guibg=#1e1e2e
  ]])
end

-- Apply colors now
set_split_colors()

-- Reapply after any colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_split_colors,
})
