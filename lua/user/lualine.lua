local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local templer = require'lualine.themes.base16'

local base_status_ok, base16 = pcall(require, "base16-colorscheme")
if not base_status_ok then
	return
end

local colors = base16.colors


local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
	cond = hide_in_width,
}

local mode = {
	"mode",
	fmt = function(str)
		return "-- " .. str .. " --"
	end,
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
	padding = 0,
}

local gap = {
	"gap",
	fmt = function()
		return " "
	end,
	padding = 0,
}

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local rightend = function()
	vim.cmd([[augroup LualineRight]])
	vim.api.nvim_set_hl(0, 'LualineRight', { fg = colors.base00, bg = colors.base0Da })
	return [[%#LualineRight#░▒▓]]
end

local rightendNC = function()
	vim.cmd([[augroup LualineRightNC]])
	vim.api.nvim_set_hl(0, 'LualineRightNC', { fg = colors.base00, bg = colors.base01a })
	return [[%#LualineRightNC#░▒▓]]
end

-- customize theme
templer.normal.a.bg = colors.base0Da
templer.normal.b.bg = colors.base0Da
templer.normal.c.bg = colors.base0Da
templer.normal.a.fg = colors.base06
templer.normal.b.fg = colors.base06
templer.normal.c.fg = colors.base06

templer.replace.a.bg = colors.base09a
templer.replace.b.bg = colors.base0Da
templer.replace.a.fg = colors.base00
templer.replace.b.fg = colors.base06

templer.insert.a.bg = colors.base0D
templer.insert.b.bg = colors.base0Da
templer.insert.a.fg = colors.base00
templer.insert.b.fg = colors.base06

templer.visual.a.bg = colors.base0E
templer.visual.b.bg = colors.base0Da
templer.visual.a.fg = colors.base00
templer.visual.b.fg = colors.base06

templer.inactive.a.bg = colors.base01a
templer.inactive.b.bg = colors.base01a
templer.inactive.c.bg = colors.base01a
templer.inactive.a.fg = colors.base06
templer.inactive.b.fg = colors.base06
templer.inactive.c.fg = colors.base06


lualine.setup({
	options = {
		icons_enabled = true,
		theme = templer,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
		padding = { left = 1, right = 0 },
	},
	sections = {
		lualine_a = { mode, gap },
		lualine_b = { branch, diagnostics },
		lualine_c = {},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { diff, spaces, "encoding", filetype },
		lualine_y = { gap, location },
		lualine_z = { rightend },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = { rightendNC },
	},
	tabline = {},
	extensions = {},
})
