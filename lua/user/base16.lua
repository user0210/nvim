local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#191919",
	base01 = "#3a3a3a",
	base02 = "#5b5b5b",
	base03 = "#7c7c7c",
	base04 = "#9c9c9c",
	base05 = "#bdbdbd",
	base06 = "#dedede",
	base07 = "#ffffff",
	base08 = "#dd3f7c",
	base09 = "#67a564",
	base0A = "#488981",
	base0B = "#5e86ab",
	base0C = "#4b8fc7",
	base0D = "#1b79d7",
	base0E = "#7886bf",
	base0F = "#a66a90",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#191919]])

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

vim.cmd([[hi TabLineSel guibg=#b31d54]])
vim.cmd([[hi TabLine guibg=#3a3a3a]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#191919 gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#1b79d7]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dedede]])
vim.cmd([[hi NvimTreeNormal guifg=#bdbdbd guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#1b79d7 guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#1b79d7 guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#9c9c9c guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#9c9c9c guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#bdbdbd]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#67a564]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#191919 guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#3a3a3a]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#b31d54]])
vim.cmd([[hi NvimTreeGitStaged guifg=#4b8fc7]])
vim.cmd([[hi NvimTreeGitNew guifg=#4b8fc7]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#4b8fc7]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#dd3f7c]])
vim.cmd([[hi NvimTreeGitMerge guifg=#488981]])
vim.cmd([[hi NvimTreeGitDirty guifg=#488981]])
vim.cmd([[hi NvimTreeSymlink guifg=#5e86ab]])
vim.cmd([[hi NvimTreeRootFolder guifg=#bdbdbd guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#7886bf]])
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
