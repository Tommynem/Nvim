local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- == SINGLE-LINE PLUGINS ==
	-- "mg979/vim-visual-multi", -- multi-cursor, unused
	"tpope/vim-sleuth", -- auto indentation
	"numToStr/Comment.nvim", -- e.g. gc mapping
	"mfussenegger/nvim-dap", -- debug adapter protocol for nvim
	"hrsh7th/cmp-nvim-lsp", -- nvim cmp LSP source
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("tomge.plugins.lualine")
		end,
	},
	-- "octaltree/cmp-look",
	{
		"catppuccin/nvim",

		name = "catppuccin",
		priority = 1000,

		config = function()
			require("tomge.plugins.catppuccin")
		end,
	},
	"f3fora/cmp-spell",
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	}, -- nicer debugging UI
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},
	-- == SEPARATED OUT PLUGINS (require minimal stubs here) ==
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			require("tomge.plugins.dap_python")
		end,
	},
	{
		"pwntester/octo.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("tomge.plugins.octo")
		end,
	},
	{
		"epwalsh/obsidian.nvim",
		lazy = false,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("tomge.plugins.obsidian")
		end,
	},
	-- lazy.nvim
	{
		"folke/snacks.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tomge.plugins.snacks").setup()
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("tomge.plugins.bufferline")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("tomge.plugins.autopairs")
		end,
	},
	{
		"VonHeikemen/fine-cmdline.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		config = function()
			require("tomge.plugins.fine_cmdline")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("tomge.plugins.gitsigns")
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("tomge.plugins.whichkey")
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "^2",
		config = function()
			require("tomge.plugins.toggleterm")
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("tomge.plugins.colorizer")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			require("tomge.plugins.telescope")
		end,
	},
	{
		"rmagatti/auto-session",
		lazy = false,
		config = function()
			require("tomge.plugins.auto_session")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			require("tomge.plugins.lspconfig")
		end,
	},
	{
		"stevearc/conform.nvim",
		lazy = false,
		config = function()
			require("tomge.plugins.conform")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				build = (function()
					if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
						return
					end
					return "make install_jsregexp"
				end)(),
				dependencies = {
					-- "rafamadriz/friendly-snippets", ...
				},
			},
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
		},
		config = function()
			require("tomge.plugins.cmp")
		end,
	},
	{
		"hat0uma/csvview.nvim",
		config = function()
			require("tomge.plugins.csvview")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("tomge.plugins.indent_blankline")
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("tomge.plugins.todo_comments")
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("tomge.plugins.nvim_surround")
		end,
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("tomge.plugins.mini")
		end,
	},
	{
		"stevearc/oil.nvim",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			require("tomge.plugins.oil")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("tomge.plugins.treesitter")
		end,
	},
	require("tomge.plugins.python"),
	{
		"andythigpen/nvim-coverage",
		ft = "python",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("tomge.plugins.coverage").setup()
		end,
	},
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-python",
		},
		lazy = true,
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-python")({
						dap = { justMyCode = false },
						args = { "--log-level", "DEBUG" },
						runner = "pytest",
					}),
				},
			})
		end,
	},
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
