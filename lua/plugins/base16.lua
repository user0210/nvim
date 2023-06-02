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

c.templer.bg = "#1d1f21"
c.templer.bg_dark = "#181A1C"
c.templer.bg_float = "#181A1C"
c.templer.bg_highlight = "#282a2e"
c.templer.bg_popup = "#181A1C"
c.templer.bg_search = "#61829E"
c.templer.bg_sidebar = "#181A1C"
c.templer.bg_statusline = "#181A1C"
c.templer.bg_visual = "#373b41"
c.templer.black = "#181A1C"
c.templer.blue = "#81a2be"
c.templer.blue0 = "#61829E"
c.templer.blue1 = "#6A9E97"
c.templer.blue2 = "#6A9E97"
c.templer.blue5 = "#A6BDD1"
c.templer.blue6 = "#ffffff"
c.templer.blue7 = "#3F505F"
c.templer.border = "#181A1C"
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
c.templer.fg = "#e0e0e0"
c.templer.fg_dark = "#c5c8c6"
c.templer.fg_float = "#e0e0e0"
c.templer.fg_gutter = "#3F505F"
c.templer.fg_sidebar = "#c5c8c6"
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

c.templer.codeBG = c.templer.base00
c.templer.nocdBG = c.templer.base01
c.templer.nocdFG = c.templer.base03a
c.templer.cursBG = c.templer.base02
c.templer.cursFG = c.templer.base00a
c.templer.buffBG = c.templer.base01a
c.templer.buffFG = c.templer.base03a

-- color non-code windowscolors
vim.api.nvim_set_hl(0, "NoCode", 				{ bg = c.templer.base01 })
vim.api.nvim_set_hl(0, "NoCodeSign", 		{ bg = c.templer.base01 })
vim.api.nvim_set_hl(0, "NoCodeCursor", 	{ bg = c.templer.base02 })

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

return {{
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
		style = "templer",
		on_highlights = function(hl, color)
			hl.ALEErrorSign = { fg = color.base08a }
			hl.ALEWarningSign = { fg = color.base0A }
			hl.AlphaButtons = { fg = color.cyan }
			hl.AlphaFooter = { fg = color.base0Ca }
			hl.AlphaHeader = { fg = color.base0D }
			hl.AlphaHeaderLabel = { fg = color.base09 }
			hl.AlphaShortcut = { fg = color.base09 }
			hl.Bold = { bold = true }
			hl.BufferAlternate = { bg = color.base0Db, fg = color.base06 }
			hl.BufferAlternateERROR = { bg = color.base0Db, fg = color.base08a }
			hl.BufferAlternateHINT = { bg = color.base0Db, fg = color.base0Ba }
			hl.BufferAlternateINFO = { bg = color.base0Db, fg = color.base0Ca }
			hl.BufferAlternateIndex = { bg = color.base0Db, fg = color.base0Ca }
			hl.BufferAlternateMod = { bg = color.base0Db, fg = color.base0A }
			hl.BufferAlternateSign = { bg = color.base0Db, fg = color.base0Ca }
			hl.BufferAlternateTarget = { bg = color.base0Db, fg = color.base08 }
			hl.BufferAlternateWARN = { bg = color.base0Db, fg = color.base0A }
			hl.BufferCurrent = { bg = color.base00, fg = color.base06 }
			hl.BufferCurrentERROR = { bg = color.base00, fg = color.base08a }
			hl.BufferCurrentHINT = { bg = color.base00, fg = color.base0Ba }
			hl.BufferCurrentINFO = { bg = color.base00, fg = color.base0Ca }
			hl.BufferCurrentIndex = { bg = color.base00, fg = color.base0Ca }
			hl.BufferCurrentMod = { bg = color.base00, fg = color.base0A }
			hl.BufferCurrentSign = { bg = color.base00, fg = color.base00 }
			hl.BufferCurrentTarget = { bg = color.base00, fg = color.base08 }
			hl.BufferCurrentWARN = { bg = color.base00, fg = color.base0A }
			hl.BufferInactive = { bg = color.base01a, fg = color.base03 }
			hl.BufferInactiveERROR = { bg = color.base01a, fg = color.base08a }
			hl.BufferInactiveHINT = { bg = color.base01a, fg = color.base0Ba }
			hl.BufferInactiveINFO = { bg = color.base01a, fg = color.base0Da }
			hl.BufferInactiveIndex = { bg = color.base01a, fg = color.base04 }
			hl.BufferInactiveMod = { bg = color.base01a, fg = color.base0Aa }
			hl.BufferInactiveSign = { bg = color.base01a, fg = color.base00 }
			hl.BufferInactiveTarget = { bg = color.base01a, fg = color.base08 }
			hl.BufferInactiveWARN = { bg = color.base01a, fg = color.base0Aa }
			hl.BufferLineIndicatorSelected = { fg = color.base0Da }
			hl.BufferOffset = { bg = color.base00a, fg = color.base04 }
			hl.BufferTabpageFill = { bg = color.base00, fg = color.base04 }
			hl.BufferTabpages = { bg = color.base00a, fg = "NONE" }
			hl.BufferVisible = { bg = color.base00a, fg = color.base06 }
			hl.BufferVisibleERROR = { bg = color.base00a, fg = color.base08a }
			hl.BufferVisibleHINT = { bg = color.base00a, fg = color.base0Ba }
			hl.BufferVisibleINFO = { bg = color.base00a, fg = color.base0Ca }
			hl.BufferVisibleIndex = { bg = color.base00a, fg = color.base0Ca }
			hl.BufferVisibleMod = { bg = color.base00a, fg = color.base0A }
			hl.BufferVisibleSign = { bg = color.base00a, fg = color.base0Ca }
			hl.BufferVisibleTarget = { bg = color.base00a, fg = color.base08 }
			hl.BufferVisibleWARN = { bg = color.base00a, fg = color.base0A }
			hl.Character = { fg = color.base0B }
			hl.CmpDocumentation = { bg = color.base00a, fg = color.base06 }
			hl.CmpDocumentationBorder = { bg = color.base00a, fg = color.base0Ca }
			hl.CmpGhostText = { fg = color.base03 }
			hl.CmpItemAbbr = { bg = "NONE", fg = color.base06 }
			hl.CmpItemAbbrDeprecated = { bg = "NONE", fg = color.base0Db, strikethrough = true }
			hl.CmpItemAbbrMatch = { bg = "NONE", fg = color.base0Ca }
			hl.CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = color.base0Ca }
			hl.CmpItemKindClass = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindConstant = { bg = "NONE", fg = color.base0E }
			hl.CmpItemKindConstructor = { bg = "NONE", fg = color.base0D }
			hl.CmpItemKindCopilot = { bg = "NONE", fg = color.base0Ba }
			hl.CmpItemKindDefault = { bg = "NONE", fg = color.base05 }
			hl.CmpItemKindEnum = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindEnumMember = { bg = "NONE", fg = color.base0C }
			hl.CmpItemKindEvent = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindField = { bg = "NONE", fg = color.base0C }
			hl.CmpItemKindFunction = { bg = "NONE", fg = color.base0D }
			hl.CmpItemKindInterface = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindKeyword = { bg = "NONE", fg = color.cyan }
			hl.CmpItemKindMethod = { bg = "NONE", fg = color.base0D }
			hl.CmpItemKindModule = { bg = "NONE", fg = color.base0A }
			hl.CmpItemKindOperator = { bg = "NONE", fg = color.base0C }
			hl.CmpItemKindProperty = { bg = "NONE", fg = color.base0C }
			hl.CmpItemKindReference = { bg = "NONE", fg = color.base0E }
			hl.CmpItemKindSnippet = { bg = "NONE", fg = color.base04 }
			hl.CmpItemKindStruct = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindTypeParameter = { bg = "NONE", fg = color.base0C }
			hl.CmpItemKindUnit = { bg = "NONE", fg = color.base09 }
			hl.CmpItemKindValue = { bg = "NONE", fg = color.base0E }
			hl.CmpItemKindVariable = { bg = "NONE", fg = color.base0E }
			hl.CmpItemMenu = { bg = "NONE", fg = color.base03 }
			hl.ColorColumn = { bg = color.base00a }
			hl.Comment = { fg = color.base03, style = { italic = true } }
			hl.Conceal = { fg = color.base04 }
			hl.Constant = { fg = color.base09 }
			hl.CurSearch = { link = "IncSearch" }
			hl.Cursor = { bg = color.base06, fg = color.base00 }
			hl.CursorColumn = { bg = color.base01 }
			hl.CursorIM = { bg = color.base06, fg = color.base00 }
			hl.CursorLine 		= { bg = color.base00a, 										bold = true }
			hl.CursorLineNr 	= { bg = color.cursBG, fg = color.cursFG }
			hl.CursorLineSign = { bg = color.cursBG, fg = color.cursFG }
			hl.CursorLineFold = { bg = color.cursBG, fg = color.cursFG }
			hl.DapStoppedLine = { bg = color.base01a }
			hl.DapUINormal 			= { bg = color.nocdBG }
			hl.DapUINormalNC 		= { bg = color.nocdBG }
			hl.DapUILineNumber	= { bg = color.nocdBG }
			hl.DashboardCenter = { fg = color.base0E }
			hl.DashboardFooter = { fg = color.base0A, italic = true }
			hl.DashboardHeader = { fg = color.base0D }
			hl.DashboardShortCut = { fg = color.cyan }
			hl.Debug = { fg = color.base09 }
			hl.DefinitionCount = { fg = color.base0Ea }
			hl.DefinitionIcon = { fg = color.base0D }
			hl.DiagnosticError = { fg = color.base08a }
			hl.DiagnosticHint = { fg = color.base0Ba }
			hl.DiagnosticInfo = { fg = color.base0Ca }
			hl.DiagnosticInformation = { link = "DiagnosticInfo" }
			hl.DiagnosticUnderlineError = { sp = color.base08a, undercurl = true }
			hl.DiagnosticUnderlineHint = { sp = color.base0Ba, undercurl = true }
			hl.DiagnosticUnderlineInfo = { sp = color.base0Ca, undercurl = true }
			hl.DiagnosticUnderlineWarn = { sp = color.base0A, undercurl = true }
			hl.DiagnosticUnnecessary = { fg = color.base03 }
			hl.DiagnosticVirtualTextError = { bg = color.base08c, fg = color.base08a }
			hl.DiagnosticVirtualTextHint = { bg = color.base0Bc, fg = color.base0Ba }
			hl.DiagnosticVirtualTextInfo = { bg = color.base0Dc, fg = color.base0Ca }
			hl.DiagnosticVirtualTextWarn = { bg = color.base0Ac, fg = color.base0Aa }
			hl.DiagnosticWarn = { fg = color.base0A }
			hl.DiagnosticWarning = { link = "DiagnosticWarn" }
			hl.DiagnosticSignError	= { fg = color.base08a, bg = color.nocdBG }
			hl.DiagnosticSignWarn		= { fg = color.base09a, bg = color.nocdBG }
			hl.DiagnosticSignInfo		= { fg = color.base0Ba, bg = color.nocdBG }
			hl.DiagnosticSignHint		= { fg = color.base0Ca, bg = color.nocdBG }
			hl.DiffAdd 		= { bg = color.base0Bb }
			hl.DiffChange = { bg = color.base0Db }
			hl.DiffDelete = { bg = color.base08b }
			hl.DiffText 	= { bg = color.base0Cb }
			hl.DiffviewFolderName					= { fg = color.base0Da, bold = true }
			hl.DiffviewFolderSign					= { fg = color.base0Da }
			hl.DiffviewDiffAddAsDelete		= { bg = color.base08b }
			hl.DiffviewDiffDelete					= { bg = color.nocdBG, fg = color.base08b }
			hl.DiffviewEndOfBuffer				= { bg = color.nocdBG }
			hl.DiffviewNormal							= { bg = color.nocdBG }
			hl.DiffviewCursorLine					= { bg = color.cursBG, fg = "NONE" }
			hl.DiffviewFilePanelRootPath	= { fg = color.base04, bold = true }
			hl.DiffviewFilePanelTitle			= { fg = color.base04 }
			hl.DiffviewFilePanelPath			= { fg = color.base04 }
			hl.DiffviewFilePanelFileName	= { fg = color.base03 }
			hl.DiffviewFilePanelInsertions= { fg = color.base0Ba }
			hl.DiffviewFilePanelDeletions	= { fg = color.base08a }
			hl.DiffviewFilePanelCounter		= { fg = color.base0Da }
			hl.DiffviewFilePanelConflicts	= { fg = color.base0Fa }
			hl.Directory = { fg = color.base0D }
			hl.EndOfBuffer = { bg = color.nocdBG, fg = color.base00a }
			hl.Error = { fg = color.base08a }
			hl.ErrorMsg = { fg = color.base08a }
			hl.FernBranchText = { fg = color.base0D }
			hl.FloatBorder = { bg = color.base00a, fg = color.base0Ca }
			hl.FloatTitle = { bg = color.base00a, fg = color.base0Ca }
			hl.FoldColumn = { bg = color.base00, fg = color.base03 }
			hl.Folded = { bg = color.base0Db, fg = color.base0D }
			hl.Foo = { bg = color.base0F, fg = color.base0F }
			hl.Function = { fg = color.base0D, style = {} }
			hl.GitGutterAdd = { fg = color.base0Ba }
			hl.GitGutterAddLineNr = { fg = color.base0Ba }
			hl.GitGutterChange = { fg = color.base0Da }
			hl.GitGutterChangeLineNr = { fg = color.base0Da }
			hl.GitGutterDelete = { fg = color.base08a }
			hl.GitGutterDeleteLineNr = { fg = color.base08a }
			hl.GitSignsAdd		= { fg = color.base0Ba, bg = color.nocdBG }
			hl.GitSignsChange	= { fg = color.base0Da, bg = color.nocdBG }
			hl.GitSignsDelete	= { fg = color.base08a, bg = color.nocdBG }
			hl.GlyphPalette1 = { fg = color.base08a }
			hl.GlyphPalette2 = { fg = color.base0B }
			hl.GlyphPalette3 = { fg = color.base0A }
			hl.GlyphPalette4 = { fg = color.base0D }
			hl.GlyphPalette6 = { fg = color.base0C }
			hl.GlyphPalette7 = { fg = color.base06 }
			hl.GlyphPalette9 = { fg = color.base08 }
			hl.Hlargs = { fg = color.base0A }
			hl.HopNextKey = { bold = true, fg = color.base0F }
			hl.HopNextKey1 = { bold = true, fg = color.base0Ca }
			hl.HopNextKey2 = { fg = color.base0Ba }
			hl.HopUnmatched = { fg = color.base03 }
			hl.Identifier = { fg = color.base0E, style = {} }
			hl.IlluminatedWordRead = { bg = color.base0Db }
			hl.IlluminatedWordText = { bg = color.base0Db }
			hl.IlluminatedWordWrite = { bg = color.base0Db }
			hl.IncSearch = { bg = color.base09, fg = color.base00a }
			hl.IndentBlanklineChar = { fg = color.base0Db, nocombine = true }
			hl.IndentBlanklineContextChar = { fg = color.base0Ea, nocombine = true }
			hl.Italic = { italic = true }
			hl.Keyword = { fg = color.cyan, style = { italic = true } }
			hl.LazyProgressDone = { bold = true, fg = color.base0F }
			hl.LazyProgressTodo = { bold = true, fg = color.base0Db }
			hl.LeapBackdrop = { fg = color.base03 }
			hl.LeapLabelPrimary = { bold = true, fg = color.base0F }
			hl.LeapLabelSecondary = { bold = true, fg = color.base0C }
			hl.LeapMatch = { bg = color.base0F, bold = true, fg = color.base06 }
			hl.LightspeedGreyWash = { fg = color.base03 }
			hl.LightspeedLabel = { bold = true, fg = color.base0F, underline = true }
			hl.LightspeedLabelDistant = { bold = true, fg = color.base0C, underline = true }
			hl.LightspeedLabelDistantOverlapped = { fg = color.base0Ca, underline = true }
			hl.LightspeedLabelOverlapped = { fg = color.base0F, underline = true }
			hl.LightspeedMaskedChar = { fg = color.base09 }
			hl.LightspeedOneCharMatch = { bg = color.base0F, bold = true, fg = color.base06 }
			hl.LightspeedPendingOpArea = { bg = color.base0F, fg = color.base06 }
			hl.LightspeedShortcut = { bg = color.base0F, bold = true, fg = color.base06, underline = true }
			hl.LightspeedUnlabeledMatch = { bold = true, fg = color.base0Ca }
			hl.LineNr = { bg = color.nocdBG, fg = color.base0Db }
			hl.LspCodeLens = { fg = color.base03 }
			hl.LspFloatWinBorder = { fg = color.base0Ca }
			hl.LspFloatWinNormal = { bg = color.base00a }
			hl.LspInfoBorder = { bg = color.base00a, fg = color.base0Ca }
			hl.LspReferenceRead = { bg = color.base0Db }
			hl.LspReferenceText = { bg = color.base0Db }
			hl.LspReferenceWrite = { bg = color.base0Db }
			hl.LspSagaBorderTitle = { fg = color.cyan }
			hl.LspSagaCodeActionBorder = { fg = color.base0D }
			hl.LspSagaCodeActionContent = { fg = color.base0Ea }
			hl.LspSagaCodeActionTitle = { fg = color.base0Ca }
			hl.LspSagaDefPreviewBorder = { fg = color.base0B }
			hl.LspSagaFinderSelection = { fg = color.base02 }
			hl.LspSagaHoverBorder = { fg = color.base0D }
			hl.LspSagaRenameBorder = { fg = color.base0B }
			hl.LspSagaSignatureHelpBorder = { fg = color.base08 }
			hl.LspSignatureActiveParameter = { bg = color.base01a, bold = true }
			hl.MatchParen = { bold = true, fg = color.base09 }
			hl.MiniCompletionActiveParameter = { underline = true }
			hl.MiniCursorword = { bg = color.base0Db }
			hl.MiniCursorwordCurrent = { bg = color.base0Db }
			hl.MiniIndentscopePrefix = { nocombine = true }
			hl.MiniIndentscopeSymbol = { fg = color.base0Ca }
			hl.MiniJump = { bg = color.base0F, fg = color.base07 }
			hl.MiniJump2dSpot = { bold = true, fg = color.base0F, nocombine = true }
			hl.MiniStarterCurrent = { nocombine = true }
			hl.MiniStarterFooter = { fg = color.base0A, italic = true }
			hl.MiniStarterHeader = { fg = color.base0D }
			hl.MiniStarterInactive = { fg = color.base03, style = { italic = true } }
			hl.MiniStarterItem = { bg = color.base00, fg = color.base06 }
			hl.MiniStarterItemBullet = { fg = color.base0Ca }
			hl.MiniStarterItemPrefix = { fg = color.base0A }
			hl.MiniStarterQuery = { fg = color.base0Ca }
			hl.MiniStarterSection = { fg = color.base0Ca }
			hl.MiniStatuslineDevinfo = { bg = color.base01, fg = color.base05 }
			hl.MiniStatuslineFileinfo = { bg = color.base01, fg = color.base05 }
			hl.MiniStatuslineFilename = { bg = color.base0Db, fg = color.base05 }
			hl.MiniStatuslineInactive = { bg = color.base00a, fg = color.base0D }
			hl.MiniStatuslineModeCommand = { bg = color.base0A, bold = true, fg = color.base00a }
			hl.MiniStatuslineModeInsert = { bg = color.base0B, bold = true, fg = color.base00a }
			hl.MiniStatuslineModeNormal = { bg = color.base0D, bold = true, fg = color.base00a }
			hl.MiniStatuslineModeOther = { bg = color.base0Ba, bold = true, fg = color.base00a }
			hl.MiniStatuslineModeReplace = { bg = color.base08, bold = true, fg = color.base00a }
			hl.MiniStatuslineModeVisual = { bg = color.base0E, bold = true, fg = color.base00a }
			hl.MiniSurround = { bg = color.base09, fg = color.base00a }
			hl.MiniTablineCurrent = { bg = color.base0Db, fg = color.base06 }
			hl.MiniTablineFill = { bg = color.base00a }
			hl.MiniTablineHidden = { bg = color.base00a, fg = color.base04 }
			hl.MiniTablineModifiedCurrent = { bg = color.base0Db, fg = color.base0A }
			hl.MiniTablineModifiedHidden = { bg = color.base00a, fg = color.base0Aa }
			hl.MiniTablineModifiedVisible = { bg = color.base00a, fg = color.base0A }
			hl.MiniTablineTabpagesection = { bg = color.base00a, fg = "NONE" }
			hl.MiniTablineVisible = { bg = color.base00a, fg = color.base06 }
			hl.MiniTestEmphasis = { bold = true }
			hl.MiniTestFail = { bold = true, fg = color.base08 }
			hl.MiniTestPass = { bold = true, fg = color.base0B }
			hl.MiniTrailspace = { bg = color.base08 }
			hl.ModeMsg = { bold = true, fg = color.base05 }
			hl.MoreMsg = { fg = color.base0D }
			hl.MsgArea = { fg = color.base05 }
			hl.NavicIconsArray 				= { fg = color.base0Ea, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsBoolean 			= { fg = color.base0Da, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsClass 				= { fg = color.base09a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsConstant 		= { fg = color.base0Aa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsConstructor 	= { fg = color.base0Da, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsEnum 				= { fg = color.base0Ea, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsEnumMember 	= { fg = color.base0Aa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsEvent 				= { fg = color.base0Ca, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsField 				= { fg = color.base0Ca, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsFile 				= { fg = color.base0Da, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsFunction 		= { fg = color.base08a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsInterface 		= { fg = color.base0Fa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsKey 					= { fg = color.base08a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsKeyword 			= { fg = color.base08a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsMethod 			= { fg = color.base0Aa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsModule 			= { fg = color.base0Ea, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsNamespace 		= { fg = color.base0Fa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsNumber 			= { fg = color.base0Ca, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsNull 				= { fg = color.base09a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsObject 			= { fg = color.base0Fa, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsOperator 		= { fg = color.base0Da, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsPackage 			= { fg = color.base08a, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsProperty 		= { fg = color.base0Ba, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsString 			= { fg = color.base0Ba, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsStruct 			= { fg = color.base0Ba, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsTypeParameter= { fg = color.base0Ea, 	bg = color.nocdBG, bold = false }
			hl.NavicIconsVariable 		= { fg = color.base09a, 	bg = color.nocdBG, bold = false }
			hl.NavicSeparator 				= { fg = color.base00,		bg = color.nocdBG, bold = true }
			hl.NavicText 							= { fg = color.base03a, 	bg = color.nocdBG, italic = true }
			hl.NeoTreeCursorLine 						= { bg = color.cursBG }
			hl.NeoTreeIndentMarker 					= { fg = color.base03a }
			hl.NeoTreeFloatBorder 					= { bg = "NONE", fg = color.base0D, }
			hl.NeoTreeFloatNormal 					= { bg = color.codeBG, fg = color.base05 }
			hl.NeoTreeTitleBar 							= { bg = color.base0Da,fg = color.base00 }
			hl.NeoTreeTabActive							= { bg = color.nocdBG, fg = color.base03 }
			hl.NeoTreeTabInactive						= { bg = color.nocdBG, fg = color.base00a }
			hl.NeoTreeTabSeparatorInactive	= { bg = color.codeBG, fg = color.nocdBG }
			hl.NeoTreeTabSeparatorActive		= { bg = color.codeBG, fg = color.nocdBG }
			hl.NeogitBranch = { fg = color.base0E }
			hl.NeogitDiffAddHighlight = { bg = color.base0Bb, fg = color.base0Ba }
			hl.NeogitDiffContextHighlight = { bg = color.base01a, fg = color.base05 }
			hl.NeogitDiffDeleteHighlight = { bg = color.base08b, fg = color.base08a }
			hl.NeogitHunkHeader = { bg = color.base01, fg = color.base06 }
			hl.NeogitHunkHeaderHighlight = { bg = color.base0Db, fg = color.base0D }
			hl.NeogitRemote = { fg = color.base0Ea }
			hl.NeotestAdapterName = { bold = true, fg = color.base0Ea }
			hl.NeotestBorder = { fg = color.base0D }
			hl.NeotestDir = { fg = color.base0D }
			hl.NeotestExpandMarker = { fg = color.base05 }
			hl.NeotestFailed = { fg = color.base08 }
			hl.NeotestFile = { fg = color.base0Ba }
			hl.NeotestFocused = { fg = color.base0A }
			hl.NeotestIndent = { fg = color.base05 }
			hl.NeotestMarked = { fg = color.base0D }
			hl.NeotestNamespace = { fg = color.base0Ca }
			hl.NeotestPassed = { fg = color.base0B }
			hl.NeotestRunning = { fg = color.base0A }
			hl.NeotestSkipped = { fg = color.base0D }
			hl.NeotestTarget = { fg = color.base0D }
			hl.NeotestTest = { fg = color.base05 }
			hl.NeotestWinSelect = { fg = color.base0D }
			hl.NoiceCompletionItemKindClass					= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindConstant			= { bg = color.base0Da, fg = color.base0E }
			hl.NoiceCompletionItemKindConstructor		= { bg = color.base0Da, fg = color.base0D }
			hl.NoiceCompletionItemKindDefault				= { bg = color.base0Da, fg = color.base05 }
			hl.NoiceCompletionItemKindEnum					= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindEnumMember		= { bg = color.base0Da, fg = color.base0C }
			hl.NoiceCompletionItemKindEvent					= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindField					= { bg = color.base0Da, fg = color.base0C }
			hl.NoiceCompletionItemKindFunction			= { bg = color.base0Da, fg = color.base0D }
			hl.NoiceCompletionItemKindInterface			= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindKeyword				= { bg = color.base0Da, fg = color.cyan }
			hl.NoiceCompletionItemKindMethod				= { bg = color.base0Da, fg = color.base0D }
			hl.NoiceCompletionItemKindModule				= { bg = color.base0Da, fg = color.base0A }
			hl.NoiceCompletionItemKindOperator			= { bg = color.base0Da, fg = color.base0C }
			hl.NoiceCompletionItemKindProperty			= { bg = color.base0Da, fg = color.base0C }
			hl.NoiceCompletionItemKindReference			= { bg = color.base0Da, fg = color.base0E }
			hl.NoiceCompletionItemKindSnippet				= { bg = color.base0Da, fg = color.base04 }
			hl.NoiceCompletionItemKindStruct				= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindTypeParameter	= { bg = color.base0Da, fg = color.base0C }
			hl.NoiceCompletionItemKindUnit					= { bg = color.base0Da, fg = color.base09 }
			hl.NoiceCompletionItemKindValue					= { bg = color.base0Da, fg = color.base0E }
			hl.NoiceCompletionItemKindVariable			= { bg = color.base0Da, fg = color.base0E }
			hl.NoiceCmdline 					= { bg = color.base0Db,fg = color.base05, blend = 0 }
			hl.NoiceCmdlineIcon 			= { bg = color.base02, fg = color.base0Da, blend = 0 }
			hl.NoiceCmdlineIconSearch	= { bg = color.base02, fg = color.base0Da, blend = 0 }
			hl.NoiceCmdlinePrompt 		= { bg = color.nocdBG, fg = color.base0Da, blend = 0 }
			hl.NoiceMini 							= { bg = color.base0Dc }
			hl.NoiceMiniSearch 				= { bg = color.base0Ac }
			hl.NoiceMiniIncSearch 		= { bg = color.base0Ac }
			hl.NonText = { bg = "NONE", fg = color.base02 }
			hl.Normal = { bg = color.base00, fg = color.base06 }
			hl.NormalFloat = { bg = color.base00a, fg = color.base06 }
			hl.NormalNC = { bg = color.base00, fg = color.base06 }
			hl.NormalSB = { bg = color.base00a, fg = color.base05 }
			hl.NotifyDEBUGBody = { bg = color.base00, fg = color.base06 }
			hl.NotifyDEBUGBorder = { bg = color.base00, fg = color.base0Da }
			hl.notifyDEBUGIcon = { fg = color.base03 }
			hl.NotifyDEBUGTitle = { fg = color.base03 }
			hl.NotifyERRORBody = { bg = color.base00, fg = color.base06 }
			hl.NotifyERRORBorder = { bg = color.base00, fg = color.base08a }
			hl.NotifyERRORIcon = { fg = color.base08a }
			hl.NotifyERRORTitle = { fg = color.base08a }
			hl.NotifyINFOBody = { bg = color.base00, fg = color.base06 }
			hl.NotifyINFOBorder = { bg = color.base00, fg = color.base0Ba }
			hl.NotifyINFOIcon = { fg = color.base0Ca }
			hl.NotifyINFOTitle = { fg = color.base0Ca }
			hl.NotifyTRACEBody = { bg = color.base00, fg = color.base06 }
			hl.NotifyTRACEBorder = { bg = color.base00, fg = color.base0Ea }
			hl.NotifyTRACEIcon = { fg = color.base0Ea }
			hl.NotifyTRACETitle = { fg = color.base0Ea }
			hl.NotifyWARNBody = { bg = color.base00, fg = color.base06 }
			hl.NotifyWARNBorder = { bg = color.base00, fg = color.base0Aa }
			hl.NotifyWARNIcon = { fg = color.base0A }
			hl.NotifyWARNTitle = { fg = color.base0A }
			hl.NvimTreeFolderIcon = { bg = "NONE", fg = color.base0D }
			hl.NvimTreeGitDeleted = { fg = color.base08a }
			hl.NvimTreeGitDirty = { fg = color.base0Da }
			hl.NvimTreeGitNew = { fg = color.base0Ba }
			hl.NvimTreeImageFile = { fg = color.base05 }
			hl.NvimTreeIndentMarker = { fg = color.base0Db }
			hl.NvimTreeNormal = { bg = color.base00a, fg = color.base05 }
			hl.NvimTreeNormalNC = { bg = color.base00a, fg = color.base05 }
			hl.NvimTreeOpenedFile = { bg = color.base01 }
			hl.NvimTreeRootFolder = { bold = true, fg = color.base0D }
			hl.NvimTreeSpecialFile = { fg = color.base0Ea, underline = true }
			hl.NvimTreeSymlink = { fg = color.base0D }
			hl.NvimTreeWinSeparator = { bg = color.base00a, fg = color.base00a }
			hl.Operator = { fg = color.blue5 }
			hl.Pmenu = { bg = color.base00a, fg = color.base06 }
			hl.PmenuSbar = { bg = color.base01a }
			hl.PmenuSel = { bg = color.base0Db }
			hl.PmenuThumb = { bg = color.base0Db }
			hl.PreProc = { fg = color.cyan }
			hl.Question = { fg = color.base0D }
			hl.QuickFixLine = { bg = color.base02, bold = true }
			hl.ReferencesCount = { fg = color.base0Ea }
			hl.ReferencesIcon = { fg = color.base0D }
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
			hl.Search = { bg = color.base0Da, fg = color.base06 }
			hl.SignColumn = { bg = color.nocdBG, fg = color.base0Db }
			hl.SignColumnSB = { bg = color.base00a, fg = color.base0Db }
			hl.Sneak = { bg = color.base0E, fg = color.base01 }
			hl.SneakScope = { bg = color.base02 }
			hl.Special = { fg = color.base0Ca }
			hl.SpecialKey = { fg = color.base03 }
			hl.SpellBad = { sp = color.base08a, undercurl = true }
			hl.SpellCap = { sp = color.base0A, undercurl = true }
			hl.SpellLocal = { sp = color.base0Ca, undercurl = true }
			hl.SpellRare = { sp = color.base0Ba, undercurl = true }
			hl.Statement = { fg = color.base0E }
			hl.StatusLine = { bg = color.base00a, fg = color.base05 }
			hl.StatusLineNC = { bg = color.base00a, fg = color.base0Db }
			hl.String = { fg = color.base0B }
			hl.Substitute = { bg = color.base08, fg = color.base00a }
			hl.TSNodeKey = { bold = true, fg = color.base0F }
			hl.TSNodeUnmatched = { fg = color.base03 }
			hl.TSRainbowBlue = { fg = color.base0D }
			hl.TSRainbowCyan = { fg = color.cyan }
			hl.TSRainbowGreen = { fg = color.base0B }
			hl.TSRainbowOrange = { fg = color.base09 }
			hl.TSRainbowRed = { fg = color.base08 }
			hl.TSRainbowViolet = { fg = color.base0Ea }
			hl.TSRainbowYellow = { fg = color.base0A }
			hl.TabLine = { bg = color.base00a, fg = color.base0Db }
			hl.TabLineFill = { bg = color.base00 }
			hl.TabLineSel = { bg = color.base0D, fg = color.base00a }
			hl.TargetWord = { fg = color.cyan }
			hl.TelescopeBorder = { bg = color.base00a, fg = color.base0Ca }
			hl.TelescopeNormal = { bg = color.base00a, fg = color.base06 }
			hl.Title = { bold = true, fg = color.base0D }
			hl.Todo = { bg = color.base0A, fg = color.base00 }
			hl.TreesitterContext = { bg = color.nocdBG, bold = false, blend = 15 }
			hl.TroubleCount = { bg = color.base0Db, fg = color.base0E }
			hl.TroubleNormal = { bg = color.base00a, fg = color.base05 }
			hl.TroubleText = { fg = color.base05 }
			hl.Type = { fg = color.base0Ca }
			hl.Underlined = { underline = true }
			hl.VertSplit = { bg = color.codeBG, fg = color.nocdBG }
			hl.Visual = { bg = color.base02 }
			hl.VisualNOS = { bg = color.base02 }
			hl.WarningMsg = { fg = color.base0A }
			hl.WhichKey = { fg = color.cyan }
			hl.WhichKeyDesc = { fg = color.base0E }
			hl.WhichKeyFloat = { bg = color.base00a }
			hl.WhichKeyGroup = { fg = color.base0D }
			hl.WhichKeySeparator = { fg = color.base03 }
			hl.WhichKeySeperator = { fg = color.base03 }
			hl.WhichKeyValue = { fg = color.base04 }
			hl.Whitespace = { bg = "NONE", fg = color.base02 }
			hl.WildMenu = { bg = color.base02 }
			hl.WinSeparator = { bg = color.codeBG, fg = color.nocdBG }
			hl.YankyPut = { link = "IncSearch" }
			hl.YankyYanked = { link = "IncSearch" }
			hl.debugBreakpoint = { bg = color.base01a, fg = color.base0Ca }
			hl.debugPC = { bg = color.base00a }
			hl.diffAdded = { fg = color.base0Ba }
			hl.diffChanged = { fg = color.base0Da }
			hl.diffFile = { fg = color.base0D }
			hl.diffIndexLine = { fg = color.base0E }
			hl.diffLine = { fg = color.base03 }
			hl.diffNewFile = { fg = color.base09 }
			hl.diffOldFile = { fg = color.base0A }
			hl.diffRemoved = { fg = color.base08a }
			hl.healthError = { fg = color.base08a }
			hl.healthSuccess = { fg = color.base0C }
			hl.healthWarning = { fg = color.base0A }
			hl.helpCommand = { bg = color.base03, fg = color.base0D }
			hl.htmlH1 = { bold = true, fg = color.base0E }
			hl.htmlH2 = { bold = true, fg = color.base0D }
			hl.illuminatedCurWord = { bg = color.base0Db }
			hl.illuminatedWord = { bg = color.base0Db }
			hl.lCursor = { bg = color.base06, fg = color.base00 }
			hl.markdownCode = { fg = color.base0Ba }
			hl.markdownCodeBlock = { fg = color.base0Ba }
			hl.markdownH1 = { bold = true, fg = color.base0E }
			hl.markdownH2 = { bold = true, fg = color.base0D }
			hl.markdownHeadingDelimiter = { bold = true, fg = color.base09 }
			hl.markdownLinkText = { fg = color.base0D, underline = true }
			hl.mkdCodeDelimiter = { bg = color.base03, fg = color.base06 }
			hl.mkdCodeEnd = { bold = true, fg = color.base0Ba }
			hl.mkdCodeStart = { bold = true, fg = color.base0Ba }
			hl.qfFileName = { fg = color.base0D }
			hl.qfLineNr = { fg = color.base04 }
			hl.rainbowcol1 = { fg = color.base08 }
			hl.rainbowcol2 = { fg = color.base0A }
			hl.rainbowcol3 = { fg = color.base0B }
			hl.rainbowcol4 = { fg = color.base0Ba }
			hl.rainbowcol5 = { fg = color.base0D }
			hl.rainbowcol6 = { fg = color.base0E }
			hl.rainbowcol7 = { fg = color.base0Ea }
		end,
	},
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
