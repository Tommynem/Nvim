-- akinsho/toggleterm.nvim
require("toggleterm").setup({
	size = 20,
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	persist_size = true,
	direction = "horizontal", -- can be 'vertical' or 'float'
	close_on_exit = true,
	shell = vim.o.shell,
})
