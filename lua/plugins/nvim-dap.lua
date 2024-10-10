local mapKey = require("utils.keyMapper").mapKey
local cppAdapter = require("config.dap.cpp").adapter
local javaAdapter = require("config.dap.java").adapter
local goAdapter = require("config.dap.go").adapter

return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			cppAdapter(dap)
			javaAdapter(dap)
			goAdapter(dap)

			mapKey("<F5>", dap.continue)
			mapKey("<F10>", dap.step_over)
			mapKey("<F11>", dap.step_into)
			mapKey("<F12>", dap.step_out)
			mapKey("<Leader>b", dap.toggle_breakpoint)
			mapKey("<Leader>B", dap.set_breakpoint)
			mapKey("<Leader>dr", dap.repl.open)
			mapKey("<Leader>dc", function()
				dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end)
		end,
	},
	{
		"nvim-neotest/nvim-nio",
	},
	{
		"rcarriga/nvim-dap-ui",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			local dapVtxt = require("nvim-dap-virtual-text")
		end,
	},
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = { "mfussenegger/nvim-dap", "williamboman/mason.nvim" },
	opts = {
		ensure_installed = { "java-debug-adapter", "delve", "cpptools" },
	},
}
