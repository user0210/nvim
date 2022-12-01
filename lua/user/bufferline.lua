local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

local base_status_ok, base16 = pcall(require, "base16-colorscheme")
if not base_status_ok then
	return
end

local colors = base16.colors

bufferline.setup({
	options = {
		numbers = function(opts)
			return string.format('%s', opts.raise(opts.ordinal))
		end, -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator = {
		    icon = '▎', -- this should be omitted if indicator style is not 'icon'
		    style = 'icon', -- 'icon' | 'underline' | 'none'
		},
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } }, -- padding = #[[%L]] + 4
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		separator_style = "thin", -- | "thick" | "thin" | "slant" | "padded_slant" | {'▎','▕'},
	},

-- Importend: change this in ~/.local/share/nvim/site/pack/packer/start/bufferline.nvim/lua/bufferline/constants.lua
-- [M.sep_names.slant] = { "", "" },
-- [M.sep_names.padded_slant] = { "" .. M.padding, "" },

	highlights = {
		-- separators 
		separator = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00a },
		separator_selected = 		{ sp = colors.base00, bg = colors.base02, fg = colors.base00a },
		separator_visible = 		{ sp = colors.base00, bg = colors.base02, fg = colors.base00a },
		offset_separator = 			{ sp = colors.base00, bg = colors.base02, fg = colors.base00a },
		-- hidden tab
		fill =						{ sp = colors.base00, bg = "NONE", fg = colors.base00, },
		numbers = 					{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		background = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		tab = 						{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		tab_close = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		close_button = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		diagnostic = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		info = 						{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		info_diagnostic = 			{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		warning = 					{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		warning_diagnostic = 		{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		error = 					{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		error_diagnostic = 			{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		modified = 					{ sp = colors.base00, bg = colors.base02, fg = colors.base00, italic = false, bold = true },
		duplicate = 				{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		pick = 						{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		hint = 						{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		hint_diagnostic = 			{ sp = colors.base00, bg = colors.base02, fg = colors.base00, },
		-- selected tab
		numbers_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		close_button_selected = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		buffer_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, italic = false, bold = true, },
		tab_selected = 				{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, italic = false, bold = true, },
		diagnostic_selected = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		info_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		info_diagnostic_selected = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		warning_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		warning_diagnostic_selected={ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		error_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		error_diagnostic_selected = { sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		modified_selected = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, italic = false, bold = true, },
		duplicate_selected = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		indicator_selected = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base01, },
		pick_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		hint_selected = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		hint_diagnostic_selected = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		-- visible tab
		numbers_visible = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		close_button_visible = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		buffer_visible =			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		diagnostic_visible = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		info_visible = 				{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		info_diagnostic_visible = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		warning_visible = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		warning_diagnostic_visible=	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		error_visible = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		error_diagnostic_visible = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		modified_visible = 			{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, italic = false, bold = true, },
		duplicate_visible = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		indicator_visible = 		{ sp = colors.base00, bg = colors.base01a, fg = colors.base01, },
		pick_visible = 				{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		hint_visible = 				{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
		hint_diagnostic_visible = 	{ sp = colors.base00, bg = colors.base01a, fg = colors.base04, },
	},
})
