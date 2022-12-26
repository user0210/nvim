-- local M = {
-- 	"nvim-lualine/lualine.nvim",
-- }
-- function M.config()

local lualine = require("lualine")
local colors = require("colorscheme").colors
require("lualine.themes.auto")

vim.api.nvim_set_hl(0, 'WinBar',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'WinBarNC',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'WinBarLeft', 	        	{ fg = colors.base01a, bg = colors.base01a })

local templer = {
	normal = {
		a = { bg = colors.base0Da, fg = colors.base0D },
		b = { bg = colors.base0Da, fg = colors.base01 },
		c = { bg = colors.base0Da, fg = colors.base01 },
		x = { bg = colors.base0Da, fg = colors.base01 },
		y = { bg = colors.base0Da, fg = colors.base01 },
		z = { bg = colors.base0Da, fg = colors.base01 },
	},
	inactive = {
		a = { bg = colors.base02, fg = colors.base00 },
		b = { bg = colors.base02, fg = colors.base00 },
		c = { bg = colors.base01a, fg = colors.base02 },
		x = { bg = colors.base01a, fg = colors.base02 },
		y = { bg = colors.base01a, fg = colors.base02 },
		z = { bg = colors.base01a, fg = colors.base02 },
	},
	insert = {
		a = { bg = colors.base0D, fg = colors.base00 },
		z = { bg = colors.base0Da, fg = colors.base01 },
	},
	replace = {
		a = { bg = colors.base09a, fg = colors.base00 },
		z = { bg = colors.base0Da, fg = colors.base01 },
	},
	visual = {
		a = { bg = colors.base0E, fg = colors.base00 },
		z = { bg = colors.base0Da, fg = colors.base01 },
	},
	command = {
		a = { bg = colors.base0C, fg = colors.base00 },
		z = { bg = colors.base0Da, fg = colors.base01 },
	},
}

-- COMPONENTS

local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed,
		}
	end
end

local diff = {
	"diff",
	colored = false, -- Displays a colored diff status if set to true
	diff_color = {
		-- Same color values as the general color option can be used here.
		-- added = "DiffAdd", -- Changes the diff's added color
		-- modified = "DiffChange", -- Changes the diff's modified color
		-- removed = "DiffDelete", -- Changes the diff's removed color you
	},
	symbols = { added = "+", modified = "~", removed = "-" }, -- Changes the symbols used by the diff.
	source = diff_source, -- A function that works as a data source for diff.
	-- It must return a table as such:
	--   { added = add_count, modified = modified_count, removed = removed_count }
	-- or nil on failure. count <= 0 won't be displayed.
	padding = 1,
}

local diagnostics = {
	"diagnostics",

	-- Table of diagnostic sources, available sources are:
	--   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
	-- or a function that returns a table as such:
	--   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
	sources = { "nvim_diagnostic" },

	-- Displays diagnostics for the defined severity types
	-- sections = { 'error', 'warn', 'info', 'hint' },
	sections = { "error", "warn" },

	--diagnostics_color = {
	--  -- Same values as the general color option can be used here.
	--  error = 'DiagnosticError', -- Changes diagnostics' error color.
	--  warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
	--  info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
	--  hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
	--},
	symbols = { error = " ", warn = " ", info = "I", hint = "H" },
	colored = true, -- Displays diagnostics status in color if set to true.
	update_in_insert = false, -- Update diagnostics in insert mode.
	always_visible = true, -- Show diagnostics even if there are none.
	padding = 1,
}

local mode = {
	"mode",
	icons_enabled = true, -- Enables the display of icons alongside the component.
	-- Defines the icon to be displayed in front of the component.
	-- Can be string|table
	-- As table it must contain the icon as first entry and can use
	-- color option to custom color the icon. Example:
	-- {'branch', icon = ''} / {'branch', icon = {'', color={fg='green'}}}

	-- icon position can also be set to the right side from table. Example:
	-- {'branch', icon = {'', align='right', color={fg='green'}}}
	icon = nil,

	separator = { left = "", right = "" }, -- Determines what separator to use for the component.
	-- Note:
	--  When a string is provided it's treated as component_separator.
	--  When a table is provided it's treated as section_separator.
	--  Passing an empty string disables the separator.
	--
	-- These options can be used to set colored separators
	-- around a component.
	--
	-- The options need to be set as such:
	--   separator = { left = '', right = ''}
	--
	-- Where left will be placed on left side of component,
	-- and right will be placed on its right.
	--

	cond = nil, -- Condition function, the component is loaded when the function returns `true`.

	-- Defines a custom color for the component:
	--
	-- 'highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' } | function
	-- Note:
	--  '|' is synonymous with 'or', meaning a different acceptable format for that placeholder.
	-- color function has to return one of other color types ('highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' })
	-- color functions can be used to have different colors based on state as shown below.
	--
	-- Examples:
	--   color = { fg = '#ffaa88', bg = 'grey', gui='italic,bold' },
	--   color = { fg = 204 }   -- When fg/bg are omitted, they default to the your theme's fg/bg.
	--   color = 'WarningMsg'   -- Highlight groups can also be used.
	color = function()
		if vim.api.nvim_get_mode()["mode"]:match("n") ~= nil then
			return { fg = colors.base07 }
		else
			return { fg = colors.base00 }
		end
	end,

	-- Specify what type a component is, if omitted, lualine will guess it for you.
	--
	-- Available types are:
	--   [format: type_name(example)], mod(branch/filename),
	--   stl(%f/%m), var(g:coc_status/bo:modifiable),
	--   lua_expr(lua expressions), vim_fun(viml function name)
	--
	-- Note:
	-- lua_expr is short for lua-expression and vim_fun is short for vim-function.
	type = nil,

	padding = { left = 0, right = 1 },
	-- Padding can be specified to left or right independently, e.g.:
	--   padding = { left = left_padding, right = right_padding }

	fmt = nil, -- Format function, formats the component's output.
	on_click = nil, -- takes a function that is called when component is clicked with mouse.
	-- the function receives several arguments
	-- - number of clicks incase of multiple clicks
	-- - mouse button used (l(left)/r(right)/m(middle)/...)
	-- - modifiers pressed (s(shift)/c(ctrl)/a(alt)/m(meta)...)
}

local filename = {
	"filename",
	file_status = true, -- Displays file status (readonly status, modified status)
	newfile_status = false, -- Display new file status (new file means no write after created)
	path = 0, -- 0: Just the filename
	-- 1: Relative path
	-- 2: Absolute path
	-- 3: Absolute path, with tilde as the home directory

	shorting_target = 40, -- Shortens path to leave 40 spaces in the window
	-- for other components. (terrible name, any suggestions?)
	symbols = {
		modified = "[+]", -- Text to show when the file is modified.
		readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
		unnamed = "[No Name]", -- Text to show for unnamed buffers.
		newfile = "[New]", -- Text to show for new created file before first writting
	},
	padding = { left = 0, right = 2 },
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
	padding = 1,
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
	on_click = function()
		vim.cmd("LspInfo")
	end,
	padding = 1,
}

local location = {
	"location",
	padding = 1,
}

local encoding = {
	"encoding",
	padding = 1,
}

local spaces = {
	"spaces",
	fmt = function()
		return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
	end,
	padding = 1,
}

local surroundL = {
	"surroundL",
	fmt = function()
		return "▎ "
	end,
	padding = 0,
}

local surroundR = {
	"surroundR",
	fmt = function()
		return "▕"
	end,
	padding = 0,
	color = { fg = colors.base01a },
}

local minimap = {
	"minimap",
	fmt = function()
		if vim.g.minimap_auto_start == 0 then
			return ">>"
		else
			return "<<"
		end
	end,
	on_click = function()
		if vim.g.minimap_auto_start == 0 then
			vim.g.minimap_auto_start = 1
			vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
				callback = function()
					vim.cmd("Minimap")
				end,
				group = vim.api.nvim_create_augroup("minimaptoggle", { clear = true }),
			})
			vim.cmd("Minimap")
			vim.cmd("ScrollbarHide")
		else
			vim.g.minimap_auto_start = 0
			vim.api.nvim_del_augroup_by_name("minimaptoggle")
			vim.cmd("MinimapClose")
			vim.cmd("ScrollbarShow")
		end
	end,
	padding = { left = 1, right = 0 },
}

local progress = {
	"progress",
	fmt = function()
		local current_line = vim.fn.line(".")
		local total_lines = vim.fn.line("$")
		local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "  " }
		local line_ratio = current_line / total_lines
		local index = math.ceil(line_ratio * #chars)
		if current_line == 1 then
			return ""
		elseif line_ratio == 1 then
			return ""
		else
			return chars[index]
		end
	end,
	padding = 0,
	color = { fg = colors.base01a },
}

local navic = {
	"navic",
	fmt = function()
		return "%{%v:lua.require'nvim-navic'.get_location()%}%="
	end,
	padding = 0,
	color = { bg = colors.base01a },
--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸  ▏▕
}

local winbarL = {
	"winbarL",
	fmt = function()
		return [[%#WinBarLeft#%L   ]]
	end,
	padding = 0,
}


-- SETUP

lualine.setup({
	options = {
		icons_enabled = true,
		theme = templer,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {
				"dashboard",
				"NvimTree",
				"Outline",
				"minimap",
				"undotree",
				"diff",
			},
			winbar = {
				"help",
				"packer",
				"NvimTree",
				"toggleterm",
				"dapui_scopes",
				"dapui_breakpoints",
				"dapui_stacks",
				"dapui_watches",
				"dap-repl",
				"lspinfo",
				"mason",
				"minimap",
				"diff",
				"",
			},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 200,
			winbar = 500,
		},
	},
	sections = {
		lualine_a = { surroundL, mode },
		lualine_b = { branch },
		lualine_c = { diagnostics, diff },
		lualine_x = { encoding, filetype },
		lualine_y = { spaces, location },
		lualine_z = { minimap, surroundR },
	},
	inactive_sections = {
		lualine_a = { surroundL },
		lualine_b = { filename },
		lualine_c = {},
		lualine_x = { location },
		lualine_y = {},
		lualine_z = {},
	},
	winbar = {
		lualine_b = { winbarL, navic },
		lualine_y = {},
	},
	inactive_winbar = {
		lualine_b = { navic },
		lualine_y = {},
	},
	tabline = {},
	extensions = {},
})

-- end
-- return M
