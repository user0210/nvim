local colors = require("colorscheme").colors


vim.cmd([[augroup CodeGroup]])
vim.api.nvim_set_hl(0, 'CodeGroup',					{ bg = colors.base00 })

vim.api.nvim_set_hl(0, 'Normal',					{ fg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, 'VertSplit',					{ bg = "NONE" })

vim.api.nvim_set_hl(0, 'CursorLine',				{ bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'CursorLineNr',				{ bg = colors.base01a, fg = colors.base02, bold = true })

vim.api.nvim_set_hl(0, 'StatusLineNC',				{ bg = "NONE", fg = colors.base01a})
vim.api.nvim_set_hl(0, 'StatusLine',				{ bg = "NONE", fg = colors.base01})

vim.api.nvim_set_hl(0, 'Scrollbar',					{ bg = colors.base00a })
vim.api.nvim_set_hl(0, 'ScrollbarCursor',			{ fg = colors.base01a })

vim.api.nvim_set_hl(0, 'WinBar',					{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'WinBarNC',					{ bg = colors.base01a })

vim.api.nvim_set_hl(0, 'LspInfoBorder',				{ bg = colors.base00, fg = colors.base05 })

-- Bufferline
--      Current: current buffer
--      Visible: visible but not current buffer
--     Inactive: invisible but not current buffer
--        -Icon: filetype icon
--       -Index: buffer index
--         -Mod: when modified
--        -Sign: the separator between buffers
--      -Target: letter in buffer-picking mode
vim.api.nvim_set_hl(0, 'BufferCurrent',				{ bg = colors.base01a, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferCurrentIndex',		{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferCurrentMod',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferCurrentSign',			{ bg = colors.base01a, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'BufferCurrentTarget',		{ bg = colors.base01a, fg = colors.base08 })
vim.api.nvim_set_hl(0, 'BufferCurrentIcon',			{ bg = colors.base01a, fg = colors.base0Da })
vim.api.nvim_set_hl(0, 'BufferInactive',			{ bg = colors.base01, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferInactiveIndex',		{ bg = colors.base01, fg = colors.base02 })
vim.api.nvim_set_hl(0, 'BufferInactiveMod',			{ bg = colors.base01, fg = colors.base04 })
vim.api.nvim_set_hl(0, 'BufferInactiveSign',		{ bg = colors.base01, fg = colors.base00 })
vim.api.nvim_set_hl(0, 'BufferInactiveTarget',		{ bg = colors.base01, fg = colors.base02 })
vim.api.nvim_set_hl(0, 'BufferInactiveIcon',		{ bg = colors.base01, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferTabpageFill',			{ bg = "NONE", fg = colors.base00 })
vim.api.nvim_set_hl(0, 'BufferTabpages',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisible',				{ bg = colors.base01a, fg = colors.base03, italic = true })
vim.api.nvim_set_hl(0, 'BufferVisibleIndex',		{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisibleMod',			{ bg = colors.base01a, fg = colors.base03 })
vim.api.nvim_set_hl(0, 'BufferVisibleSign',			{ bg = colors.base01a, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'BufferVisibleTarget',		{ bg = colors.base01a, fg = colors.base08 })
vim.api.nvim_set_hl(0, 'BufferVisibleIcon',			{ bg = colors.base01a, fg = colors.base0Da })

-- treesitter-context plugin
vim.api.nvim_set_hl(0, 'TreesitterContext',			{ bg = colors.base01a })

-- codewindow
-- CodewindowBorder -- the border highlight
-- CodewindowBackground -- the background highlight
-- CodewindowWarn -- the color of the warning dots
-- CodewindowError -- the color of the error dots
-- CodewindowAddition -- the color of the addition git sign
-- CodewindowDeletion -- the color of the deletion git sign
-- CodewindowUnderline -- the color of the underlines on the minimap
vim.api.nvim_set_hl(0, 'CodewindowBorder',			{ bg = colors.base01a, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'CodewindowBackground',		{ bg = colors.base01a })
vim.api.nvim_set_hl(0, 'CodewindowUnderline',		{ bg = colors.base02 })

-- Left-Collumn Background
vim.api.nvim_set_hl(0, 'LineNr',					{ fg = colors.base02, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'SignColumn',				{ fg = colors.base02, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'DiagnosticSignError',		{ fg = colors.base08, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn',		{ fg = colors.base09, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'DiagnosticSignInfo',		{ fg = colors.base0B, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint',		{ fg = colors.base0C, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'GitSignsAdd',				{ fg = colors.base0Ba, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'GitSignsChange',			{ fg = colors.base0Da, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'GitSignsDelete',			{ fg = colors.base0Fa, bg = colors.base01a })

-- Text Background
vim.cmd([[set winhighlight=Normal:CodeGroup]])

-- Nvim-Tree
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon',		{ fg = colors.base0D })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker',		{ fg = colors.base06 })
vim.api.nvim_set_hl(0, 'NvimTreeImageFile',			{ fg = colors.base05 })
vim.api.nvim_set_hl(0, 'NvimTreeSpecialFile',		{ fg = colors.base09 })
vim.api.nvim_set_hl(0, 'NvimTreeGitignoreIcon',     { fg = colors.base08a })
vim.api.nvim_set_hl(0, 'NvimTreeGitStaged',			{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitNew',			{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitRenamed',		{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitDeleted',		{ fg = colors.base08 })
vim.api.nvim_set_hl(0, 'NvimTreeGitMerge',			{ fg = colors.base0A })
vim.api.nvim_set_hl(0, 'NvimTreeGitDirty',			{ fg = colors.base0A })
vim.api.nvim_set_hl(0, 'NvimTreeSymlink',			{ fg = colors.base0B })
vim.api.nvim_set_hl(0, 'NvimTreeExecFile',			{ fg = colors.base0E })
vim.api.nvim_set_hl(0, 'NvimTreeCursorLine',		{ fg = colors.base06, bg = colors.base0Da })
vim.api.nvim_set_hl(0, 'NvimTreeNormal',			{ fg = colors.base05, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeFolderName',		{ fg = colors.base0D, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName',	{ fg = colors.base0D, bg = "NONE", bold = true, italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeRootFolder',		{ fg = colors.base05, bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName',	{ fg = colors.base04, bg = "NONE", italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeGitIgnored',		{ fg = colors.base04, bg = "NONE", italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer',		{ fg = colors.base00, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeVertSplit',			{ fg = "NONE",				 bg = "NONE" })

-- Navic
vim.api.nvim_set_hl(0, 'NavicIconsFile',         		{ fg = colors.base0Da, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsModule',       		{ fg = colors.base0Ea, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsNamespace',    		{ fg = colors.base0Fa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsPackage',      		{ fg = colors.base08a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsClass',        		{ fg = colors.base09a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsMethod',       		{ fg = colors.base0Aa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsProperty',     		{ fg = colors.base0Ba, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsField',        		{ fg = colors.base0Ca, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsConstructor',  		{ fg = colors.base0Da, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsEnum',         		{ fg = colors.base0Ea, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsInterface',    		{ fg = colors.base0Fa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsFunction',     		{ fg = colors.base08a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsVariable',     		{ fg = colors.base09a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsConstant',     		{ fg = colors.base0Aa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsString',       		{ fg = colors.base0Ba, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsNumber',       		{ fg = colors.base0Ca, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsBoolean',      		{ fg = colors.base0Da, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsArray',        		{ fg = colors.base0Ea, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsObject',       		{ fg = colors.base0Fa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsKey',          		{ fg = colors.base08a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsNull',         		{ fg = colors.base09a, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsEnumMember',   		{ fg = colors.base0Aa, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsStruct',       		{ fg = colors.base0Ba, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsEvent',        		{ fg = colors.base0Ca, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsOperator',     		{ fg = colors.base0Da, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicIconsTypeParameter',		{ fg = colors.base0Ea, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicText',              		{ fg = colors.base02, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicSeparator',         		{ fg = colors.base02, bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'NavicLeft', 	        		{ fg = colors.base00, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicNumbers', 	        		{ fg = colors.base01a, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicSurround', 	       		{ fg = colors.base00, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'NavicProgress', 	        	{ fg = colors.base01, bg = colors.base02 })
vim.api.nvim_set_hl(0, 'NavicProgressStart', 	       	{ fg = colors.base01a, bg = colors.base01 })
vim.api.nvim_set_hl(0, 'NavicProgressEnd', 	        	{ fg = colors.base01a, bg = colors.base02 })
vim.api.nvim_set_hl(0, 'NavicRight', 	        		{ fg = colors.base00, bg = colors.base01a })
