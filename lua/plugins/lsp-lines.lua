return {
	{ "Maan2003/lsp_lines.nvim",
		keys = { { "<leader>ll", "<cmd>lua require'lsp_lines'.toggle()<cr>", desc = "Toggle Lsp_Lines" }, },
		config = function()
			require"lsp_lines".setup()
			require"lsp_lines".toggle()
		end,
	},
}
