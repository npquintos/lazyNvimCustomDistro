-- assign keymaps to easily access favourite folders
-- via Oil. You have to modify these to match your
-- favourite folders and then, comment out the 'return'
-- statement below so that the keymaps are activated.

return {}

vim.keymap.set("n", "<leader>os", function()
  require("oil").open("./src")
end, { desc = "Oil: source folder" })

vim.keymap.set("n", "<leader>oi", function()
  require("oil").open("./include")
end, { desc = "Oil: include folder" })

vim.keymap.set("n", "<leader>ob", function()
  require("oil").open("../build")
end, { desc = "Oil: build folder" })

