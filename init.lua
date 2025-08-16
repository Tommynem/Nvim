require("tomge")
vim.g.have_nerd_font = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.g.python3_host_prog = "/opt/homebrew/bin/python3.12"
vim.g.netrw_browsex_viewer = "open"
vim.opt.path:append(".,/usr/include,")

-- disable base file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local alpha = function()
	return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

if vim.g.neovide then
	vim.g.neovide_opacity = 0
	vim.g.transparency = 0.8
	vim.g.neovide_background_color = "#1b0f26"
end
