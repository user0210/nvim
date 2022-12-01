local M = {}

M.winbar_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
	"lir",
	"Outline",
	"spectre_panel",
	"toggleterm",
	"DressingSelect",
	"Jaq",
	"harpoon",
	"dapui_scopes",
	"dapui_breakpoints",
	"dapui_stacks",
	"dapui_watches",
	"dap-repl",
	"lspinfo",
	"Codewindow",
}

M.winbar_filetype_empty = {
	"minimap",
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
	--	local chars = { "█", "▇", "▆", "▅", "▄", "▃", "▂", "▁", " " }
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
		value = value .. [[%#NavicNumbers#%L]] .. [[%#NavicProgress#]] .. progress_value .. [[%#NavicSurround#▏]] .. [[%#NavicText#]]
		value = value .. "%{%v:lua.require'nvim-navic'.get_location()%}"
		--	align right
		--	value = value .. "%=%{%v:lua.require'nvim-navic'.get_location()%}   "
		--	value = value .. [[%#NavicRight#░▒▓]]
		--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸  ▏▕
	end

	local status_ok, _ = pcall(vim.api.nvim_set_option_value, "winbar", value, { scope = "local" })
	if not status_ok then
		return
	end
end

return M

