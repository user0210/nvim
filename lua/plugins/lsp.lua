-- local M = {
-- 	  "VonHeikemen/lsp-zero.nvim",
-- 	  dependencies = {
-- 		-- LSP Support
-- 		"neovim/nvim-lspconfig",
-- 		"williamboman/mason.nvim",
-- 		"williamboman/mason-lspconfig.nvim",
--
-- 		-- Autocompletion
-- 		"hrsh7th/nvim-cmp",
-- 		"hrsh7th/cmp-buffer",
-- 		"hrsh7th/cmp-path",
-- 		"saadparwaiz1/cmp_luasnip",
-- 		"hrsh7th/cmp-nvim-lsp",
-- 		"hrsh7th/cmp-nvim-lua",
-- 		"onsails/lspkind.nvim",
--
-- 		-- Snippets
-- 		"L3MON4D3/LuaSnip",
-- 		"rafamadriz/friendly-snippets",
--
-- 		-- null-ls
-- 		"jose-elias-alvarez/null-ls.nvim",
-- 		"jayp0521/mason-null-ls.nvim",
-- 		"nvim-lua/plenary.nvim",
--
-- 		-- misc
-- 		"Maan2003/lsp_lines.nvim",
-- 	  },
-- }
-- function M.config()

-- THEMING
local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, "DiagnosticSignError", 		{ fg = colors.base08a, bg = colors.nocdBG })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", 		{ fg = colors.base09a, bg = colors.nocdBG })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", 		{ fg = colors.base0Ba, bg = colors.nocdBG })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", 		{ fg = colors.base0Ca, bg = colors.nocdBG })

require("lspconfig.ui.windows").default_options.border = "rounded"
vim.api.nvim_set_hl(0, "LspInfoBorder", 			{ bg = colors.nocdBG, fg = colors.base05 })



-- ZERO-LSP SETUP
require("mason.settings").set({ ui = { border = "rounded" } })

local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = "local",
	sign_icons = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "",
	},
})

lsp.ensure_installed({
	"angularls",
	"bashls",
	"clangd",
	"cssls",
	"cssmodules_ls",
	"html",
	"jsonls",
	"pyright",
	"sumneko_lua",
	"tsserver",
	"yamlls",
})

-- share options between serveral servers
local lsp_opts = {
	flags = {
		debounce_text_changes = 150,
	}
}

-- configure an individual server
lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
			telemetry = {
				enable = false,
			},
		},
	},
	lsp_opts,
})

lsp.configure('tsserver', {
	lsp_opts,
	-- disable format because null-ls does also...
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,
})

-- the function below will be executed whenever
-- a language server is attached to a buffer
lsp.on_attach(function(client, bufnr)
	if client.server_capabilities.documentSymbolProvider then
		require("nvim-navic").attach(client, bufnr)
	end
end)

-- CMP-SETUP

local cmp = require("cmp")
local lspkind = require("lspkind")

lsp.setup_nvim_cmp({
	preselect = 'none',
	completion = {
		completeopt = 'menu,menuone,noinsert,noselect'
	},
	mapping = lsp.defaults.cmp_mappings({
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif require('luasnip').expand_or_jumpable() then
				require('luasnip').expand_or_jump()
			else
				fallback()
			end
		end, {'i', 's'}),

		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif require('luasnip').jumpable(-1) then
				require('luasnip').jump(-1)
			else
				fallback()
			end
		end, {'i', 's'}),
		['<C-Space>'] = cmp.mapping({
			i = function()
				if cmp.visible() then
					cmp.abort()
				else
					cmp.complete()
				end
			end,
			c = function()
				if cmp.visible() then
					cmp.close()
				else
					cmp.complete()
				end
			end,
		}),
	}),
	formatting = {
		fields = { "abbr", "kind", "menu" },
		format = lspkind.cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
			before = function(entry, vim_item)
				vim_item.menu = ({
					path = "[Path]",
					nvim_lsp = "[LSP]",
					luasnip = "[Snippet]",
					buffer = "[Buffer]",
				})[entry.source.name]
				return vim_item
			end,
		}),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
	documentation = {
		max_height = 15,
		max_width = 60,
		border = 'none',
		col_offset = 1,
		side_padding = 1,
		winhighlight = 'Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
		zindex = 1001
	}
})

cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{name = 'buffer'}
	}
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{name = 'path'}
	}, {
		{name = 'cmdline'}
	})
})

lsp.setup()

-- override diagnostics configs (only with 'recommended' setup)
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})

-- NULL-LS
local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

null_ls.setup({
	on_attach = function(client, bufnr)
		null_opts.on_attach(client, bufnr)
		--- you can add other stuff here....
		local format_cmd = function(input)

		-- format command (only for null-ls)
		vim.lsp.buf.format({
			id = client.id,
			timeout_ms = 5000,
			async = input.bang,
		})
		end
		local bufcmd = vim.api.nvim_buf_create_user_command
		bufcmd(bufnr, "NullFormat", format_cmd, {
			bang = true,
			range = true,
			desc = "Format using null-ls",
		})
	end,
	debug = false,
	sources = {
		null_ls.builtins.formatting.prettier.with({
			extra_filetypes = { "toml", "solidity" },
			extra_args = {
				"--use-tabs",
				"true",
				"--tab-width",
				"4",
				"--no-semi",
				"--single-quote",
				"--jsx-single-quote",
			},
		}),
		null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.flake8,
	},
})

-- MASON NULL-LS
local mason_nullls = require("mason-null-ls")
mason_nullls.setup({
	ensure_installed = nil,
	automatic_installation = true,
	automatic_setup = true,
})

mason_nullls.setup_handlers({})


-- end
-- return M
