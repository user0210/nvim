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
		indicator_icon = "▎",
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
		separator_style = "padded_slant", -- | "thick" | "thin" | { 'any', 'any' },
	},
-- Importend: change this in ~/.local/share/nvim/site/pack/packer/start/bufferline.nvim/lua/bufferline/constants.lua
-- [M.sep_names.slant] = { "", "" },
-- [M.sep_names.padded_slant] = { "" .. M.padding, "" },
	highlights = {
		-- separators
		separator = {
			guibg = "NONE",
			guifg = { attribute = "bg", highlight = "TabLine" },
		},
		separator_selected = {
			guibg = "NONE",
			guifg = { attribute = "bg", highlight = "TabLineSel" },
		},
		separator_visible = {
			guibg = "NONE",
			guifg = { attribute = "bg", highlight = "TabLineSel" },
		},
		-- hidden tab
		background = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		tab = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		close_button = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		diagnostic = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		info = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		info_diagnostic = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		warning = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		warning_diagnostic = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		error = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		error_diagnostic = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		modified = {
			guibg = { attribute = "bg", highlight = "TabLine" },
			gui = 'bold',
		},
		duplicate = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		pick = {
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		-- selected and visible tab
		close_button_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		buffer_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
			gui = 'bold',
		},
		tab_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
			gui = 'bold',
		},
		diagnostic_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_diagnostic_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_diagnostic_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_diagnostic_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		modified_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
			gui = 'bold',
		},
		duplicate_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		indicator_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		pick_selected = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		close_button_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		buffer_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		diagnostic_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		info_diagnostic_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		warning_diagnostic_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		error_diagnostic_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		modified_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
			gui = 'bold',
		},
		duplicate_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		indicator_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
		pick_visible = {
			guibg = { attribute = "bg", highlight = "TabLineSel" },
		},
	},
})
