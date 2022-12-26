-- Autostart
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		-- NvimTree
		vim.cmd("command NvimTreeNoFocus :lua require('nvim-tree').toggle(false, true)")
		vim.cmd("call timer_start(200, { tid -> execute('NvimTreeNoFocus')})")
	end,
})

-- signcolumn not in undotree
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = {
		"NvimTree",
		"undotree",
		"diff",
	},
	callback = function()
		vim.opt.signcolumn = "auto"
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
			"undotree",
			"diff",
		}
		if vim.tbl_contains(exclude, vim.bo.filetype) then
			return
		else
			vim.cmd("NvimTreeClose | MinimapClose")
		end
	end,
})

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
