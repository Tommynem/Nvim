-- default_keymaps.lua
-- Redfine all default keymaps with descriptions so they show up in wf

local function nm(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { desc = desc })
end

--------------------------------------------------------------------------------
-- CURSOR MOTIONS
--------------------------------------------------------------------------------
nm("h", "h", "Move cursor left")
nm("j", "j", "Move cursor down")
nm("k", "k", "Move cursor up")
nm("l", "l", "Move cursor right")
nm("w", "w", "Next word start")
nm("W", "W", "Next WORD start (ignores punctuation)")
nm("b", "b", "Previous word start")
nm("B", "B", "Previous WORD start")
nm("e", "e", "Next word end")
nm("E", "E", "Next WORD end")
nm("ge", "ge", "Previous word end")
nm("gE", "gE", "Previous WORD end")
nm("0", "0", "Go to first column of line")
nm("^", "^", "Go to first non-blank in line")
nm("$", "$", "Go to end of line")
nm("g_", "g_", "Go to last non-blank in line")
nm("gg", "gg", "Go to first line of file")
nm("G", "G", "Go to last line of file")
nm("}", "}", "Forward paragraph")
nm("{", "{", "Backward paragraph")
nm("(", "(", "Backward sentence")
nm(")", ")", "Forward sentence")
nm("H", "H", "Jump to top of screen")
nm("M", "M", "Jump to middle of screen")
nm("L", "L", "Jump to bottom of screen")
nm("gt", "gt", "Go to next tab")
nm("gT", "gT", "Go to previous tab")

--------------------------------------------------------------------------------
-- SCROLLING
--------------------------------------------------------------------------------
nm("<C-e>", "<C-e>", "Scroll window down one line")
nm("<C-y>", "<C-y>", "Scroll window up one line")
nm("<C-d>", "<C-d>", "Scroll window down half-page")
nm("<C-u>", "<C-u>", "Scroll window up half-page")
nm("<C-f>", "<C-f>", "Page forward")
nm("<C-b>", "<C-b>", "Page backward")
nm("zz", "zz", "Center screen on cursor")
nm("zt", "zt", "Scroll so cursor is at top")
nm("zb", "zb", "Scroll so cursor is at bottom")

--------------------------------------------------------------------------------
-- EDITING - INSERT
--------------------------------------------------------------------------------
nm("i", "i", "Insert before cursor")
nm("I", "I", "Insert at start of line")
nm("a", "a", "Insert after cursor")
nm("A", "A", "Insert at end of line")
nm("o", "o", "Open new line below")
nm("O", "O", "Open new line above")

--------------------------------------------------------------------------------
-- EDITING - DELETE / CHANGE / YANK
--------------------------------------------------------------------------------
nm("x", "x", "Delete character under cursor")
nm("X", "X", "Delete character before cursor")
nm("dd", "dd", "Delete line")
nm("d", "d", "Delete operator (use with motion)")
nm("D", "D", "Delete until end of line")
nm("cc", "cc", "Change line")
nm("c", "c", "Change operator (use with motion)")
nm("C", "C", "Change until end of line")
nm("yy", "yy", "Yank line")
nm("y", "y", "Yank operator (use with motion)")
nm("Y", "Y", "Yank until end of line")
nm("p", "p", "Paste after cursor")
nm("P", "P", "Paste before cursor")

--------------------------------------------------------------------------------
-- EDITING - OTHER
--------------------------------------------------------------------------------
nm("r", "r", "Replace single character")
nm("J", "J", "Join next line")
nm("~", "~", "Swap case of character(s)")
nm("u", "u", "Undo")
nm("<C-r>", "<C-r>", "Redo")
nm(".", ".", "Repeat last change")
nm("&", "&", "Repeat last :s")

--------------------------------------------------------------------------------
-- MARKS AND JUMPS
--------------------------------------------------------------------------------
nm("m", "m", "Set mark (use with letter)")
nm("'", "'", "Jump to start of line at mark")
nm("`", "`", "Jump to exact position of mark")
nm("<C-o>", "<C-o>", "Go to older cursor position")
nm("<C-i>", "<C-i>", "Go to newer cursor position")

--------------------------------------------------------------------------------
-- SEARCH
--------------------------------------------------------------------------------
nm("/", "/", "Search forward")
nm("?", "?", "Search backward")
nm("n", "n", "Repeat search forward")
nm("N", "N", "Repeat search backward")
nm("*", "*", "Search word under cursor forward")
nm("#", "#", "Search word under cursor backward")
nm("g*", "g*", "Search partial word forward")
nm("g#", "g#", "Search partial word backward")

--------------------------------------------------------------------------------
-- REPLACE / EX COMMANDS
--------------------------------------------------------------------------------
nm(":", ":", "Enter Command-line mode")
nm(";", ";", "Repeat latest f, F, t, or T")
nm("&", "&", "Repeat last substitute")
-- The default mapping for & is “repeat last :s” but many users prefer using ';'
-- for repeating f/t. This is included just as an example.

--------------------------------------------------------------------------------
-- WINDOW MANAGEMENT
--------------------------------------------------------------------------------
nm("<C-w>s", "<C-w>s", "Split window horizontally")
nm("<C-w>v", "<C-w>v", "Split window vertically")
nm("<C-w>c", "<C-w>c", "Close window")
nm("<C-w>o", "<C-w>o", "Close other windows")
nm("<C-w>w", "<C-w>w", "Go to next window")
nm("<C-w>W", "<C-w>W", "Go to previous window")
nm("<C-w>h", "<C-w>h", "Go to window left")
nm("<C-w>j", "<C-w>j", "Go to window below")
nm("<C-w>k", "<C-w>k", "Go to window above")
nm("<C-w>l", "<C-w>l", "Go to window right")
nm("<C-w>H", "<C-w>H", "Move window to far left")
nm("<C-w>J", "<C-w>J", "Move window to very bottom")
nm("<C-w>K", "<C-w>K", "Move window to very top")
nm("<C-w>L", "<C-w>L", "Move window to far right")
nm("<C-w>+", "<C-w>+", "Increase window height")
nm("<C-w>-", "<C-w>-", "Decrease window height")
nm("<C-w>>", "<C-w>>", "Increase window width")
nm("<C-w><", "<C-w><", "Decrease window width")
nm("<C-w>=", "<C-w>=", "Equalize all windows")

--------------------------------------------------------------------------------
-- BUFFER / FILE
--------------------------------------------------------------------------------
nm("<leader>w", ":w<CR>", "Write (save) file")
nm("<leader>q", ":q<CR>", "Quit")
nm("ZZ", "ZZ", "Save and quit")
nm("ZQ", "ZQ", "Quit without saving")

--------------------------------------------------------------------------------
-- MISC
--------------------------------------------------------------------------------
nm("U", "U", "Restore last changed line")
nm("<C-l>", "<C-l>", "Redraw screen / clear search highlight")

--------------------------------------------------------------------------------
-- Feel free to add or remove any mappings according to what you consider "default".
-- This should be placed in its own Lua file (e.g., lua/default_keymaps.lua)
-- and required from your init.lua (Neovim) or similar configuration.
--------------------------------------------------------------------------------
