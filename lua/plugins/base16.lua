local mondo = {
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
  base08c = "#2B2224",
  base09c = "#2D2724",
  base0Ac = "#2E2C26",
  base0Bc = "#292B24",
  base0Cc = "#242B2C",
  base0Dc = "#23282D",
  base0Ec = "#28272D",
  base0Fc = "#272323",

  bg = "#1d1f21",
  bg_dark = "#181A1C",
  bg_float = "#181A1C",
  bg_highlight = "#282a2e",
  bg_popup = "#181A1C",
  bg_search = "#61829E",
  bg_sidebar = "#181A1C",
  bg_statusline = "#181A1C",
  bg_visual = "#373b41",
  black = "#181A1C",
  blue = "#81a2be",
  blue0 = "#61829E",
  blue1 = "#6A9E97",
  blue2 = "#6A9E97",
  blue5 = "#A6BDD1",
  blue6 = "#ffffff",
  blue7 = "#3F505F",
  border = "#181A1C",
  border_highlight = "#6A9E97",
  comment = "#969896",
  cyan = "#C4DEDB",
  dark3 = "#969896",
  dark5 = "#b4b7b4",
  delta = {
    add = "#595E34",
    delete = "#643233"
  },
  diff = {
    add = "#595E34",
    change = "#3F505F",
    delete = "#643233",
    text = "#3F505F"
  },
  error = "#AC4646",
  fg = "#e0e0e0",
  fg_dark = "#c5c8c6",
  fg_float = "#e0e0e0",
  fg_gutter = "#3F505F",
  fg_sidebar = "#c5c8c6",
  git = {
    add = "#959D48",
    change = "#61829E",
    delete = "#AC4646",
    ignore = "#969896"
  },
  gitSigns = {
    add = "#959D48",
    change = "#61829E",
    delete = "#AC4646"
  },
  green = "#b5bd68",
  green1 = "#8abeb7",
  green2 = "#6A9E97",
  hint = "#959D48",
  info = "#6A9E97",
  magenta = "#b294bb",
  magenta2 = "#a3685a",
  orange = "#de935f",
  purple = "#92749B",
  red = "#cc6666",
  red1 = "#AC4646",
  teal = "#959D48",
  terminal_black = "#969896",
  warning = "#f0c674",
  yellow = "#f0c674"
	-- MONDO-END
}

return {{
  "folke/tokyonight.nvim",
  lazy = true,
	opts = function()
		-- color non-code windowscolors
		vim.api.nvim_set_hl(0, "NoCode", 				{ bg = mondo.base01 })
		vim.api.nvim_set_hl(0, "NoCodeSign", 		{ bg = mondo.base01 })
		vim.api.nvim_set_hl(0, "NoCodeCursor", 	{ bg = mondo.base02 })

		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = {
				"help",
				"man",
				"undotree",
				"diff",
				"diffpanel",
				"minimap",
				"mason",
				"Trouble",
			},
			callback = function()
				vim.opt_local.winhighlight = "Normal:NoCode,CursorLine:NoCodeCursor,SignColumn:NoCodeSign"
			end,
		})
		return {
			style = "moon",
			on_colors = function(colors)
				colors.base00 = mondo.base00
				colors.base01 = mondo.base01
				colors.base02 = mondo.base02
				colors.base03 = mondo.base03
				colors.base04 = mondo.base04
				colors.base05 = mondo.base05
				colors.base06 = mondo.base06
				colors.base07 = mondo.base07
				colors.base08 = mondo.base08
				colors.base09 = mondo.base09
				colors.base0A = mondo.base0A
				colors.base0B = mondo.base0B
				colors.base0C = mondo.base0C
				colors.base0D = mondo.base0D
				colors.base0E = mondo.base0E
				colors.base0F = mondo.base0F
				colors.base08a = mondo.base08a
				colors.base09a = mondo.base09a
				colors.base0Aa = mondo.base0Aa
				colors.base0Ba = mondo.base0Ba
				colors.base0Ca = mondo.base0Ca
				colors.base0Da = mondo.base0Da
				colors.base0Ea = mondo.base0Ea
				colors.base0Fa = mondo.base0Fa
				colors.base00a = mondo.base00a
				colors.base01a = mondo.base01a
				colors.base02a = mondo.base02a
				colors.base03a = mondo.base03a
				colors.base04a = mondo.base04a
				colors.base05a = mondo.base05a
				colors.base06a = mondo.base06a
				colors.base07a = mondo.base07a
				colors.base08b = mondo.base08b
				colors.base09b = mondo.base09b
				colors.base0Ab = mondo.base0Ab
				colors.base0Bb = mondo.base0Bb
				colors.base0Cb = mondo.base0Cb
				colors.base0Db = mondo.base0Db
				colors.base0Eb = mondo.base0Eb
				colors.base0Fb = mondo.base0Fb
				colors.base08c = mondo.base08c
				colors.base09c = mondo.base09c
				colors.base0Ac = mondo.base0Ac
				colors.base0Bc = mondo.base0Bc
				colors.base0Cc = mondo.base0Cc
				colors.base0Dc = mondo.base0Dc
				colors.base0Ec = mondo.base0Ec
				colors.base0Fc = mondo.base0Fc

				colors.codeBG = mondo.base00
				colors.nocdBG = mondo.base01
				colors.nocdFG = mondo.base03a
				colors.cursBG = mondo.base02
				colors.cursFG = mondo.base00a
				colors.buffBG = mondo.base01a
				colors.buffFG = mondo.base03a

				colors.bg = mondo.bg
				colors.bg_dark = mondo.bg_dark
				colors.bg_float = mondo.bg_float
				colors.bg_highlight = mondo.bg_highlight
				colors.bg_popup = mondo.bg_popup
				colors.bg_search = mondo.bg_search
				colors.bg_sidebar = mondo.bg_sidebar
				colors.bg_statusline = mondo.bg_statusline
				colors.bg_visual = mondo.bg_visual
				colors.black = mondo.black
				colors.blue = mondo.blue
				colors.blue0 = mondo.blue0
				colors.blue1 = mondo.blue1
				colors.blue2 = mondo.blue2
				colors.blue5 = mondo.blue5
				colors.blue6 = mondo.blue6
				colors.blue7 = mondo.blue7
				colors.border = mondo.border
				colors.border_highlight = mondo.border_highlight
				colors.comment = mondo.comment
				colors.cyan = mondo.cyan
				colors.dark3 = mondo.dark3
				colors.dark5 = mondo.dark5
				colors.delta = mondo.delta
				colors.diff = mondo.diff
				colors.error = mondo.error
				colors.fg = mondo.fg
				colors.fg_dark = mondo.fg_dark
				colors.fg_float = mondo.fg_float
				colors.fg_gutter = mondo.fg_gutter
				colors.fg_sidebar = mondo.fg_sidebar
				colors.git = mondo.git
				colors.gitSigns = mondo.gitSigns
				colors.green = mondo.green
				colors.green1 = mondo.green1
				colors.green2 = mondo.green2
				colors.hint = mondo.hint
				colors.info = mondo.info
				colors.magenta = mondo.magenta
				colors.magenta2 = mondo.magenta2
				colors.none = "NONE"
				colors.orange = mondo.orange
				colors.purple = mondo.purple
				colors.red = mondo.red
				colors.red1 = mondo.red1
				colors.teal = mondo.teal
				colors.terminal_black = mondo.terminal_black
				colors.warning = mondo.warning
				colors.yellow = mondo.yellow
			end,
			on_highlights = function(hl, color)
				hl.ALEErrorSign = { fg = mondo.base08a }
				hl.ALEWarningSign = { fg = mondo.base0A }
				hl.AlphaButtons = { fg = mondo.cyan }
				hl.AlphaFooter = { fg = mondo.base0Ca }
				hl.AlphaHeader = { fg = mondo.base0D }
				hl.AlphaHeaderLabel = { fg = mondo.base09 }
				hl.AlphaShortcut = { fg = mondo.base09 }
				hl.Bold = { bold = true }
				hl.BufferAlternate = { bg = mondo.base0Db, fg = mondo.base06 }
				hl.BufferAlternateERROR = { bg = mondo.base0Db, fg = mondo.base08a }
				hl.BufferAlternateHINT = { bg = mondo.base0Db, fg = mondo.base0Ba }
				hl.BufferAlternateINFO = { bg = mondo.base0Db, fg = mondo.base0Ca }
				hl.BufferAlternateIndex = { bg = mondo.base0Db, fg = mondo.base0Ca }
				hl.BufferAlternateMod = { bg = mondo.base0Db, fg = mondo.base0A }
				hl.BufferAlternateSign = { bg = mondo.base0Db, fg = mondo.base0Ca }
				hl.BufferAlternateTarget = { bg = mondo.base0Db, fg = mondo.base08 }
				hl.BufferAlternateWARN = { bg = mondo.base0Db, fg = mondo.base0A }
				hl.BufferCurrent = { bg = mondo.base00, fg = mondo.base06 }
				hl.BufferCurrentERROR = { bg = mondo.base00, fg = mondo.base08a }
				hl.BufferCurrentHINT = { bg = mondo.base00, fg = mondo.base0Ba }
				hl.BufferCurrentINFO = { bg = mondo.base00, fg = mondo.base0Ca }
				hl.BufferCurrentIndex = { bg = mondo.base00, fg = mondo.base0Ca }
				hl.BufferCurrentMod = { bg = mondo.base00, fg = mondo.base0A }
				hl.BufferCurrentSign = { bg = mondo.base00, fg = mondo.base00 }
				hl.BufferCurrentTarget = { bg = mondo.base00, fg = mondo.base08 }
				hl.BufferCurrentWARN = { bg = mondo.base00, fg = mondo.base0A }
				hl.BufferInactive = { bg = mondo.base01a, fg = mondo.base03 }
				hl.BufferInactiveERROR = { bg = mondo.base01a, fg = mondo.base08a }
				hl.BufferInactiveHINT = { bg = mondo.base01a, fg = mondo.base0Ba }
				hl.BufferInactiveINFO = { bg = mondo.base01a, fg = mondo.base0Da }
				hl.BufferInactiveIndex = { bg = mondo.base01a, fg = mondo.base04 }
				hl.BufferInactiveMod = { bg = mondo.base01a, fg = mondo.base0Aa }
				hl.BufferInactiveSign = { bg = mondo.base01a, fg = mondo.base00 }
				hl.BufferInactiveTarget = { bg = mondo.base01a, fg = mondo.base08 }
				hl.BufferInactiveWARN = { bg = mondo.base01a, fg = mondo.base0Aa }
				hl.BufferLineIndicatorSelected = { fg = mondo.base0Da }
				hl.BufferOffset = { bg = mondo.base00a, fg = mondo.base04 }
				hl.BufferTabpageFill = { bg = mondo.base00, fg = mondo.base04 }
				hl.BufferTabpages = { bg = mondo.base00a, fg = "NONE" }
				hl.BufferVisible = { bg = mondo.base00a, fg = mondo.base06 }
				hl.BufferVisibleERROR = { bg = mondo.base00a, fg = mondo.base08a }
				hl.BufferVisibleHINT = { bg = mondo.base00a, fg = mondo.base0Ba }
				hl.BufferVisibleINFO = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.BufferVisibleIndex = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.BufferVisibleMod = { bg = mondo.base00a, fg = mondo.base0A }
				hl.BufferVisibleSign = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.BufferVisibleTarget = { bg = mondo.base00a, fg = mondo.base08 }
				hl.BufferVisibleWARN = { bg = mondo.base00a, fg = mondo.base0A }
				hl.Character = { fg = mondo.base0B }
				hl.CmpDocumentation = { bg = mondo.base00a, fg = mondo.base06 }
				hl.CmpDocumentationBorder = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.CmpGhostText = { fg = mondo.base03 }
				hl.CmpItemAbbr = { bg = "NONE", fg = mondo.base06 }
				hl.CmpItemAbbrDeprecated = { bg = "NONE", fg = mondo.base0Db, strikethrough = true }
				hl.CmpItemAbbrMatch = { bg = "NONE", fg = mondo.base0Ca }
				hl.CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = mondo.base0Ca }
				hl.CmpItemKindClass = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindConstant = { bg = "NONE", fg = mondo.base0E }
				hl.CmpItemKindConstructor = { bg = "NONE", fg = mondo.base0D }
				hl.CmpItemKindCopilot = { bg = "NONE", fg = mondo.base0Ba }
				hl.CmpItemKindDefault = { bg = "NONE", fg = mondo.base05 }
				hl.CmpItemKindEnum = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindEnumMember = { bg = "NONE", fg = mondo.base0C }
				hl.CmpItemKindEvent = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindField = { bg = "NONE", fg = mondo.base0C }
				hl.CmpItemKindFunction = { bg = "NONE", fg = mondo.base0D }
				hl.CmpItemKindInterface = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindKeyword = { bg = "NONE", fg = mondo.cyan }
				hl.CmpItemKindMethod = { bg = "NONE", fg = mondo.base0D }
				hl.CmpItemKindModule = { bg = "NONE", fg = mondo.base0A }
				hl.CmpItemKindOperator = { bg = "NONE", fg = mondo.base0C }
				hl.CmpItemKindProperty = { bg = "NONE", fg = mondo.base0C }
				hl.CmpItemKindReference = { bg = "NONE", fg = mondo.base0E }
				hl.CmpItemKindSnippet = { bg = "NONE", fg = mondo.base04 }
				hl.CmpItemKindStruct = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindTypeParameter = { bg = "NONE", fg = mondo.base0C }
				hl.CmpItemKindUnit = { bg = "NONE", fg = mondo.base09 }
				hl.CmpItemKindValue = { bg = "NONE", fg = mondo.base0E }
				hl.CmpItemKindVariable = { bg = "NONE", fg = mondo.base0E }
				hl.CmpItemMenu = { bg = "NONE", fg = mondo.base03 }
				hl.ColorColumn = { bg = mondo.base00a }
				hl.Comment = { fg = mondo.base03, style = { italic = true } }
				hl.Conceal = { fg = mondo.base04 }
				hl.Constant = { fg = mondo.base09 }
				hl.CurSearch = { link = "IncSearch" }
				hl.Cursor = { bg = mondo.base06, fg = mondo.base00 }
				hl.CursorColumn = { bg = mondo.base01 }
				hl.CursorIM = { bg = mondo.base06, fg = mondo.base00 }
				hl.CursorLine 		= { bg = mondo.base00a, 										bold = true }
				hl.CursorLineNr 	= { bg = color.cursBG, fg = color.cursFG }
				hl.CursorLineSign = { bg = color.cursBG, fg = color.cursFG }
				hl.CursorLineFold = { bg = color.cursBG, fg = color.cursFG }
				hl.DapStoppedLine = { bg = mondo.base01a }
				hl.DapUINormal 			= { bg = color.nocdBG }
				hl.DapUINormalNC 		= { bg = color.nocdBG }
				hl.DapUILineNumber	= { bg = color.nocdBG }
				hl.DashboardCenter = { fg = mondo.base0E }
				hl.DashboardFooter = { fg = mondo.base0A, italic = true }
				hl.DashboardHeader = { fg = mondo.base0D }
				hl.DashboardShortCut = { fg = mondo.cyan }
				hl.Debug = { fg = mondo.base09 }
				hl.DefinitionCount = { fg = mondo.base0Ea }
				hl.DefinitionIcon = { fg = mondo.base0D }
				hl.DiagnosticError = { fg = mondo.base08a }
				hl.DiagnosticHint = { fg = mondo.base0Ba }
				hl.DiagnosticInfo = { fg = mondo.base0Ca }
				hl.DiagnosticInformation = { link = "DiagnosticInfo" }
				hl.DiagnosticUnderlineError = { sp = mondo.base08a, undercurl = true }
				hl.DiagnosticUnderlineHint = { sp = mondo.base0Ba, undercurl = true }
				hl.DiagnosticUnderlineInfo = { sp = mondo.base0Ca, undercurl = true }
				hl.DiagnosticUnderlineWarn = { sp = mondo.base0A, undercurl = true }
				hl.DiagnosticUnnecessary = { fg = mondo.base03 }
				hl.DiagnosticVirtualTextError = { bg = mondo.base08c, fg = mondo.base08a }
				hl.DiagnosticVirtualTextHint = { bg = mondo.base0Bc, fg = mondo.base0Ba }
				hl.DiagnosticVirtualTextInfo = { bg = mondo.base0Dc, fg = mondo.base0Ca }
				hl.DiagnosticVirtualTextWarn = { bg = mondo.base0Ac, fg = mondo.base0Aa }
				hl.DiagnosticWarn = { fg = mondo.base0A }
				hl.DiagnosticWarning = { link = "DiagnosticWarn" }
				hl.DiagnosticSignError	= { fg = mondo.base08a, bg = color.nocdBG }
				hl.DiagnosticSignWarn		= { fg = mondo.base09a, bg = color.nocdBG }
				hl.DiagnosticSignInfo		= { fg = mondo.base0Ba, bg = color.nocdBG }
				hl.DiagnosticSignHint		= { fg = mondo.base0Ca, bg = color.nocdBG }
				hl.DiffAdd 		= { bg = mondo.base0Bb }
				hl.DiffChange = { bg = mondo.base0Db }
				hl.DiffDelete = { bg = mondo.base08b }
				hl.DiffText 	= { bg = mondo.base0Cb }
				hl.DiffviewFolderName					= { fg = mondo.base0Da, bold = true }
				hl.DiffviewFolderSign					= { fg = mondo.base0Da }
				hl.DiffviewDiffAddAsDelete		= { bg = mondo.base08b }
				hl.DiffviewDiffDelete					= { bg = color.nocdBG, fg = mondo.base08b }
				hl.DiffviewEndOfBuffer				= { bg = color.nocdBG }
				hl.DiffviewNormal							= { bg = color.nocdBG }
				hl.DiffviewCursorLine					= { bg = color.cursBG, fg = "NONE" }
				hl.DiffviewFilePanelRootPath	= { fg = mondo.base04, bold = true }
				hl.DiffviewFilePanelTitle			= { fg = mondo.base04 }
				hl.DiffviewFilePanelPath			= { fg = mondo.base04 }
				hl.DiffviewFilePanelFileName	= { fg = mondo.base03 }
				hl.DiffviewFilePanelInsertions= { fg = mondo.base0Ba }
				hl.DiffviewFilePanelDeletions	= { fg = mondo.base08a }
				hl.DiffviewFilePanelCounter		= { fg = mondo.base0Da }
				hl.DiffviewFilePanelConflicts	= { fg = mondo.base0Fa }
				hl.Directory = { fg = mondo.base0D }
				hl.EndOfBuffer = { bg = color.nocdBG, fg = mondo.base00a }
				hl.Error = { fg = mondo.base08a }
				hl.ErrorMsg = { fg = mondo.base08a }
				hl.FernBranchText = { fg = mondo.base0D }
				hl.FloatBorder = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.FloatTitle = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.FoldColumn = { bg = mondo.base00, fg = mondo.base03 }
				hl.Folded = { bg = mondo.base0Db, fg = mondo.base0D }
				hl.Foo = { bg = mondo.base0F, fg = mondo.base0F }
				hl.Function = { fg = mondo.base0D, style = {} }
				hl.GitGutterAdd = { fg = mondo.base0Ba }
				hl.GitGutterAddLineNr = { fg = mondo.base0Ba }
				hl.GitGutterChange = { fg = mondo.base0Da }
				hl.GitGutterChangeLineNr = { fg = mondo.base0Da }
				hl.GitGutterDelete = { fg = mondo.base08a }
				hl.GitGutterDeleteLineNr = { fg = mondo.base08a }
				hl.GitSignsAdd		= { fg = mondo.base0Ba, bg = color.nocdBG }
				hl.GitSignsChange	= { fg = mondo.base0Da, bg = color.nocdBG }
				hl.GitSignsDelete	= { fg = mondo.base08a, bg = color.nocdBG }
				hl.GlyphPalette1 = { fg = mondo.base08a }
				hl.GlyphPalette2 = { fg = mondo.base0B }
				hl.GlyphPalette3 = { fg = mondo.base0A }
				hl.GlyphPalette4 = { fg = mondo.base0D }
				hl.GlyphPalette6 = { fg = mondo.base0C }
				hl.GlyphPalette7 = { fg = mondo.base06 }
				hl.GlyphPalette9 = { fg = mondo.base08 }
				hl.Hlargs = { fg = mondo.base0A }
				hl.HopNextKey = { bold = true, fg = mondo.base0F }
				hl.HopNextKey1 = { bold = true, fg = mondo.base0Ca }
				hl.HopNextKey2 = { fg = mondo.base0Ba }
				hl.HopUnmatched = { fg = mondo.base03 }
				hl.Identifier = { fg = mondo.base0E, style = {} }
				hl.IlluminatedWordRead = { bg = mondo.base0Db }
				hl.IlluminatedWordText = { bg = mondo.base0Db }
				hl.IlluminatedWordWrite = { bg = mondo.base0Db }
				hl.IncSearch = { bg = mondo.base09, fg = mondo.base00a }
				hl.IndentBlanklineChar = { fg = mondo.base0Db, nocombine = true }
				hl.IndentBlanklineContextChar = { fg = mondo.base0Ea, nocombine = true }
				hl.Italic = { italic = true }
				hl.Keyword = { fg = mondo.cyan, style = { italic = true } }
				hl.LazyProgressDone = { bold = true, fg = mondo.base0F }
				hl.LazyProgressTodo = { bold = true, fg = mondo.base0Db }
				hl.LeapBackdrop = { fg = mondo.base03 }
				hl.LeapLabelPrimary = { bold = true, fg = mondo.base0F }
				hl.LeapLabelSecondary = { bold = true, fg = mondo.base0C }
				hl.LeapMatch = { bg = mondo.base0F, bold = true, fg = mondo.base06 }
				hl.LightspeedGreyWash = { fg = mondo.base03 }
				hl.LightspeedLabel = { bold = true, fg = mondo.base0F, underline = true }
				hl.LightspeedLabelDistant = { bold = true, fg = mondo.base0C, underline = true }
				hl.LightspeedLabelDistantOverlapped = { fg = mondo.base0Ca, underline = true }
				hl.LightspeedLabelOverlapped = { fg = mondo.base0F, underline = true }
				hl.LightspeedMaskedChar = { fg = mondo.base09 }
				hl.LightspeedOneCharMatch = { bg = mondo.base0F, bold = true, fg = mondo.base06 }
				hl.LightspeedPendingOpArea = { bg = mondo.base0F, fg = mondo.base06 }
				hl.LightspeedShortcut = { bg = mondo.base0F, bold = true, fg = mondo.base06, underline = true }
				hl.LightspeedUnlabeledMatch = { bold = true, fg = mondo.base0Ca }
				hl.LineNr = { bg = color.nocdBG, fg = mondo.base0Db }
				hl.LspCodeLens = { fg = mondo.base03 }
				hl.LspFloatWinBorder = { fg = mondo.base0Ca }
				hl.LspFloatWinNormal = { bg = mondo.base00a }
				hl.LspInfoBorder = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.LspReferenceRead = { bg = mondo.base0Db }
				hl.LspReferenceText = { bg = mondo.base0Db }
				hl.LspReferenceWrite = { bg = mondo.base0Db }
				hl.LspSagaBorderTitle = { fg = mondo.cyan }
				hl.LspSagaCodeActionBorder = { fg = mondo.base0D }
				hl.LspSagaCodeActionContent = { fg = mondo.base0Ea }
				hl.LspSagaCodeActionTitle = { fg = mondo.base0Ca }
				hl.LspSagaDefPreviewBorder = { fg = mondo.base0B }
				hl.LspSagaFinderSelection = { fg = mondo.base02 }
				hl.LspSagaHoverBorder = { fg = mondo.base0D }
				hl.LspSagaRenameBorder = { fg = mondo.base0B }
				hl.LspSagaSignatureHelpBorder = { fg = mondo.base08 }
				hl.LspSignatureActiveParameter = { bg = mondo.base01a, bold = true }
				hl.MatchParen = { bold = true, fg = mondo.base09 }
				hl.MiniCompletionActiveParameter = { underline = true }
				hl.MiniCursorword = { bg = mondo.base0Db }
				hl.MiniCursorwordCurrent = { bg = mondo.base0Db }
				hl.MiniIndentscopePrefix = { nocombine = true }
				hl.MiniIndentscopeSymbol = { fg = mondo.base0Ca }
				hl.MiniJump = { bg = mondo.base0F, fg = mondo.base07 }
				hl.MiniJump2dSpot = { bold = true, fg = mondo.base0F, nocombine = true }
				hl.MiniStarterCurrent = { nocombine = true }
				hl.MiniStarterFooter = { fg = mondo.base0A, italic = true }
				hl.MiniStarterHeader = { fg = mondo.base0D }
				hl.MiniStarterInactive = { fg = mondo.base03, style = { italic = true } }
				hl.MiniStarterItem = { bg = mondo.base00, fg = mondo.base06 }
				hl.MiniStarterItemBullet = { fg = mondo.base0Ca }
				hl.MiniStarterItemPrefix = { fg = mondo.base0A }
				hl.MiniStarterQuery = { fg = mondo.base0Ca }
				hl.MiniStarterSection = { fg = mondo.base0Ca }
				hl.MiniStatuslineDevinfo = { bg = mondo.base01, fg = mondo.base05 }
				hl.MiniStatuslineFileinfo = { bg = mondo.base01, fg = mondo.base05 }
				hl.MiniStatuslineFilename = { bg = mondo.base0Db, fg = mondo.base05 }
				hl.MiniStatuslineInactive = { bg = mondo.base00a, fg = mondo.base0D }
				hl.MiniStatuslineModeCommand = { bg = mondo.base0A, bold = true, fg = mondo.base00a }
				hl.MiniStatuslineModeInsert = { bg = mondo.base0B, bold = true, fg = mondo.base00a }
				hl.MiniStatuslineModeNormal = { bg = mondo.base0D, bold = true, fg = mondo.base00a }
				hl.MiniStatuslineModeOther = { bg = mondo.base0Ba, bold = true, fg = mondo.base00a }
				hl.MiniStatuslineModeReplace = { bg = mondo.base08, bold = true, fg = mondo.base00a }
				hl.MiniStatuslineModeVisual = { bg = mondo.base0E, bold = true, fg = mondo.base00a }
				hl.MiniSurround = { bg = mondo.base09, fg = mondo.base00a }
				hl.MiniTablineCurrent = { bg = mondo.base0Db, fg = mondo.base06 }
				hl.MiniTablineFill = { bg = mondo.base00a }
				hl.MiniTablineHidden = { bg = mondo.base00a, fg = mondo.base04 }
				hl.MiniTablineModifiedCurrent = { bg = mondo.base0Db, fg = mondo.base0A }
				hl.MiniTablineModifiedHidden = { bg = mondo.base00a, fg = mondo.base0Aa }
				hl.MiniTablineModifiedVisible = { bg = mondo.base00a, fg = mondo.base0A }
				hl.MiniTablineTabpagesection = { bg = mondo.base00a, fg = "NONE" }
				hl.MiniTablineVisible = { bg = mondo.base00a, fg = mondo.base06 }
				hl.MiniTestEmphasis = { bold = true }
				hl.MiniTestFail = { bold = true, fg = mondo.base08 }
				hl.MiniTestPass = { bold = true, fg = mondo.base0B }
				hl.MiniTrailspace = { bg = mondo.base08 }
				hl.ModeMsg = { bold = true, fg = mondo.base05 }
				hl.MoreMsg = { fg = mondo.base0D }
				hl.MsgArea = { fg = mondo.base05 }
				hl.NavicIconsArray 				= { fg = mondo.base0Ea, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsBoolean 			= { fg = mondo.base0Da, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsClass 				= { fg = mondo.base09a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsConstant 		= { fg = mondo.base0Aa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsConstructor 	= { fg = mondo.base0Da, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsEnum 				= { fg = mondo.base0Ea, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsEnumMember 	= { fg = mondo.base0Aa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsEvent 				= { fg = mondo.base0Ca, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsField 				= { fg = mondo.base0Ca, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsFile 				= { fg = mondo.base0Da, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsFunction 		= { fg = mondo.base08a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsInterface 		= { fg = mondo.base0Fa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsKey 					= { fg = mondo.base08a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsKeyword 			= { fg = mondo.base08a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsMethod 			= { fg = mondo.base0Aa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsModule 			= { fg = mondo.base0Ea, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsNamespace 		= { fg = mondo.base0Fa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsNumber 			= { fg = mondo.base0Ca, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsNull 				= { fg = mondo.base09a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsObject 			= { fg = mondo.base0Fa, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsOperator 		= { fg = mondo.base0Da, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsPackage 			= { fg = mondo.base08a, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsProperty 		= { fg = mondo.base0Ba, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsString 			= { fg = mondo.base0Ba, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsStruct 			= { fg = mondo.base0Ba, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsTypeParameter= { fg = mondo.base0Ea, 	bg = color.nocdBG, bold = false }
				hl.NavicIconsVariable 		= { fg = mondo.base09a, 	bg = color.nocdBG, bold = false }
				hl.NavicSeparator 				= { fg = mondo.base00,		bg = color.nocdBG, bold = true }
				hl.NavicText 							= { fg = mondo.base03a, 	bg = color.nocdBG, italic = true }
				hl.NeoTreeCursorLine 						= { bg = color.cursBG }
				hl.NeoTreeIndentMarker 					= { fg = mondo.base03a }
				hl.NeoTreeFloatBorder 					= { bg = "NONE", fg = mondo.base0D, }
				hl.NeoTreeFloatNormal 					= { bg = color.codeBG, fg = mondo.base05 }
				hl.NeoTreeTitleBar 							= { bg = mondo.base0Da,fg = mondo.base00 }
				hl.NeoTreeTabActive							= { bg = color.nocdBG, fg = mondo.base03 }
				hl.NeoTreeTabInactive						= { bg = color.nocdBG, fg = mondo.base00a }
				hl.NeoTreeTabSeparatorInactive	= { bg = color.codeBG, fg = color.nocdBG }
				hl.NeoTreeTabSeparatorActive		= { bg = color.codeBG, fg = color.nocdBG }
				hl.NeogitBranch = { fg = mondo.base0E }
				hl.NeogitDiffAddHighlight = { bg = mondo.base0Bb, fg = mondo.base0Ba }
				hl.NeogitDiffContextHighlight = { bg = mondo.base01a, fg = mondo.base05 }
				hl.NeogitDiffDeleteHighlight = { bg = mondo.base08b, fg = mondo.base08a }
				hl.NeogitHunkHeader = { bg = mondo.base01, fg = mondo.base06 }
				hl.NeogitHunkHeaderHighlight = { bg = mondo.base0Db, fg = mondo.base0D }
				hl.NeogitRemote = { fg = mondo.base0Ea }
				hl.NeotestAdapterName = { bold = true, fg = mondo.base0Ea }
				hl.NeotestBorder = { fg = mondo.base0D }
				hl.NeotestDir = { fg = mondo.base0D }
				hl.NeotestExpandMarker = { fg = mondo.base05 }
				hl.NeotestFailed = { fg = mondo.base08 }
				hl.NeotestFile = { fg = mondo.base0Ba }
				hl.NeotestFocused = { fg = mondo.base0A }
				hl.NeotestIndent = { fg = mondo.base05 }
				hl.NeotestMarked = { fg = mondo.base0D }
				hl.NeotestNamespace = { fg = mondo.base0Ca }
				hl.NeotestPassed = { fg = mondo.base0B }
				hl.NeotestRunning = { fg = mondo.base0A }
				hl.NeotestSkipped = { fg = mondo.base0D }
				hl.NeotestTarget = { fg = mondo.base0D }
				hl.NeotestTest = { fg = mondo.base05 }
				hl.NeotestWinSelect = { fg = mondo.base0D }
				hl.NoiceCompletionItemKindClass					= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindConstant			= { bg = mondo.base0Da, fg = mondo.base0E }
				hl.NoiceCompletionItemKindConstructor		= { bg = mondo.base0Da, fg = mondo.base0D }
				hl.NoiceCompletionItemKindDefault				= { bg = mondo.base0Da, fg = mondo.base05 }
				hl.NoiceCompletionItemKindEnum					= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindEnumMember		= { bg = mondo.base0Da, fg = mondo.base0C }
				hl.NoiceCompletionItemKindEvent					= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindField					= { bg = mondo.base0Da, fg = mondo.base0C }
				hl.NoiceCompletionItemKindFunction			= { bg = mondo.base0Da, fg = mondo.base0D }
				hl.NoiceCompletionItemKindInterface			= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindKeyword				= { bg = mondo.base0Da, fg = mondo.cyan }
				hl.NoiceCompletionItemKindMethod				= { bg = mondo.base0Da, fg = mondo.base0D }
				hl.NoiceCompletionItemKindModule				= { bg = mondo.base0Da, fg = mondo.base0A }
				hl.NoiceCompletionItemKindOperator			= { bg = mondo.base0Da, fg = mondo.base0C }
				hl.NoiceCompletionItemKindProperty			= { bg = mondo.base0Da, fg = mondo.base0C }
				hl.NoiceCompletionItemKindReference			= { bg = mondo.base0Da, fg = mondo.base0E }
				hl.NoiceCompletionItemKindSnippet				= { bg = mondo.base0Da, fg = mondo.base04 }
				hl.NoiceCompletionItemKindStruct				= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindTypeParameter	= { bg = mondo.base0Da, fg = mondo.base0C }
				hl.NoiceCompletionItemKindUnit					= { bg = mondo.base0Da, fg = mondo.base09 }
				hl.NoiceCompletionItemKindValue					= { bg = mondo.base0Da, fg = mondo.base0E }
				hl.NoiceCompletionItemKindVariable			= { bg = mondo.base0Da, fg = mondo.base0E }
				hl.NoiceCmdline 					= { bg = mondo.base0Db,fg = mondo.base05, blend = 0 }
				hl.NoiceCmdlineIcon 			= { bg = mondo.base02, fg = mondo.base0Da, blend = 0 }
				hl.NoiceCmdlineIconSearch	= { bg = mondo.base02, fg = mondo.base0Da, blend = 0 }
				hl.NoiceCmdlinePrompt 		= { bg = color.nocdBG, fg = mondo.base0Da, blend = 0 }
				hl.NoiceMini 							= { bg = mondo.base0Dc }
				hl.NoiceMiniSearch 				= { bg = mondo.base0Ac }
				hl.NoiceMiniIncSearch 		= { bg = mondo.base0Ac }
				hl.NonText = { bg = "NONE", fg = mondo.base02 }
				hl.Normal = { bg = mondo.base00, fg = mondo.base06 }
				hl.NormalFloat = { bg = mondo.base00a, fg = mondo.base06 }
				hl.NormalNC = { bg = mondo.base00, fg = mondo.base06 }
				hl.NormalSB = { bg = mondo.base00a, fg = mondo.base05 }
				hl.NotifyDEBUGBody = { bg = mondo.base00, fg = mondo.base06 }
				hl.NotifyDEBUGBorder = { bg = mondo.base00, fg = mondo.base0Da }
				hl.notifyDEBUGIcon = { fg = mondo.base03 }
				hl.NotifyDEBUGTitle = { fg = mondo.base03 }
				hl.NotifyERRORBody = { bg = mondo.base00, fg = mondo.base06 }
				hl.NotifyERRORBorder = { bg = mondo.base00, fg = mondo.base08a }
				hl.NotifyERRORIcon = { fg = mondo.base08a }
				hl.NotifyERRORTitle = { fg = mondo.base08a }
				hl.NotifyINFOBody = { bg = mondo.base00, fg = mondo.base06 }
				hl.NotifyINFOBorder = { bg = mondo.base00, fg = mondo.base0Ba }
				hl.NotifyINFOIcon = { fg = mondo.base0Ca }
				hl.NotifyINFOTitle = { fg = mondo.base0Ca }
				hl.NotifyTRACEBody = { bg = mondo.base00, fg = mondo.base06 }
				hl.NotifyTRACEBorder = { bg = mondo.base00, fg = mondo.base0Ea }
				hl.NotifyTRACEIcon = { fg = mondo.base0Ea }
				hl.NotifyTRACETitle = { fg = mondo.base0Ea }
				hl.NotifyWARNBody = { bg = mondo.base00, fg = mondo.base06 }
				hl.NotifyWARNBorder = { bg = mondo.base00, fg = mondo.base0Aa }
				hl.NotifyWARNIcon = { fg = mondo.base0A }
				hl.NotifyWARNTitle = { fg = mondo.base0A }
				hl.NvimTreeFolderIcon = { bg = "NONE", fg = mondo.base0D }
				hl.NvimTreeGitDeleted = { fg = mondo.base08a }
				hl.NvimTreeGitDirty = { fg = mondo.base0Da }
				hl.NvimTreeGitNew = { fg = mondo.base0Ba }
				hl.NvimTreeImageFile = { fg = mondo.base05 }
				hl.NvimTreeIndentMarker = { fg = mondo.base0Db }
				hl.NvimTreeNormal = { bg = mondo.base00a, fg = mondo.base05 }
				hl.NvimTreeNormalNC = { bg = mondo.base00a, fg = mondo.base05 }
				hl.NvimTreeOpenedFile = { bg = mondo.base01 }
				hl.NvimTreeRootFolder = { bold = true, fg = mondo.base0D }
				hl.NvimTreeSpecialFile = { fg = mondo.base0Ea, underline = true }
				hl.NvimTreeSymlink = { fg = mondo.base0D }
				hl.NvimTreeWinSeparator = { bg = mondo.base00a, fg = mondo.base00a }
				hl.Operator = { fg = mondo.blue5 }
				hl.Pmenu = { bg = mondo.base00a, fg = mondo.base06 }
				hl.PmenuSbar = { bg = mondo.base01a }
				hl.PmenuSel = { bg = mondo.base0Db }
				hl.PmenuThumb = { bg = mondo.base0Db }
				hl.PreProc = { fg = mondo.cyan }
				hl.Question = { fg = mondo.base0D }
				hl.QuickFixLine = { bg = mondo.base02, bold = true }
				hl.ReferencesCount = { fg = mondo.base0Ea }
				hl.ReferencesIcon = { fg = mondo.base0D }
				hl.ScrollbarCursor					= { bg = mondo.base00a, fg = mondo.base00a }
				hl.ScrollbarHandle					= { bg = mondo.base02, 	fg = mondo.base00a }
				hl.ScrollbarCursorHandle		= { bg = mondo.base02, 	fg = mondo.base00a }
				hl.ScrollbarError						= { bg = color.codeBG, 	fg = mondo.base08b }
				hl.ScrollbarErrorHandle			= { bg = mondo.base02, 	fg = mondo.base08a }
				hl.ScrollbarWarn						= { bg = color.codeBG, 	fg = mondo.base09b }
				hl.ScrollbarWarnHandle			= { bg = mondo.base02, 	fg = mondo.base09a }
				hl.ScrollbarSearch					= { bg = color.codeBG, 	fg = mondo.base0Ab }
				hl.ScrollbarSearchHandle		= { bg = mondo.base02, 	fg = mondo.base0Aa }
				hl.ScrollbarInfo						= { bg = color.codeBG, 	fg = mondo.base0Cb }
				hl.ScrollbarInfoHandle			= { bg = mondo.base02, 	fg = mondo.base0Ca }
				hl.ScrollbarHint						= { bg = color.codeBG, 	fg = mondo.base0Fb }
				hl.ScrollbarHintHandle			= { bg = mondo.base02, 	fg = mondo.base0Fa }
				hl.ScrollbarMisc						= { bg = color.codeBG, 	fg = mondo.base03 }
				hl.ScrollbarMiscHandle			= { bg = mondo.base02, 	fg = mondo.base04 }
				hl.ScrollbarGitAdd					= { bg = color.codeBG, 	fg = mondo.base0Bb }
				hl.ScrollbarGitAddHandle		= { bg = mondo.base02, 	fg = mondo.base0Ba }
				hl.ScrollbarGitChange				= { bg = color.codeBG, 	fg = mondo.base0Db }
				hl.ScrollbarGitChangeHandle	= { bg = mondo.base02, 	fg = mondo.base0Da }
				hl.ScrollbarGitDelete				= { bg = color.codeBG, 	fg = mondo.base0Fb }
				hl.ScrollbarGitDeleteHandle	= { bg = mondo.base02, 	fg = mondo.base0Fa }
				hl.Search = { bg = mondo.base0Da, fg = mondo.base06 }
				hl.SignColumn = { bg = color.nocdBG, fg = mondo.base0Db }
				hl.SignColumnSB = { bg = mondo.base00a, fg = mondo.base0Db }
				hl.Sneak = { bg = mondo.base0E, fg = mondo.base01 }
				hl.SneakScope = { bg = mondo.base02 }
				hl.Special = { fg = mondo.base0Ca }
				hl.SpecialKey = { fg = mondo.base03 }
				hl.SpellBad = { sp = mondo.base08a, undercurl = true }
				hl.SpellCap = { sp = mondo.base0A, undercurl = true }
				hl.SpellLocal = { sp = mondo.base0Ca, undercurl = true }
				hl.SpellRare = { sp = mondo.base0Ba, undercurl = true }
				hl.Statement = { fg = mondo.base0E }
				hl.StatusLine = { bg = mondo.base00a, fg = mondo.base05 }
				hl.StatusLineNC = { bg = mondo.base00a, fg = mondo.base0Db }
				hl.String = { fg = mondo.base0B }
				hl.Substitute = { bg = mondo.base08, fg = mondo.base00a }
				hl.TSNodeKey = { bold = true, fg = mondo.base0F }
				hl.TSNodeUnmatched = { fg = mondo.base03 }
				hl.TSRainbowBlue = { fg = mondo.base0D }
				hl.TSRainbowCyan = { fg = mondo.cyan }
				hl.TSRainbowGreen = { fg = mondo.base0B }
				hl.TSRainbowOrange = { fg = mondo.base09 }
				hl.TSRainbowRed = { fg = mondo.base08 }
				hl.TSRainbowViolet = { fg = mondo.base0Ea }
				hl.TSRainbowYellow = { fg = mondo.base0A }
				hl.TabLine = { bg = mondo.base00a, fg = mondo.base0Db }
				hl.TabLineFill = { bg = mondo.base00 }
				hl.TabLineSel = { bg = mondo.base0D, fg = mondo.base00a }
				hl.TargetWord = { fg = mondo.cyan }
				hl.TelescopeBorder = { bg = mondo.base00a, fg = mondo.base0Ca }
				hl.TelescopeNormal = { bg = mondo.base00a, fg = mondo.base06 }
				hl.Title = { bold = true, fg = mondo.base0D }
				hl.Todo = { bg = mondo.base0A, fg = mondo.base00 }
				hl.TreesitterContext = { bg = color.nocdBG, bold = false, blend = 15 }
				hl.TroubleCount = { bg = mondo.base0Db, fg = mondo.base0E }
				hl.TroubleNormal = { bg = mondo.base00a, fg = mondo.base05 }
				hl.TroubleText = { fg = mondo.base05 }
				hl.Type = { fg = mondo.base0Ca }
				hl.Underlined = { underline = true }
				hl.VertSplit = { bg = color.codeBG, fg = color.nocdBG }
				hl.Visual = { bg = mondo.base02 }
				hl.VisualNOS = { bg = mondo.base02 }
				hl.WarningMsg = { fg = mondo.base0A }
				hl.WhichKey = { fg = mondo.cyan }
				hl.WhichKeyDesc = { fg = mondo.base0E }
				hl.WhichKeyFloat = { bg = mondo.base00a }
				hl.WhichKeyGroup = { fg = mondo.base0D }
				hl.WhichKeySeparator = { fg = mondo.base03 }
				hl.WhichKeySeperator = { fg = mondo.base03 }
				hl.WhichKeyValue = { fg = mondo.base04 }
				hl.Whitespace = { bg = "NONE", fg = mondo.base02 }
				hl.WildMenu = { bg = mondo.base02 }
				hl.WinSeparator = { bg = color.codeBG, fg = color.nocdBG }
				hl.YankyPut = { link = "IncSearch" }
				hl.YankyYanked = { link = "IncSearch" }
				hl.debugBreakpoint = { bg = mondo.base01a, fg = mondo.base0Ca }
				hl.debugPC = { bg = mondo.base00a }
				hl.diffAdded = { fg = mondo.base0Ba }
				hl.diffChanged = { fg = mondo.base0Da }
				hl.diffFile = { fg = mondo.base0D }
				hl.diffIndexLine = { fg = mondo.base0E }
				hl.diffLine = { fg = mondo.base03 }
				hl.diffNewFile = { fg = mondo.base09 }
				hl.diffOldFile = { fg = mondo.base0A }
				hl.diffRemoved = { fg = mondo.base08a }
				hl.healthError = { fg = mondo.base08a }
				hl.healthSuccess = { fg = mondo.base0C }
				hl.healthWarning = { fg = mondo.base0A }
				hl.helpCommand = { bg = mondo.base03, fg = mondo.base0D }
				hl.htmlH1 = { bold = true, fg = mondo.base0E }
				hl.htmlH2 = { bold = true, fg = mondo.base0D }
				hl.illuminatedCurWord = { bg = mondo.base0Db }
				hl.illuminatedWord = { bg = mondo.base0Db }
				hl.lCursor = { bg = mondo.base06, fg = mondo.base00 }
				hl.markdownCode = { fg = mondo.base0Ba }
				hl.markdownCodeBlock = { fg = mondo.base0Ba }
				hl.markdownH1 = { bold = true, fg = mondo.base0E }
				hl.markdownH2 = { bold = true, fg = mondo.base0D }
				hl.markdownHeadingDelimiter = { bold = true, fg = mondo.base09 }
				hl.markdownLinkText = { fg = mondo.base0D, underline = true }
				hl.mkdCodeDelimiter = { bg = mondo.base03, fg = mondo.base06 }
				hl.mkdCodeEnd = { bold = true, fg = mondo.base0Ba }
				hl.mkdCodeStart = { bold = true, fg = mondo.base0Ba }
				hl.qfFileName = { fg = mondo.base0D }
				hl.qfLineNr = { fg = mondo.base04 }
				hl.rainbowcol1 = { fg = mondo.base08 }
				hl.rainbowcol2 = { fg = mondo.base0A }
				hl.rainbowcol3 = { fg = mondo.base0B }
				hl.rainbowcol4 = { fg = mondo.base0Ba }
				hl.rainbowcol5 = { fg = mondo.base0D }
				hl.rainbowcol6 = { fg = mondo.base0E }
				hl.rainbowcol7 = { fg = mondo.base0Ea }
			end,
    }
	end
}}
-- -- popupmenu
-- vim.api.nvim_set_hl(0, "Pmenu", 								{ bg = colors.base02, fg = colors.base03 })
-- vim.api.nvim_set_hl(0, "PmenuSel", 						{ bg = colors.base03, fg = colors.base00, 	blend = 0 })
-- vim.api.nvim_set_hl(0, "PmenuSbar", 						{ bg = colors.base02 })
-- vim.api.nvim_set_hl(0, "PmenuThumb", 					{ bg = colors.base0Db })
-- -- colors for hover-window
-- vim.api.nvim_set_hl(0, "NormalFloat", 					{ bg = colors.base02a, fg = colors.base03 })
-- vim.api.nvim_set_hl(0, "FloatBorder", 					{ bg = colors.base02a })
-- vim.api.nvim_set_hl(0, "FloatShadow", 					{ bg = colors.base00a, 											blend = 15 })
-- vim.api.nvim_set_hl(0, "FloatShadowThrough",		{ bg = colors.base00 })
-- -- Notification
-- vim.api.nvim_set_hl(0, "NotifyBackground", 		{ bg = colors.codeBG })
-- -- lsp-info
-- vim.api.nvim_set_hl(0, "LspInfoBorder", 				{ bg = colors.nocdBG, fg = colors.base05 })
