local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	-- Enable/disable animations
	animation = true,

	-- Enable/disable auto-hiding the tab bar when there is a single buffer
	auto_hide = false,

	-- Enable/disable current/total tabpages indicator (top right corner)
	tabpages = false,

	-- Enable/disable close button
	closable = true,

	-- Enables/disable clickable tabs
	--  - left-click: go to buffer
	--  - middle-click: delete buffer
	clickable = true,

	-- Excludes buffers from the tabline
	exclude_ft = { "javascript" },
	exclude_name = { "package.json" },

	-- Hide inactive buffers and file extensions. Other options are `current` and `visible`
	hide = { extensions = false, inactive = false },

	-- Enable/disable icons
	-- if set to 'numbers', will show buffer index in the tabline
	-- if set to 'both', will show buffer index and icons in the tabline
	icons = true,

	-- If set, the icon color will follow its corresponding buffer
	-- highlight group. By default, the Buffer*Icon group is linked to the
	-- Buffer* group (see Highlighting below). Otherwise, it will take its
	-- default value as defined by devicons.
	icon_custom_colors = true,

	-- Configure icons on the bufferline.
	icon_separator_active = "▎",
	icon_separator_inactive = "▎",
	icon_close_tab = "",
	icon_close_tab_modified = "●",
	icon_pinned = "車",

	-- If true, new buffers will be inserted at the start/end of the list.
	-- Default is to insert after current buffer.
	insert_at_end = false,
	insert_at_start = false,

	-- Sets the maximum padding width with which to surround each tab
	minimum_padding = 1,

	-- Sets the maximum buffer name length.
	maximum_length = 30,

	-- If set, the letters for each buffer in buffer-pick mode will be
	-- assigned based on their name. Otherwise or in case all letters are
	-- already assigned, the behavior is to assign letters in order of
	-- usability (see order below)
	semantic_letters = true,

	-- New buffer letters are assigned in this order. This order is
	-- optimal for the qwerty keyboard layout but might need adjustement
	-- for other layouts.
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

	-- Sets the name of unnamed buffers. By default format is "[Buffer X]"
	-- where X is the buffer number. But only a static string is accepted here.
	no_name_title = nil,
})

local nvim_tree_events = require("nvim-tree.events")
local bufferline_api = require("bufferline.api")

local function get_tree_size()
	return require("nvim-tree.view").View.width
end

nvim_tree_events.subscribe("TreeOpen", function()
	bufferline_api.set_offset(get_tree_size() + 1)
end)

nvim_tree_events.subscribe("Resize", function()
	bufferline_api.set_offset(get_tree_size() + 1)
end)

nvim_tree_events.subscribe("TreeClose", function()
	bufferline_api.set_offset(0)
end)


local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'BufferCurrent',				{ bg = colors.base01a, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferCurrentIndex',		{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferCurrentMod',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferCurrentSign',			{ bg = colors.base01a, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'BufferCurrentTarget',		{ bg = colors.base01a, fg = colors.base08 })
vim.api.nvim_set_hl(0, 'BufferCurrentIcon',			{ bg = colors.base01a, fg = colors.base0Da })
vim.api.nvim_set_hl(0, 'BufferInactive',			{ bg = colors.base01, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferInactiveIndex',		{ bg = colors.base01, fg = colors.base02 })
vim.api.nvim_set_hl(0, 'BufferInactiveMod',			{ bg = colors.base01, fg = colors.base04 })
vim.api.nvim_set_hl(0, 'BufferInactiveSign',		{ bg = colors.base01, fg = colors.base00 })
vim.api.nvim_set_hl(0, 'BufferInactiveTarget',		{ bg = colors.base01, fg = colors.base02 })
vim.api.nvim_set_hl(0, 'BufferInactiveIcon',		{ bg = colors.base01, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferTabpageFill',			{ bg = "NONE", fg = colors.base00 })
vim.api.nvim_set_hl(0, 'BufferTabpages',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisible',				{ bg = colors.base01a, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferVisibleIndex',		{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisibleMod',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisibleSign',			{ bg = colors.base01a, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'BufferVisibleTarget',		{ bg = colors.base01a, fg = colors.base08 })
vim.api.nvim_set_hl(0, 'BufferVisibleIcon',			{ bg = colors.base01a, fg = colors.base0Da })
--      Current: current buffer
--      Visible: visible but not current buffer
--     Inactive: invisible but not current buffer
--        -Icon: filetype icon
--       -Index: buffer index
--         -Mod: when modified
--        -Sign: the separator between buffers
--      -Target: letter in buffer-picking mode
