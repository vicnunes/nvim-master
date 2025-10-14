return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional
  keys = {
    -- Grep in current working directory (cwd), include hidden files
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep({
          cwd = vim.loop.cwd(), -- current working directory
          rg_opts = "--hidden --follow", -- include hidden files
        })
      end,
      desc = "Live grep (cwd, hidden)",
    },

    -- Grep in project root directory, include hidden files
    {
      "<leader>fG",
      function()
        require("fzf-lua").live_grep({
          cwd = require("lazyvim.util").root.get(), -- project root
          rg_opts = "--hidden --follow", -- include hidden files
        })
      end,
      desc = "Live grep (root, hidden)",
    },
  },
}
