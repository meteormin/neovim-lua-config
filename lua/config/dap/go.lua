local adapter = function(dap)
	dap.adapters.go = {
		type = "server",
		port = "${port}",
		executable = {
			command = "dlv",
			args = { "dap", "-l", "127.0.0.1:${port}" },
		},
	}

	dap.configurations.go = {
		{
			type = "go",
			name = "Debug",
			request = "launch",
			program = "${file}",
		},
		{
			type = "go",
			name = "Attach",
			request = "attach",
			processId = require("dap.utils").pick_process,
		},
	}
end

return { adapter = adapter }
