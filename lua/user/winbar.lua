local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'WinBar',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'WinBarNC',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicNumbers', 	        	{ fg = colors.base01a, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicSurround', 	       	{ fg = colors.base00, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicProgress', 	        { fg = colors.base01, bg = colors.base02 })


local M = {}

M.winbar_filetype_exclude = {
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
	"undotree",
	"",
}

M.winbar_filetype_empty = {
	"diffpanel",
}

local excludes = function()
	if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
		vim.opt_local.winbar = nil
		return true
	end
	return false
end

local empty = function()
	if vim.tbl_contains(M.winbar_filetype_empty, vim.bo.filetype) then
		return true
	end
	return false
end

M.get_winbar = function()
	if excludes() then
		return
	end

	local progress = function()
		local current_line = vim.fn.line(".")
		local total_lines = vim.fn.line("$")
		local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "  " }
		local line_ratio = current_line / total_lines
		local index = math.ceil(line_ratio * #chars)
		if current_line == 1 then
			return "%#NavicProgressStart#"
		elseif line_ratio == 1 then
			return  "%#NavicProgressEnd#"
		else
			return chars[index]
		end
	end
	local progress_value = progress()

	local value = ""
	if empty() then
		value = " "
	else
		--value = value .. [[%#NavicNumbers#%L]] .. [[%#NavicProgress#]] .. progress_value .. [[%#NavicSurround#▏]] .. [[%#NavicText#]]
		--value = value .. "%{%v:lua.require'nvim-navic'.get_location()%}"

		value = value .. [[%#NavicNumbers#%L   ]] .. [[%#NavicText#]]
		value = value .. "%{%v:lua.require'nvim-navic'.get_location()%}%="
		--value = value .. [[%#NavicProgress#]] .. progress_value

		--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸  ▏▕
	end

	local status_ok, _ = pcall(vim.api.nvim_set_option_value, "winbar", value, { scope = "local" })
	if not status_ok then
		return
	end
end

return M
