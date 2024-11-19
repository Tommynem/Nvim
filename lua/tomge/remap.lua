vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.hlsearch = true
vim.api.nvim_set_keymap("n", "<Leader>q", ":wqa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- FineCmdline keybinding
vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { silent = true })

-- Toggle Colorizer
vim.api.nvim_set_keymap(
	"n",
	"<leader>tc",
	"<cmd>ColorizerToggle<CR>",
	{ noremap = true, silent = true, desc = "Toggle Colorizer" }
)

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle Terminal" })
vim.keymap.set(
	"n",
	"<leader>tv",
	"<cmd>ToggleTerm size=80 direction=vertical<CR>",
	{ noremap = true, silent = true, desc = "Toggle Vertical Terminal" }
)
vim.keymap.set(
	"n",
	"<leader>tf",
	"<cmd>ToggleTerm direction=float<CR>",
	{ noremap = true, silent = true, desc = "Toggle Floating Terminal" }
)

-- Telescope
require("telescope").setup({})
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

vim.keymap.set("n", "/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>s/", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [/] in Open Files" })

local telescope = require("telescope.builtin")
-- Search for files in the vault
vim.keymap.set("n", "<leader>of", function()
	telescope.find_files({
		prompt_title = "Search Vault Files",
		cwd = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
	})
end, { desc = "Search Vault Files" })

-- Search for text using grep in the vault
vim.keymap.set("n", "<leader>og", function()
	telescope.live_grep({
		prompt_title = "Grep Vault",
		cwd = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
	})
end, { desc = "Grep Vault" })
-- Neovim config search shortcut
vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

-- Diagnostics mappings
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })

-- Custom Keymaps
vim.api.nvim_set_keymap(
	"n",
	"<leader>to",
	[[i<cr><Esc>]],
	{ noremap = true, silent = true, desc = "[T]omge: Newline at cursor" }
)
vim.api.nvim_set_keymap("n", "<leader>te", ":CsvViewToggle", { desc = "[T]omge toggle csv view" })
vim.api.nvim_set_keymap("n", "<leader>tr", ":%s/old/new/gc", { desc = "[T]omge: [R]eplace all occurrences" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>ts",
	":vsplit ",
	{ desc = "[T]omge: Vertical [S]plit", noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>tq", ":wqa<cr>", { desc = "[T]omge: Write and quit all buffers" })

-- Bufferline
vim.api.nvim_set_keymap(
	"n",
	"[b",
	":BufferLineCyclePrev<CR>",
	{ noremap = true, silent = true, desc = "Previous buffer" }
)
vim.api.nvim_set_keymap("n", "b]", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Next buffer" })

-- Bufferline specific jumps
vim.api.nvim_set_keymap(
	"n",
	"<leader>1",
	"<Cmd>BufferLineGoToBuffer 1<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 1" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>2",
	"<Cmd>BufferLineGoToBuffer 2<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 2" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>3",
	"<Cmd>BufferLineGoToBuffer 3<CR>",
	{ noremap = true, silent = true, desc = "Go to buffer 3" }
)

-- Buffer manipulation
vim.api.nvim_set_keymap("n", "<leader>n", ":bn<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.api.nvim_set_keymap("n", "<leader>p", ":bp<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })

-- Toggle buffers
vim.api.nvim_set_keymap(
	"n",
	"<Space><Space>",
	"<C-^>",
	{ noremap = true, silent = true, desc = "Toggle previous buffer" }
)
vim.api.nvim_set_keymap("n", "t", "<C-o>", { noremap = true, silent = true, desc = "Go back" })

-- Indentation in visual mode
vim.api.nvim_set_keymap("x", ",", "<gv", { noremap = true, silent = true, desc = "Indent left" })
vim.api.nvim_set_keymap("x", ".", ">gv", { noremap = true, silent = true, desc = "Indent right" })

-- Oil file explorer
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "Create a new note" })
