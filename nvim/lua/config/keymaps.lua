-- lua/config/keymaps.lua

local map = vim.keymap.set

-- sdfa, dfsa, adfsf, {dsf, dsfds},  sadsf, sdasdf

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize windows
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Oil keymap
map("n", "<leader>O", "<Cmd>Oil .<CR>")

-- Better buffer navigation similar to leap.nvim
map("n", "<leader>s", "<Cmd>BufferPick<CR>", { desc = "leap to buffer"})
map("n", "<leader>S", "<Cmd>BufferPickDelete<CR>", { desc = "delete buffer"})

-- Better line navigation and display positioning
map("n", "o", "%")
map("n", "T", "zt")
map("n", "E", "$")
map("n", "B", "^")
map("n", "j", "gj")
map("n", "k", "gk")

-- Better parenthesis and quote handling
vim.keymap.set("n", "<M-.>", function()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local ch = line:sub(col + 1, col + 1)

  if ch:match("[{%[(<]") then
    vim.cmd("normal! xwP")
  elseif ch:match("[}%])>]") then
    vim.cmd("normal! xep")
  elseif ch == '"' or ch == "'" then
    vim.cmd("normal! xep")
  end
end)

vim.keymap.set("i", "<M-.>", function()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local ch = line:sub(col + 1, col + 1)

  if ch:match("[{%[(<]") then
    vim.cmd("normal! xwPa")
  elseif ch:match("[}%])>]") then
    vim.cmd("normal! xepa")
  elseif ch == '"' or ch == "'" then
    vim.cmd("normal! xepa")
  end
end)

vim.keymap.set("n", "<M-,>", function()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local ch = line:sub(col + 1, col + 1)

  if ch:match("[{%[(<]") then -- works
    vim.cmd("normal! xBP")
  elseif ch:match("[}%])>]") then
    vim.cmd("normal! xBBep") -- works
  elseif ch == '"' or ch == "'" then
    vim.cmd("normal! xBP")
  end
end)

vim.keymap.set("i", "<M-,>", function()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local ch = line:sub(col + 1, col + 1)

  if ch:match("[{%[(<]") then
    vim.cmd("normal! xBPa")  
  elseif ch:match("[}%])>]") then
    vim.cmd("normal! xBBepa")
  elseif ch == '"' or ch == "'" then
    vim.cmd("normal! xBPa")
  end
end)

-- Clear search highlight
map("n", "<leader><leader>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Yank to system clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

-- Quickfix list
map("n", "]q", "<cmd>cnext<CR>", { desc = "Next quickfix" })
map("n", "[q", "<cmd>cprev<CR>", { desc = "Previous quickfix" })

-- Set terminal to normal mode
map("t", "<C-[>", "<C-\\><C-n>", { desc = "Goto normal in terminal mode"})
