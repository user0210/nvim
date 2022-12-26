-- local M = {
-- 	"uga-rosa/ccc.nvim",
-- }
-- function M.config()

local ccc = require("ccc")
ccc.setup({
	highlighter = {
		auto_enable = true,
		excludes = { "Packer" },
	},
})

-- end
-- return M
