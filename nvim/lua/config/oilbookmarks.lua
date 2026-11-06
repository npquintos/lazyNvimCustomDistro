-- assign keymaps to easily access favourite folders
-- via Oil. You have to modify these to match your
-- favourite folders and then, "comment "out the 'return'
-- statement below so that the keymaps are activated.

-- return {}

-- To open Oil in this directory, keymap is
-- <Leader>o, followed by the letter you have
-- defined here. For example, to open Oil in
-- "/hd2/home/legend/work/scripts", keybind is
-- <Leader>op
-- Customize this according to your own needs.
return {
    s = "y:\\scripts2",
    t = "y:\\toolbox",
    d = "y:\\data",
    r = "y:\\results",
    n = "C:\\Users\\u8m4\\AppData\\Local\\nvim",
}
