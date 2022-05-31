local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#0a0a0a",
	base01 = "#2d2d2d",
	base02 = "#505050",
	base03 = "#737373",
	base04 = "#969696",
	base05 = "#b9b9b9",
	base06 = "#dcdcdc",
	base07 = "#ffffff",
	base08 = "#e0a28a",
	base09 = "#86bb6c",
	base0A = "#59a649",
	base0B = "#81b7a7",
	base0C = "#9fc3c3",
	base0D = "#61adce",
	base0E = "#89bbda",
	base0F = "#6e9acb",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#0a0a0a]])

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

vim.cmd([[hi TabLineSel guibg=#b95831]])
vim.cmd([[hi TabLine guibg=#2d2d2d]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#0a0a0a gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#61adce]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dcdcdc]])
vim.cmd([[hi NvimTreeNormal guifg=#b9b9b9 guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#61adce guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#61adce guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#969696 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#969696 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#b9b9b9]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#86bb6c]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#0a0a0a guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#2d2d2d]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#b95831]])
vim.cmd([[hi NvimTreeGitStaged guifg=#9fc3c3]])
vim.cmd([[hi NvimTreeGitNew guifg=#9fc3c3]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#9fc3c3]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#e0a28a]])
vim.cmd([[hi NvimTreeGitMerge guifg=#59a649]])
vim.cmd([[hi NvimTreeGitDirty guifg=#59a649]])
vim.cmd([[hi NvimTreeSymlink guifg=#81b7a7]])
vim.cmd([[hi NvimTreeRootFolder guifg=#b9b9b9 guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#89bbda]])
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
