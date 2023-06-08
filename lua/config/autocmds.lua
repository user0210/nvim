-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- auto-start
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("Neotree show")
	end,
})

-- auto-close
vim.api.nvim_create_autocmd({ "QuitPre" }, {
	pattern = "*",
	callback = function()
		local exclude = {
			-- augroup "close_with_q"
			"PlenaryTestPopup",
			"help",
			"lspinfo",
			"man",
			"notify",
			"qf",
			"spectre_panel",
			"startuptime",
			"tsplayground",
			"neotest-output",
			"checkhealth",
			"neotest-summary",
			"neotest-output-panel",
			-- other stuff
			"DressingSelect",
			"tsplayground",
			"lazy",
			"mason",
			"undotree",
			"diff",
		}
		if vim.tbl_contains(exclude, vim.bo.filetype) then
			return
		else
			vim.cmd("MinimapClose")
			vim.cmd("UndotreeHide")
		end
	end,
})

-- sign-column not for all
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"undotree",
	},
	callback = function()
		vim.opt_local.signcolumn = "number"
	end,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"help",
	},
	callback = function()
		vim.opt_local.signcolumn = "yes"
	end,
})

-- -- color non-code windowscolors
-- vim.api.nvim_create_autocmd({ "FileType" }, {
-- 	pattern = {
-- 		"help",
-- 		"man",
-- 		"undotree",
-- 		"diff",
-- 		"diffpanel",
-- 		"minimap",
-- 		"mason",
-- 		"Trouble",
-- 	},
-- 	callback = function()
-- 		vim.opt_local.winhighlight = "Normal:NoCode,CursorLine:NoCodeCursor,CursorLineNr:NoCodeCursor,CursorLineSign:NoCodeCursor,CursorLineFold:NoCodeCursor,SignColumn:NoCodeSign"
-- 	end,
-- })
