local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

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
		separator_style = "thin", -- | "thick" | "thin" | "slant" | "padded_slant" | { 'any', 'any' },
	},
-- Importend: change this in ~/.local/share/nvim/site/pack/packer/start/bufferline.nvim/lua/bufferline/constants.lua
-- [M.sep_names.slant] = { "", "" },
-- [M.sep_names.padded_slant] = { "" .. M.padding, "" },
	highlights = {
		-- separators
		separator = {
			bg = "NONE",
			fg = { attribute = "bg", highlight = "TabLine" },
		},
		separator_selected = {
			bg = "NONE",
			fg = { attribute = "bg", highlight = "TabLineSel" },
		},
		separator_visible = {
			bg = "NONE",
			fg = { attribute = "bg", highlight = "TabLineSel" },
		},
		-- hidden tab
		background = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		tab = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		close_button = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		diagnostic = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		info = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		info_diagnostic = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		warning = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		warning_diagnostic = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		error = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		error_diagnostic = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		modified = {
			bg = { attribute = "bg", highlight = "TabLine" },
			italic = false, bold = true,
		},
		duplicate = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		pick = {
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		-- selected and visible tab
		close_button_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		buffer_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			italic = false, bold = true,
		},
		tab_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			italic = false, bold = true,
		},
		diagnostic_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_diagnostic_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_diagnostic_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_diagnostic_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		modified_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			italic = false, bold = true,
		},
		duplicate_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		indicator_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			fg = { attribute = "fg", highlight = "TabLineSel" },
		},
		pick_selected = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		close_button_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		buffer_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		diagnostic_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_diagnostic_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_diagnostic_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_diagnostic_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		modified_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			italic = false, bold = true,
		},
		duplicate_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
		indicator_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
			fg = { attribute = "fg", highlight = "TabLineSel" },
		},
		pick_visible = {
			bg = { attribute = "bg", highlight = "TabLineSel" },
		},
	},
})
