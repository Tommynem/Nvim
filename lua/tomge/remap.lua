-- Custom or unsorted

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.hlsearch = true
vim.api.nvim_set_keymap("n", "<Leader>q", ":wqa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n", "yp", "yyp", { desc = "Duplicate line" })
-- [b]ack in jump list
vim.keymap.set("n", "<C-b>", "<C-o>", { noremap = true, silent = true, desc = "Jump back in jump list" })
-- [f]orward in jump list
vim.keymap.set("n", "<C-f>", "<C-i>", { noremap = true, silent = true, desc = "Jump forward in jump list" })
-- increment next number
vim.keymap.set("n", "<C-i>", "<C-a>", { noremap = true, silent = true, desc = "Increment number under the cursor" })

vim.keymap.set(
	"n",
	"<C-a>",
	":keepjumps normal! ggVG<CR>",
	{ noremap = true, silent = true, desc = "Select entire buffer without affecting jump list" }
)

pcall(vim.keymap.del, "n", "<C-o>")
pcall(vim.keymap.del, "i", "<C-o>")

vim.keymap.set("n", "<C-o>", "o<Esc>", { noremap = true, silent = true, desc = "Insert a new line after" })
vim.keymap.set(
	"i",
	"<C-o>",
	"<Esc>o",
	{ noremap = true, silent = true, desc = "Insert a new line after (insert mode)" }
)

vim.keymap.set("n", "<C-e>", "<C-w>", { noremap = true, silent = true })

-- FineCmdline keybinding
vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { silent = true })

-- Toggle Colorizer
vim.api.nvim_set_keymap(
	"n",
	"<leader>tc",
	"<cmd>ColorizerToggle<CR>",
	{ noremap = true, silent = true, desc = "Toggle Colorizer" }
)

-- Telescope
require("telescope").setup({})
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>st", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
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
vim.api.nvim_set_keymap("n", "<leader>te", ":CsvViewToggle", { desc = "[T]omge toggle csv view" })

-- Custom replace ui
vim.keymap.set("n", "<leader>tr", function()
	local snacks = require("snacks")

	-- 1. Prompt for "Search text"
	snacks.input({
		prompt = "Search text: ",
		icon = " ",
	}, function(old)
		if not old or old == "" then
			-- User canceled or empty input
			return
		end

		-- 2. Prompt for "Replace text"
		snacks.input({
			prompt = "Replace text: ",
			icon = " ",
		}, function(new)
			if new == nil then
				-- Canceled
				return
			end

			-- 3. Execute the :%s command
			-- g = global
			-- c = confirm on each occurrence
			--
			-- NOTE: This is a naive approach that doesn't escape
			-- special regex characters. If 'old' or 'new' contain
			-- '/', it may break. For a robust solution, consider
			-- escaping or using a literal search mode.
			local cmd = string.format("%%s/%s/%s/gc", old, new)
			vim.cmd(cmd)
		end)
	end)
end, { desc = "Custom Search & Replace with snacks.input" })

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
-- vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })

-- Toggle buffers
vim.api.nvim_set_keymap(
	"n",
	"<Space><Space>",
	"<C-^>",
	{ noremap = true, silent = true, desc = "Toggle previous buffer" }
)

-- Indentation in visual mode
vim.api.nvim_set_keymap("x", ",", "<gv", { noremap = true, silent = true, desc = "Indent left" })
vim.api.nvim_set_keymap("x", ".", ">gv", { noremap = true, silent = true, desc = "Indent right" })

-- Oil file explorer
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Obsidian
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>", { desc = "Create a new note" })
vim.keymap.set("n", "<leader>oo", ":ObsidianOpen<CR>", { desc = "Opens the current note in obsidian" })
vim.keymap.set("n", "<leader>-", "i- [ ]<ESC>A", { desc = "Opens the current note in obsidian" })

-- debugging
local dap = require("dap")
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "[D]AP: Toggle [B]reakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[D]AP: [C]ontinue" })
vim.keymap.set("n", "<leader>dl", function()
	dap.run(dap.configurations.python[1])
end, { desc = "[D]AP: [L]aunch main.py" })

-- snacks keymaps
local ok, snacks = pcall(require, "snacks")
if not ok then
	return
end

local map = vim.keymap.set

-- Git Browse: open the current file/branch in your web browser
map("n", "<leader>gB", function()
	snacks.gitbrowse()
end, { desc = "Git Browse (current file/branch)" })

map("n", "<leader>lg", function()
	snacks.lazygit()
end, { desc = "Open Lazygit" })
-- Git blame the current line
map("n", "<leader>gb", function()
	snacks.git.blame_line()
end, { desc = "Git Blame line" })

-- Dismiss all notifications
map("n", "<leader>td", function()
	snacks.notifier.hide()
end, { desc = "Dismiss All Notifications" })

-- Rename Current File (with LSP support)
map("n", "<leader>fr", function()
	snacks.rename.rename_file()
end, { desc = "Rename Current File (snacks.rename)" })

local has_mini_bufremove, mini_bufremove = pcall(require, "mini.bufremove")
local has_mini_map, mini_map = pcall(require, "mini.map")

-- mini.nvim
if has_mini_bufremove then
	map("n", "<leader>x", function()
		mini_bufremove.delete(0, false) -- current buffer, force=false
	end, { desc = "[B]uffer [D]elete (mini.bufremove)" })
end

if has_mini_map then
	-- Toggle the code minimap
	map("n", "<leader>fm", function()
		if mini_map.auto_enabled then
			mini_map.close()
			mini_map.auto_enabled = false
		else
			mini_map.open()
			mini_map.auto_enabled = true
		end
	end, { desc = "Toggle code minimap (mini.map)" })
end

-- whichkey style popup
local wf = require("wf")
local which_key = require("wf.builtin.which_key")
-- Which Key
--
local function setup_prefix_picker(prefix, desc)
	-- Define the keymap for the prefix
	vim.keymap.set(
		"n",
		prefix,
		which_key({
			text_insert_in_advance = prefix,
		}),
		{
			noremap = true,
			silent = true,
			desc = desc or string.format("Show keymaps starting with '%s'", prefix),
		}
	)
end

setup_prefix_picker("<leader>", "Comands staring with <leader>")
setup_prefix_picker("y", "[wf.nvim] Yank commands")
setup_prefix_picker("d", "[wf.nvim] Delete commands")
setup_prefix_picker("g", "[wf.nvim] Git/Go commands")
setup_prefix_picker("c", "[wf.nvim] Change commands")
