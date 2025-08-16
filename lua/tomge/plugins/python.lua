return {
	-- LSP Configuration
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pylsp", -- Python LSP Server
					"ruff_lsp", -- Fast Python linter
				},
			})

			local lspconfig = require("lspconfig")

			-- Python LSP Server configuration
			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							-- Formatter settings
							black = { enabled = true },
							isort = { enabled = true },

							-- Linter settings
							pylint = {
								enabled = true,
								args = { "--max-line-length=120", "--disable=C0111" },
							},
							flake8 = {
								enabled = true,
								maxLineLength = 120,
								ignore = { "E203", "W503" }, -- Black compatibility
							},
							mypy = {
								enabled = true,
								live_mode = true,
								strict = false,
							},

							-- Disable some default plugins
							pycodestyle = { enabled = false }, -- Using flake8 instead
							mccabe = { enabled = false },
							pyflakes = { enabled = false }, -- Using flake8 instead
							yapf = { enabled = false }, -- Using black instead
						},
					},
				},
			})

			-- Optional: Ruff for fast linting
			lspconfig.ruff_lsp.setup({
				init_options = {
					settings = {
						args = { "--max-line-length=120" },
					},
				},
			})
		end,
	},

	-- Formatting
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				python = { "isort", "black" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters = {
				black = {
					prepend_args = { "--line-length", "120" },
				},
				isort = {
					prepend_args = { "--profile", "black", "--line-length", "120" },
				},
			},
		},
	},

	-- Better diagnostics UI
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
			{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
			{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
		},
	},

	-- Inline diagnostics with virtual text
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		event = "LspAttach",
		config = function()
			require("lsp_lines").setup()
			-- Toggle with <leader>l
			vim.keymap.set("", "<leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })

			-- Disable virtual_text since lsp_lines shows inline
			vim.diagnostic.config({
				virtual_text = false,
			})
		end,
	},

	-- Show diagnostics in floating window on hover
	{
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup({
				init = function()
					require("hover.providers.lsp")
					require("hover.providers.diagnostic")
				end,
				preview_opts = {
					border = "rounded",
				},
				preview_window = false,
				title = true,
			})

			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		end,
	},
}
