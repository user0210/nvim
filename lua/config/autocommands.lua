-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"help",
		"man",
		"lspinfo",
		"DressingSelect",
		"tsplayground",
		"Markdown",
	},
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      nnoremap <silent> <buffer> <esc> :close<CR> 
      set nobuflisted 
    ]])
	end,
})

-- auto-start
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("NeoTreeShow")
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

-- color non-code windows
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"help",
		"man",
		"undotree",
		"diff",
		"diffpanel",
		"minimap",
	},
	callback = function()
    		vim.opt_local.winhighlight = "Normal:NoCode,CursorLine:NoCodeCursor,SignColumn:NoCodeSign"
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

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"gitcommit",
		"markdown",
	},
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

-- -- from CatM
-- vim.api.nvim_create_autocmd({ "VimResized" }, {
-- 	callback = function()
-- 		vim.cmd("tabdo wincmd =")
-- 	end,
-- })
--
-- vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
-- 	callback = function()
-- 		vim.cmd("quit")
-- 	end,
-- })
