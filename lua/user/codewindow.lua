local status_ok, codewindow = pcall(require, "codewindow")
if not status_ok then
	return
end

codewindow.setup({
	active_in_terminals = false, -- Should the minimap activate for terminal buffers
	auto_enable = false, -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
	exclude_filetypes = {
		"NvimTree",
		"packer",
	}, -- Choose certain filetypes to not show minimap on
	max_minimap_height = nil, -- The maximum height the minimap can take (including borders)
	max_lines = nil, -- If auto_enable is true, don't open the minimap for buffers which have more than this many lines.
	minimap_width = 10, -- The width of the text part of the minimap
	use_lsp = true, -- Use the builtin LSP to show errors and warnings
	use_treesitter = false, -- Use nvim-treesitter to highlight the code
	use_git = true, -- Show small dots to indicate git additions and deletions
	width_multiplier = 4, -- How many characters one dot represents
	z_index = 1, -- The z-index the floating window will be on
	show_cursor = true, -- Show the cursor position in the minimap
	window_border = "single", -- The border style of the floating window (accepts all usual options)
})

codewindow.apply_default_keybinds()

vim.api.nvim_create_user_command('CodewindowToggle', codewindow.toggle_minimap, {})
vim.api.nvim_create_user_command('CodewindowOpen', codewindow.open_minimap, {})
vim.api.nvim_create_user_command('CodewindowClose', codewindow.close_minimap, {})

-- CodewindowBorder -- the border highlight
-- CodewindowBackground -- the background highlight
-- CodewindowWarn -- the color of the warning dots
-- CodewindowError -- the color of the error dots
-- CodewindowAddition -- the color of the addition git sign
-- CodewindowDeletion -- the color of the deletion git sign
-- CodewindowUnderline -- the color of the underlines on the minimap
