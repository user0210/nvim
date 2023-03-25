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
			"help",
			"man",
			"DressingSelect",
			"tsplayground",
			"lazy",
			"lspinfo",
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
		vim.opt_local.signcolumn = "auto"
	end,
})
