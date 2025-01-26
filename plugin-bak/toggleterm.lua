return {
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		cmd = { "ToggleTerm" },
		keys = {
			{ "<leader>Tf", "<cmd>ToggleTerm direction=float<cr>",             desc = "Float", },
			{ "<leader>Tt", "<cmd>ToggleTerm size=6 direction=horizontal<cr>", desc = "Horizontal", },
		},
		opts = function()
			return {
				size = 9,
				open_mapping = [[<a-T>]],
				hide_numbers = true,
				shade_terminals = false,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = true,
				direction = "horizontal",
				close_on_exit = true,
				shell = vim.o.shell,
				float_opts = {
					border = "curved",
				},
			}
		end,
	},
}

-- ToggleTerm keymaps..
--
-- function _G.set_terminal_keymaps()
-- 	local opts = { buffer = 0 }
-- 	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
-- 	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
-- 	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
-- 	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
-- 	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
-- 	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
-- 	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
-- end
--
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
