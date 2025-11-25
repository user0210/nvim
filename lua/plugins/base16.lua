return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			on_colors = function(colors)

-- MONDO-BEGIN
colors.base00  = "#202126"
colors.base01  = "#2d303d"
colors.base02  = "#5a576e"
colors.base03  = "#a1d2e6"
colors.base04  = "#cad3ff"
colors.base05  = "#e9e7e1"
colors.base06  = "#eff0f9"
colors.base07  = "#f2fbff"
colors.base08  = "#ff661a"
colors.base09  = "#19f988"
colors.base0A  = "#ffdc2d"
colors.base0B  = "#f2e6a9"
colors.base0C  = "#fb6acb"
colors.base0D  = "#40bfff"
colors.base0E  = "#ae94f9"
colors.base0F  = "#6187ff"
colors.base08a = "#DF4600"
colors.base09a = "#00D968"
colors.base0Aa = "#DFBC0D"
colors.base0Ba = "#D2C689"
colors.base0Ca = "#DB4AAB"
colors.base0Da = "#209FDF"
colors.base0Ea = "#8E74D9"
colors.base0Fa = "#4167DF"
colors.base00a = "#1B1C20"
colors.base01a = "#262831"
colors.base02a = "#434355"
colors.base03a = "#7D94AA"
colors.base04a = "#B5D2F2"
colors.base05a = "#D9DDF0"
colors.base06a = "#ECEBED"
colors.base07a = "#F0F5FC"
colors.base08b = "#7F3313"
colors.base09b = "#107D47"
colors.base0Ab = "#7F6E19"
colors.base0Bb = "#797357"
colors.base0Cb = "#7D3568"
colors.base0Db = "#206082"
colors.base0Eb = "#574A7F"
colors.base0Fb = "#304482"
colors.base08c = "#332422"
colors.base09c = "#1C332C"
colors.base0Ac = "#333023"
colors.base0Bc = "#31312F"
colors.base0Cc = "#322533"
colors.base0Dc = "#202D38"
colors.base0Ec = "#2B2937"
colors.base0Fc = "#232838"

colors.bg               = "#262831"
colors.bg_dark          = "#202126"
colors.bg_float         = "#202126"
colors.bg_highlight     = "#2d303d"
colors.bg_popup         = "#202126"
colors.bg_search        = "#209FDF"
colors.bg_sidebar       = "#202126"
colors.bg_statusline    = "#202126"
colors.bg_visual        = "#5a576e"
colors.black            = "#202126"
colors.blue             = "#40bfff"
colors.blue0            = "#209FDF"
colors.blue1            = "#DB4AAB"
colors.blue2            = "#DB4AAB"
colors.blue5            = "#75D1FF"
colors.blue6            = "#f2fbff"
colors.blue7            = "#206082"
colors.border           = "#202126"
colors.border_highlight = "#DB4AAB"
colors.comment          = "#a1d2e6"
colors.cyan             = "#F6B2E5"
colors.dark3            = "#a1d2e6"
colors.dark5            = "#cad3ff"
colors.delta            = {
	add    = "#797357",
	delete = "#7F3313"
}
colors.diff             = {
	add    = "#797357",
	change = "#206082",
	delete = "#7F3313",
	text   = "#206082"
}
colors.error            = "#DF4600"
colors.fg               = "#e9e7e1"
colors.fg_dark          = "#cad3ff"
colors.fg_float         = "#e9e7e1"
colors.fg_gutter        = "#206082"
colors.fg_sidebar       = "#cad3ff"
colors.git              = {
	add    = "#D2C689",
	change = "#209FDF",
	delete = "#DF4600",
	ignore = "#a1d2e6"
}
colors.gitSigns         = {
	add    = "#D2C689",
	change = "#209FDF",
	delete = "#DF4600"
}
colors.green            = "#f2e6a9"
colors.green1           = "#fb6acb"
colors.green2           = "#DB4AAB"
colors.hint             = "#D2C689"
colors.info             = "#DB4AAB"
colors.magenta          = "#ae94f9"
colors.magenta2         = "#6187ff"
colors.orange           = "#19f988"
colors.purple           = "#8E74D9"
colors.red              = "#ff661a"
colors.red1             = "#DF4600"
colors.teal             = "#D2C689"
colors.terminal_black   = "#5a576e"
colors.warning          = "#ffdc2d"
colors.yellow           = "#ffdc2d"
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
				hl.Whithespace                          = {                     fg = color.base02                  }
				hl.NonText                              = {                     fg = color.base02                  }
				hl.IndentBlanklineContextChar           = {                     fg = color.base02                  }
				hl.IndentBlanklineChar                  = {                     fg = color.base02                  }
				hl.LineNr                               = {                     fg = color.base02                  }

				hl.TabLineFill                          = { bg = color.base00                                      }
				hl.VertSplit                            = { bg = color.base00,  fg = color.bg                      }
				hl.WinSeparator                         = { bg = color.bg,      fg = color.base00                  }

				hl.CursorLine                           = { bg = color.base01,                      bold = true    }
				hl.CursorLineNr                         = { bg = color.base02a, fg = color.base00a                 }
				hl.CursorLineSign                       = { bg = color.base02a, fg = color.base00a                 }
				hl.CursorLineFold                       = { bg = color.base02a, fg = color.base00a                 }

				hl.GitSignsAdd                          = {                     fg = color.base0Bb                 }
				hl.GitSignsChange                       = {                     fg = color.base0Db                 }
				hl.GitSignsDelete                       = {                     fg = color.base08b                 }
				hl.GitSignsAddCul                       = { bg = color.base02a, fg = color.base0Bb                 }
				hl.GitSignsChangeCul                    = { bg = color.base02a, fg = color.base0Db                 }
				hl.GitSignsDeleteCul                    = { bg = color.base02a, fg = color.base08b                 }
				hl.GitSignsStagedChangeCul              = { bg = color.base02a, fg = color.base0Db                 }
				hl.GitSignsStagedDeleteCul              = { bg = color.base02a, fg = color.base08b                 }

				-- Scrollbar
				hl.NoCode                               = { bg = color.bg                                          }
				hl.NoCodeSign                           = { bg = color.bg                                          }
				hl.NoCodeCursor                         = { bg = color.base01                                      }
				hl.IlluminatedWordRead                  = { bg = color.base01                                      }
				hl.IlluminatedWordText                  = { bg = color.base01                                      }
				hl.IlluminatedWordWrite                 = { bg = color.base01                                      }
				hl.ScrollbarCursor                      = { bg = color.base00a, fg = color.base00a                 }
				hl.ScrollbarHandle                      = { bg = color.base02,  fg = color.base00a                 }
				hl.ScrollbarCursorHandle                = { bg = color.base02,  fg = color.base00a                 }
				hl.ScrollbarError                       = { bg = color.codeBG,  fg = color.base08b                 }
				hl.ScrollbarErrorHandle                 = { bg = color.base02,  fg = color.base08a                 }
				hl.ScrollbarWarn                        = { bg = color.codeBG,  fg = color.base09b                 }
				hl.ScrollbarWarnHandle                  = { bg = color.base02,  fg = color.base09a                 }
				hl.ScrollbarSearch                      = { bg = color.codeBG,  fg = color.base0Ab                 }
				hl.ScrollbarSearchHandle                = { bg = color.base02,  fg = color.base0Aa                 }
				hl.ScrollbarInfo                        = { bg = color.codeBG,  fg = color.base0Cb                 }
				hl.ScrollbarInfoHandle                  = { bg = color.base02,  fg = color.base0Ca                 }
				hl.ScrollbarHint                        = { bg = color.codeBG,  fg = color.base0Fb                 }
				hl.ScrollbarHintHandle                  = { bg = color.base02,  fg = color.base0Fa                 }
				hl.ScrollbarMisc                        = { bg = color.codeBG,  fg = color.base03                  }
				hl.ScrollbarMiscHandle                  = { bg = color.base02,  fg = color.base04                  }
				hl.ScrollbarGitAdd                      = { bg = color.codeBG,  fg = color.base0Bb                 }
				hl.ScrollbarGitAddHandle                = { bg = color.base02,  fg = color.base0Ba                 }
				hl.ScrollbarGitChange                   = { bg = color.codeBG,  fg = color.base0Db                 }
				hl.ScrollbarGitChangeHandle             = { bg = color.base02,  fg = color.base0Da                 }
				hl.ScrollbarGitDelete                   = { bg = color.codeBG,  fg = color.base0Fb                 }
				hl.ScrollbarGitDeleteHandle             = { bg = color.base02,  fg = color.base0Fa                 }
				-- Navic
				hl.NavicText                            = { bg = color.nocdBG,  fg = color.base03a, bold = false   }
				hl.NavicIconsFile                       = { bg = color.nocdBG,  fg = color.fg                      }
				hl.NavicIconsModule                     = { bg = color.nocdBG,  fg = color.yellow                  }
				hl.NavicIconsNamespace                  = { bg = color.nocdBG,  fg = color.fg                      }
				hl.NavicIconsPackage                    = { bg = color.nocdBG,  fg = color.fg                      }
				hl.NavicIconsClass                      = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsMethod                     = { bg = color.nocdBG,  fg = color.blue                    }
				hl.NavicIconsProperty                   = { bg = color.nocdBG,  fg = color.green1                  }
				hl.NavicIconsField                      = { bg = color.nocdBG,  fg = color.green1                  }
				hl.NavicIconsConstructor                = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsEnum                       = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsInterface                  = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsFunction                   = { bg = color.nocdBG,  fg = color.blue                    }
				hl.NavicIconsVariable                   = { bg = color.nocdBG,  fg = color.magenta                 }
				hl.NavicIconsConstant                   = { bg = color.nocdBG,  fg = color.magenta                 }
				hl.NavicIconsString                     = { bg = color.nocdBG,  fg = color.green                   }
				hl.NavicIconsNumber                     = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsBoolean                    = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsArray                      = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsObject                     = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsKey                        = { bg = color.nocdBG,  fg = color.purple                  }
				hl.NavicIconsNull                       = { bg = color.nocdBG,  fg = color.purple                  }
				hl.NavicIconsEnumMember                 = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsStruct                     = { bg = color.nocdBG,  fg = color.green1                  }
				hl.NavicIconsEvent                      = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsOperator                   = { bg = color.nocdBG,  fg = color.orange                  }
				hl.NavicIconsTypeParameter              = { bg = color.nocdBG,  fg = color.fg                      }
				-- Noice
				hl.NoiceCmdline                         = { bg = color.base0Db, fg = color.base05,  blend = 0      }
				hl.NoiceCmdlineIcon                     = { bg = color.base02,  fg = color.base0Da, blend = 0      }
				hl.NoiceCmdlineIconSearch               = { bg = color.base02,  fg = color.base0Da, blend = 0      }
				hl.NoiceCmdlinePrompt                   = { bg = color.nocdBG,  fg = color.base0Da, blend = 0      }
				hl.NoiceMini                            = { bg = color.base0Dc                                     }
				hl.NoiceMiniSearch                      = { bg = color.base0Ac                                     }
				hl.NoiceMiniIncSearch                   = { bg = color.base0Ac                                     }
				-- NeoTree
				hl.NeoTreeTabActive                     = { bg = color.nocdBG,  fg = color.base03                  }
				hl.NeoTreeNormal                        = { bg = color.nocdBG,  fg = color.base03                  }
				hl.NeoTreeTabInactive                   = { bg = color.baseBG,  fg = color.base03                  }
				hl.NeoTreeNormalNC                      = { bg = color.baseBG,  fg = color.base03                  }
				hl.NeoTreeRootName                      = {                                         underline = true }
				hl.NeoTreeTabSeparatorInactive          = { bg = color.base01a, fg = color.base00a                 }
				hl.NeoTreeTabSeparatorActive            = { bg = color.codeBG,  fg = color.nocdBG                  }
				-- Snacks.Explorer
				hl.SnacksPicker                         = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerPreviewBorder            = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerPreview                  = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerPreviewTitle             = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerBoxBorder                = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerInputBorder              = { bg = color.nocdBG,  fg = color.base01                  }
				hl.SnacksPickerInputSearch              = { bg = color.nocdBG,  fg = color.base01                  }
				hl.SnacksPickerInputTitle               = { bg = color.nocdBG,  fg = color.base02                  }
				hl.SnacksPickerListBorder               = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerList                     = { bg = color.nocdBG,  fg = color.base03                  }
				hl.SnacksPickerListTitle                = { bg = color.nocdBG,  fg = color.base03                  }
				-- TreesitterContext
				hl.TreesitterContext                    = { bg = color.base01,                      bold = false, blend = 10   }
				-- Bufferline
				hl.BufferLineDiffAdd                    = { bg = color.base00,  fg = color.base0Bb                 }
				hl.BufferLineDiffChange                 = { bg = color.base00,  fg = color.base0Db                 }
				hl.BufferLineDiffDelete                 = { bg = color.base00,  fg = color.base08b                 }
				hl.BufferLineSeparator                  = { bg = color.buffBG,  fg = color.base00                  }
				hl.BufferLineSeparatorSelected          = { bg = color.nocdBG,  fg = color.base00                  }
				hl.BufferLineSeparatorVisible           = { bg = color.nocdBG,  fg = color.base00                  }
				hl.BufferLineTab                        = { bg = color.base00a, fg = color.base02                  }
				hl.BufferLineTabSeparator               = { bg = color.base00a, fg = color.base00                  }
				hl.BufferLineTabSelected                = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineTabSeparatorSelected       = { bg = color.nocdBG,  fg = color.base00                  }
				hl.BufferLineFill                       = { bg = color.base00,  fg = color.base02                  }
				hl.BufferLineTabClose                   = { bg = color.base00,  fg = color.base01                  }
				hl.BufferLineNumbers                    = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineBackground                 = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineCloseButton                = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineDiagnostic                 = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineInfo                       = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineInfoDiagnostic             = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineWarning                    = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineWarningDiagnostic          = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineError                      = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineErrorDiagnostic            = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineModified                   = { bg = color.buffBG,  fg = color.buffFG,  italic = false }
				hl.BufferLineDuplicate                  = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLinePick                       = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineHint                       = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineHintDiagnostic             = { bg = color.buffBG,  fg = color.buffFG                  }
				hl.BufferLineNumbersSelected            = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineCloseButtonSelected        = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineBufferSelected             = { bg = color.nocdBG,  fg = color.nocdFG,  italic = false }
				hl.BufferLineDiagnosticSelected         = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineInfoSelected               = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineInfoDiagnosticSelected     = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineWarningSelected            = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineWarningDiagnostic_selected = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineErrorSelected              = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineErrorDiagnosticSelected    = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineModifiedSelected           = { bg = color.nocdBG,  fg = color.nocdFG,  italic = false }
				hl.BufferLineDuplicateSelected          = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineIndicatorSelected          = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLinePickSelected               = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineHintSelected               = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineHintDiagnosticSelected     = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineNumbersVisible             = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineCloseButtonVisible         = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineBufferVisible              = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineDiagnosticVisible          = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineInfoVisible                = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineInfoDiagnosticVisible      = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineWarningVisible             = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineWarningDiagnosticVisible   = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineErrorVisible               = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineErrorDiagnosticVisible     = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineModifiedVisible            = { bg = color.nocdBG,  fg = color.nocdFG,  italic = false }
				hl.BufferLineDuplicateVisible           = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineIndicatorVisible           = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLinePickVisible                = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineHintVisible                = { bg = color.nocdBG,  fg = color.nocdFG                  }
				hl.BufferLineHintDiagnosticVisible      = { bg = color.nocdBG,  fg = color.nocdFG                  }
			end,
		},
	}
}
