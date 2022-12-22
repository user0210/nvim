-- MASON SETUP
require("mason.settings").set({
	ui = {
		border = "rounded",
	},
})


-- ZERO-LSP SETUP
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

lsp.on_attach(function(client, bufnr)
	local navic = require("nvim-navic")
	if client.server_capabilities.documentSymbolProvider then
		navic.attach(client, bufnr)
	end
end)

-- Fix Undefined global 'vim'
lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

local lspkind = require("lspkind")
lsp.setup_nvim_cmp({
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = lspkind.cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
			before = function(entry, vim_item)
				vim_item.menu = ({
					nvim_lsp = "[LSP]",
					luasnip = "[Snippet]",
					buffer = "[Buffer]",
					path = "[Path]",
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
})

lsp.setup()

-- override some configs
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

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
null_ls.setup({
	on_attach = function(client, bufnr)
		null_opts.on_attach(client, bufnr)
		--- you can add other stuff here....
	end,
	debug = false,
	sources = {
		formatting.prettier.with({
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
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		diagnostics.flake8,
	},
})

require("mason-null-ls").setup({
    ensure_installed = nil,
    automatic_installation = true,
    automatic_setup = true,
})


-- THEMING
local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = colors.base08, bg = colors.base01a })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = colors.base09, bg = colors.base01a })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = colors.base0B, bg = colors.base01a })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = colors.base0C, bg = colors.base01a })

require("lspconfig.ui.windows").default_options.border = "rounded"
vim.api.nvim_set_hl(0, "LspInfoBorder", { bg = colors.base00, fg = colors.base05 })
