return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		opts = function()
			local colors = require("tokyonight.colors").setup()

			return {
				options = {
					numbers = function(opts)
						return string.format("%s", opts.raise(opts.ordinal))
					end,                                                                             -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
					close_command = function() require("mini.bufremove").delete(0, false) end,       -- can be a string | function, see "Mouse actions"
					right_mouse_command = function() require("mini.bufremove").delete(0, false) end, -- can be a string | function, see "Mouse actions"
					left_mouse_command = "buffer %d",                                                -- can be a string | function, see "Mouse actions"
					middle_mouse_command = nil,                                                      -- can be a string | function, see "Mouse actions"
					indicator = {
						icon = "▎",                                                                    -- this should be omitted if indicator style is not 'icon'
						-- icon = '█', -- this should be omitted if indicator style is not 'icon'
						style = "icon",                                                                -- 'icon' | 'underline' | 'none'
					},
					modified_icon = "●",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 30,
					max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
					tab_size = 21,
					diagnostics = false,    -- | "nvim_lsp" | "coc",
					diagnostics_update_in_insert = false,
					offsets = {
						{ filetype = "neo-tree",      text = "", separator = "", padding = 1, highlight = "TabLineFill" },
						{ filetype = "undotree",      text = "", separator = "", padding = 1, highlight = "TabLineFill" },
						{ filetype = "DiffviewFiles", text = "", separator = "", padding = 1, highlight = "TabLineFill" },
						--	{ filetype = "minimap",			text = "", padding = 0 },
					},
					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = false,
					show_tab_indicators = true,
					persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
					enforce_regular_tabs = true,
					always_show_bufferline = true,
					separator_style = "slant", -- | "thick" | "thin" | "slant" | "padded_slant" | {'▎','▕'},
					-- custom_areas = {
					-- 	left = function()
					-- 		local result = {}
					-- 		table.insert(result, { text = " ", fg = colors.base00, bg ="NONE" })
					-- 		return result
					-- 	end,
					-- },
				},
				highlights = {
					-- separators
					separator = 									{ bg = colors.buffBG, fg = colors.base00 },
					separator_selected = 					{ bg = colors.nocdBG, fg = colors.base00 },
					separator_visible = 					{ bg = colors.nocdBG, fg = colors.base00 },
					tab_separator = 							{ bg = colors.base00, fg = colors.base00 },
					tab_separator_selected = 			{ bg = colors.base00, fg = colors.base00 },
					offset_separator = 						{ bg = "NONE", 				fg = colors.base00 },
					-- hidden tab
					tab = 												{ bg = colors.base00, fg = colors.base02 },
					fill = 												{ bg = colors.base00, fg = colors.base02 },
					tab_close = 									{ bg = colors.base00, fg = colors.base01 },
					numbers = 										{ bg = colors.buffBG, fg = colors.buffFG },
					background = 									{ bg = colors.buffBG, fg = colors.buffFG },
					close_button = 								{ bg = colors.buffBG, fg = colors.buffFG },
					diagnostic = 									{ bg = colors.buffBG, fg = colors.buffFG },
					info = 												{ bg = colors.buffBG, fg = colors.buffFG },
					info_diagnostic = 						{ bg = colors.buffBG, fg = colors.buffFG },
					warning = 										{ bg = colors.buffBG, fg = colors.buffFG },
					warning_diagnostic = 					{ bg = colors.buffBG, fg = colors.buffFG },
					error = 											{ bg = colors.buffBG, fg = colors.buffFG },
					error_diagnostic = 						{ bg = colors.buffBG, fg = colors.buffFG },
					modified = 										{ bg = colors.buffBG, fg = colors.buffFG, italic = false },
					duplicate = 									{ bg = colors.buffBG, fg = colors.buffFG },
					pick = 												{ bg = colors.buffBG, fg = colors.buffFG },
					hint = 												{ bg = colors.buffBG, fg = colors.buffFG },
					hint_diagnostic = 						{ bg = colors.buffBG, fg = colors.buffFG },
					-- selected tab
					tab_selected = 								{ bg = colors.base00, fg = colors.nocdFG, italic = false },
					numbers_selected = 						{ bg = colors.nocdBG, fg = colors.nocdFG },
					close_button_selected = 			{ bg = colors.nocdBG, fg = colors.nocdFG },
					buffer_selected = 						{ bg = colors.nocdBG, fg = colors.nocdFG, italic = false },
					diagnostic_selected = 				{ bg = colors.nocdBG, fg = colors.nocdFG },
					info_selected = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					info_diagnostic_selected =		{ bg = colors.nocdBG, fg = colors.nocdFG },
					warning_selected = 						{ bg = colors.nocdBG, fg = colors.nocdFG },
					warning_diagnostic_selected = { bg = colors.nocdBG, fg = colors.nocdFG },
					error_selected = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					error_diagnostic_selected = 	{ bg = colors.nocdBG, fg = colors.nocdFG },
					modified_selected = 					{ bg = colors.nocdBG, fg = colors.nocdFG, italic = false },
					duplicate_selected = 					{ bg = colors.nocdBG, fg = colors.nocdFG },
					indicator_selected = 					{ bg = colors.nocdBG, fg = colors.nocdFG },
					pick_selected = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					hint_selected = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					hint_diagnostic_selected = 		{ bg = colors.nocdBG, fg = colors.nocdFG },
					-- visible tab
					numbers_visible = 						{ bg = colors.nocdBG, fg = colors.nocdFG },
					close_button_visible = 				{ bg = colors.nocdBG, fg = colors.nocdFG },
					buffer_visible = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					diagnostic_visible = 					{ bg = colors.nocdBG, fg = colors.nocdFG },
					info_visible = 								{ bg = colors.nocdBG, fg = colors.nocdFG },
					info_diagnostic_visible = 		{ bg = colors.nocdBG, fg = colors.nocdFG },
					warning_visible = 						{ bg = colors.nocdBG, fg = colors.nocdFG },
					warning_diagnostic_visible = 	{ bg = colors.nocdBG, fg = colors.nocdFG },
					error_visible = 							{ bg = colors.nocdBG, fg = colors.nocdFG },
					error_diagnostic_visible = 		{ bg = colors.nocdBG, fg = colors.nocdFG },
					modified_visible = 						{ bg = colors.nocdBG, fg = colors.nocdFG, italic = false },
					duplicate_visible = 					{ bg = colors.nocdBG, fg = colors.nocdFG },
					indicator_visible = 					{ bg = colors.nocdBG, fg = colors.nocdFG },
					pick_visible = 								{ bg = colors.nocdBG, fg = colors.nocdFG },
					hint_visible = 								{ bg = colors.nocdBG, fg = colors.nocdFG },
					hint_diagnostic_visible = 		{ bg = colors.nocdBG, fg = colors.nocdFG },
				},
			}
		end,
	},
}
