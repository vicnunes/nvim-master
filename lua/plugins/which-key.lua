-- Disables the +git block from which-key
return {
  "folke/which-key.nvim",
  optional = true, -- safe if you ever remove which-key
  opts = {
    spec = {
      { "<leader>g", hidden = true }, -- hide "+git"
      { "<leader>gh", hidden = true }, -- (optional) also hide the "hunks" subgroup
    },
  },
}
