-- local M = {
-- 	"uga-rosa/ccc.nvim",
-- }
-- function M.config()

local ccc = require("ccc")
ccc.setup({
	highlighter = {
		auto_enable = true,
		excludes = { "Lazy" },
	},
})

-- end
-- return M
