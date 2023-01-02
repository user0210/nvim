-- local M = {
-- 	"lukas-reineke/indent-blankline.nvim",
-- }
-- function M.config()

--hl-Whitespace

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "tab: ⋅ "
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup({
	buftype_exclude = { "terminal", "nofile" },
	filetype_exclude = {
		"help",
		"Lazy",
		"neogitstatus",
		"NvimTree",
		"Trouble",
	},
	char = "▏",
	context_char = "▏",
	show_trailing_blankline_indent = false,
	show_first_indent_level = true,
	use_treesitter = true,
	show_current_context = true,
	show_end_of_line = true,
	space_char_blankline = " ",
})

-- end
-- return M
