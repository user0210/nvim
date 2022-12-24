local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

local colors = require("colorscheme").colors

bufferline.setup({
	options = {
		-- numbers = function(opts)
		-- 	return string.format('%s', opts.raise(opts.ordinal))
		-- end, -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator = {
			icon = "▎", -- this should be omitted if indicator style is not 'icon'
			-- icon = '█', -- this should be omitted if indicator style is not 'icon'
			style = "icon", -- 'icon' | 'underline' | 'none'
		},
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		offsets = {
			{ filetype = "NvimTree", text = "", padding = -1 }, -- padding = #[[%L]] + 4
			{ filetype = "undotree", text = "-- undotree --", padding = -1 },
			{ filetype = "minimap", text = "", padding = 1 },
		},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = false,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		separator_style = "slant", -- | "thick" | "thin" | "slant" | "padded_slant" | {'▎','▕'},
		custom_areas = {
			left = function()
				local result = {}
				table.insert(result, { text = " ", fg = colors.base01, bg = colors.base00 })
				return result
			end,
		},
	},

	highlights = {
		-- separators 
		separator = 				{ bg = colors.base02, fg = colors.base00 },
		separator_selected = 		{ bg = colors.base01a, fg = colors.base00 },
		separator_visible = 		{ bg = colors.base01a, fg = colors.base00 },
		offset_separator = 			{ bg = colors.base01a, fg = colors.base00 },
		-- hidden tab
		fill =						{ bg = colors.base00, fg = colors.base01, },
		tab_close = 				{ bg = colors.base00, fg = colors.base02, },
		tab = 						{ bg = colors.base02, fg = colors.base00, },
		numbers = 					{ bg = colors.base02, fg = colors.base00, },
		background = 				{ bg = colors.base02, fg = colors.base00, },
		close_button = 				{ bg = colors.base02, fg = colors.base00, },
		diagnostic = 				{ bg = colors.base02, fg = colors.base00, },
		info = 						{ bg = colors.base02, fg = colors.base00, },
		info_diagnostic = 			{ bg = colors.base02, fg = colors.base00, },
		warning = 					{ bg = colors.base02, fg = colors.base00, },
		warning_diagnostic = 		{ bg = colors.base02, fg = colors.base00, },
		error = 					{ bg = colors.base02, fg = colors.base00, },
		error_diagnostic = 			{ bg = colors.base02, fg = colors.base00, },
		modified = 					{ bg = colors.base02, fg = colors.base00, italic = false, bold = true },
		duplicate = 				{ bg = colors.base02, fg = colors.base00, },
		pick = 						{ bg = colors.base02, fg = colors.base00, },
		hint = 						{ bg = colors.base02, fg = colors.base00, },
		hint_diagnostic = 			{ bg = colors.base02, fg = colors.base00, },
		-- selected tab
		numbers_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		close_button_selected = 	{ bg = colors.base01a, fg = colors.base03, },
		buffer_selected = 			{ bg = colors.base01a, fg = colors.base03, italic = false, bold = true, },
		tab_selected = 				{ bg = colors.base01a, fg = colors.base03, italic = false, bold = true, },
		diagnostic_selected = 		{ bg = colors.base01a, fg = colors.base03, },
		info_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		info_diagnostic_selected = 	{ bg = colors.base01a, fg = colors.base03, },
		warning_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		warning_diagnostic_selected={ bg = colors.base01a, fg = colors.base03, },
		error_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		error_diagnostic_selected = { bg = colors.base01a, fg = colors.base03, },
		modified_selected = 		{ bg = colors.base01a, fg = colors.base03, italic = false, bold = true, },
		duplicate_selected = 		{ bg = colors.base01a, fg = colors.base03, },
		indicator_selected = 		{ bg = colors.base01a, fg = colors.base01, },
		pick_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		hint_selected = 			{ bg = colors.base01a, fg = colors.base03, },
		hint_diagnostic_selected = 	{ bg = colors.base01a, fg = colors.base03, },
		-- visible tab
		numbers_visible = 			{ bg = colors.base01a, fg = colors.base03, },
		close_button_visible = 		{ bg = colors.base01a, fg = colors.base03, },
		buffer_visible =			{ bg = colors.base01a, fg = colors.base03, },
		diagnostic_visible = 		{ bg = colors.base01a, fg = colors.base03, },
		info_visible = 				{ bg = colors.base01a, fg = colors.base03, },
		info_diagnostic_visible = 	{ bg = colors.base01a, fg = colors.base03, },
		warning_visible = 			{ bg = colors.base01a, fg = colors.base03, },
		warning_diagnostic_visible=	{ bg = colors.base01a, fg = colors.base03, },
		error_visible = 			{ bg = colors.base01a, fg = colors.base03, },
		error_diagnostic_visible = 	{ bg = colors.base01a, fg = colors.base03, },
		modified_visible = 			{ bg = colors.base01a, fg = colors.base03, italic = false, bold = true, },
		duplicate_visible = 		{ bg = colors.base01a, fg = colors.base03, },
		indicator_visible = 		{ bg = colors.base01a, fg = colors.base01, },
		pick_visible = 				{ bg = colors.base01a, fg = colors.base03, },
		hint_visible = 				{ bg = colors.base01a, fg = colors.base03, },
		hint_diagnostic_visible = 	{ bg = colors.base01a, fg = colors.base03, },
	},
})
