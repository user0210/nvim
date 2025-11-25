return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		opts = {
			options = {
				numbers = function(opts)
					return string.format("%s", opts.raise(opts.ordinal))
				end, -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
				left_trunc_marker = "",
				right_trunc_marker = "",
				offsets = {
					-- { filetype = "neo-tree",      text = "", separator = "", padding = 1, highlight = "TabLineFill" },
					-- { filetype = "undotree",      text = "", separator = "", padding = 1, highlight = "TabLineFill" },
					{ filetype = "snacks_layout_box",      text = "", separator = "", padding = 1, highlight = "TabLineFill" },
					{ filetype = "DiffviewFiles", text = "", separator = "", padding = 1, highlight = "TabLineFill" },
					--	{ filetype = "minimap",			text = "", padding = 0 },
				},
				separator_style = "slant", -- | "thick" | "thin" | "slant" | "padded_slant" | {'▎','▕'},
				always_show_bufferline = true,
				hover = {
						enabled = true,
						delay = 100,
						reveal = {'close'}
				},
				-- custom_areas = {
				-- 	right = function ()
				-- 		local gitsigns = vim.b.gitsigns_status_dict
				-- 		local result = {}
				-- 		if gitsigns then
				-- 				local colors = require("tokyonight.colors").setup()
				-- 				table.insert(result, {text = " +" .. gitsigns.added, fg = colors.base0Bb, bg = colors.base00})
				-- 				table.insert(result, {text = " ~" .. gitsigns.changed, fg = colors.base0Db, bg = colors.base00})
				-- 				table.insert(result, {text = " -" .. gitsigns.removed, fg = colors.base08b, bg = colors.base00})
				-- 		end
				-- 		return result
				-- 	end
				-- }
			}
		}
	}
}
