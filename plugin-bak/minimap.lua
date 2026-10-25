return {
	{
		"wfxr/minimap.vim",
		cmd = { "MinimapClose" },
		keys = {
			{
				"<leader>um",
				function()
					vim.cmd("ScrollbarToggle")
					vim.cmd("MinimapToggle")
				end,
				desc = "Minimap",
			},
		},
		config = function()
			vim.g.minimap_width = 6
			vim.g.minimap_auto_start = 0
			vim.g.minimap_auto_start_win_enter = 0
			vim.g.minimap_block_filetypes = { "tagbar", "fzf", "telescope", "neo-tree", "snacks_layout_box", "snacks_picker_list", "undotree" }
			vim.g.minimap_block_buftypes = { "nofile", "nowrite", "quickfix", "terminal", "prompt", "neo-tree", "snacks_layout_box", "snacks_picker_list", "undotree" }
			vim.g.minimap_close_filetypes = { "neo-tree", "snacks_layout_box", "snacks_picker_list" }
			vim.g.minimap_highlight_range = 1
			vim.g.minimap_highlight_search = 1
			vim.g.minimap_git_colors = 1

			-- refresh search results
			vim.api.nvim_set_keymap("n", "n", "<cmd>MinimapRefresh<cr>nzzzv", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "N", "<cmd>MinimapRefresh<cr>Nzzzv", { noremap = true, silent = true })

			-- auto-unfocus minimap
			vim.api.nvim_create_autocmd("CursorHold", {
				nested = true,
				callback = function()
					if vim.api.nvim_buf_get_name(0):match("-MINIMAP-") ~= nil then
						vim.cmd("wincmd p")
					end
				end,
			})
		end,
	},
}
