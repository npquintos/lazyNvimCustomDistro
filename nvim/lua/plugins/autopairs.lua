return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
    config = function()
        require('nvim-autopairs').setup({
            -- Disable checking for a word character right after the cursor
            ignored_next_char = "" -- This removes the alpha-numeric word boundary restriction
        })
    end,
}
