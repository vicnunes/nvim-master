-- 2025-08-22 tweak by vic nunes
-- Disables auto-completions by default
-- Use <leader>uv to toggle on/off

return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- add a global toggle flag
      vim.g.blink_auto_enabled = false

      opts.enabled = function()
        return vim.g.blink_auto_enabled
      end

      return opts
    end,
    keys = {
      {
        "<leader>uv",
        function()
          vim.g.blink_auto_enabled = not vim.g.blink_auto_enabled

          local msg = vim.g.blink_auto_enabled and "Blink auto-completion enabled" or "Blink auto-completion disabled"
          vim.notify(msg, vim.log.levels.INFO)
        end,
        desc = "Toggle Blink auto-completion",
      },
    },
  },
}
