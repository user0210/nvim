-- Automatically install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- settings
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		cmd = "git", -- The base command for git operations
		subcommands = { -- Format strings for git subcommands
			update = "pull --progress --rebase=true",
			install = "clone --depth %i --no-single-branch --progress",
			fetch = "fetch --depth 999999 --progress",
			checkout = "checkout %s --",
			update_branch = "merge @{u}",
			current_branch = "branch --show-current",
			diff = "log --color=never --pretty=format:FMT --no-show-signature HEAD@{1}...HEAD",
			diff_fmt = "%%h %%s (%%cr)",
			get_rev = "rev-parse --short HEAD",
			get_msg = "log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1",
			submodules = "submodule update --init --recursive --progress",
		},
		depth = 1, -- Git clone depth
		clone_timeout = 60, -- Timeout, in seconds, for git clones
		default_url_format = "https://github.com/%s", -- Lua format string used for "aaa/bbb" style plugins
	},
})

-- plugins
return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")
	use("famiu/bufdelete.nvim")
	use("nvim-lualine/lualine.nvim")
	use("akinsho/toggleterm.nvim")
	use("ahmedkhalf/project.nvim")
	use("lewis6991/impatient.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("folke/which-key.nvim")
	use("uga-rosa/ccc.nvim")
	use("karb94/neoscroll.nvim")
	use("aserowy/tmux.nvim")
	use("RRethy/nvim-base16")
	use("j-hui/fidget.nvim")
	use("sindrets/diffview.nvim")
	use("akinsho/bufferline.nvim")
	use("mbbill/undotree")
	use("SmiteshP/nvim-navic")

	-- scrollbars
	use("wfxr/minimap.vim")
	use("petertriho/nvim-scrollbar")
	use("kevinhwang91/nvim-hlslens")

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},
		{'onsails/lspkind.nvim'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	  }
	}
	use("RRethy/vim-illuminate")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("Maan2003/lsp_lines.nvim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/nvim-treesitter-context")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- DAP
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("ravenxrz/DAPInstall.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
