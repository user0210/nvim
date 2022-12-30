-- local M = {
-- 	"nvim-lualine/lualine.nvim",
-- }
-- function M.config()

local lualine = require("lualine")
local colors = require("colorscheme").colors
require("lualine.themes.auto")

local bg = colors.base0Da

vim.api.nvim_set_hl(0, 'WinBar',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'WinBarNC',					{ bg = colors.base01a })

vim.api.nvim_set_hl(0, 'StatusLineNC',				{ bg = colors.base01a, fg = colors.base02})
vim.api.nvim_set_hl(0, 'StatusLine',				{ bg = bg, fg = colors.base00})

local templer = {
	normal = {
		a = { bg = bg, fg = colors.base0D },
		b = { bg = bg, fg = colors.base01 },
		c = { bg = bg, fg = colors.base01 },
		x = { bg = bg, fg = colors.base01 },
		y = { bg = bg, fg = colors.base01 },
		z = { bg = bg, fg = colors.base01 },
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
		a = { bg = colors.base0D, fg = colors.base0Da },
		z = { bg = bg, fg = colors.base01 },
	},
	replace = {
		a = { bg = colors.base09, fg = colors.base09a },
		z = { bg = bg, fg = colors.base01 },
	},
	visual = {
		a = { bg = colors.base0E, fg = colors.base0Ea },
		z = { bg = bg, fg = colors.base01 },
	},
	command = {
		a = { bg = colors.base0C, fg = colors.base0Ca },
		z = { bg = bg, fg = colors.base01 },
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
	colored = true,
	diff_color = {
		added = { bg = bg, fg = colors.base0B },
		modified = { bg = bg, fg = colors.base0D },
		removed = { bg = bg, fg = colors.base08 },
	},
	symbols = { added = "+", modified = "~", removed = "-" },
	source = diff_source,
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_lsp", "nvim_diagnostic" },
	sections = { "error", "warn" }, -- sections = { 'error', 'warn', 'info', 'hint' },
	--diagnostics_color = {
	--  -- Same values as the general color option can be used here.
	--  error = 'DiagnosticError', -- Changes diagnostics' error color.
	--  warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
	--  info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
	--  hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
	--},
	symbols = { error = " ", warn = " ", info = "I", hint = "H" },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

local mode = {
	"mode",
	icons_enabled = true,
	icon = nil, -- {'branch', icon = ''} / {'branch', icon = {'', align='right', color={fg='green'}}}
	separator = { left = " ", right = "" },
	cond = nil, -- Condition function, the component is loaded when the function returns `true`.
	color = function()
		if vim.api.nvim_get_mode()["mode"]:match("n") ~= nil then
			return { fg = colors.base05 }
		else
			return { fg = colors.base00 }
		end
	end,
	type = nil,
	padding = { left = 0, right = 1 },
	fmt = nil, -- Format function, formats the component's output.
	on_click = nil,
}

local filename = {
	"filename",
	file_status = true,
	newfile_status = false,
	path = 0, -- 0: Just the filename
	-- 1: Relative path
	-- 2: Absolute path
	-- 3: Absolute path, with tilde as the home directory
	shorting_target = 40,
	symbols = {
		modified = "[+]",
		readonly = "[-]",
		unnamed = "[No Name]",
		newfile = "[New]",
	},
	padding = { left = 0, right = 2 },
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
	on_click = function()
		vim.cmd("LspInfo")
	end,
}

local spaces = {
	"spaces",
	fmt = function()
		return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
	end,
}

local surroundL = {
	"surroundL",
	fmt = function() return "▎ " end,
	padding = 0,
}

local surroundR = {
	"surroundR",
	fmt = function() return "▕" end,
	padding = 0,
	color = { fg = colors.base01a },
}

local winbarL = {
	"winbarL",
	fmt = function() return "%L   " end,
	padding = 0,
	color = { fg = colors.base01a, bg = colors.base01a }
}

local tabclose = {
	"tabclose",
	fmt = function() return "" end,
	on_click = function() vim.cmd("tabclose") end,
	color = { fg = colors.base03, bg = colors.base01a }
}

local spread = {
	"spread",
	fmt = function() return "%=" end,
	padding = 0,
	color = { fg = colors.base01, bg = colors.base00 }
}

local minimap = {
	"minimap",
	fmt = function()
		if vim.g.minimap_auto_start == 1 then return ">>" else return "<<" end
	end,
	on_click = function()
		if vim.g.minimap_auto_start == nil then
			vim.cmd("MinimapRefresh")
		end
		if vim.g.minimap_auto_start == 1 then
			vim.g.minimap_auto_start = 0
			vim.api.nvim_del_augroup_by_name("minimaptoggle")
			vim.cmd("MinimapClose")
			vim.cmd("ScrollbarShow")
			lualine.refresh({ place = { 'statusline' } })
		else
			vim.g.minimap_auto_start = 1
			vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
				callback = function()
					vim.cmd("Minimap")
				end,
				group = vim.api.nvim_create_augroup("minimaptoggle", { clear = true }),
				lualine.refresh({ place = { 'statusline' } })
			})
			vim.cmd("Minimap")
			vim.cmd("ScrollbarHide")
		end
	end,
	padding = { left = 1, right = 0 },
}

local navic = {
	"navic",
	fmt = function() return "%{%v:lua.require'nvim-navic'.get_location()%}%=" end,
	padding = 0,
	color = { bg = colors.base01a },
}

local tabs = {
	"tabs",
	max_length = vim.o.columns / 3,
	mode = 0,
	-- 0: Shows tab_nr
	-- 1: Shows tab_name
	-- 2: Shows tab_nr + tab_name

	tabs_color = {
		active = { bg = colors.base01a, fg = colors.base04 },
		inactive = { bg = colors.base02, fg = colors.base00 },
	},
	separator = { left = "█", right = "█" },
	fmt = function(name, context)
		-- Show + if buffer is modified in tab
		local buflist = vim.fn.tabpagebuflist(context.tabnr)
		local winnr = vim.fn.tabpagewinnr(context.tabnr)
		local bufnr = buflist[winnr]
		local mod = vim.fn.getbufvar(bufnr, '&mod')

		return name .. (mod == 1 and ' +' or '')
	end,
}

-- local progress = {
-- 	"progress",
-- 	fmt = function()
-- 		local current_line = vim.fn.line(".")
-- 		local total_lines = vim.fn.line("$")
-- 		local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "  " }
-- 		local line_ratio = current_line / total_lines
-- 		local index = math.ceil(line_ratio * #chars)
-- 		if current_line == 1 then
-- 			return ""
-- 		elseif line_ratio == 1 then
-- 			return ""
-- 		else
-- 			return chars[index]
-- 		end
-- 	end,
-- 	padding = 0,
-- 	color = { fg = colors.base01a },
-- }
--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸  ▏▕

local noice = {
	require("noice").api.statusline.mode.get,
	cond = require("noice").api.statusline.mode.has,
	color = function()
		if vim.api.nvim_get_mode()["mode"]:match("n") ~= nil then
			return { fg = colors.base05 }
		else
			return { fg = colors.base00 }
		end
	end,
	separator = { left = " ", right = "" },
	padding = { left = 0, right = 1 },
}

-- extensions
local minimap_bar = { sections = {}, filetypes = { 'minimap' } }


-- SETUP

lualine.setup({
	options = {
		icons_enabled = true,
		theme = templer,
		always_divide_middle = false,
		globalstatus = false,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		ignore_focus = {},
		disabled_filetypes = {
			statusline = {
				"dashboard",
				"NvimTree",
				"Outline",
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
				"diff",
				"",
			},
		},
	},
	sections = {
		lualine_a = { surroundL, mode, noice },
		lualine_b = { "branch" },
		lualine_c = { diagnostics },
		lualine_x = { diff, "encoding", filetype },
		lualine_y = { spaces, "location" },
		lualine_z = { minimap, surroundR },
	},
	inactive_sections = {
		lualine_a = { surroundL },
		lualine_b = { filename },
		lualine_c = {},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	winbar = { lualine_a = { winbarL, navic } },
	inactive_winbar = { lualine_a = { winbarL } },
	tabline = { lualine_a = { spread, tabs, tabclose } },

	extensions = { "nvim-tree", "nvim-dap-ui", "toggleterm", minimap_bar },
})

require('lualine').hide({ place = { "tabline" } })

-- end
-- return M
