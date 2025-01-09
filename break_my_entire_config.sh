#!/usr/bin/env bash
#
# setup_plugin_configs.sh
#
# Creates lua/tomge/plugins/*.lua files and writes minimal config content
# (or the full content from your existing config) into each file.
#

# Ensure we’re in the correct directory if needed (uncomment or adjust):
# cd /path/to/your/neovim/config
# e.g., cd ~/.config/nvim

# 1) Create the plugins directory if it doesn’t exist
mkdir -p lua/tomge/plugins

# 2) Create each plugin config file:

cat << 'EOF' > lua/tomge/plugins/dap_python.lua
-- nvim-dap-python config
return function()
  local path = "/Library/Frameworks/Python.framework/Versions/3.12/bin/python3.12"
  require("dap-python").setup(path)
end
EOF

cat << 'EOF' > lua/tomge/plugins/obsidian.lua
-- obsidian.nvim config
return function()
  require("obsidian").setup({
    workspaces = {
      {
        name = "everything",
        path = "/Users/tomge/Library/Mobile Documents/iCloud~md~obsidian/Documents/Everything all at once",
      },
    },
    completion = { nvim_cmp = true },
    picker = { name = "telescope.nvim" },
    ui = {
      enable = true,
      checkboxes = {
        [" "] = { char = "☐", hl_group = "ObsidianTodo" },
        ["x"] = { char = "✔", hl_group = "ObsidianDone" },
      },
    },
    attachments = { img_folder = "pasted/images" },
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/bufferline.lua
-- akinsho/bufferline.nvim
return function()
  require("bufferline").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/autopairs.lua
-- windwp/nvim-autopairs
return function()
  require("nvim-autopairs").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/fine_cmdline.lua
-- VonHeikemen/fine-cmdline.nvim
return function()
  require("fine-cmdline").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/gitsigns.lua
-- lewis6991/gitsigns.nvim
return function()
  require("gitsigns").setup({
    signs = {
      add          = { text = "+" },
      change       = { text = "~" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
    },
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/which_key.lua
-- folke/which-key.nvim
return function()
  require("which-key").setup()
end
EOF

cat << 'EOF' > lua/tomge/plugins/toggleterm.lua
-- akinsho/toggleterm.nvim
-- If you prefer to move tomge/toggleterm.lua inline, do it here
return function()
  require("tomge.toggleterm")
end
EOF

cat << 'EOF' > lua/tomge/plugins/colorizer.lua
-- NvChad/nvim-colorizer.lua
return function()
  require("tomge.colorizer")  -- or inline colorizer config
end
EOF

cat << 'EOF' > lua/tomge/plugins/telescope.lua
-- nvim-telescope/telescope.nvim
return function()
  local telescope = require("telescope")
  telescope.setup({
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    },
  })
  pcall(telescope.load_extension, "fzf")
  pcall(telescope.load_extension, "ui-select")

  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
  vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
  vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
  vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
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

  vim.keymap.set("n", "<leader>sn", function()
    builtin.find_files({ cwd = vim.fn.stdpath("config") })
  end, { desc = "[S]earch [N]eovim files" })
end
EOF

cat << 'EOF' > lua/tomge/plugins/auto_session.lua
-- rmagatti/auto-session
return function()
  require("auto-session").setup({
    suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/lspconfig.lua
-- neovim/nvim-lspconfig (+ mason + mason-lspconfig + mason-tool-installer)
return function()
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
    callback = function(event)
      local builtin = require("telescope.builtin")
      local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
      end
      map("gd", builtin.lsp_definitions, "[G]oto [D]efinition")
      map("gr", builtin.lsp_references, "[G]oto [R]eferences")
      map("gI", builtin.lsp_implementations, "[G]oto [I]mplementation")
      map("<leader>D", builtin.lsp_type_definitions, "Type [D]efinition")
      map("<leader>ss", builtin.lsp_document_symbols, "[S]earch [S]ymbols")
      map("<leader>ws", builtin.lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
      map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
      map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
      map("K", vim.lsp.buf.hover, "Hover Documentation")
      map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

      local client = vim.lsp.get_client_by_id(event.data.client_id)
      if client and client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
          buffer = event.buf,
          callback = vim.lsp.buf.document_highlight,
        })
        vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
          buffer = event.buf,
          callback = vim.lsp.buf.clear_references,
        })
      end
    end,
  })

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

  local servers = {
    lua_ls = {
      settings = {
        Lua = {
          completion = { callSnippet = "Replace" },
        },
      },
    },
  }

  require("mason").setup()
  local ensure_installed = vim.tbl_keys(servers or {})
  vim.list_extend(ensure_installed, { "stylua" })
  require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

  require("mason-lspconfig").setup({
    handlers = {
      function(server_name)
        local server = servers[server_name] or {}
        if server_name == "pyright" then
          server.settings = {
            python = {
              pythonPath = "/Library/Frameworks/Python.framework/Versions/3.12/bin/python3",
            },
          }
        end
        server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
        require("lspconfig")[server_name].setup(server)
      end,
    },
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/conform.lua
-- stevearc/conform.nvim
return function()
  require("conform").setup({
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { "stylua" },
    },
  })

  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    require("conform").format({ async = true, lsp_fallback = true })
  end, { desc = "[F]ormat buffer" })
end
EOF

cat << 'EOF' > lua/tomge/plugins/cmp.lua
-- hrsh7th/nvim-cmp
return function()
  local cmp = require("cmp")
  local luasnip = require("luasnip")
  luasnip.config.setup({})

  cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    completion = { completeopt = "menu,menuone,noinsert" },
    mapping = cmp.mapping.preset.insert({
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<Right>"] = cmp.mapping.confirm({ select = true }),
      ["<C-Space>"] = cmp.mapping.complete({}),
      ["<C-l>"] = cmp.mapping(function()
        if luasnip.expand_or_locally_jumpable() then
          luasnip.expand_or_jump()
        end
      end, { "i", "s" }),
      ["<C-h>"] = cmp.mapping(function()
        if luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        end
      end, { "i", "s" }),
    }),
    sources = {
      { name = "obsidian" },
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
    },
  })

  cmp.setup.filetype("markdown", {
    sources = cmp.config.sources({
      { name = "buffer" },
    }),
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/csvview.lua
-- hat0uma/csvview.nvim
return function()
  require("csvview").setup()
end
EOF

cat << 'EOF' > lua/tomge/plugins/tokyonight.lua
-- folke/tokyonight.nvim
return function()
  vim.cmd.colorscheme("tokyonight-night")
  vim.cmd.hi("Comment gui=none")
end
EOF

cat << 'EOF' > lua/tomge/plugins/indent_blankline.lua
-- lukas-reineke/indent-blankline.nvim
return function()
  require("ibl").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/todo_comments.lua
-- folke/todo-comments.nvim
return function()
  require("todo-comments").setup({
    signs = false,
  })
end
EOF

cat << 'EOF' > lua/tomge/plugins/nvim_surround.lua
-- kylechui/nvim-surround
return function()
  require("nvim-surround").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/mini.lua
-- echasnovski/mini.nvim
return function()
  require("mini.ai").setup({ n_lines = 500 })
  require("mini.surround").setup()
  local statusline = require("mini.statusline")
  statusline.setup({
    use_icons = vim.g.have_nerd_font,
  })
  statusline.section_location = function()
    return "%2l:%-2v"
  end
end
EOF

cat << 'EOF' > lua/tomge/plugins/oil.lua
-- stevearc/oil.nvim
return function()
  require("oil").setup({})
end
EOF

cat << 'EOF' > lua/tomge/plugins/treesitter.lua
-- nvim-treesitter/nvim-treesitter
return function()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "bash","c","html","lua","luadoc","markdown","vim","vimdoc","markdown_inline",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "ruby" },
    },
    indent = {
      enable = true,
      disable = { "ruby" },
    },
  })
end
EOF

echo "Finished creating plugin config files in lua/tomge/plugins/."
