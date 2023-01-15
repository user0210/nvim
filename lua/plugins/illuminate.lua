-- local M = {
-- 	"RRethy/vim-illuminate",
-- }
-- function M.config()

require("illuminate").configure({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
	delay = 200,
	filetypes_denylist = {
		"dirvish",
		"NvimTree",
		"Lazy",
		"neogitstatus",
		"Trouble",
		"Outline",
		"toggleterm",
		"DressingSelect",
		"TelescopePrompt",
		"DiffviewFiles",
	},
	filetypes_allowlist = {},
	modes_denylist = {},
	modes_allowlist = {},
	providers_regex_syntax_denylist = {},
	providers_regex_syntax_allowlist = {},
	under_cursor = true,
})

-- end
-- return M
