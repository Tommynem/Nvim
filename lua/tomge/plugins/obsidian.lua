-- obsidian.nvim config
require("obsidian").setup({

	workspaces = {
		{
			name = "everything",
			path = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
		},
	},
	opts = {

		completion = {
			nvim_cmp = true,
		},
		picker = {
			name = "telescope.nvim",
		},
		ui = {
			enable = true,
			checkboxes = {
				[" "] = { char = "☐", hl_group = "ObsidianTodo" },
				["x"] = { char = "✔", hl_group = "ObsidianDone" },
			},
		},
		attachments = {
			img_folder = "pasted/images",
		},
	},
})
