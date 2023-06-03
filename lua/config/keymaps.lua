-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

map("n", "<leader>n", "<cmd>nohlsearch<CR><silent>:call minimap#vim#ClearColorSearch()<CR>", { desc = "No Highlight" })
map("n", "<leader>p", [["_dP]], { desc = "Paste No Yank" })
map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace in File" })
map("n", "<leader>L", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- Change Buffers
map("n", "<A-J>", "<cmd>bprev<cr>", { desc = "prev Buffer" })
map("n", "<A-K>", "<cmd>bprev<cr>", { desc = "next Buffer" })
map("i", "<A-J>", "<cmd>bprev<cr>", { desc = "prev Buffer" })
map("i", "<A-K>", "<cmd>bprev<cr>", { desc = "next Buffer" })
map("v", "<A-J>", "<cmd>bprev<cr>", { desc = "prev Buffer" })
map("v", "<A-K>", "<cmd>bprev<cr>", { desc = "next Buffer" })

-- Yank to System
map("n", "<leader>y", [["+y]], { desc = "Yank System Clipboard" })
map("v", "<leader>y", [["+y]], { desc = "Yank System Clipboard" })

-- ToggleTerm
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- WhichKey
require("which-key").register({
	du = {
		function()
			vim.cmd("UndotreeHide")
			vim.cmd("Neotree close")
			require("dapui").toggle({ })
		end,
		"Dap UI"
	},
	T = { name = "Terminal" },
	["e"] = {
		function()
			vim.cmd("UndotreeHide")
			vim.cmd("Neotree toggle show")
		end,
		"Explorer",
	},
	["U"] = {
		function()
			vim.cmd("Neotree close")
			vim.cmd("UndotreeToggle")
		end,
		"UndoTree",
	},
	l = { name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
		w = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
		f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
		k = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
		L = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
		v = { "<cmd>lua vim.diagnostic.hide()<cr>", "VirtText Off" },
		V = { "<cmd>lua vim.diagnostic.show()<cr>", "VirtText On" },
	},
	["["] = { name = "prev" },
	["]"] = { name = "next" },
}, { prefix = "<leader>" })
