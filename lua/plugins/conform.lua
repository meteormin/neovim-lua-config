return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				typescriptreqct = { { "prettierd", "prettier" } },
				go = { "gofumpt" },
				c = { "colang-format" },
				markdown = { "cbfmt" },
				java = { "google-java-format" },
				cmake = { "cmakelang" },
				json = { { "prettierd", "prettier" } }
				yaml = { "yamlfmt" }
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
	end,
}
