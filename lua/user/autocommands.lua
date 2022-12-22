-- Autostart
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		-- NvimTree
		vim.cmd("command NvimTreeNoFocus :lua require('nvim-tree').toggle(false, true)")
		vim.cmd("call timer_start(200, { tid -> execute('NvimTreeNoFocus')})")

		-- NvimTree with Minimap
		--vim.cmd("call timer_start(100, { tid -> execute('NvimTreeOpen')})")
		--vim.cmd("call timer_start(200, { tid -> execute('wincmd l')})")
	end,
})

-- unfocus minimap
vim.api.nvim_create_autocmd("CursorHold", {
	nested = true,
	callback = function()
		if vim.api.nvim_buf_get_name(0):match("-MINIMAP-") ~= nil then
			vim.cmd("wincmd p")
		end
	end,
})

-- close tree and minimap on quit
vim.api.nvim_create_autocmd({ "QuitPre" }, {
	pattern = "*",
	callback = function()
		local exclude = {
			"Jaq",
			"qf",
			"help",
			"man",
			"lspinfo",
			"spectre_panel",
			"lir",
			"DressingSelect",
			"tsplayground",
			"Markdown",
			"packer",
			"mason",
		}
		if vim.tbl_contains(exclude, vim.bo.filetype) then
			return
		else
			vim.cmd("NvimTreeClose | MinimapClose")
		end
	end,
})
-- vim.api.nvim_create_autocmd("BufEnter", {
-- 	nested = true,
-- 	callback = function()
-- 		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
-- 			vim.cmd("quit")
-- 		end
-- 	end,
-- })

-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"Jaq",
		"qf",
		"help",
		"man",
		"lspinfo",
		"spectre_panel",
		"lir",
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

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- Set Winbar
vim.api.nvim_create_autocmd(
	{ "CursorMoved", "CursorHold", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost", "TabClosed" },
	{
		callback = function()
			require("user.winbar").get_winbar()
		end,
	}
)

-- from CatM
vim.api.nvim_create_autocmd({ "VimResized" }, {
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
	callback = function()
		vim.cmd("quit")
	end,
})
