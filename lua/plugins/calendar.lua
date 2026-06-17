return {
	{
		"itchyny/calendar.vim",
		lazy = true,
		cmd = "Calendar",
		config = function()
			vim.g.vimwiki_use_calendar = 1
			vim.g.calendar_monday = 1
		end,
		keys = {
			{ "<leader>oc", "<cmd>Calendar<cr>", desc = "open calendar" },
		},
	},
}
