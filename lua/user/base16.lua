local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#0f0f0f",
	base01 = "#313131",
	base02 = "#545454",
	base03 = "#767676",
	base04 = "#989898",
	base05 = "#bababa",
	base06 = "#dddddd",
	base07 = "#ffffff",
	base08 = "#e1a58f",
	base09 = "#66a256",
	base0A = "#82a693",
	base0B = "#81aab3",
	base0C = "#86c5dc",
	base0D = "#53a9d0",
	base0E = "#6fa3d4",
	base0F = "#89a9d6",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#0f0f0f]])

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

vim.cmd([[hi TabLineSel guibg=#be5833]])
vim.cmd([[hi TabLine guibg=#313131]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#0f0f0f gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#53a9d0]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dddddd]])
vim.cmd([[hi NvimTreeNormal guifg=#bababa guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#53a9d0 guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#53a9d0 guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#989898 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#989898 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#bababa]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#66a256]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#0f0f0f guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#313131]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#be5833]])
vim.cmd([[hi NvimTreeGitStaged guifg=#86c5dc]])
vim.cmd([[hi NvimTreeGitNew guifg=#86c5dc]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#86c5dc]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#e1a58f]])
vim.cmd([[hi NvimTreeGitMerge guifg=#82a693]])
vim.cmd([[hi NvimTreeGitDirty guifg=#82a693]])
vim.cmd([[hi NvimTreeSymlink guifg=#81aab3]])
vim.cmd([[hi NvimTreeRootFolder guifg=#bababa guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#6fa3d4]])
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
