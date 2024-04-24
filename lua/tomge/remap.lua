-- Preconfigured by kickstart

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- Custom Keymaps

-- <leader>[t]omge
vim.api.nvim_set_keymap(
	"n",
	"<leader>to",
	[[i<cr><Esc>]],
	{ noremap = true, silent = true, desc = "Newline at cursor position without entering insert mode" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>tr",
	":%s/old/new/gc<Left><Left><Left><Left><Left><Left><Left>",
	{ desc = "[r]eplace all occurences of 'a' with 'b' in current buffer, confirm each time" }
)
vim.api.nvim_set_keymap("n", "<leader>ts", ":vsplit ", { desc = "vertical [s]plit", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tq", ":wqa<cr>", { desc = "Writes and quits all open buffers" })

-- Other custom keymaps
-- vim.api.nvim_set_keymap("i", "<Right>", "<C-y>", { desc = "Remaps autocomplete to right arrow key" })

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })

-- Neotree
vim.keymap.set("n", "<leader>nt", ":Neotree toggle<cr>", { desc = "Toggle Neotree" })

vim.api.nvim_set_keymap("n", "<leader>nf", ":Neotree<CR>", { desc = "Focus Neotree", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>nb", ":wincmd p<CR>", { desc = "Focus Buffer", noremap = true, silent = true })
