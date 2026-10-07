This is a very minimal neovim distribution based on lazy.nvim. Plugins are just what I normally use. It uses the
bamboo colorscheme which is very nice. Instead of flash.nvim, I used leap.nvim because the former is very, very slow on very large files. You need to type exactly 2 letters before the label would show up.


leader is " "


If you press the leader and pause, it will tell you the next possible keys and what they do. Key bindings are:
- \<leader\>O - that is capital "o", invokes Oil. \<C-p\> while in oil will show file preview as you navigate.
- s - activates leap.nvim and will do search (**s** for search). You type the first two (exactly 2, not more, not less) letters of the string and it will show labels (highlighted with different background and font) that you could type and it will jump there. In other words, the first 2 letters would be the 2 consecutive letters of what you are trying to match, and the 3rd letter will be the label of where you want to jump to. If the label is blank, press <Space> once, or more, until the label shows up. If you pressed <Space> too much making the label disappear, press Backspace until it shows up again.
- \<leader\>s - works like leap.nvim search but would search on buffers that are displayed like tabs at the top. You press the letter label and that buffer replaces the buffer where the focus is. It uses barbar.nvim plugin
- \<leader\>S - works like leap.nvim search but typed letter corresponding to the buffer that will get deleted from memory. WARNING! You have to press \<ESC\> when done or it will continue deleting buffers from memory.
- \<leader\>/ - will comment current line or lines that are selected. Will only do linewise commenting, as opposed to blockwise commenting. Works for visually selected lines too.
- \<leader\>\<leader\>" - to "clear" the highlighting due to a regular search.
- \<leader\>. - Normal mode, will move char under cursor to move to end of next word. Useful for moving )}]" to the right of next word. Take note that '.' is below '>' in the keyboard, and is like 'to the right'
- \<leader\>, - Normal mode, will move char under cursor to move to beginning of previous word. Useful for moving ({[" to the beginning of previous word. Take note that ',' is below '<' in the keyboard, and is like 'to the left'
- \<Alt\>. - Insert mode, will move char under cursor to move to end of next word. Useful for moving )}]" to the right of next word. Take note that '.' is below '>' in the keyboard, and is like 'to the right'
- \<Alt\>, - Insert mode, will move char under cursor to move to beginning of previous word. Useful for moving ({[" to the beginning of previous word. Take note that ',' is below '<' in the keyboard, and is like 'to the left'

I also remapped some regular nvim default keymappings. I use this functionality all the time and the default keybindings are so hard to reach.
- \<C-arrow\> - for pane resizing; mouse will work too
- "o" - this aliases '%', which will jump to the other ('o' for 'other') parenthesis, brackets, etc. pair
- "T" - this aliases "zt", which places the current line to the top ('T' for 'top') of the pane
- "E" - for "end", goes to end ('E' for 'end', '$' is harder to type) of line, aliases '$'
- "B" - for "beginning", goes to beginning ('B' for 'begin', '^' is harder to type) of line, aliases '^'

I used leap.nvim instead of flash.nvim because flash.nvim is very slow for very large files. I used Oil for file explorer because it is very vim-like. You change the file name and it gets renamed; you copy and paste via Y then p, and it will copy the file (but you have to rename the copy whose name remained unchanged after the paste). To commit these changes, you type ":w"

One common action is to open the file underneath the cursor via 'gf'. You specify the folders for the search path via config/options.lua. You modify the entry for 'vim.opt.path'.

Folder 'bookmarks' for folders that are often visited via oil shortcuts defined in config/oilbookmarks.lua. Keybind start with <leader>o (as in "open"), then followed by another character of your liking (e.g. 's' for 'src', 'i' for 'include', 'b' for 'build'). Replace also the defined path inside open()
