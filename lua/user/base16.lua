local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#101010",
	base01 = "#323232",
	base02 = "#545454",
	base03 = "#767676",
	base04 = "#999999",
	base05 = "#bbbbbb",
	base06 = "#dddddd",
	base07 = "#ffffff",
	base08 = "#a28374",
	base09 = "#d17b41",
	base0A = "#c6a761",
	base0B = "#76a400",
	base0C = "#7cbf18",
	base0D = "#5b9a08",
	base0E = "#76be81",
	base0F = "#8484cb",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#101010]])

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

vim.cmd([[hi TabLineSel guibg=#775f52]])
vim.cmd([[hi TabLine guibg=#323232]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#101010 gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#5b9a08]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dddddd]])
vim.cmd([[hi NvimTreeNormal guifg=#bbbbbb guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#5b9a08 guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#5b9a08 guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#999999 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#999999 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#bbbbbb]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#d17b41]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#101010 guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#323232]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#775f52]])
vim.cmd([[hi NvimTreeGitStaged guifg=#7cbf18]])
vim.cmd([[hi NvimTreeGitNew guifg=#7cbf18]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#7cbf18]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#a28374]])
vim.cmd([[hi NvimTreeGitMerge guifg=#c6a761]])
vim.cmd([[hi NvimTreeGitDirty guifg=#c6a761]])
vim.cmd([[hi NvimTreeSymlink guifg=#76a400]])
vim.cmd([[hi NvimTreeRootFolder guifg=#bbbbbb guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#76be81]])
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
