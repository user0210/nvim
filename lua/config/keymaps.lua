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
map("n", "<leader>P", [["_dP]], { desc = "Paste No Yank" })
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

-- WhichKey
require("which-key").add({
	-- { "<leader>U", function()
	-- 	vim.cmd("Neotree close")
	-- 	vim.cmd("UndotreeToggle")
	-- end, desc = "UndoTree" },
	-- { "<leader>e", function()
	-- 	vim.cmd("UndotreeHide")
	-- 	vim.cmd("Neotree toggle show")
	-- end, desc = "Explorer" },
	-- { "<leader>du", function()
	-- 	vim.cmd("UndotreeHide")
	-- 	vim.cmd("Neotree close")
	-- 	require("dapui").toggle({ })
	-- end, desc = "Dap UI" },
	{ "<leader>[", group = "prev" },
	{ "<leader>]", group = "next" },
	{ "<leader>l", group = "LSP" },
	{ "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
	{ "<leader>lL", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
	{ "<leader>lV", "<cmd>lua vim.diagnostic.show()<cr>", desc = "VirtText On" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
	{ "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", desc = "Format" },
	{ "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
	{ "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
	{ "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
	{ "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
	{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
	{ "<leader>lv", "<cmd>lua vim.diagnostic.hide()<cr>", desc = "VirtText Off" },

	-- { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
	-- { "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", desc = "Document Diagnostics" },
	-- { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
	-- { "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
	-- { "<leader>T", group = "Terminal" },
})
