return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
      modes = {
        char = { 
            keys = {"f", "t", ";", ","},
        },
      },
  },
  keys = {
    { "s", 
        mode = { "n", "x", "o" }, 
        function() 
            require("flash").jump({
              search = { mode = "search", max_length = false },
              label = { after = true }
            }) 
        end, 
        desc = "Flash" 
    },
    { "T", "zt", mode = "n", desc = "Position current line to top"},
    { "S", mode = {"n", "o", "x"}, false },
    { "R", mode = {"n", "o", "x"}, false },
    { "<c-s>", mode = {"c"}, false },
  },
}
