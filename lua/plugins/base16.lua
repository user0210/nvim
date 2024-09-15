return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			on_colors = function(colors)

-- MONDO-BEGIN
colors.base00  = "#1d2021"
colors.base01  = "#3c3836"
colors.base02  = "#504945"
colors.base03  = "#665c54"
colors.base04  = "#bdae93"
colors.base05  = "#d5c4a1"
colors.base06  = "#ebdbb2"
colors.base07  = "#fbf1c7"
colors.base08  = "#fb4934"
colors.base09  = "#fe8019"
colors.base0A  = "#fabd2f"
colors.base0B  = "#b8bb26"
colors.base0C  = "#8ec07c"
colors.base0D  = "#83a598"
colors.base0E  = "#d3869b"
colors.base0F  = "#d65d0e"
colors.base08a = "#DB2914"
colors.base09a = "#DE6000"
colors.base0Aa = "#DA9D0F"
colors.base0Ba = "#989B06"
colors.base0Ca = "#6EA05C"
colors.base0Da = "#638578"
colors.base0Ea = "#B3667B"
colors.base0Fa = "#B63D00"
colors.base00a = "#181B1C"
colors.base01a = "#2C2C2B"
colors.base02a = "#46403D"
colors.base03a = "#5B524C"
colors.base04a = "#918573"
colors.base05a = "#C9B99A"
colors.base06a = "#E0CFA9"
colors.base07a = "#F3E6BC"
colors.base08b = "#7C241A"
colors.base09b = "#7D4010"
colors.base0Ab = "#7B5E18"
colors.base0Bb = "#5A5D13"
colors.base0Cb = "#45603E"
colors.base0Db = "#40524C"
colors.base0Eb = "#68434E"
colors.base0Fb = "#692E10"
colors.base08c = "#30201F"
colors.base09c = "#30261D"
colors.base0Ac = "#2F2C1F"
colors.base0Bc = "#292C1E"
colors.base0Cc = "#252C26"
colors.base0Dc = "#242A29"
colors.base0Ec = "#2C272A"
colors.base0Fc = "#2C221D"

colors.bg               = "#2C2C2B"
colors.bg_dark          = "#1d2021"
colors.bg_float         = "#1d2021"
colors.bg_highlight     = "#3c3836"
colors.bg_popup         = "#1d2021"
colors.bg_search        = "#638578"
colors.bg_sidebar       = "#1d2021"
colors.bg_statusline    = "#1d2021"
colors.bg_visual        = "#504945"
colors.black            = "#1d2021"
colors.blue             = "#83a598"
colors.blue0            = "#638578"
colors.blue1            = "#6EA05C"
colors.blue2            = "#6EA05C"
colors.blue5            = "#A7BBA6"
colors.blue6            = "#fbf1c7"
colors.blue7            = "#40524C"
colors.border           = "#1d2021"
colors.border_highlight = "#6EA05C"
colors.comment          = "#665c54"
colors.cyan             = "#C4D8A1"
colors.dark3            = "#665c54"
colors.dark5            = "#bdae93"
colors.delta            = {
	add    = "#5A5D13",
	delete = "#7C241A"
}
colors.diff             = {
	add    = "#5A5D13",
	change = "#40524C",
	delete = "#7C241A",
	text   = "#40524C"
}
colors.error            = "#DB2914"
colors.fg               = "#d5c4a1"
colors.fg_dark          = "#bdae93"
colors.fg_float         = "#d5c4a1"
colors.fg_gutter        = "#40524C"
colors.fg_sidebar       = "#bdae93"
colors.git              = {
	add    = "#989B06",
	change = "#638578",
	delete = "#DB2914",
	ignore = "#665c54"
}
colors.gitSigns         = {
	add    = "#989B06",
	change = "#638578",
	delete = "#DB2914"
}
colors.green            = "#b8bb26"
colors.green1           = "#8ec07c"
colors.green2           = "#6EA05C"
colors.hint             = "#989B06"
colors.info             = "#6EA05C"
colors.magenta          = "#d3869b"
colors.magenta2         = "#d65d0e"
colors.orange           = "#fe8019"
colors.purple           = "#B3667B"
colors.red              = "#fb4934"
colors.red1             = "#DB2914"
colors.teal             = "#989B06"
colors.terminal_black   = "#504945"
colors.warning          = "#fabd2f"
colors.yellow           = "#fabd2f"
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
				hl.Whithespace              = { fg = color.base02 }
				hl.NonText                  = { fg = color.base02 }
				hl.IndentBlanklineContextChar = { fg = color.base02 }
				hl.IndentBlanklineChar      = { fg = color.base02 }
				hl.LineNr                   = { fg = color.base02 }

				hl.TabLineFill              = { bg = color.base00 }
				hl.VertSplit                = { bg = color.base00, fg = color.bg }
				hl.WinSeparator             = { bg = color.base00, fg = color.bg }

				hl.CursorLine               = { bg = color.base01, bold = true }
				hl.CursorLineNr             = { bg = color.base02a, fg = color.base00a }
				hl.CursorLineSign           = { bg = color.base02a, fg = color.base00a }
				hl.CursorLineFold           = { bg = color.base02a, fg = color.base00a }

				hl.GitSignsAdd              = { fg = color.base0Bb }
				hl.GitSignsChange           = { fg = color.base0Db }
				hl.GitSignsDelete           = { fg = color.base08b }
				hl.GitSignsAddCul           = { bg = color.base02a, fg = color.base0Bb }
				hl.GitSignsChangeCul        = { bg = color.base02a, fg = color.base0Db }
				hl.GitSignsDeleteCul        = { bg = color.base02a, fg = color.base08b }
				hl.GitSignsStagedChangeCul  = { bg = color.base02a, fg = color.base0Db }
				hl.GitSignsStagedDeleteCul  = { bg = color.base02a, fg = color.base08b }

				-- Scrollbar
				hl.NoCode                   = { bg = color.bg }
				hl.NoCodeSign               = { bg = color.bg }
				hl.NoCodeCursor             = { bg = color.base01 }
				hl.IlluminatedWordRead      = { bg = color.base01 }
				hl.IlluminatedWordText      = { bg = color.base01 }
				hl.IlluminatedWordWrite     = { bg = color.base01 }
				hl.ScrollbarCursor          = { bg = color.base00a, fg = color.base00a }
				hl.ScrollbarHandle          = { bg = color.base02,  fg = color.base00a }
				hl.ScrollbarCursorHandle    = { bg = color.base02,  fg = color.base00a }
				hl.ScrollbarError           = { bg = color.codeBG,  fg = color.base08b }
				hl.ScrollbarErrorHandle     = { bg = color.base02,  fg = color.base08a }
				hl.ScrollbarWarn            = { bg = color.codeBG,  fg = color.base09b }
				hl.ScrollbarWarnHandle      = { bg = color.base02,  fg = color.base09a }
				hl.ScrollbarSearch          = { bg = color.codeBG,  fg = color.base0Ab }
				hl.ScrollbarSearchHandle    = { bg = color.base02,  fg = color.base0Aa }
				hl.ScrollbarInfo            = { bg = color.codeBG,  fg = color.base0Cb }
				hl.ScrollbarInfoHandle      = { bg = color.base02,  fg = color.base0Ca }
				hl.ScrollbarHint            = { bg = color.codeBG,  fg = color.base0Fb }
				hl.ScrollbarHintHandle      = { bg = color.base02,  fg = color.base0Fa }
				hl.ScrollbarMisc            = { bg = color.codeBG,  fg = color.base03 }
				hl.ScrollbarMiscHandle      = { bg = color.base02,  fg = color.base04 }
				hl.ScrollbarGitAdd          = { bg = color.codeBG,  fg = color.base0Bb }
				hl.ScrollbarGitAddHandle    = { bg = color.base02,  fg = color.base0Ba }
				hl.ScrollbarGitChange       = { bg = color.codeBG,  fg = color.base0Db }
				hl.ScrollbarGitChangeHandle = { bg = color.base02,  fg = color.base0Da }
				hl.ScrollbarGitDelete       = { bg = color.codeBG,  fg = color.base0Fb }
				hl.ScrollbarGitDeleteHandle = { bg = color.base02,  fg = color.base0Fa }
				-- Navic
				hl.NavicText                    = { fg = color.base03a,   bg = color.nocdBG, bold = false }
				-- Noice
				hl.NoiceCmdline                 = { bg = color.base0Db,fg = color.base05, blend = 0 }
				hl.NoiceCmdlineIcon             = { bg = color.base02, fg = color.base0Da, blend = 0 }
				hl.NoiceCmdlineIconSearch       = { bg = color.base02, fg = color.base0Da, blend = 0 }
				hl.NoiceCmdlinePrompt           = { bg = color.nocdBG, fg = color.base0Da, blend = 0 }
				hl.NoiceMini                    = { bg = color.base0Dc }
				hl.NoiceMiniSearch              = { bg = color.base0Ac }
				hl.NoiceMiniIncSearch           = { bg = color.base0Ac }
				-- NeoTree
				hl.NeoTreeTabActive             = { bg = color.nocdBG, fg = color.base03 }
				hl.NeoTreeNormal                = { bg = color.nocdBG, fg = color.base03 }
				hl.NeoTreeTabInactive           = { bg = color.baseBG, fg = color.base03 }
				hl.NeoTreeNormalNC              = { bg = color.baseBG, fg = color.base03 }
				hl.NeoTreeRootName              = { underline = true }
				hl.NeoTreeTabSeparatorInactive  = { bg = color.base01a, fg = color.base00a }
				hl.NeoTreeTabSeparatorActive    = { bg = color.codeBG, fg = color.nocdBG }
				-- TreesitterContext
				hl.TreesitterContext            = { bg = color.base01, bold = false, blend = 10 }
				-- Bufferline
				hl.BufferLineDiffAdd                    = { bg = color.base00, fg = color.base0Bb }
				hl.BufferLineDiffChange                 = { bg = color.base00, fg = color.base0Db }
				hl.BufferLineDiffDelete                 = { bg = color.base00, fg = color.base08b }
				hl.BufferLineSeparator                  = { bg = color.buffBG, fg = color.base00 }
				hl.BufferLineSeparatorSelected          = { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineSeparatorVisible           = { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineTab                        = { bg = color.base00a, fg = color.base02 }
				hl.BufferLineTabSeparator               = { bg = color.base00a, fg = color.base00 }
				hl.BufferLineTabSelected                = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineTabSeparatorSelected       = { bg = color.nocdBG, fg = color.base00 }
				hl.BufferLineFill                       = { bg = color.base00, fg = color.base02 }
				hl.BufferLineTabClose                   = { bg = color.base00, fg = color.base01 }
				hl.BufferLineNumbers                    = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineBackground                 = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineCloseButton                = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineDiagnostic                 = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineInfo                       = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineInfoDiagnostic             = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineWarning                    = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineWarningDiagnostic          = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineError                      = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineErrorDiagnostic            = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineModified                   = { bg = color.buffBG, fg = color.buffFG, italic = false }
				hl.BufferLineDuplicate                  = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLinePick                       = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineHint                       = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineHintDiagnostic             = { bg = color.buffBG, fg = color.buffFG }
				hl.BufferLineNumbersSelected            = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineCloseButtonSelected        = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineBufferSelected             = { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDiagnosticSelected         = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoSelected               = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoDiagnosticSelected     = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningSelected            = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningDiagnostic_selected = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorSelected              = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorDiagnosticSelected    = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineModifiedSelected           = { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDuplicateSelected          = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineIndicatorSelected          = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLinePickSelected               = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintSelected               = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintDiagnosticSelected     = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineNumbersVisible             = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineCloseButtonVisible         = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineBufferVisible              = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineDiagnosticVisible          = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoVisible                = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineInfoDiagnosticVisible      = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningVisible             = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineWarningDiagnosticVisible   = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorVisible               = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineErrorDiagnosticVisible     = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineModifiedVisible            = { bg = color.nocdBG, fg = color.nocdFG, italic = false }
				hl.BufferLineDuplicateVisible           = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineIndicatorVisible           = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLinePickVisible                = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintVisible                = { bg = color.nocdBG, fg = color.nocdFG }
				hl.BufferLineHintDiagnosticVisible      = { bg = color.nocdBG, fg = color.nocdFG }
			end,
		},
	}
}
