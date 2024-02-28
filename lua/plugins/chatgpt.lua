return {
	{
		"jackMort/ChatGPT.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		},
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				-- api_key_cmd = "gopass show -o -f chatgpt/apikey",
				chat = {
					welcome_message = "", -- set to "" if you don't like the fancy godot robot
				},
				-- openai_params = {
				-- 	model = "gpt-4",
				-- },
				-- openai_edit_params = {
				-- 	model = "gpt-4",
				-- },
			})
		end,
	}
}
