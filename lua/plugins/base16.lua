local colors = {
	-- MONDO-BEGIN
	base00 = "#1d1f21",
	base01 = "#282a2e",
	base02 = "#373b41",
	base03 = "#969896",
	base04 = "#b4b7b4",
	base05 = "#c5c8c6",
	base06 = "#e0e0e0",
	base07 = "#ffffff",
	base08 = "#cc6666",
	base09 = "#de935f",
	base0A = "#f0c674",
	base0B = "#b5bd68",
	base0C = "#8abeb7",
	base0D = "#81a2be",
	base0E = "#b294bb",
	base0F = "#a3685a",
	base08a = "#AC4646",
	base09a = "#BE733F",
	base0Aa = "#D0A654",
	base0Ba = "#959D48",
	base0Ca = "#6A9E97",
	base0Da = "#61829E",
	base0Ea = "#92749B",
	base0Fa = "#83483A",
	base00a = "#181A1C",
	base01a = "#222427",
	base02a = "#2F3237",
	base03a = "#66696B",
	base04a = "#A5A7A5",
	base05a = "#BCBFBD",
	base06a = "#D2D4D3",
	base07a = "#EFEFEF",
	base08b = "#643233",
	base09b = "#6D4930",
	base0Ab = "#76623A",
	base0Bb = "#595E34",
	base0Cb = "#435E5C",
	base0Db = "#3F505F",
	base0Eb = "#57495E",
	base0Fb = "#50332D",
	-- MONDO-END
}

return {
	{
		'echasnovski/mini.base16',
		priority = 1000,
		config = function()
			colors.codeBG = colors.base00
			colors.nocdBG = colors.base01
			colors.nocdFG = colors.base03a
			colors.cursBG = colors.base02
			colors.cursFG = colors.base00a
			colors.buffBG = colors.base01a
			colors.buffFG = colors.base03a

			require('mini.base16').setup({
				palette = colors,
				use_cterm = true,
				plugins = {
					['akinsho/bufferline.nvim'] = false,
				}
			})

			vim.api.nvim_set_hl(0, "Whitespace", 						{ bg = "NONE", 				fg = colors.base02 })
			vim.api.nvim_set_hl(0, "NonText", 							{ bg = "NONE", 				fg = colors.base02 })

			vim.api.nvim_set_hl(0, "CursorLine", 						{ bg = colors.base00a, 										bold = true })
			vim.api.nvim_set_hl(0, "CursorLineNr", 					{ bg = colors.cursBG, fg = colors.cursFG })
			vim.api.nvim_set_hl(0, "CursorLineSign", 				{ bg = colors.cursBG, fg = colors.cursFG })
			vim.api.nvim_set_hl(0, "CursorLineFold", 				{ bg = colors.cursBG, fg = colors.cursFG })

			vim.api.nvim_set_hl(0, "VertSplit", 						{ bg = colors.codeBG, fg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "WinSeparator", 					{ bg = colors.codeBG, fg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "EndOfBuffer", 					{ bg = colors.nocdBG, fg = colors.base00a })

			-- popupmenu
			vim.api.nvim_set_hl(0, "Pmenu", 								{ bg = colors.base02, fg = colors.base03 })
			vim.api.nvim_set_hl(0, "PmenuSel", 							{ bg = colors.base03, fg = colors.base00, 	blend = 0 })
			vim.api.nvim_set_hl(0, "PmenuSbar", 						{ bg = colors.base02 })
			vim.api.nvim_set_hl(0, "PmenuThumb", 						{ bg = colors.base0Db })

			-- colors for hover-window
			vim.api.nvim_set_hl(0, "NormalFloat", 					{ bg = colors.base02a, fg = colors.base03 })
			vim.api.nvim_set_hl(0, "FloatBorder", 					{ bg = colors.base02a })
			vim.api.nvim_set_hl(0, "FloatShadow", 					{ bg = colors.base00a, 											blend = 15 })
			vim.api.nvim_set_hl(0, "FloatShadowThrough", 		{ bg = colors.base00 })

			-- Notification
			vim.api.nvim_set_hl(0, "NotifyBackground", 			{ bg = colors.codeBG })

			-- lsp-info
			vim.api.nvim_set_hl(0, "LspInfoBorder", 				{ bg = colors.nocdBG, fg = colors.base05 })

			-- Treesitter-Context
			vim.api.nvim_set_hl(0, "TreesitterContext", 		{ bg = colors.nocdBG, bold = false, blend = 15 })

			-- Neotree
			vim.api.nvim_set_hl(0, "TabLineFill", 					{ bg = colors.base00 })
			vim.api.nvim_set_hl(0, "NeoTreeCursorLine", 		{ bg = colors.cursBG })
			vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", 	{ fg = colors.base03a })
			vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", 		{ bg = "NONE", fg = colors.base0D, })
			vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", 		{ bg = colors.codeBG, fg = colors.base05 })
			vim.api.nvim_set_hl(0, "NeoTreeTitleBar", 			{ bg = colors.base0Da, fg = colors.base00 })
			vim.api.nvim_set_hl(0, "NeoTreeTabActive",						{ bg = colors.nocdBG, fg = colors.base03 })
			vim.api.nvim_set_hl(0, "NeoTreeTabInactive",					{ bg = colors.nocdBG, fg = colors.base00a })
			vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive",	{ bg = colors.nocdBG, fg = colors.codeBG })
			vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive",		{ bg = colors.nocdBG, fg = colors.codeBG })


			-- Signcolumn
			vim.api.nvim_set_hl(0, "SignColumn", 						{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "GitSignsAdd", 					{ fg = colors.base0Ba, bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "GitSignsChange", 				{ fg = colors.base0Da, bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "GitSignsDelete", 				{ fg = colors.base08a, bg = colors.nocdBG })

			vim.api.nvim_set_hl(0, "DiagnosticSignError", 	{ fg = colors.base08a, bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", 		{ fg = colors.base09a, bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", 		{ fg = colors.base0Ba, bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", 		{ fg = colors.base0Ca, bg = colors.nocdBG })

			-- Noice
			vim.api.nvim_set_hl(0, "NoiceCmdline", 					{ bg = colors.base0Db, fg = colors.base05, blend = 0 })
			vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", 			{ bg = colors.base02, fg = colors.base0Da, blend = 0 })
			vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch",{ bg = colors.base02, fg = colors.base0Da, blend = 0 })
			vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", 		{ bg = colors.nocdBG, fg = colors.base0Da, blend = 0 })

			vim.api.nvim_set_hl(0, "NoiceMini", 						{ bg = colors.base02 })
			vim.api.nvim_set_hl(0, "NoiceMiniSearch", 			{ bg = colors.base0Ab })
			vim.api.nvim_set_hl(0, "NoiceMiniIncSearch", 		{ bg = colors.base0Ab })

			-- DapUI
			vim.api.nvim_set_hl(0, "DapUINormal", 					{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DapUINormalNC", 				{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DapUILineNumber", 			{ bg = colors.nocdBG })

			-- Navic
			vim.api.nvim_set_hl(0, "NavicIconsFile", 					{ fg = colors.base0Da, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsModule", 				{ fg = colors.base0Ea, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsNamespace", 		{ fg = colors.base0Fa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsPackage", 			{ fg = colors.base08a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsClass", 				{ fg = colors.base09a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsMethod", 				{ fg = colors.base0Aa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsProperty", 			{ fg = colors.base0Ba, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsField", 				{ fg = colors.base0Ca, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsConstructor", 	{ fg = colors.base0Da, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsEnum", 					{ fg = colors.base0Ea, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsInterface", 		{ fg = colors.base0Fa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsFunction", 			{ fg = colors.base08a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsVariable", 			{ fg = colors.base09a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsConstant", 			{ fg = colors.base0Aa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsString", 				{ fg = colors.base0Ba, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsNumber", 				{ fg = colors.base0Ca, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsBoolean", 			{ fg = colors.base0Da, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsArray", 				{ fg = colors.base0Ea, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsObject", 				{ fg = colors.base0Fa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsKey", 					{ fg = colors.base08a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsNull", 					{ fg = colors.base09a, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsEnumMember", 		{ fg = colors.base0Aa, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsStruct", 				{ fg = colors.base0Ba, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsEvent", 				{ fg = colors.base0Ca, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsOperator", 			{ fg = colors.base0Da, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", { fg = colors.base0Ea, 	bg = colors.nocdBG, bold = false })
			vim.api.nvim_set_hl(0, "NavicText", 							{ fg = colors.base03a, 	bg = colors.nocdBG, italic = true })
			vim.api.nvim_set_hl(0, "NavicSeparator", 					{ fg = colors.base00,		bg = colors.nocdBG, bold = true })

			-- Scrollbar
			vim.api.nvim_set_hl(0, "ScrollbarCursor", 					{ bg = colors.base00a, 	fg = colors.base00a })
			vim.api.nvim_set_hl(0, "ScrollbarHandle", 					{ bg = colors.base02, 	fg = colors.base00a })
			vim.api.nvim_set_hl(0, "ScrollbarCursorHandle", 		{ bg = colors.base02, 	fg = colors.base00a })
			vim.api.nvim_set_hl(0, "ScrollbarError", 						{ bg = colors.codeBG, 	fg = colors.base08b })
			vim.api.nvim_set_hl(0, "ScrollbarErrorHandle", 			{ bg = colors.base02, 	fg = colors.base08a })
			vim.api.nvim_set_hl(0, "ScrollbarWarn", 						{ bg = colors.codeBG, 	fg = colors.base09b })
			vim.api.nvim_set_hl(0, "ScrollbarWarnHandle", 			{ bg = colors.base02, 	fg = colors.base09a })
			vim.api.nvim_set_hl(0, "ScrollbarSearch", 					{ bg = colors.codeBG, 	fg = colors.base0Ab })
			vim.api.nvim_set_hl(0, "ScrollbarSearchHandle", 		{ bg = colors.base02, 	fg = colors.base0Aa })
			vim.api.nvim_set_hl(0, "ScrollbarInfo", 						{ bg = colors.codeBG, 	fg = colors.base0Cb })
			vim.api.nvim_set_hl(0, "ScrollbarInfoHandle", 			{ bg = colors.base02, 	fg = colors.base0Ca })
			vim.api.nvim_set_hl(0, "ScrollbarHint", 						{ bg = colors.codeBG, 	fg = colors.base0Fb })
			vim.api.nvim_set_hl(0, "ScrollbarHintHandle", 			{ bg = colors.base02, 	fg = colors.base0Fa })
			vim.api.nvim_set_hl(0, "ScrollbarMisc", 						{ bg = colors.codeBG, 	fg = colors.base03 })
			vim.api.nvim_set_hl(0, "ScrollbarMiscHandle", 			{ bg = colors.base02, 	fg = colors.base04 })
			vim.api.nvim_set_hl(0, "ScrollbarGitAdd", 					{ bg = colors.codeBG, 	fg = colors.base0Bb })
			vim.api.nvim_set_hl(0, "ScrollbarGitAddHandle", 		{ bg = colors.base02, 	fg = colors.base0Ba })
			vim.api.nvim_set_hl(0, "ScrollbarGitChange", 				{ bg = colors.codeBG, 	fg = colors.base0Db })
			vim.api.nvim_set_hl(0, "ScrollbarGitChangeHandle", 	{ bg = colors.base02, 	fg = colors.base0Da })
			vim.api.nvim_set_hl(0, "ScrollbarGitDelete", 				{ bg = colors.codeBG, 	fg = colors.base0Fb })
			vim.api.nvim_set_hl(0, "ScrollbarGitDeleteHandle", 	{ bg = colors.base02, 	fg = colors.base0Fa })

			-- Diffview
			vim.api.nvim_set_hl(0, "DiffviewFolderName", 					{ fg = colors.base0Da, bold = true })
			vim.api.nvim_set_hl(0, "DiffviewFolderSign", 					{ fg = colors.base0Da })
			vim.api.nvim_set_hl(0, "DiffAdd", 										{ bg = colors.base0Bb })
			vim.api.nvim_set_hl(0, "DiffChange", 									{ bg = colors.base0Db })
			vim.api.nvim_set_hl(0, "DiffText", 										{ bg = colors.base0Cb })
			vim.api.nvim_set_hl(0, "DiffDelete", 									{ bg = colors.base08b })
			vim.api.nvim_set_hl(0, "DiffviewDiffAddAsDelete", 		{ bg = colors.base08b })
			vim.api.nvim_set_hl(0, "DiffviewDiffDelete", 					{ bg = colors.nocdBG, fg = colors.base08b })
			vim.api.nvim_set_hl(0, "DiffviewEndOfBuffer", 				{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DiffviewNormal", 							{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "DiffviewCursorLine", 					{ bg = colors.cursBG, fg = "NONE" })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelRootPath", 	{ fg = colors.base04, bold = true })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelTitle", 			{ fg = colors.base04 })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelPath", 			{ fg = colors.base04 })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelFileName", 	{ fg = colors.base03 })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelInsertions", { fg = colors.base0Ba })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelDeletions", 	{ fg = colors.base08a })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelCounter", 		{ fg = colors.base0Da })
			vim.api.nvim_set_hl(0, "DiffviewFilePanelConflicts", 	{ fg = colors.base0Fa })

			-- color non-code windows
			vim.api.nvim_set_hl(0, "NoCode", 				{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "NoCodeSign", 		{ bg = colors.nocdBG })
			vim.api.nvim_set_hl(0, "NoCodeCursor", 	{ bg = colors.cursBG })

			-- mini Notification
			vim.api.nvim_set_hl(0, "NoiceMini", 							{ bg = colors.base0Da })
			vim.api.nvim_set_hl(0, "NoiceLspProgressSpinner", { bg = colors.base0Da })
			vim.api.nvim_set_hl(0, "NoiceLspProgressClient", 	{ bg = colors.base0Da })
			vim.api.nvim_set_hl(0, "NoiceLspProgressTitle", 	{ bg = colors.base0Da })

			vim.api.nvim_create_autocmd({ "FileType" }, {
				pattern = {
					"help",
					"man",
					"undotree",
					"diff",
					"diffpanel",
					"minimap",
					"mason",
				},
				callback = function()
					vim.opt_local.winhighlight = "Normal:NoCode,CursorLine:NoCodeCursor,SignColumn:NoCodeSign"
				end,
			})
		end,
	},
}
