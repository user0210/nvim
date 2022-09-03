local M = {}

M.winbar_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
	"alpha",
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
}

local excludes = function()
	if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
		vim.opt_local.winbar = nil
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
			return "%#NavicProgressStart#⠉⠉"
		elseif line_ratio == 1 then
			return  "%#NavicProgressEnd#⣀⣀"
		else
			return chars[index]
		end
	end
	local progress_value = progress()

	local value = [[%#NavicNumbers#⠰⠆%L ]] .. [[%#NavicLeftSep#▏]] .. [[%#NavicNumbers#⠶ ]] .. [[%#NavicText#]]
	value = value .. "%{%v:lua.require'nvim-navic'.get_location()%}"
	value = value .. [[%#NavicNumbers#]] .. "%=⠶ "
--	value = value .. [[%#NavicProgress#]] .. progress_value .. [[%=%#NavicRight#░▒▓]]
--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸ 

--	align right
--	value = value .. "%=%{%v:lua.require'nvim-navic'.get_location()%}   "
--	value = value .. [[%#NavicRight#░▒▓]]

	local status_ok, _ = pcall(vim.api.nvim_set_option_value, "winbar", value, { scope = "local" })
	if not status_ok then
		return
	end
end

return M

