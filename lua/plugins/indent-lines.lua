return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = {
				char = "▏",
				tab_char = "▏",
				-- char = "│",
			},
			exclude = {
				filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
			},
		},
	},
	{
		"echasnovski/mini.indentscope",
		opts = {
			symbol = "▏",
			-- symbol = "│",
			options = { try_as_border = true },
		},
	},
}
