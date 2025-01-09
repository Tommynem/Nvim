-- which-key.lua
local wk = require("which-key")
wk.setup({})

-- If these calls are needed for some of the mappings/functions:
local telescope = require("telescope.builtin")
local dap = require("dap")

-- Consolidated which-key registration
wk.register({

	-- -------------------------------------------------------------------------
	-- 1. Single-key or bracket-based mappings (no <leader> prefix)
	-- -------------------------------------------------------------------------
	["<Esc>"] = {
		"<cmd>nohlsearch<CR>",
		"Clear search highlights",
	},
	["yp"] = {
		"yyp",
		"Duplicate line",
	},
	[":"] = {
		"<cmd>FineCmdline<CR>",
		"FineCmdline prompt",
	},
	["<C-e>"] = {
		"<C-w>",
		"Window command prefix",
	},

	-- Bufferline bracket mappings
	["[b"] = {
		":BufferLineCyclePrev<CR>",
		"BufferLine: Previous buffer",
	},
	["b]"] = {
		":BufferLineCycleNext<CR>",
		"BufferLine: Next buffer",
	},

	-- Diagnostic bracket mappings
	["[d"] = {
		vim.diagnostic.goto_prev,
		"Go to previous diagnostic",
	},
	["]d"] = {
		vim.diagnostic.goto_next,
		"Go to next diagnostic",
	},

	-- Oil file explorer
	["-"] = {
		"<cmd>Oil<CR>",
		"Open parent directory (Oil)",
	},

	-- -------------------------------------------------------------------------
	-- 2. <leader> prefix mappings
	-- -------------------------------------------------------------------------
	["<leader>"] = {
		-- Some top-level <leader> mappings
		q = { ":wqa<CR>", "Write & quit all" },

		-- Buffer manipulation
		n = { ":bn<CR>", "Next buffer" },
		p = { ":bp<CR>", "Previous buffer" },
		x = { ":bd<CR>", "Close buffer" },

		-- Quick toggle to previous buffer
		["<space>"] = { "<C-^>", "Toggle previous buffer" },

		-- BufferLine goto
		["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "Go to buffer 1" },
		["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "Go to buffer 2" },
		["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "Go to buffer 3" },
		-- Add more as needed…

		-- -----------------------------------------------------------------------
		-- [S]earch group (Telescope)
		-- -----------------------------------------------------------------------
		s = {
			name = "[S]earch",
			h = { telescope.help_tags, "[H]elp Tags" },
			k = { telescope.keymaps, "[K]eymaps" },
			f = { telescope.find_files, "[F]iles" },
			s = { telescope.builtin, "[S]elect Telescope" },
			w = { telescope.grep_string, "[W]ord" },
			g = { telescope.live_grep, "[G]rep" },
			d = { telescope.diagnostics, "[D]iagnostics" },
			r = { telescope.resume, "[R]esume" },
			["."] = { telescope.oldfiles, "Recent Files" },

			-- Live grep open buffers
			["/"] = {
				function()
					telescope.live_grep({
						grep_open_files = true,
						prompt_title = "Live Grep in Open Files",
					})
				end,
				"Search in open files",
			},

			-- Search config
			n = {
				function()
					telescope.find_files({
						cwd = vim.fn.stdpath("config"),
					})
				end,
				"[N]eovim config",
			},
		},

		-- -----------------------------------------------------------------------
		-- [O]bsidian / Vault
		-- -----------------------------------------------------------------------
		o = {
			name = "[O]bsidian / Vault",
			f = {
				function()
					telescope.find_files({
						prompt_title = "Search Vault Files",
						cwd = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
					})
				end,
				"Search Vault Files",
			},
			g = {
				function()
					telescope.live_grep({
						prompt_title = "Grep Vault",
						cwd = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
					})
				end,
				"Grep Vault",
			},
			n = { ":ObsidianNew<CR>", "Create a new note" },
			o = { ":ObsidianOpen<CR>", "Open note in Obsidian" },
			-- Adds a dash `- [ ]` at cursor
			["-"] = { "i- [ ]<ESC>A", "Insert dash [ ]" },
		},

		-- -----------------------------------------------------------------------
		-- [T]omge shortcuts
		-- -----------------------------------------------------------------------
		t = {
			name = "Custom shortcuts ([T]omge)",

			-- Toggle Colorizer
			c = { "<cmd>ColorizerToggle<CR>", "Toggle Colorizer" },

			-- ToggleTerm
			t = { "<cmd>ToggleTerm<CR>", "Toggle Terminal" },
			v = { "<cmd>ToggleTerm size=80 direction=vertical<CR>", "Toggle Vertical Terminal" },
			f = { "<cmd>ToggleTerm direction=float<CR>", "Toggle Floating Terminal" },
			g = { "<cmd>ToggleTerm direction=float<CR>lg<CR>", "LazyGit (float)" },

			-- CSV
			e = { ":CsvViewToggle<CR>", "Toggle CSV view" },

			-- Misc
			o = { "i<cr><Esc>", "Newline at cursor" },
			r = { ":%s/old/new/gc", "[R]eplace all occurrences" },
			s = { ":vsplit ", "Vertical [S]plit" },
			q = { ":wqa<cr>", "Write & quit all buffers" },
		},

		-- -----------------------------------------------------------------------
		-- DAP (debugging)
		-- -----------------------------------------------------------------------
		d = {
			name = "[D]ebug",
			b = { dap.toggle_breakpoint, "Toggle [B]reakpoint" },
			c = { dap.continue, "[C]ontinue" },
			l = {
				function()
					dap.run(dap.configurations.python[1])
				end,
				"[L]aunch main.py",
			},
		},

		-- Diagnostics
		e = {
			vim.diagnostic.open_float,
			"Show diagnostic [E]rror messages",
		},
	},
}, { mode = "n", prefix = "" })

-- ---------------------------------------------------------------------------
-- 3. Visual-mode mappings (indent left/right)
-- ---------------------------------------------------------------------------
wk.register({
	[","] = { "<gv", "Indent left" },
	["."] = { ">gv", "Indent right" },
}, { mode = "x", prefix = "" })
