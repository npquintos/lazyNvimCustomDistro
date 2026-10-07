-- assign keymaps to easily access favourite folders
-- via Oil. You have to modify these to match your
-- favourite folders and then, comment out the next
-- line below

-- return {}

vim.keymap.set("n", "<leader>op", function()
  require("oil").open("y:\\scripts2")
end, { desc = "Oil: python scripts folder" })

vim.keymap.set("n", "<leader>ot", function()
  require("oil").open("y:\\toolbox")
end, { desc = "Oil: toolbox folder" })

vim.keymap.set("n", "<leader>or", function()
  require("oil").open("y:\\results")
end, { desc = "Oil: results folder" })

vim.keymap.set("n", "<leader>od", function()
  require("oil").open("y:\\data")
end, { desc = "Oil: data folder" })

vim.keymap.set("n", "<leader>on", function()
  require("oil").open("C:\\Users\\u8m4\\AppData\\Local\\nvim")
end, { desc = "Oil: neovim config folder" })
