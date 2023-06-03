return {
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		cmd = { "ToggleTerm" },
		keys = {
			{ "<leader>Tf", "<cmd>ToggleTerm direction=float<cr>",             desc = "Float", },
			{ "<leader>Tt", "<cmd>ToggleTerm size=6 direction=horizontal<cr>", desc = "Horizontal", },
		},
		opts = function()
			return {
				size = 9,
				open_mapping = [[<a-T>]],
				hide_numbers = true,
				shade_terminals = false,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = true,
				direction = "horizontal",
				close_on_exit = true,
				shell = vim.o.shell,
				float_opts = {
					border = "curved",
				},
			}
		end,
	},
}
