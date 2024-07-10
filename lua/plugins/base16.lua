return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			on_colors = function(colors)

-- MONDO-BEGIN
colors.base00  = "#1d1f21"
colors.base01  = "#282a2e"
colors.base02  = "#373b41"
colors.base03  = "#969896"
colors.base04  = "#b4b7b4"
colors.base05  = "#c5c8c6"
colors.base06  = "#e0e0e0"
colors.base07  = "#ffffff"
colors.base08  = "#cc6666"
colors.base09  = "#de935f"
colors.base0A  = "#f0c674"
colors.base0B  = "#b5bd68"
colors.base0C  = "#8abeb7"
colors.base0D  = "#81a2be"
colors.base0E  = "#b294bb"
colors.base0F  = "#a3685a"
colors.base08a = "#AC4646"
colors.base09a = "#BE733F"
colors.base0Aa = "#D0A654"
colors.base0Ba = "#959D48"
colors.base0Ca = "#6A9E97"
colors.base0Da = "#61829E"
colors.base0Ea = "#92749B"
colors.base0Fa = "#83483A"
colors.base00a = "#181A1C"
colors.base01a = "#222427"
colors.base02a = "#2F3237"
colors.base03a = "#66696B"
colors.base04a = "#A5A7A5"
colors.base05a = "#BCBFBD"
colors.base06a = "#D2D4D3"
colors.base07a = "#EFEFEF"
colors.base08b = "#643233"
colors.base09b = "#6D4930"
colors.base0Ab = "#76623A"
colors.base0Bb = "#595E34"
colors.base0Cb = "#435E5C"
colors.base0Db = "#3F505F"
colors.base0Eb = "#57495E"
colors.base0Fb = "#50332D"
colors.base08c = "#2B2224"
colors.base09c = "#2D2724"
colors.base0Ac = "#2E2C26"
colors.base0Bc = "#292B24"
colors.base0Cc = "#242B2C"
colors.base0Dc = "#23282D"
colors.base0Ec = "#28272D"
colors.base0Fc = "#272323"

colors.bg               = "#222427"
colors.bg_dark          = "#1d1f21"
colors.bg_float         = "#1d1f21"
colors.bg_highlight     = "#282a2e"
colors.bg_popup         = "#1d1f21"
colors.bg_search        = "#61829E"
colors.bg_sidebar       = "#1d1f21"
colors.bg_statusline    = "#1d1f21"
colors.bg_visual        = "#373b41"
colors.black            = "#1d1f21"
colors.blue             = "#81a2be"
colors.blue0            = "#61829E"
colors.blue1            = "#6A9E97"
colors.blue2            = "#6A9E97"
colors.blue5            = "#A6BDD1"
colors.blue6            = "#ffffff"
colors.blue7            = "#3F505F"
colors.border           = "#1d1f21"
colors.border_highlight = "#6A9E97"
colors.comment          = "#969896"
colors.cyan             = "#C4DEDB"
colors.dark3            = "#969896"
colors.dark5            = "#b4b7b4"
colors.delta            = {
	add    = "#595E34",
	delete = "#643233"
}
colors.diff             = {
	add    = "#595E34",
	change = "#3F505F",
	delete = "#643233",
	text   = "#3F505F"
}
colors.error            = "#AC4646"
colors.fg               = "#c5c8c6"
colors.fg_dark          = "#b4b7b4"
colors.fg_float         = "#c5c8c6"
colors.fg_gutter        = "#3F505F"
colors.fg_sidebar       = "#b4b7b4"
colors.git              = {
	add    = "#959D48",
	change = "#61829E",
	delete = "#AC4646",
	ignore = "#969896"
}
colors.gitSigns         = {
	add    = "#959D48",
	change = "#61829E",
	delete = "#AC4646"
}
colors.green            = "#b5bd68"
colors.green1           = "#8abeb7"
colors.green2           = "#6A9E97"
colors.hint             = "#959D48"
colors.info             = "#6A9E97"
colors.magenta          = "#b294bb"
colors.magenta2         = "#a3685a"
colors.orange           = "#de935f"
colors.purple           = "#92749B"
colors.red              = "#cc6666"
colors.red1             = "#AC4646"
colors.teal             = "#959D48"
colors.terminal_black   = "#373b41"
colors.warning          = "#f0c674"
colors.yellow           = "#f0c674"
-- MONDO-END

colors.codeBG = colors.bg
colors.nocdBG = colors.bg
colors.nocdFG = colors.base03a
colors.cursBG = colors.base01
colors.cursFG = colors.base03a
colors.buffBG = colors.base00a
colors.buffFG = colors.base02a

			end,

			on_highlights = function(hl, color)
				hl.Whithespace							= { fg = color.base02 }
				hl.NonText									= { fg = color.base02 }
				hl.IndentBlanklineContextChar	= { fg = color.base02 }
				hl.IndentBlanklineChar			= { fg = color.base02 }
				hl.LineNr										= { fg = color.base02 }

				hl.TabLineFill							= { bg = color.base00 }
				hl.VertSplit								= { bg = color.base00, fg = color.bg }
				hl.WinSeparator							= { bg = color.base00, fg = color.bg }

				hl.CursorLine								= { bg = color.base01, bold = true }
				hl.CursorLineNr							= { bg = color.base02a, fg = color.base00a }
				hl.CursorLineSign						= { bg = color.base02a, fg = color.base00a }
				hl.CursorLineFold						= { bg = color.base02a, fg = color.base00a }

				hl.GitSignsAdd 							= { fg = color.base0Bb }
				hl.GitSignsChange						= { fg = color.base0Db }
				hl.GitSignsDelete						= { fg = color.base08b }

				-- Scrollbar
				hl.NoCode										= { bg = color.bg }
				hl.NoCodeSign								= { bg = color.bg }
				hl.NoCodeCursor							= { bg = color.base01 }
				hl.IlluminatedWordRead			= { bg = color.base01 }
				hl.IlluminatedWordText			= { bg = color.base01 }
				hl.IlluminatedWordWrite			= { bg = color.base01 }
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
				hl.NeoTreeNormal								= { bg = color.nocdBG, fg = color.base03 }
				hl.NeoTreeTabInactive						= { bg = color.baseBG, fg = color.base03 }
				hl.NeoTreeNormalNC							= { bg = color.baseBG, fg = color.base03 }
				hl.NeoTreeRootName							= { underline = true }
				hl.NeoTreeTabSeparatorInactive	= { bg = color.base01a, fg = color.base00a }
				hl.NeoTreeTabSeparatorActive		= { bg = color.codeBG, fg = color.nocdBG }
				-- TreesitterContext
				hl.TreesitterContext						= { bg = color.base01, bold = false, blend = 10 }
				-- Bufferline
				hl.BufferLineDiffAdd										= { bg = color.base00, fg = color.base0Bb }
				hl.BufferLineDiffChange									= { bg = color.base00, fg = color.base0Db }
				hl.BufferLineDiffDelete									= { bg = color.base00, fg = color.base08b }
				hl.BufferLineSeparator									= { bg = color.buffBG, fg = color.base00 }
				hl.BufferLineSeparatorSelected					= { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineSeparatorVisible						= { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineTab												= { bg = color.base00a, fg = color.base02 }
				hl.BufferLineTabSeparator								= { bg = color.base00a, fg = color.base00 }
				hl.BufferLineTabSelected								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineTabSeparatorSelected				= { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineFill												= { bg = color.base00, fg = color.base02 }
				hl.BufferLineTabClose										= { bg = color.base00, fg = color.base01 }
				hl.BufferLineNumbers										= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineBackground									= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineCloseButton								= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineDiagnostic									= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineInfo												= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineInfoDiagnostic							= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineWarning										= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineWarningDiagnostic					= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineError											= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineErrorDiagnostic						= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineModified										= { bg = color.buffBG, fg = color.buffFG, italic = false }
				hl.BufferLineDuplicate									= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLinePick												= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineHint												= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineHintDiagnostic							= { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineNumbersSelected						= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineCloseButtonSelected				= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineBufferSelected							= { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDiagnosticSelected					= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoSelected								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoDiagnosticSelected			= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningSelected						= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningDiagnostic_selected	= {  bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorSelected							= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorDiagnosticSelected		= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineModifiedSelected						= { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDuplicateSelected					= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineIndicatorSelected					= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLinePickSelected								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintSelected								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintDiagnosticSelected			= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineNumbersVisible							= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineCloseButtonVisible					= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineBufferVisible							= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineDiagnosticVisible					= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoVisible								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoDiagnosticVisible			= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningVisible							= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningDiagnosticVisible		= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorVisible								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorDiagnosticVisible			= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineModifiedVisible						= { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDuplicateVisible						= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineIndicatorVisible						= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLinePickVisible								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintVisible								= { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintDiagnosticVisible			= { bg = color.nocdBG, fg = color.nocdFG }
			end,
		},
	}
}
