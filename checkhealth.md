==============================================================================
auto-session: ✅

vim options ~

- ✅ OK vim.o.sessionoptions

Lazy.nvim settings ~

- ✅ OK Lazy.nvim support is enabled
- ✅ OK auto-session is not lazy loaded

Config ~

- ✅ OK {
  suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" }
  }

General Info ~

- Session directory: /Users/tomge/.local/share/nvim/sessions/
- Current session: /Users/tomge/.config/nvim
- Current session file: /Users/tomge/.local/share/nvim/sessions/%2FUsers%2Ftomge%2F%2Econfig%2Fnvim.vim

==============================================================================
blink.cmp: 1 ⚠️

System ~

- ✅ OK curl is installed
- ✅ OK git is installed
- ✅ OK Your system is supported by pre-built binaries (aarch64-apple-darwin)
- ✅ OK blink_cmp_fuzzy lib is downloaded/built

Sources ~

- ⚠️ WARNING Some providers may show up as "disabled" but are enabled dynamically (i.e. cmdline)

Default sources ~

- lsp (blink.cmp.sources.lsp)
- path (blink.cmp.sources.path)
- snippets (blink.cmp.sources.snippets)
- buffer (blink.cmp.sources.buffer)

Cmdline sources ~

- buffer (blink.cmp.sources.buffer)
- cmdline (blink.cmp.sources.cmdline)

Disabled sources ~

- omni (blink.cmp.sources.complete_func)

==============================================================================
conform: ✅

conform.nvim report ~

- Log file: /Users/tomge/.local/state/nvim/conform.log
- ✅ OK biome ready (json, javascriptreact, typescript, javascript, typescriptreact, jsonc)
- ✅ OK prettier ready (json, html, css, scss, javascriptreact, typescript, javascript, markdown, svelte, vue, astro, typescriptreact, jsonc, toml, yaml)
- ✅ OK stylua ready (lua)

==============================================================================
dap: ✅

dap: Adapters ~

dap.adapter: pwa-node ~

- ✅ OK is executable: node

dap: Sessions ~

- ✅ OK No active sessions

==============================================================================
lazy: 2 ⚠️

lazy.nvim ~

- {lazy.nvim} version `11.17.1`
- ✅ OK {git} `version 2.50.1 (Apple Git-155)`
- ✅ OK no existing packages found by other package managers
- ✅ OK packer_compiled.lua not found

luarocks ~

- checking `luarocks` installation
- ✅ OK no plugins require `luarocks`, so you can ignore any warnings below
- ✅ OK {luarocks} `/opt/homebrew/bin/luarocks 3.12.2`
- ⚠️ WARNING `lua` version `5.1` needed, but found `Lua 5.4.8  Copyright (C) 1994-2025 Lua.org, PUC-Rio`
- ⚠️ WARNING {lua5.1} or {lua} or {lua-5.1} version `5.1` not installed

==============================================================================
lspconfig: ✅

- Skipped. This healthcheck is redundant with `:checkhealth vim.lsp`.

==============================================================================
mason: 1 ⚠️

mason.nvim ~

- ⚠️ WARNING mason.nvim version v1.11.0
  - ADVICE:
    - The latest version of mason.nvim is: v2.0.1
- ✅ OK PATH: prepend
- ✅ OK Providers:
  mason.providers.registry-api
  mason.providers.client
- ✅ OK neovim version >= 0.7.0

mason.nvim [Registries] ~

- ✅ OK Registry `github.com/mason-org/mason-registry version: 2025-09-23-level-shorts` is installed.

mason.nvim [Core utils] ~

- ✅ OK unzip: `UnZip 6.00 of 20 April 2009, by Info-ZIP, with modifications by Apple Inc.`
- ✅ OK wget: `GNU Wget 1.25.0 built on darwin24.1.0.`
- ✅ OK curl: `curl 8.7.1 (x86_64-apple-darwin25.0) libcurl/8.7.1 (SecureTransport) LibreSSL/3.3.6 zlib/1.2.12 nghttp2/1.66.0`
- ✅ OK gzip: `Apple gzip 475`
- ✅ OK tar: `bsdtar 3.5.3 - libarchive 3.7.4 zlib/1.2.12 liblzma/5.4.3 bz2lib/1.0.8 `
- ✅ OK bash: `GNU bash, version 3.2.57(1)-release (arm64-apple-darwin25)`
- ✅ OK sh: `Ok`

mason.nvim [Languages] ~

- ✅ OK Go: `go version go1.25.1 darwin/arm64`
- ✅ OK Ruby: `ruby 2.6.10p210 (2022-04-12 revision 67958) [universal.arm64e-darwin25]`
- ✅ OK cargo: `cargo 1.82.0 (8f40fc59f 2024-08-21)`
- ✅ OK PHP: `PHP 8.4.12 (cli) (built: Aug 26 2025 13:36:28) (NTS)`
- ✅ OK luarocks: `/opt/homebrew/bin/luarocks 3.12.2`
- ✅ OK RubyGem: `3.0.3.1`
- ✅ OK node: `v24.8.0`
- ✅ OK julia: `julia version 1.11.7`
- ✅ OK npm: `11.6.0`
- ✅ OK python: `Python 3.13.7`
- ✅ OK java: `java version "21.0.7" 2025-04-15 LTS`
- ✅ OK Composer: `Composer version 2.8.11 2025-08-21 11:29:39`
- ✅ OK JAVA_HOME: `java version "21.0.7" 2025-04-15 LTS`
- ✅ OK javac: `javac 21.0.7`
- ✅ OK pip: `pip 25.2 from /opt/homebrew/lib/python3.13/site-packages/pip (python 3.13)`
- ✅ OK python venv: `Ok`

mason.nvim [GitHub] ~

- ✅ OK GitHub API rate limit. Used: 15. Remaining: 4985. Limit: 5000. Reset: Tue Sep 23 15:25:25 2025.

==============================================================================
nvim-treesitter: 1 ⚠️

Installation ~

- ⚠️ WARNING `tree-sitter` executable not found (parser generator, only needed for :TSInstallFromGrammar, not required for :TSInstall)
- ✅ OK `node` found v24.8.0 (only needed for :TSInstallFromGrammar)
- ✅ OK `git` executable found.
- ✅ OK `cc` executable found. Selected from { vim.NIL, "cc", "gcc", "clang", "cl", "zig" }
  Version: Apple clang version 17.0.0 (clang-1700.3.19.1)
- ✅ OK Neovim was compiled with tree-sitter runtime ABI version 15 (required >=13). Parsers must be compatible with runtime ABI.

OS Info:
{
machine = "arm64",
release = "25.0.0",
sysname = "Darwin",
version = "Darwin Kernel Version 25.0.0: Mon Aug 25 21:17:54 PDT 2025; root:xnu-12377.1.9~3/RELEASE_ARM64_T6041"
} ~

Parser/Features H L F I J

- astro ✓ ✓ ✓ ✓ ✓
- bash ✓ ✓ ✓ . ✓
- c ✓ ✓ ✓ ✓ ✓
- cpp ✓ ✓ ✓ ✓ ✓
- css ✓ . ✓ ✓ ✓
- csv ✓ . . . .
- dockerfile ✓ . . . ✓
- gitcommit ✓ . . . ✓
- gitignore ✓ . . . ✓
- graphql ✓ . . ✓ ✓
- html ✓ ✓ ✓ ✓ ✓
- htmldjango ✓ . ✓ ✓ ✓
- ini ✓ . ✓ . ✓
- java ✓ ✓ ✓ ✓ ✓
- javascript ✓ ✓ ✓ ✓ ✓
- json ✓ ✓ ✓ ✓ .
- kdl ✓ ✓ ✓ ✓ ✓
- lua ✓ ✓ ✓ ✓ ✓
- luadoc ✓ . . . .
- make ✓ . ✓ . ✓
- markdown ✓ . ✓ ✓ ✓
- markdown_inline ✓ . . . ✓
- muttrc ✓ . . . ✓
- php ✓ ✓ ✓ ✓ ✓
- properties ✓ ✓ . . ✓
- python ✓ ✓ ✓ ✓ ✓
- query ✓ ✓ ✓ ✓ ✓
- requirements ✓ . . . ✓
- rust ✓ ✓ ✓ ✓ ✓
- scss ✓ . ✓ ✓ ✓
- sql ✓ . ✓ ✓ ✓
- ssh_config ✓ ✓ ✓ ✓ ✓
- svelte ✓ ✓ ✓ ✓ ✓
- toml ✓ ✓ ✓ ✓ ✓
- tsx ✓ ✓ ✓ ✓ ✓
- typescript ✓ ✓ ✓ ✓ ✓
- vim ✓ ✓ ✓ . ✓
- vimdoc ✓ . . . ✓
- vue ✓ . ✓ ✓ ✓
- xml ✓ ✓ ✓ ✓ ✓
- yaml ✓ ✓ ✓ ✓ ✓

Legend: H[ighlight], L[ocals], F[olds], I[ndents], In[j]ections
+) multiple parsers found, only one will be used
x) errors found in the query, try to run :TSUpdate {lang} ~

==============================================================================
rainbow-delimiters: ✅

Custom strategies ~

- ✅ OK Valid custom default strategy.
- ✅ OK Valid custom strategy for 'vim'.

Custom queries ~

- ✅ OK Valid custom default query
- ✅ OK Valid custom query for 'lua'

Custom priorities ~

- ✅ OK Valid custom default priority
- ✅ OK Valid custom priority for 'lua'

Custom highlight groups ~

- ✅ OK Highlight group 'RainbowDelimiterRed' defined.
- ✅ OK Highlight group 'RainbowDelimiterYellow' defined.
- ✅ OK Highlight group 'RainbowDelimiterBlue' defined.
- ✅ OK Highlight group 'RainbowDelimiterOrange' defined.
- ✅ OK Highlight group 'RainbowDelimiterGreen' defined.
- ✅ OK Highlight group 'RainbowDelimiterViolet' defined.
- ✅ OK Highlight group 'RainbowDelimiterCyan' defined.

==============================================================================
snacks: 15 ⚠️ 4 ❌

Snacks ~

- ✅ OK setup called

Snacks.bigfile ~

- ⚠️ WARNING setup {disabled}

Snacks.dashboard ~

- ⚠️ WARNING setup {disabled}

Snacks.explorer ~

- ⚠️ WARNING setup {disabled}

Snacks.image ~

- ⚠️ WARNING setup {disabled}
- ❌ ERROR None of the tools found: 'kitty', 'wezterm', 'ghostty'
- ✅ OK 'magick' `Version: ImageMagick 7.1.2-3 Q16-HDRI aarch64 23340 https://imagemagick.org`
- ✅ OK 'convert' `WARNING: The convert command is deprecated in IMv7, use "magick" instead of "convert" or "magick convert"`
- ❌ ERROR `zellij` is not supported
- ✅ OK Terminal Dimensions:
  - {size}: `1836` x `1116` pixels
  - {scale}: `1.13`
  - {cell}: `9` x `18` pixels
- ✅ OK Available Treesitter languages:
  `css`, `html`, `javascript`, `markdown_inline`, `markdown`, `scss`, `svelte`, `tsx`, `vue`
- ⚠️ WARNING Missing Treesitter languages:
  `latex`, `norg`, `typst`
- ⚠️ WARNING Image rendering in docs with missing treesitter parsers won't work
- ✅ OK 'gs' `10.05.1`
- ✅ OK PDF files are supported
- ✅ OK 'pdflatex' `pdfTeX 3.141592653-2.6-1.40.27 (TeX Live 2025)`
- ⚠️ WARNING The `latex` treesitter parser is required to render LaTeX math expressions
- ❌ ERROR Tool not found: 'mmdc'
- ⚠️ WARNING `mmdc` is required to render Mermaid diagrams
- ❌ ERROR your terminal does not support the kitty graphics protocol
- supported terminals: `kitty`, `wezterm`, `ghostty`

Snacks.input ~

- ✅ OK setup {enabled}
- ✅ OK `vim.ui.input` is set to `Snacks.input`

Snacks.lazygit ~

- ✅ OK {lazygit} installed

Snacks.notifier ~

- ✅ OK setup {enabled}
- ✅ OK is ready

Snacks.picker ~

- ⚠️ WARNING setup {disabled}
- ⚠️ WARNING `vim.ui.select` for `Snacks.picker` is not enabled
- ⚠️ WARNING Missing Treesitter languages:
  `regex`
- ✅ OK 'git' `git version 2.50.1 (Apple Git-155)`
- ✅ OK 'rg' `ripgrep 14.1.1`
- ✅ OK `Snacks.picker.grep()` is available
- ✅ OK 'fd' `fd 10.3.0`
- ✅ OK `Snacks.picker.files()` is available
- ✅ OK `Snacks.picker.explorer()` is available
- ✅ OK `SQLite3` is available

Snacks.quickfile ~

- ✅ OK setup {enabled}

Snacks.scope ~

- ⚠️ WARNING setup {disabled}

Snacks.scroll ~

- ⚠️ WARNING setup {disabled}

Snacks.statuscolumn ~

- ⚠️ WARNING setup {disabled}

Snacks.terminal ~

- ✅ OK shell configured
  - `vim.o.shell`: /bin/zsh
  - `parsed`: { "/bin/zsh" }

Snacks.toggle ~

- ✅ OK {which-key} is installed

Snacks.words ~

- ⚠️ WARNING setup {disabled}

==============================================================================
telescope: ✅

Checking for required plugins ~

- ✅ OK plenary installed.
- ✅ OK nvim-treesitter installed.

Checking external dependencies ~

- ✅ OK rg: found ripgrep 14.1.1
- ✅ OK fd: found fd 10.3.0

===== Installed extensions ===== ~

Telescope Extension: `fzf` ~

- ✅ OK lib working as expected
- ✅ OK file_sorter correctly configured
- ✅ OK generic_sorter correctly configured

Telescope Extension: `session-lens` ~

- No healthcheck provided

Telescope Extension: `ui-select` ~

- No healthcheck provided

==============================================================================
vim.deprecated: 1 ⚠️

~

- ⚠️ WARNING vim.validate is deprecated. Feature will be removed in Nvim 1.0
  - ADVICE:
    - use vim.validate(name, value, validator, optional_or_msg) instead.
    - stack traceback:
      /Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua/reactive/state.lua:73
      /Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua/reactive.lua:26
      /Users/tomge/.config/nvim/lua/tomge/lazy.lua:354
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:380
      [C]:-1
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:135
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:395
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:362
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:197
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:127
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:112
      /Users/tomge/.config/nvim/lua/tomge/lazy.lua:9
      [C]:-1
      /Users/tomge/.config/nvim/lua/tomge/init.lua:1
      [C]:-1
      /Users/tomge/.config/nvim/init.lua:1
    - stack traceback:
      /Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua/reactive/state.lua:73
      /Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua/reactive.lua:64
      /Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua/reactive.lua:42
      /Users/tomge/.config/nvim/lua/tomge/lazy.lua:354
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:380
      [C]:-1
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:135
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:395
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:362
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:197
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:127
      /Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:112
      /Users/tomge/.config/nvim/lua/tomge/lazy.lua:9
      [C]:-1
      /Users/tomge/.config/nvim/lua/tomge/init.lua:1
      [C]:-1
      /Users/tomge/.config/nvim/init.lua:1

==============================================================================
vim.health: ✅

Configuration ~

- ✅ OK no issues found

Runtime ~

- ✅ OK $VIMRUNTIME: /opt/homebrew/Cellar/neovim/0.11.4/share/nvim/runtime

Performance ~

- ✅ OK Build type: Release

Remote Plugins ~

- ✅ OK Up to date

terminal ~

- key_backspace (kbs) terminfo entry: `key_backspace=\177`
- key_dc (kdch1) terminfo entry: `key_dc=\E[3~`
- $COLORTERM="truecolor"

External Tools ~

- ✅ OK ripgrep 14.1.1 (/opt/homebrew/bin/rg)

==============================================================================
vim.lsp: 1 ⚠️

- LSP log level : WARN
- Log path: /Users/tomge/.local/state/nvim/lsp.log
- ⚠️ WARNING Log size: 439651 KB

vim.lsp: Active Clients ~

- lua_ls (id: 1)
  - Version: 3.15.0
  - Root directory: ~/.config/nvim
  - Command: { "/Users/tomge/.local/share/nvim/mason/bin/lua-language-server" }
  - Settings: {
    Lua = {
    completion = {
    callSnippet = "Replace"
    },
    runtime = {
    path = { "?.lua", "?/init.lua" },
    pathStrict = true,
    version = "LuaJIT"
    },
    workspace = {
    ignoreDir = { "types/nightly", "lua" },
    library = { "/Users/tomge/.local/share/nvim/lazy/neodev.nvim/types/stable", "/opt/homebrew/Cellar/neovim/0.11.4/share/nvim/runtime/lua", "/Users/tomge/.local/share/nvim/lazy/hover.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/fine-cmdline.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/telescope.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-coverage/lua", "/Users/tomge/.local/share/nvim/lazy/nui.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/plenary.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/gitsigns.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-dap-python/lua", "/Users/tomge/.local/share/nvim/lazy/which-key.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/toggleterm.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-dap/lua", "/Users/tomge/.local/share/nvim/lazy/colorful-winsep.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-colorizer.lua/lua", "/Users/tomge/.local/share/nvim/lazy/telescope-fzf-native.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/lazy.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/telescope-ui-select.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/reactive.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/neotest/lua", "/Users/tomge/.local/share/nvim/lazy/auto-session/lua", "/Users/tomge/.local/share/nvim/lazy/vim-illuminate/lua", "/Users/tomge/.local/share/nvim/lazy/neotest-python/lua", "/Users/tomge/.local/share/nvim/lazy/hlchunk.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/mason.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/marks.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/mason-lspconfig.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/rainbow-delimiters.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-web-devicons/lua", "/Users/tomge/.local/share/nvim/lazy/mason-tool-installer.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/other.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/schemastore.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/catppuccin/lua", "/Users/tomge/.local/share/nvim/lazy/blink.cmp/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-dap-ui/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-nio/lua", "/Users/tomge/.local/share/nvim/lazy/conform.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-treesitter-textobjects/lua", "/Users/tomge/.local/share/nvim/lazy/Comment.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/csvview.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/fidget.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-treesitter/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-dap-virtual-text/lua", "/Users/tomge/.local/share/nvim/lazy/tailwind-tools/lua", "/Users/tomge/.local/share/nvim/lazy/todo-comments.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/octo.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/indent-blankline.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-surround/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-lspconfig/lua", "/Users/tomge/.local/share/nvim/lazy/obsidian.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/mini.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/oil.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/snacks.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/mini.icons/lua", "/Users/tomge/.local/share/nvim/lazy/neodev.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/bufferline.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/trouble.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/lualine.nvim/lua", "/Users/tomge/.local/share/nvim/lazy/nvim-autopairs/lua", "/Users/tomge/.local/share/nvim/lazy/lsp_lines.nvim/lua", "/Users/tomge/.config/nvim/lua" }
    }
    }
    }
  - Attached buffers: 6

vim.lsp: Enabled Configurations ~

vim.lsp: File Watcher ~

- file watching "(workspace/didChangeWatchedFiles)" disabled on all clients

vim.lsp: Position Encodings ~

- No buffers contain mixed position encodings

==============================================================================
vim.provider: 4 ⚠️

Clipboard (optional) ~

- ✅ OK Clipboard tool found: pbcopy

Node.js provider (optional) ~

- Node.js: v24.8.0

- Nvim node.js host: /opt/homebrew/lib/node_modules/neovim/bin/cli.js
- ✅ OK Latest "neovim" npm/yarn/pnpm package is installed: 5.3.0

Perl provider (optional) ~

- ⚠️ WARNING "Neovim::Ext" cpan module is not installed
  - ADVICE:
    - See :help |provider-perl| for more information.
    - You can disable this provider (and warning) by adding `let g:loaded_perl_provider = 0` to your init.vim
- ⚠️ WARNING No usable perl executable found

Python 3 provider (optional) ~

- Using: g:python3_host_prog = "/opt/homebrew/bin/python3.12"
- Executable: /opt/homebrew/bin/python3.12
- Python version: 3.12.11
- pynvim version: 0.5.2 (outdated; from /opt/homebrew/lib/python3.12/site-packages/neovim)
- ⚠️ WARNING Latest pynvim is NOT installed: 0.6.0

Python virtualenv ~

- ✅ OK no $VIRTUAL_ENV

Ruby provider (optional) ~

- Ruby: ruby 2.6.10p210 (2022-04-12 revision 67958) [universal.arm64e-darwin25]
- ⚠️ WARNING `neovim-ruby-host` not found.
  - ADVICE:
    - Run `gem install neovim` to ensure the neovim RubyGem is installed.
    - Run `gem environment` to ensure the gem bin directory is in $PATH.
    - If you are using rvm/rbenv/chruby, try "rehashing".
    - See :help |g:ruby_host_prog| for non-standard gem installations.
    - You can disable this provider (and warning) by adding `let g:loaded_ruby_provider = 0` to your init.vim

==============================================================================
vim.treesitter: ✅

Treesitter features ~

- Treesitter ABI support: min 13, max 15
- WASM parser support: false

Treesitter parsers ~

- ✅ OK Parser: astro ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/astro.so
- ✅ OK Parser: bash ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/bash.so
- ✅ OK Parser: c ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/c.so
- ✅ OK Parser: c (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/c.so
- ✅ OK Parser: cpp ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/cpp.so
- ✅ OK Parser: css ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/css.so
- ✅ OK Parser: csv ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/csv.so
- ✅ OK Parser: dockerfile ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/dockerfile.so
- ✅ OK Parser: gitcommit ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/gitcommit.so
- ✅ OK Parser: gitignore ABI: 13, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/gitignore.so
- ✅ OK Parser: graphql ABI: 13, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/graphql.so
- ✅ OK Parser: html ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/html.so
- ✅ OK Parser: htmldjango ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/htmldjango.so
- ✅ OK Parser: ini ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/ini.so
- ✅ OK Parser: java ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/java.so
- ✅ OK Parser: javascript ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/javascript.so
- ✅ OK Parser: json ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/json.so
- ✅ OK Parser: kdl ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/kdl.so
- ✅ OK Parser: lua ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/lua.so
- ✅ OK Parser: lua (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/lua.so
- ✅ OK Parser: luadoc ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/luadoc.so
- ✅ OK Parser: make ABI: 13, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/make.so
- ✅ OK Parser: markdown ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/markdown.so
- ✅ OK Parser: markdown (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/markdown.so
- ✅ OK Parser: markdown_inline ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/markdown_inline.so
- ✅ OK Parser: markdown_inline (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/markdown_inline.so
- ✅ OK Parser: muttrc ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/muttrc.so
- ✅ OK Parser: php ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/php.so
- ✅ OK Parser: properties ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/properties.so
- ✅ OK Parser: python ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/python.so
- ✅ OK Parser: query ABI: 15, path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/query.so
- ✅ OK Parser: requirements ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/requirements.so
- ✅ OK Parser: rust ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/rust.so
- ✅ OK Parser: scss ABI: 13, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/scss.so
- ✅ OK Parser: sql ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/sql.so
- ✅ OK Parser: ssh_config ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/ssh_config.so
- ✅ OK Parser: svelte ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/svelte.so
- ✅ OK Parser: toml ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/toml.so
- ✅ OK Parser: tsx ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/tsx.so
- ✅ OK Parser: typescript ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/typescript.so
- ✅ OK Parser: vim ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/vim.so
- ✅ OK Parser: vim (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/vim.so
- ✅ OK Parser: vimdoc ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/vimdoc.so
- ✅ OK Parser: vimdoc (not loaded), path: /opt/homebrew/Cellar/neovim/0.11.4/lib/nvim/parser/vimdoc.so
- ✅ OK Parser: vue ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/vue.so
- ✅ OK Parser: xml ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/xml.so
- ✅ OK Parser: yaml ABI: 14, path: /Users/tomge/.local/share/nvim/lazy/nvim-treesitter/parser/yaml.so

==============================================================================
which-key: 15 ⚠️

- ✅ OK Most of these checks are for informational purposes only.
  WARNINGS should be treated as a warning, and don't necessarily indicate a problem with your config.
  Please |DON'T| report these warnings as an issue.

Checking your config ~

- ✅ OK |mini.icons| is installed
- ✅ OK |nvim-web-devicons| is installed

Checking for issues with your mappings ~

- ✅ OK No issues reported

checking for overlapping keymaps ~

- ⚠️ WARNING In mode `n`, <m> overlaps with <m5>, <m3>, <m,>, <m}>, <m{>, <m2>, <m1>, <m:>, <m[>, <m]>, <m4>, <m;>, <m0>, <m9>, <m8>, <m7>, <m6>:
  - <m>: Set mark
  - <m5>: marks: set bookmark5
  - <m3>: marks: set bookmark3
  - <m,>: marks: set next
  - <m}>: marks: next bookmark
  - <m{>: marks: prev bookmark
  - <m2>: marks: set bookmark2
  - <m1>: marks: set bookmark1
  - <m:>: marks: preview
  - <m[>: marks: prev
  - <m]>: marks: next
  - <m4>: marks: set bookmark4
  - <m;>: marks: toggle
  - <m0>: marks: set bookmark0
  - <m9>: marks: set bookmark9
  - <m8>: marks: set bookmark8
  - <m7>: marks: set bookmark7
  - <m6>: marks: set bookmark6
- ⚠️ WARNING In mode `n`, <gb> overlaps with <gbc>:
  - <gb>: Comment toggle blockwise
  - <gbc>: Comment toggle current block
- ⚠️ WARNING In mode `n`, <gc> overlaps with <gco>, <gcA>, <gcO>, <gcc>:
  - <gc>: Comment toggle linewise
  - <gco>: Comment insert below
  - <gcA>: Comment insert end of line
  - <gcO>: Comment insert above
  - <gcc>: Comment toggle current line
- ⚠️ WARNING In mode `n`, <yS> overlaps with <ySS>:
  - <yS>: Add a surrounding pair around a motion, on new lines (normal mode)
  - <ySS>: Add a surrounding pair around the current line, on new lines (normal mode)
- ⚠️ WARNING In mode `n`, <ys> overlaps with <yss>:
  - <ys>: Add a surrounding pair around a motion (normal mode)
  - <yss>: Add a surrounding pair around the current line (normal mode)
- ⚠️ WARNING In mode `n`, <dm> overlaps with <dm5>, <dm3>, <dm6>, <dm2>, <dm7>, <dm1>, <dm=>, <dm0>, <dm<Space>>, <dm9>, <dm8>, <dm->, <dm4>:
  - <dm>: marks: delete
  - <dm5>: marks: delete bookmark5
  - <dm3>: marks: delete bookmark3
  - <dm6>: marks: delete bookmark6
  - <dm2>: marks: delete bookmark2
  - <dm7>: marks: delete bookmark7
  - <dm1>: marks: delete bookmark1
  - <dm=>: marks: delete bookmark
  - <dm0>: marks: delete bookmark0
  - <dm<Space>>: marks: delete buf
  - <dm9>: marks: delete bookmark9
  - <dm8>: marks: delete bookmark8
  - <dm->: marks: delete line
  - <dm4>: marks: delete bookmark4
- ⚠️ WARNING In mode `n`, <<Space>l> overlaps with <<Space>lg>:
  - <<Space>l>: Toggle lsp_lines
  - <<Space>lg>: Open Lazygit
- ⚠️ WARNING In mode `n`, <<Space>w> overlaps with <<Space>wb>, <<Space>wR>, <<Space>wr>, <<Space>wt>, <<Space>wp>:
  - <<Space>w>: Web Development
  - <<Space>wb>: Format with Biome
  - <<Space>wR>: Open related file in split
  - <<Space>wr>: Switch to related file (SvelteKit)
  - <<Space>wt>: Sort Tailwind classes
  - <<Space>wp>: Format with Prettier
- ⚠️ WARNING In mode `n`, <gr> overlaps with <gri>, <grr>, <grt>, <grn>, <gra>:
  - <gr>: Goto References (LSP)
  - <gri>: vim.lsp.buf.implementation()
  - <grr>: vim.lsp.buf.references()
  - <grt>: vim.lsp.buf.type_definition()
  - <grn>: vim.lsp.buf.rename()
  - <gra>: vim.lsp.buf.code_action()
- ✅ OK Overlapping keymaps are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.

Checking for duplicate mappings ~

- ⚠️ WARNING Duplicates for <<C-o>> in mode `n`:
  - Insert a new line after: `{}`
  - Jump back in jump list: `{}`
- ⚠️ WARNING Duplicates for <<C-i>> in mode `n`:
  - Increment number under cursor: `{}`
  - Jump forward in jump list: `{}`
- ⚠️ WARNING Duplicates for <<leader>w> in mode `n`:
  - Web Development: `{ group = true }`
  - Write (save) file: `{ rhs = ":w<CR>", silent = true }`
- ⚠️ WARNING Duplicates for <:> in mode `n`:
  - Command line (FineCmdline): `{}`
  - Command mode: `{}`
- ⚠️ WARNING Duplicates for <'> in mode `n`:
  - marks: `{ group = true, icon = { color = "orange", icon = "󰸕 " }, plugin = "marks" }`
  - Jump to mark line: `{}`
- ⚠️ WARNING Duplicates for <`> in mode `n`:
  - marks: `{ group = true, icon = { color = "orange", icon = "󰸕 " }, plugin = "marks" }`
  - Jump to mark position: `{}`
- ✅ OK Duplicate mappings are only reported for informational purposes.
  This doesn't necessarily mean there is a problem with your config.
