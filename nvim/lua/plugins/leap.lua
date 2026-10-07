return {
  "https://codeberg.org/andyg/leap.nvim.git",
  name = "leap",
  enabled = true,
  keys = {
    { "s", mode = { "n", "x", "o" }, desc = "Leap Forward/Backward" },
  },
  config = function()
    local leap = require("leap")

    -- 1. Configure Leap options and remove 'q' and 'z' from the labels list
    leap.opts.max_phase_one_targets = 0 
    leap.opts.highlight_unlabeled_phase_one_targets = false
    leap.opts.labels = {
      'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';',
      'e', 'r', 't', 'y', 'u', 'i', 'o', 'p',
      'w', 'x', 'c', 'v', 'b', 'n', 'm'
    }

    -- 2. Explicitly map 's' to search exclusively within the current visible window
    vim.keymap.set({ "n", "x", "o" }, "s", function()
      leap.leap({
        target_windows = { vim.api.nvim_get_current_win() }
      })
    end, { desc = "Leap Jump" })
  end,
}
