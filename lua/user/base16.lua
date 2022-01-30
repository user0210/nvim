local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

base16.setup({
	base00 = "#000f27",
	base01 = "#243146",
	base02 = "#495465",
	base03 = "#6d7684",
	base04 = "#9298a2",
	base05 = "#b6bac1",
	base06 = "#dbdde0",
	base07 = "#ffffff",
	base08 = "#ab8860",
	base09 = "#9b8a6f",
	base0A = "#99a977",
	base0B = "#77a57d",
	base0C = "#529988",
	base0D = "#4f898b",
	base0E = "#4197b2",
	base0F = "#2786de",
})

vim.cmd([[augroup TextGroup]])
vim.cmd([[hi TextGroup guibg=#000f27]])

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

vim.cmd([[hi TabLineSel guibg=#7e6342]])
vim.cmd([[hi TabLine guibg=#243146]])
vim.cmd([[hi CursorLineNr guifg=#ffffff guibg=#000f27 gui=bold]])

vim.cmd([[hi NvimTreeFolderIcon guifg=#4f898b]])
vim.cmd([[hi NvimTreeIndentMarker guifg=#dbdde0]])
vim.cmd([[hi NvimTreeNormal guifg=#b6bac1 guibg=none]])
vim.cmd([[hi NvimTreeVertSplit guifg=none guibg=none]])
vim.cmd([[hi NvimTreeFolderName guifg=#4f898b guibg=none]])
vim.cmd([[hi NvimTreeOpenedFolderName guifg=#4f898b guibg=none gui=bold,italic]])
vim.cmd([[hi NvimTreeEmptyFolderName guifg=#9298a2 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeGitIgnored guifg=#9298a2 guibg=none gui=italic]])
vim.cmd([[hi NvimTreeImageFile guifg=#b6bac1]])
vim.cmd([[hi NvimTreeSpecialFile guifg=#9b8a6f]])
vim.cmd([[hi NvimTreeEndOfBuffer guifg=#000f27 guibg=none]])
vim.cmd([[hi NvimTreeCursorLine guibg=#243146]])
vim.cmd([[hi NvimTreeGitignoreIcon guifg=#7e6342]])
vim.cmd([[hi NvimTreeGitStaged guifg=#529988]])
vim.cmd([[hi NvimTreeGitNew guifg=#529988]])
vim.cmd([[hi NvimTreeGitRenamed guifg=#529988]])
vim.cmd([[hi NvimTreeGitDeleted guifg=#ab8860]])
vim.cmd([[hi NvimTreeGitMerge guifg=#99a977]])
vim.cmd([[hi NvimTreeGitDirty guifg=#99a977]])
vim.cmd([[hi NvimTreeSymlink guifg=#77a57d]])
vim.cmd([[hi NvimTreeRootFolder guifg=#b6bac1 guibg=none gui=bold]])
vim.cmd([[hi NvimTreeExecFile guifg=#4197b2]])

-- dark background hack
vim.cmd([[let &colorcolumn=join(range(1,100),',').join(range(100,9999),',')]])
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
