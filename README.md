This is a very minimal neovim distribution based on lazy.nvim. Plugins are just what I normally use. It uses the
bamboo colorscheme which is very nice.
<leader> = " "
If you press the leader and pause, it will tell you the next possible keys and what they do. Key bindings are:
- <leader>O - that is capital "o", invokes Oil. <C-p> while in oil will show file preview as you navigate.
- s - activates flash.nvim and will do search. You type the first few letters of the string and it will show labels (highlighted with different background and font) that you could type and it will jump there. This is the only enabled keybinding.
- <leader>s - works like flash.nvim but would jump on buffers. It uses barbar.nvim plugin
- <leader>S - works like flash.nvim but typed letter corresponding to the buffer will delete it from memory
- <leader>c - will comment current line or lines that are selected. Will only do linewise commenting, as opposed to blockwise commenting.

I also remapped some regular nvim default keymappings. I use this functionality all the time and the default keybindings are so hard to reach.
- <C-arrow> - for pane resizing; mouse will work too
- "o" - this aliases '%', which will jump to the "other" parenthesis, brackets, etc. pair
- "T" - this aliases "zt", which places the current line to the top of the pane
- "E" - for "end", goes to end of line, aliases '$'
- "B" - for "beginning", goes to start of line, aliases '^'
- "<leader>C" - to "clear" the highlighting due to a regular search.
