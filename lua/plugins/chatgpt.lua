return {
	{
		"jackMort/ChatGPT.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim"
		},
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				chat = {
					welcome_message = "",
				},
				openai_params = {
					model = "gpt-4o",
				},
				openai_edit_params = {
					model = "gpt-4o",
				},
			})
		end,
	}
}

