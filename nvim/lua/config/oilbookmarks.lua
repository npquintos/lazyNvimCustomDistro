-- assign keymaps to easily access favourite folders
-- via Oil. You have to modify these to match your
-- favourite folders and then, comment out the next
-- line below

return {}

vim.keymap.set("n", "<leader>op", function()
  require("oil").open("d:\\osi\\osi_cust\\scripts")
end, { desc = "Oil: python scripts folder" })

vim.keymap.set("n", "<leader>oo", function()
  require("oil").open("e:\\osi_gis\\oms_support")
end, { desc = "Oil: OMS results folder" })

vim.keymap.set("n", "<leader>od", function()
  require("oil").open("e:\\osi_gis\\script_support")
end, { desc = "Oil: data folder" })

vim.keymap.set("n", "<leader>ot", function()
  require("oil").open("e:\\osi_gis\\script_support\\toolbox")
end, { desc = "Oil: toolbox folder" })

vim.keymap.set("n", "<leader>os", function()
  require("oil").open("e:\\osi_gis\\SCADA_Linking_Results")
end, { desc = "Oil: ScadaXref result folder" })
