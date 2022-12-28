-- local M = {
-- 	"lukas-reineke/indent-blankline.nvim",
-- }
-- function M.config()

require("indent_blankline").setup({
	buftype_exclude = { "terminal", "nofile" },
	filetype_exclude = {
		"help",
		"packer",
		"neogitstatus",
		"NvimTree",
		"Trouble",
	},
	char = "▏",
	show_trailing_blankline_indent = false,
	show_first_indent_level = true,
	use_treesitter = true,
	show_current_context = true,
})

-- end
-- return M