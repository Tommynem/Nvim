-- lua/tomge/plugins/snacks.lua
local M = {}

function M.setup()
	local snacks = require("snacks")

	snacks.setup({
		git = { enabled = true },
		gitbrowse = { enabled = true },
		lazygit = { enabled = true },
		input = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 6000,
		},
		quickfile = { enabled = true },
		rename = { enabled = true },
	})
end

return M
