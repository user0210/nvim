-- local M = {
-- 	"wfxr/minimap.vim",
-- }
-- function M.config()

vim.g.minimap_width = 6
vim.g.minimap_auto_start = 0
vim.g.minimap_auto_start_win_enter = 0
vim.g.minimap_block_filetypes = {'tagbar', 'fzf', 'telescope', 'NvimTree'}
vim.g.minimap_block_buftypes = {'nofile', 'nowrite', 'quickfix', 'terminal', 'prompt', 'NvimTree'}
vim.g.minimap_close_filetypes = {'NvimTree'}
vim.g.minimap_highlight_range = 1
vim.g.minimap_highlight_search = 1
vim.g.minimap_git_colors = 1

-- refresh search results
vim.api.nvim_set_keymap("n", "n", "<cmd>MinimapRefresh<cr>nzzzv", {noremap = true, silent = true} )
vim.api.nvim_set_keymap("n", "N", "<cmd>MinimapRefresh<cr>Nzzzv", {noremap = true, silent = true} )

-- auto-unfocus minimap
vim.api.nvim_create_autocmd("CursorHold", {
	nested = true,
	callback = function()
		if vim.api.nvim_buf_get_name(0):match("-MINIMAP-") ~= nil then
			vim.cmd("wincmd p")
		end
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
		end
	end,
})

-- end
-- return M
