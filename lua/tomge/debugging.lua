return {
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		dapui.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch main.py",
				program = "${workspaceFolder}/main.py",
				pythonPath = function()
					return "/Library/Frameworks/Python.framework/Versions/3.12/bin/python3.12"
				end,
			},
			{
				type = "python",
				request = "launch",
				name = "Launch current file",
				program = "${file}",
				pythonPath = function()
					return "/Library/Frameworks/Python.framework/Versions/3.12/bin/python3.12"
				end,
			},
		}

		dap.adapters.python = function(cb, config)
			if config.request == "attach" then
				---@diagnostic disable-next-line: undefined-field
				local port = (config.connect or config).port
				---@diagnostic disable-next-line: undefined-field
				local host = (config.connect or config).host or "127.0.0.1"
				cb({
					type = "server",
					port = assert(port, "`connect.port` is required for a python `attach` configuration"),
					host = host,
					options = {
						source_filetype = "python",
					},
				})
			else
				cb({
					type = "executable",
					command = "/Users/tomge/.local/share/nvim/mason/bin/debugpy",
					args = { "-m", "debugpy.adapter" },
					options = {
						source_filetype = "python",
					},
				})
			end
		end
		-- require("dapui").setup({
		-- 	layouts = {
		-- 		{
		-- 			elements = {
		-- 				"scopes",
		-- 				"breakpoints",
		-- 				"stacks",
		-- 				"watches",
		-- 			},
		-- 			size = 40,
		-- 			position = "right",
		-- 		},
		-- 		{
		-- 			elements = {
		-- 				"repl",
		-- 				"console",
		-- 			},
		-- 			size = 10,
		-- 			position = "bottom",
		-- 		},
		-- 	},
		-- })
	end,
}
