local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#1c1c1c",
	base01 = "#3c3c3c",
	base02 = "#5d5d5d",
	base03 = "#7d7d7d",
	base04 = "#9e9e9e",
	base05 = "#bebebe",
	base06 = "#dfdfdf",
	base07 = "#ffffff",
	base08 = "#ab755e",
	base09 = "#8b865f",
	base0A = "#5f8e6d",
	base0B = "#59898d",
	base0C = "#6799aa",
	base0D = "#5194ac",
	base0E = "#4894c6",
	base0F = "#5d8bc6",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#1c1c1c]])

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

vim.cmd([[hi TabLineSel guibg=#7d5340]])
vim.cmd([[hi TabLine guibg=#3c3c3c]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#1c1c1c gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#5194ac]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dfdfdf]])
vim.cmd([[hi NvimTreeNormal guifg=#bebebe guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#5194ac guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#5194ac guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#9e9e9e guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#9e9e9e guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#bebebe]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#8b865f]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#1c1c1c guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#3c3c3c]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#7d5340]])
vim.cmd([[hi NvimTreeGitStaged guifg=#6799aa]])
vim.cmd([[hi NvimTreeGitNew guifg=#6799aa]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#6799aa]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#ab755e]])
vim.cmd([[hi NvimTreeGitMerge guifg=#5f8e6d]])
vim.cmd([[hi NvimTreeGitDirty guifg=#5f8e6d]])
vim.cmd([[hi NvimTreeSymlink guifg=#59898d]])
vim.cmd([[hi NvimTreeRootFolder guifg=#bebebe guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#4894c6]])
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
