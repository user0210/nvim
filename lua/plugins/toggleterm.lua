-- local M = {
-- 	"akinsho/toggleterm.nvim",
-- }
-- function M.config()

local colors = require("colorscheme").colors

require("toggleterm").setup({
	size = 20,
	open_mapping = [[<a-T>]],
	hide_numbers = true,
	shade_terminals = false,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
	},
	highlights = {
		Normal 			= { guibg = colors.nocdBG, },
		CursorLine 		= { guibg = colors.nocdBG, },
		CursorLineSign	= { guibg = colors.nocdBG, },
	},
	on_open = function(terminal)
		local nvimtree = require "nvim-tree"
		local nvimtree_view = require "nvim-tree.view"
		if nvimtree_view.is_visible() and terminal.direction == "horizontal" then
			local nvimtree_width = vim.fn.winwidth(nvimtree_view.get_winnr())
			nvimtree.toggle()
			nvimtree_view.View.width = nvimtree_width
			nvimtree.toggle(false, true)
		end
	end,
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	-- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end


-- end
-- return M
