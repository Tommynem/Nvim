local wk = require("which-key")

wk.setup({
	-- Customize your which-key settings if needed
})

-- Register keybindings for categories
wk.register({
	-- Telescope keymaps under [S]earch
	["<leader>s"] = {
		name = "[S]earch",
		h = { "<cmd>Telescope help_tags<cr>", "[H]elp Tags" },
		k = { "<cmd>Telescope keymaps<cr>", "[K]eymaps" },
		f = { "<cmd>Telescope find_files<cr>", "[F]iles" },
		s = { "<cmd>Telescope builtin<cr>", "[S]elect Telescope" },
		w = { "<cmd>Telescope grep_string<cr>", "[W]ord" },
		g = { "<cmd>Telescope live_grep<cr>", "[G]rep" },
		d = { "<cmd>Telescope diagnostics<cr>", "[D]iagnostics" },
		r = { "<cmd>Telescope resume<cr>", "[R]esume" },
		["."] = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
	},

	-- Custom keymaps under [T]omge
	["<leader>t"] = {
		name = "Custom shortcuts ([T]omge)",
		o = { "i<cr><Esc>", "Newline at cursor" },
		r = { ":%s/old/new/gc", "[R]eplace all occurrences" },
		s = { ":vsplit ", "Vertical [S]plit" },
		q = { ":wqa<cr>", "Write and quit all buffers" },
	},

	-- Bufferline keymaps
	["<leader>b"] = {
		name = "[B]uffer",
		n = { ":bn<CR>", "Next buffer" },
		p = { ":bp<CR>", "Previous buffer" },
		x = { ":bd<CR>", "Close buffer" },
		["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "Go to buffer 1" },
		-- Continue for other buffer numbers...
	},

	-- Neotree under [N]
	["<leader>n"] = { name = "[N]eotree" },

	-- Diagnostics keymaps
	["[d"] = { vim.diagnostic.goto_prev, "Previous [D]iagnostic" },
	["]d"] = { vim.diagnostic.goto_next, "Next [D]iagnostic" },
	["<leader>e"] = { vim.diagnostic.open_float, "[E]rror messages" },
	["<leader>q"] = { vim.diagnostic.setloclist, "[Q]uickfix list" },
})

-- Additional custom keybindings
wk.register({
	["/"] = { "Fuzzily search in current buffer" },
	-- Further keymap overrides...
}, { prefix = "<leader>" })
