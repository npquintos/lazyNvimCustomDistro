-- lua/plugins/which-key.lua
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Your configuration choices go here
    -- Default settings work perfectly out-of-the-box
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
