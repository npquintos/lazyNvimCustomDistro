-- lua/config/bigfile.lua

local MAX_SIZE = 1024 * 1024 -- 1 MB

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function(args)
    local file = vim.api.nvim_buf_get_name(args.buf)

    if file == "" then
      return
    end

    local stat = vim.uv.fs_stat(file)

    if not stat or stat.size <= MAX_SIZE then
      return
    end

    vim.b[args.buf].bigfile = true

    vim.schedule(function()
      -- disable syntax
      vim.cmd("syntax off")

      -- disable rainbow delimiters
      pcall(function()
        vim.cmd("RainbowDelimitersDisable")
      end)

      -- disable swapfile
      vim.opt_local.swapfile = false

      -- no relative numbering
      vim.opt_local.relativenumber = false

      vim.notify("Big file mode enabled")
    end)
  end,
})

