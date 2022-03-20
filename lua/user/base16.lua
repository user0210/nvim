local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#161320",
	base01 = "#1E1E2E",
	base02 = "#302D41",
	base03 = "#575268",
	base04 = "#988BA2",
	base05 = "#C3BAC6",
	base06 = "#CECDDA",
	base07 = "#D9E0EE",
	base08 = "#F28FAD",
	base09 = "#F8BD96",
	base0A = "#FAE3B0",
	base0B = "#ABE9B3",
	base0C = "#F5C2E7",
	base0D = "#96CDFB",
	base0E = "#DDB6F2",
	base0F = "#E8A2AF",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#161320]])

vim.cmd([[hi Normal ctermbg=none guibg=none]])
vim.cmd([[hi NormalNC ctermbg=none guibg=none]])
vim.cmd([[hi VertSplit guibg=none]])

vim.cmd([[hi! link ColorColumn TextGroup]])
vim.cmd([[hi! link NonText TextGroup]])
vim.cmd([[hi! link CursorLine TextGroup]])
vim.cmd([[hi! link DiagnosticSignError TextGroup]])
vim.cmd([[hi! link DiagnosticSignWarn TextGroup]])
vim.cmd([[hi! link DiagnosticSignInfo TextGroup]])
vim.cmd([[hi! link DiagnosticSignHint TextGroup]])

vim.cmd([[hi TabLineSel guibg=#B24F6D]])
vim.cmd([[hi TabLine guibg=#1E1E2E]])
vim.cmd([[hi CursorLineNr guifg=#D9E0EE guibg=#161320 gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#96CDFB]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#CECDDA]])
vim.cmd([[hi NvimTreeNormal guifg=#C3BAC6 guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#96CDFB guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#96CDFB guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#988BA2 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#988BA2 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#C3BAC6]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#F8BD96]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#161320 guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#1E1E2E]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#B24F6D]])
vim.cmd([[hi NvimTreeGitStaged guifg=#F5C2E7]])
vim.cmd([[hi NvimTreeGitNew guifg=#F5C2E7]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#F5C2E7]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#F28FAD]])
vim.cmd([[hi NvimTreeGitMerge guifg=#FAE3B0]])
vim.cmd([[hi NvimTreeGitDirty guifg=#FAE3B0]])
vim.cmd([[hi NvimTreeSymlink guifg=#ABE9B3]])
vim.cmd([[hi NvimTreeRootFolder guifg=#C3BAC6 guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#DDB6F2]])
-- MONDO-END

-- dark background hack
-- vim.cmd([[let &colorcolumn=join(range(1,100),',').join(range(100,9999),',')]])
vim.cmd([[let &colorcolumn=join(range(1,999),',')]])
vim.opt.fillchars = {
	vert = " ", -- removes vertsepperator line
	eob = " ", -- suppress ~ at EndOfBuffer
	diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	--fold = "⠀",
	--msgsep = "‾",
	--foldopen = "▾",
	--foldsep = "│",
	--foldclose = "▸",
}
