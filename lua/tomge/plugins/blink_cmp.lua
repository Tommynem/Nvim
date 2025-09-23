-- saghen/blink.cmp - Modern completion engine
require("blink.cmp").setup({
	-- 'default' for mappings similar to built-in completion
	-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
	-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
	-- See the "default configuration" section below for full documentation on how to define
	-- your own keymap.
	keymap = { preset = "default" },

	appearance = {
		-- Sets the fallback highlight groups to nvim-cmp's highlight groups
		-- Useful for when your theme doesn't support blink.cmp
		-- Will be removed in a future release
		use_nvim_cmp_as_default = true,
		-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
		-- Adjusts spacing and ensures icons are aligned
		nerd_font_variant = "mono",
	},

	-- Default list of enabled providers defined so that you can extend it
	-- elsewhere in your config, without redefining it, due to `opts_extend`
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		-- Enhanced sources for markdown files (including Obsidian)
		markdown = { "lsp", "path", "snippets", "buffer" },
		-- Optionally disable cmdline completions
		-- cmdline = {},
	},

	-- Experimental signature help support
	signature = { enabled = true },

	completion = {
		accept = {
			-- Experimental auto-brackets support
			auto_brackets = {
				enabled = true,
			},
		},
		menu = {
			draw = {
				treesitter = { "lsp" },
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		ghost_text = {
			enabled = true,
		},
	},

	-- Experimental fuzzy searching
	fuzzy = {
		-- When enabled, allows for a number of typos relative to the length of the query
		-- Disabling this matches the behavior of fzf
		use_typo_resistance = true,
		-- Updated API: use frecency.enabled instead of use_frecency
		frecency = {
			enabled = true,
		},
		-- Proximity bonus boosts the score of items with a value in the buffer
		use_proximity = true,
		max_items = 200,
		-- Controls which sorts to use and in which order, these three are currently the only allowed options
		sorts = { "label", "kind", "score" },

		prebuilt_binaries = {
			-- Whether or not to automatically download a prebuilt binary from github. If this is set to `false`
			-- you will need to manually build the fuzzy binary dependencies by running `cargo build --release`
			download = true,
			-- When downloading a prebuilt binary force the downloader to resolve this version. If this is uset
			-- then the downloader will attempt to infer the version from the checked out git tag (if any).
			force_version = nil,
		},
	},
})