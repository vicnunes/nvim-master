-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- Open .zaliases file
vim.api.nvim_set_keymap(
  "n",
  "<leader>A",
  ":e ~/.config/zsh/.zaliases<CR>",
  { desc = "Open .zaliases file", noremap = true, silent = true }
)

-- Open .zshrc file
vim.api.nvim_set_keymap(
  "n",
  "<leader>a",
  ":e ~/.config/zsh/.zshrc<CR>",
  { desc = "Open .zshrc file", noremap = true, silent = true }
)
