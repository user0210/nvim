return {
	{
		"jackMort/ChatGPT.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			welcome_message = "", -- set to "" if you don't like the fancy godot robot
			keymaps = {
				submit = "<C-m>",
			},
		},
	}
}
