local adapter = function(dap)
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = "OpenDebugAD7", -- Mason이 설치한 `OpenDebugAD7` 실행 파일 경로
	}

	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = true,
			setupCommands = {
				{
					text = "-enable-pretty-printing",
					description = "Enable pretty printing",
					ignoreFailures = false,
				},
			},
		},
	}

	-- 동일한 설정을 C에 적용
	dap.configurations.c = dap.configurations.cpp
end

return { adapter = adapter }
