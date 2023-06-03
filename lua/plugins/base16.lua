local c = require("tokyonight.colors")
c.templer = vim.deepcopy(c.default)

-- MONDO-BEGIN
c.templer.base00 = "#1d1f21"
c.templer.base01 = "#282a2e"
c.templer.base02 = "#373b41"
c.templer.base03 = "#969896"
c.templer.base04 = "#b4b7b4"
c.templer.base05 = "#c5c8c6"
c.templer.base06 = "#e0e0e0"
c.templer.base07 = "#ffffff"
c.templer.base08 = "#cc6666"
c.templer.base09 = "#de935f"
c.templer.base0A = "#f0c674"
c.templer.base0B = "#b5bd68"
c.templer.base0C = "#8abeb7"
c.templer.base0D = "#81a2be"
c.templer.base0E = "#b294bb"
c.templer.base0F = "#a3685a"
c.templer.base08a = "#AC4646"
c.templer.base09a = "#BE733F"
c.templer.base0Aa = "#D0A654"
c.templer.base0Ba = "#959D48"
c.templer.base0Ca = "#6A9E97"
c.templer.base0Da = "#61829E"
c.templer.base0Ea = "#92749B"
c.templer.base0Fa = "#83483A"
c.templer.base00a = "#181A1C"
c.templer.base01a = "#222427"
c.templer.base02a = "#2F3237"
c.templer.base03a = "#66696B"
c.templer.base04a = "#A5A7A5"
c.templer.base05a = "#BCBFBD"
c.templer.base06a = "#D2D4D3"
c.templer.base07a = "#EFEFEF"
c.templer.base08b = "#643233"
c.templer.base09b = "#6D4930"
c.templer.base0Ab = "#76623A"
c.templer.base0Bb = "#595E34"
c.templer.base0Cb = "#435E5C"
c.templer.base0Db = "#3F505F"
c.templer.base0Eb = "#57495E"
c.templer.base0Fb = "#50332D"
c.templer.base08c = "#2B2224"
c.templer.base09c = "#2D2724"
c.templer.base0Ac = "#2E2C26"
c.templer.base0Bc = "#292B24"
c.templer.base0Cc = "#242B2C"
c.templer.base0Dc = "#23282D"
c.templer.base0Ec = "#28272D"
c.templer.base0Fc = "#272323"

c.templer.bg = "#222427"
c.templer.bg_dark = "#1d1f21"
c.templer.bg_float = "#1d1f21"
c.templer.bg_highlight = "#282a2e"
c.templer.bg_popup = "#1d1f21"
c.templer.bg_search = "#61829E"
c.templer.bg_sidebar = "#1d1f21"
c.templer.bg_statusline = "#1d1f21"
c.templer.bg_visual = "#373b41"
c.templer.black = "#1d1f21"
c.templer.blue = "#81a2be"
c.templer.blue0 = "#61829E"
c.templer.blue1 = "#6A9E97"
c.templer.blue2 = "#6A9E97"
c.templer.blue5 = "#A6BDD1"
c.templer.blue6 = "#ffffff"
c.templer.blue7 = "#3F505F"
c.templer.border = "#1d1f21"
c.templer.border_highlight = "#6A9E97"
c.templer.comment = "#969896"
c.templer.cyan = "#C4DEDB"
c.templer.dark3 = "#969896"
c.templer.dark5 = "#b4b7b4"
c.templer.delta = {
  add = "#595E34",
  delete = "#643233"
}
c.templer.diff = {
  add = "#595E34",
  change = "#3F505F",
  delete = "#643233",
  text = "#3F505F"
}
c.templer.error = "#AC4646"
c.templer.fg = "#c5c8c6"
c.templer.fg_dark = "#b4b7b4"
c.templer.fg_float = "#c5c8c6"
c.templer.fg_gutter = "#3F505F"
c.templer.fg_sidebar = "#b4b7b4"
c.templer.git = {
  add = "#959D48",
  change = "#61829E",
  delete = "#AC4646",
  ignore = "#969896"
}
c.templer.gitSigns = {
  add = "#959D48",
  change = "#61829E",
  delete = "#AC4646"
}
c.templer.green = "#b5bd68"
c.templer.green1 = "#8abeb7"
c.templer.green2 = "#6A9E97"
c.templer.hint = "#959D48"
c.templer.info = "#6A9E97"
c.templer.magenta = "#b294bb"
c.templer.magenta2 = "#a3685a"
c.templer.orange = "#de935f"
c.templer.purple = "#92749B"
c.templer.red = "#cc6666"
c.templer.red1 = "#AC4646"
c.templer.teal = "#959D48"
c.templer.terminal_black = "#969896"
c.templer.warning = "#f0c674"
c.templer.yellow = "#f0c674"
-- MONDO-END

c.templer.codeBG = c.templer.bg
c.templer.nocdBG = c.templer.bg
c.templer.nocdFG = c.templer.base03a
c.templer.cursBG = c.templer.base01
c.templer.cursFG = c.templer.base03a
c.templer.buffBG = c.templer.base00a
c.templer.buffFG = c.templer.base02a

return {{
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
		style = "templer",
		styles = {
			sidebars = "templer", -- style for sidebars, see below
		},
		sidebars = {
			"help",
			"man",
			"undotree",
			"diff",
			"diffpanel",
			"minimap",
			"mason",
			"Trouble",
		},
		on_highlights = function(hl, color)
			-- Scrollbar
			hl.NoCode										= { bg = c.templer.bg }
			hl.NoCodeSign								= { bg = c.templer.bg }
			hl.NoCodeCursor							= { bg = c.templer.base01 }
			hl.ScrollbarCursor					= { bg = color.base00a, fg = color.base00a }
			hl.ScrollbarHandle					= { bg = color.base02, 	fg = color.base00a }
			hl.ScrollbarCursorHandle		= { bg = color.base02, 	fg = color.base00a }
			hl.ScrollbarError						= { bg = color.codeBG, 	fg = color.base08b }
			hl.ScrollbarErrorHandle			= { bg = color.base02, 	fg = color.base08a }
			hl.ScrollbarWarn						= { bg = color.codeBG, 	fg = color.base09b }
			hl.ScrollbarWarnHandle			= { bg = color.base02, 	fg = color.base09a }
			hl.ScrollbarSearch					= { bg = color.codeBG, 	fg = color.base0Ab }
			hl.ScrollbarSearchHandle		= { bg = color.base02, 	fg = color.base0Aa }
			hl.ScrollbarInfo						= { bg = color.codeBG, 	fg = color.base0Cb }
			hl.ScrollbarInfoHandle			= { bg = color.base02, 	fg = color.base0Ca }
			hl.ScrollbarHint						= { bg = color.codeBG, 	fg = color.base0Fb }
			hl.ScrollbarHintHandle			= { bg = color.base02, 	fg = color.base0Fa }
			hl.ScrollbarMisc						= { bg = color.codeBG, 	fg = color.base03 }
			hl.ScrollbarMiscHandle			= { bg = color.base02, 	fg = color.base04 }
			hl.ScrollbarGitAdd					= { bg = color.codeBG, 	fg = color.base0Bb }
			hl.ScrollbarGitAddHandle		= { bg = color.base02, 	fg = color.base0Ba }
			hl.ScrollbarGitChange				= { bg = color.codeBG, 	fg = color.base0Db }
			hl.ScrollbarGitChangeHandle	= { bg = color.base02, 	fg = color.base0Da }
			hl.ScrollbarGitDelete				= { bg = color.codeBG, 	fg = color.base0Fb }
			hl.ScrollbarGitDeleteHandle	= { bg = color.base02, 	fg = color.base0Fa }
			-- Navic
			hl.NavicText 										= { fg = color.base03a, 	bg = color.nocdBG, bold = false }
			-- Noice
			hl.NoiceCmdline									= { bg = color.base0Db,fg = color.base05, blend = 0 }
			hl.NoiceCmdlineIcon							= { bg = color.base02, fg = color.base0Da, blend = 0 }
			hl.NoiceCmdlineIconSearch				= { bg = color.base02, fg = color.base0Da, blend = 0 }
			hl.NoiceCmdlinePrompt						= { bg = color.nocdBG, fg = color.base0Da, blend = 0 }
			hl.NoiceMini										= { bg = color.base0Dc }
			hl.NoiceMiniSearch							= { bg = color.base0Ac }
			hl.NoiceMiniIncSearch						= { bg = color.base0Ac }
			-- NeoTree
			hl.NeoTreeTabActive							= { bg = color.nocdBG, fg = color.base03 }
			hl.NeoTreeTabInactive						= { bg = color.base00a, fg = color.base02 }
			hl.NeoTreeTabSeparatorInactive	= { bg = color.base01a, fg = color.base00a }
			hl.NeoTreeTabSeparatorActive		= { bg = color.codeBG, fg = color.nocdBG }

			hl.TabLineFill									= { bg = color.base00 }
			hl.VertSplit										= { bg = color.base00, fg = color.bg }
			hl.WinSeparator									= { bg = color.base00, fg = color.bg }
			hl.CursorLine										= { bg = color.base01, bold = true }
			hl.CursorLineNr									= { bg = color.base03a, fg = color.base00a }
			hl.CursorLineSign								= { bg = color.base03a, fg = color.base00a }
			hl.CursorLineFold								= { bg = color.base03a, fg = color.base00a }
			-- TreesitterContext
			hl.TreesitterContext						= { bg = color.base01, bold = false, blend = 10 }
			-- Bufferline
			hl.BufferLineSeparator = 									{ bg = color.buffBG, fg = color.base00 }
			hl.BufferLineSeparatorSelected = 					{ bg = color.nocdBG, fg = color.base00 }
			hl.BufferLineSeparatorVisible = 					{ bg = color.nocdBG, fg = color.base00 }
			hl.BufferLineTab = 												{ bg = color.base00a, fg = color.base02 }
			hl.BufferLineTabSeparator = 							{ bg = color.base00a, fg = color.base00 }
			hl.BufferLineTabSelected = 								{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineTabSeparatorSelected = 			{ bg = color.nocdBG, fg = color.base00 }
			hl.BufferLineFill = 											{ bg = color.base00, fg = color.base02 }
			hl.BufferLineTabClose = 									{ bg = color.base00, fg = color.base01 }
			hl.BufferLineNumbers = 										{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineBackground = 								{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineCloseButton = 								{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineDiagnostic = 								{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineInfo = 											{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineInfoDiagnostic = 						{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineWarning = 										{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineWarningDiagnostic = 					{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineError = 											{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineErrorDiagnostic = 						{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineModified = 									{ bg = color.buffBG, fg = color.buffFG, italic = false }
			hl.BufferLineDuplicate = 									{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLinePick = 											{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineHint = 											{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineHintDiagnostic = 						{ bg = color.buffBG, fg = color.buffFG }
			hl.BufferLineNumbersSelected = 						{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineCloseButtonSelected = 				{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineBufferSelected = 						{ bg = color.nocdBG, fg = color.nocdFG, italic = false }
			hl.BufferLineDiagnosticSelected = 				{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineInfoSelected = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineInfoDiagnosticSelected =			{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineWarningSelected = 						{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineWarningDiagnostic_selected = { bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineErrorSelected = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineErrorDiagnosticSelected = 		{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineModifiedSelected = 					{ bg = color.nocdBG, fg = color.nocdFG, italic = false }
			hl.BufferLineDuplicateSelected = 					{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineIndicatorSelected = 					{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLinePickSelected = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineHintSelected = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineHintDiagnosticSelected = 		{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineNumbersVisible = 						{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineCloseButtonVisible = 				{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineBufferVisible = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineDiagnosticVisible = 					{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineInfoVisible = 								{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineInfoDiagnosticVisible = 			{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineWarningVisible = 						{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineWarningDiagnosticVisible = 	{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineErrorVisible = 							{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineErrorDiagnosticVisible = 		{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineModifiedVisible = 						{ bg = color.nocdBG, fg = color.nocdFG, italic = false }
			hl.BufferLineDuplicateVisible = 					{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineIndicatorVisible = 					{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLinePickVisible = 								{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineHintVisible = 								{ bg = color.nocdBG, fg = color.nocdFG }
			hl.BufferLineHintDiagnosticVisible = 			{ bg = color.nocdBG, fg = color.nocdFG }
		end,
	},
}}
