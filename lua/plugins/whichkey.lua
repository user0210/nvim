-- local M = {
-- 	"folke/which-key.nvim",
-- }
-- function M.config()

local setup = {
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
			motions = true, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	operators = { gc = "Comments" },
	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},
	window = {
		border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 1, 0, 1, 0 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},
	layout = {
		height = { min = 2, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
		align = "left", -- align columns left, center or right
	},
	ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
	show_help = true, -- show help message on the command line when the popup is visible
	show_keys = true, -- show the currently pressed key and its label as a message in the command line
	triggers = "auto", -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specify a list manually
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for key maps that start with a native binding
		-- most people should not need to change this
		i = { "j", "k" },
		v = { "j", "k" },
	},
	-- disable the WhichKey popup for certain buf types and file types.
	-- Disabled by deafult for Telescope
	disable = {
		buftypes = {},
		filetypes = { "TelescopePrompt" },
	},
}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local vopts = {
	mode = "v", -- NORMAL mode
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local vmappings = {
	["<"] = { "<gv", "Move Text Left" },
	[">"] = { ">gv", "Move Text Right" },
	["J"] = { ":m '>+1<CR>gv=gv", "Move Text Down" },
	["K"] = { ":m '<-2<CR>gv=gv", "Move Text Up" },
	["<leader>"] = {
		["/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", "Comment" },
		["f"] = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
		["y"] = { [["+y]], "Yank System Clipboard" },
	}
}

local nopts = {
	mode = "n", -- NORMAL mode
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local nmappings = {
	["<C-d>"] = { "<C-d>zz", "" },
	["<C-u>"] = { "<C-u>zz", "" },
	["n"] = { "nzzzv", "" },
	["N"] = { "Nzzzv", "" },
	["J"] = { "mzJ`z", "" },
	["<a-n>"] = { '<cmd>lua require"illuminate".goto_next_reference{wrap=true}<cr>', "Next References-Cursor" },
	["<a-p>"] = { '<cmd>lua require"illuminate".goto_prev_reference{wrap=true}<cr>', "Prev References-Cursor" },
	-- ["<S-l>"] = { ":bnext<CR>", "move right" }, 		--no need with tmux-plugin
	-- ["<S-h>"] = { ":bprevious<CR>", "move left" },	--no need with tmux-plugin

	["<leader>"] = {
		["/"] = { "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", "Comment" },
		["b"] = { "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
			"Buffers" },
		["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },
		d = {
			name = "DAP",
			b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
			c = { "<cmd>lua require'dap'.continue()<cr>", "Resume Execution" },
			i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into Funktion/Method" },
			o = { "<cmd>lua require'dap'.step_over()<cr>", "Run Again For Step" },
			O = { "<cmd>lua require'dap'.step_out()<cr>", "Step Over Funktion/Method" },
			r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle REPL" },
			l = { "<cmd>lua require'dap'.run_last()<cr>", "Rerum Last Debug Adapter" },
			u = { "<cmd>lua require'dapui'.toggle()<cr>", "Dap UI" },
			t = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate Debug Session" },
		},
		["e"] = { "<esc><cmd>UndotreeHide<bar>NvimTreeNoFocus<cr>", "Explorer" },
		["f"] = { "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
			"Find files" },
		["F"] = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
		g = {
			name = "Git",
			g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
			j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
			k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
			l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
			p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
			r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
			R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
			s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
			u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
			o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
			d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
		},
		["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
		l = {
			name = "LSP",
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
			d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
			w = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
			f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
			i = { "<cmd>LspInfo<cr>", "Info" },
			I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
			j = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
			k = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
			l = { "<cmd>lua require 'lsp_lines'.toggle()<cr>", "Lsp_Lines Toggle" },
			L = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
			q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
			r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
			s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
			S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
		},
		m = {
			name = "Scrollbar",
			m = { "<cmd>ScrollbarToggle<bar>MinimapToggle<cr>", "Toggle Minimap" },
		},
		s = {
			name = "Search",
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
			M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
			r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
			R = { "<cmd>Telescope registers<cr>", "Registers" },
			k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
			C = { "<cmd>Telescope commands<cr>", "Commands" },
			p = { "<cmd>lua require('telescope').extensions.projects.projects()<cr>", "Projects" },
		},
		t = {
			name = "Terminal",
			f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
			h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
			v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
		},
		P = {
			name = "Packer",
			c = { "<cmd>PackerCompile<cr>", "Compile" },
			i = { "<cmd>PackerInstall<cr>", "Install" },
			s = { "<cmd>PackerSync<cr>", "Sync" },
			S = { "<cmd>PackerStatus<cr>", "Status" },
			u = { "<cmd>PackerUpdate<cr>", "Update" },
		},
		["p"] = { [["_dP]], "Paste No Yank" },
		["r"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace in File" },
		["u"] = { "<esc><cmd>NvimTreeClose<bar>UndotreeToggle<cr>", "UndoTree" },
		["y"] = { [["+y]], "Yank System Clipboard" },
	}
}


local which_key = require("which-key")

which_key.setup(setup)
which_key.register(nmappings, nopts)
which_key.register(vmappings, vopts)

-- end
-- return M
