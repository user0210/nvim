local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)
require("lazy").setup({
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = function() require"plugins.autopairs" end, },
	{ "akinsho/toggleterm.nvim", cmd = { "ToggleTerm" }, config = function() require"plugins.toggleterm" end, },
	{ "ahmedkhalf/project.nvim", config = function() require"plugins.project" end, },
	{ "lukas-reineke/indent-blankline.nvim", config = function() require"plugins.indentline" end, },
	{ "folke/which-key.nvim", config = function() require"plugins.whichkey" end, },
	{ "uga-rosa/ccc.nvim", config = function() require"plugins.ccc" end, },
	{ "aserowy/tmux.nvim", config = function() require"plugins.tmux" end, },
	{ "RRethy/nvim-base16", priority = 1000, config = function() require"plugins.base16" end, },
	{ "mbbill/undotree", cmd = {"UndotreeToggle", "UndotreeHide" }, config = function() require"plugins.undotree" end, },
	{ "RRethy/vim-illuminate", config = function() require"plugins.illuminate" end, },
	{ "SmiteshP/nvim-navic", config = function() require"plugins.navic" end, },
	{ "sindrets/diffview.nvim", config = function() require"plugins.diffview" end, },
	{ "wfxr/minimap.vim", cmd = { "MinimapClose" }, config = function() require"plugins.minimap" end, },
	{ "ckolkey/ts-node-action",
		dependencies = { "nvim-treesitter" }, opts = {},
	},
	{ "nvim-lualine/lualine.nvim", config = function() require"plugins.lualine" end,
		dependencies = { "nvim-tree/nvim-web-devicons", "SmiteshP/nvim-navic" },
	},
	{ "lewis6991/gitsigns.nvim", config = function() require"plugins.gitsigns" end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-telescope/telescope.nvim", cmd = "Telescope", config = function() require"plugins.telescope" end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-neo-tree/neo-tree.nvim", config = function() require"plugins.neo-tree" end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		}
	},
	{ "akinsho/bufferline.nvim", config = function() require"plugins.bufferline" end,
		dependencies = { "famiu/bufdelete.nvim", "nvim-tree/nvim-web-devicons" },
	},
	{ "petertriho/nvim-scrollbar", config = function() require"plugins.scrollbar" end,
		dependencies = { "kevinhwang91/nvim-hlslens" },
	},
	{ "numToStr/Comment.nvim", config = function() require"plugins.comment" end,
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	},
	{ "mfussenegger/nvim-dap", config = function() require"plugins.dap" end,
		dependencies = { "rcarriga/nvim-dap-ui" },
	},
	{ "jackMort/ChatGPT.nvim", config = function() require"plugins.chatgpt" end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	},
	{ "folke/noice.nvim", config = function() require"plugins.noice" end,
		dependencies = {
			"MunifTanjim/nui.nvim",
		--	"rcarriga/nvim-notify",
		},
	},
	{ "nvim-treesitter/nvim-treesitter", config = function() require"plugins.treesitter" end,
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring",
			{ "nvim-treesitter/nvim-treesitter-context", config = function() require"plugins.context" end, },
		},
		build = ":TSUpdate",
	},
	{ "Maan2003/lsp_lines.nvim",
		keys = { { "<leader>ll", "<cmd>lua require'lsp_lines'.toggle()<cr>", desc = "Toggle Lsp_Lines" }, },
		config = function()
			require"lsp_lines".setup()
			require"lsp_lines".toggle()
		end,
	},
	{ "VonHeikemen/lsp-zero.nvim", config = function() require"plugins.lsp" end,
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind.nvim",
			-- Snippets
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			-- Null-LS
			"jose-elias-alvarez/null-ls.nvim",
			"jayp0521/mason-null-ls.nvim",
			-- misc
			"nvim-lua/plenary.nvim",
			"SmiteshP/nvim-navic",
		},
	},
},
{
	defaults = {
		lazy = false, -- should plugins be lazy-loaded?
	},
	ui = {
		border = "rounded",
	},
})
