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
		numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
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
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		separator_style = "thick", -- | "thick" | "thin" | "slant" | "padded_slant" | { 'any', 'any' },
	},

-- Importend: change this in ~/.local/share/nvim/site/pack/packer/start/bufferline.nvim/lua/bufferline/constants.lua
-- [M.sep_names.slant] = { "", "" },
-- [M.sep_names.padded_slant] = { "" .. M.padding, "" },

	highlights = {
		-- separators 
		separator = 				{ bg = "NONE", fg = colors.base00a },
		separator_selected = 		{ bg = "NONE", fg = colors.base00a },
		separator_visible = 		{ bg = "NONE", fg = colors.base00a },
		-- hidden tab
		background = 				{ bg = colors.base00a },
		tab = 						{ bg = colors.base00a },
		close_button = 				{ bg = colors.base00a },
		diagnostic = 				{ bg = colors.base00a },
		info = 						{ bg = colors.base00a },
		info_diagnostic = 			{ bg = colors.base00a },
		warning = 					{ bg = colors.base00a },
		warning_diagnostic = 		{ bg = colors.base00a },
		error = 					{ bg = colors.base00a },
		error_diagnostic = 			{ bg = colors.base00a },
		modified = 					{ bg = colors.base00a, italic = false, bold = true },
		duplicate = 				{ bg = colors.base00a },
		pick = 						{ bg = colors.base00a },
		-- selected and visible tab
		close_button_selected = 	{ bg = colors.base01a, },
		buffer_selected = 			{ bg = colors.base01a, italic = false, bold = true, },
		tab_selected = 				{ bg = colors.base01a, italic = false, bold = true, },
		diagnostic_selected = 		{ bg = colors.base01a, },
		info_selected = 			{ bg = colors.base01a, },
		info_diagnostic_selected = 	{ bg = colors.base01a, },
		warning_selected = 			{ bg = colors.base01a, },
		warning_diagnostic_selected={ bg = colors.base01a, },
		error_selected = 			{ bg = colors.base01a, },
		error_diagnostic_selected = { bg = colors.base01a, },
		modified_selected = 		{ bg = colors.base01a, italic = false, bold = true, },
		duplicate_selected = 		{ bg = colors.base01a, },
		indicator_selected = 		{ bg = colors.base01a, fg = colors.base0D, },
		pick_selected = 			{ bg = colors.base01a, },
		close_button_visible = 		{ bg = colors.base01a, },
		buffer_visible =			{ bg = colors.base01a, },
		diagnostic_visible = 		{ bg = colors.base01a, },
		info_visible = 				{ bg = colors.base01a, },
		info_diagnostic_visible = 	{ bg = colors.base01a, },
		warning_visible = 			{ bg = colors.base01a, },
		warning_diagnostic_visible=	{ bg = colors.base01a, },
		error_visible = 			{ bg = colors.base01a, },
		error_diagnostic_visible = 	{ bg = colors.base01a, },
		modified_visible = 			{ bg = colors.base01a, italic = false, bold = true, },
		duplicate_visible = 		{ bg = colors.base01a, },
		indicator_visible = 		{ bg = colors.base01a, fg = colors.base0D, },
		pick_visible = 				{ bg = colors.base01a, },
	},
})
