return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		opts = function()
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
			}
		end,
	},
}
