local adapter = function(dap)
	local dap = require("dap")

	dap.adapters.java = function(callback, config)
		callback({
			type = "server",
			host = "127.0.0.1",
			port = 5005,
		})
	end

	dap.configurations.java = {
		{
			type = "java",
			request = "attach",
			name = "Debug (Attach) - Remote",
			hostName = "127.0.0.1",
			port = 5005,
		},
	}
end

return { adapter = adapter }
