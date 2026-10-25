
return {
	{
		"petertriho/nvim-scrollbar",
		branch = "refactor/v2",
		opts = {
			set_highlights = false,
			exclude = {
				buftypes = {
					"terminal",
				},
				filetypes = {
					"blink-cmp-menu",
					"blink-cmp-documentation",
					"alpha",
					"diff",
					"lazy",
					"lspinfo",
					"mason",
					-- "minimap",
					"neo-tree",
					"noice",
					"prompt",
					"TelescopePrompt",
					"Trouble",
					"undotree",
					"snacks_picker_list",
				},
			},
			providers = {
				cursor = true,
				diagnostic = true,
				gitsigns = true,
				search = true,
				marks = false,
			},
			scrollbar = {
				show = true,
			},
			minimap = {
				enabled = true,
				show = false,
				scale = "fit",
				window = {
					border = { "▎", " ", " ", " ", " ", " ", " ", "▎" },
				},
			},
		},
	},
}

-- return {
-- 	{
-- 		"petertriho/nvim-scrollbar",
-- 		dependencies = {
-- 			"kevinhwang91/nvim-hlslens",
-- 			config = function()
-- 				require("scrollbar.handlers.search").setup({
-- 					override_lens = function()
-- 					end,
-- 				})
-- 			end,
-- 		},
-- 		opts = {
-- 			set_highlights = false,
-- 			excluded_buftypes = {
-- 				"terminal",
-- 			},
-- 			excluded_filetypes = {
-- 				"blink-cmp-menu",
-- 				"blink-cmp-documentation",
-- 				-- "cmp_docs",
-- 				-- "cmp_menu",
-- 				"alpha",
-- 				"diff",
-- 				"lazy",
-- 				"lspinfo",
-- 				"mason",
-- 				"minimap",
-- 				"neo-tree",
-- 				"noice",
-- 				"prompt",
-- 				"TelescopePrompt",
-- 				"Trouble",
-- 				"undotree",
-- 				"snacks_picker_list",
-- 			},
-- 			handlers = {
-- 				cursor = true,
-- 				diagnostic = true,
-- 				gitsigns = true, -- Requires gitsigns
-- 				handle = true,
-- 				search = true,   -- Requires hlslens
-- 			},
-- 		},
-- 	},
-- }
