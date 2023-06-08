return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function()
			local colors = vim.deepcopy(require("tokyonight.colors").setup())

			local lualine = require("lualine")
			require("lualine.themes.auto")

			local bg = colors.base0Da

			vim.api.nvim_set_hl(0, "CustomSepL", { bg = colors.nocdBG, fg = colors.base00a })
			vim.api.nvim_set_hl(0, "CustomSepR", { bg = colors.base00a, fg = colors.nocdBG })

			local templer = {
				normal = {
					a = { bg = bg, fg = colors.base0D },
					b = { bg = bg, fg = colors.base01 },
					c = { bg = bg, fg = colors.base01 },
					x = { bg = bg, fg = colors.base01 },
					y = { bg = bg, fg = colors.base01 },
					z = { bg = bg, fg = colors.base01 },
				},
				inactive = {
					a = { bg = colors.base02, fg = colors.base00 },
					b = { bg = colors.base02, fg = colors.base00 },
					c = { bg = colors.base01a, fg = colors.base02 },
					x = { bg = colors.base01a, fg = colors.base02 },
					y = { bg = colors.base01a, fg = colors.base02 },
					z = { bg = colors.base01a, fg = colors.base02 },
				},
				insert = {
					a = { bg = colors.base0D, fg = colors.base0Da },
					z = { bg = bg, fg = colors.base01 },
				},
				replace = {
					a = { bg = colors.base09, fg = colors.base09a },
					z = { bg = bg, fg = colors.base01 },
				},
				visual = {
					a = { bg = colors.base0E, fg = colors.base0Ea },
					z = { bg = bg, fg = colors.base01 },
				},
				command = {
					a = { bg = colors.base0C, fg = colors.base0Ca },
					z = { bg = bg, fg = colors.base01 },
				},
			}

			-- COMPONENTS

			local diff = {
				"diff",
				colored = true,
				diff_color = {
					added = { bg = bg, fg = colors.base0Bb },
					modified = { bg = bg, fg = colors.base0Db },
					removed = { bg = bg, fg = colors.base08b },
				},
				symbols = { added = "+", modified = "~", removed = "-" },
				source = function ()
					local gitsigns = vim.b.gitsigns_status_dict
					if gitsigns then
						return {
							added = gitsigns.added,
							modified = gitsigns.changed,
							removed = gitsigns.removed,
						}
					end
				end
			}

			local diagnostics = {
				"diagnostics",
				sources = { "nvim_lsp", "nvim_diagnostic" },
				sections = { "error", "warn" }, -- sections = { 'error', 'warn', 'info', 'hint' },
				symbols = { error = " ", warn = " ", info = "I", hint = "H" },
				colored = true,
				update_in_insert = false,
				always_visible = true,
			}

			local mode = {
				"mode",
				separator = { left = " ", right = "" },
				color = function()
					if vim.api.nvim_get_mode()["mode"]:match("n") ~= nil then
						return { fg = colors.base05 }
					else
						return { fg = colors.base00 }
					end
				end,
				padding = { left = 0, right = 1 },
			}

			local tabclose = {
				"tabclose",
				fmt = function()
					return ""
				end,
				on_click = function()
					vim.cmd("tabclose")
				end,
				color = { fg = colors.base03, bg = colors.nocdBG },
			}

			local minimap = {
				"minimap",
				fmt = function()
					if vim.g.minimap_auto_start == 1 then
						return ">>"
					else
						return "<<"
					end
				end,
				on_click = function()
					if vim.g.minimap_auto_start == nil then
						vim.cmd("MinimapClose")
					end
					if vim.g.minimap_auto_start == 1 then
						vim.g.minimap_auto_start = 0
						vim.api.nvim_del_augroup_by_name("minimaptoggle")
						vim.cmd("MinimapClose")
						vim.cmd("ScrollbarShow")
						lualine.refresh({ place = { "statusline" } })
					else
						vim.g.minimap_auto_start = 1
						vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
							callback = function()
								vim.cmd("Minimap")
							end,
							group = vim.api.nvim_create_augroup("minimaptoggle", { clear = true }),
							lualine.refresh({ place = { "statusline" } }),
						})
						vim.cmd("Minimap")
						vim.cmd("ScrollbarHide")
					end
				end,
				padding = { left = 1, right = 0 },
			}

			local navic = {
				"navic",
				fmt = function()
					local value = ""
					local entries = require("nvim-navic").get_data()
					if entries ~= nil then
						for i = #entries, 1, -1 do
							local highlight = "NavicIcons" .. entries[i].type
							value = value .. "%#" .. highlight .. "# " .. entries[i].icon
							value = value .. "%#NavicText#" .. entries[i].name
							if i ~= 1 then
								--value = value .. '%#CustomSepL#' .. ' ' .. '%#CustomSepR#' .. ''     --    
								value = value .. "%#CustomSepL#" .. " "
							else
								value = value .. "    "
							end
						end
					end
					return value
					-- return "%{%v:lua.require'nvim-navic'.get_location()%}%="
				end,
				padding = 0,
				cond = require("nvim-navic").is_available,
				color = { bg = colors.nocdBG },
			}
			local noice = {
				require("noice").api.status.mode.get,
				cond = require("noice").api.status.mode.has,
				color = function()
					if vim.api.nvim_get_mode()["mode"]:match("n") ~= nil then
						return { fg = colors.base05 }
					else
						return { fg = colors.base00 }
					end
				end,
				separator = { left = " ", right = "" },
				padding = { left = 0, right = 1 },
			}

			local filetype 	= { "filetype", 	on_click = function() vim.cmd("LspInfo") end, }
			local spaces 		= { "spaces", 		fmt = function() return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") end, }
			local surroundL = { "surroundL", 	fmt = function() return "▎ " 	end, padding = 0, }
			local surroundR = { "surroundR", 	fmt = function() return "▕" 	end, padding = 0, color = { fg = colors.nocdBG }, }
			local winbarL 	= { "winbarL", 		fmt = function() return "%L " end, padding = 0, color = { fg = colors.nocdBG, bg = colors.nocdBG }, }
			local spread 		= { "spread", 		fmt = function() return "%=" 	end, padding = 0, color = { fg = colors.base00a, bg = colors.nocdBG }, }

			-- local tabs = {
			-- 	"tabs",
			-- 	max_length = vim.o.columns / 3,
			-- 	mode = 0,
			-- 	-- 0: Shows tab_nr
			-- 	-- 1: Shows tab_name
			-- 	-- 2: Shows tab_nr + tab_name
			--
			-- 	tabs_color = {
			-- 		active = { bg = colors.nocdBG, fg = colors.base03 },
			-- 		inactive = { bg = colors.base01, fg = colors.base02 },
			-- 	},
			-- 	separator = { left = "█", right = "█" },
			-- 	fmt = function(name, context)
			-- 		-- Show + if buffer is modified in tab
			-- 		local buflist = vim.fn.tabpagebuflist(context.tabnr)
			-- 		local winnr = vim.fn.tabpagewinnr(context.tabnr)
			-- 		local bufnr = buflist[winnr]
			-- 		local mod = vim.fn.getbufvar(bufnr, '&mod')
			--
			-- 		return name .. (mod == 1 and ' +' or '')
			-- 	end,
			-- }

			-- local progress = {
			-- 	"progress",
			-- 	fmt = function()
			-- 		local current_line = vim.fn.line(".")
			-- 		local total_lines = vim.fn.line("$")
			-- 		local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "  " }
			-- 		local line_ratio = current_line / total_lines
			-- 		local index = math.ceil(line_ratio * #chars)
			-- 		if current_line == 1 then
			-- 			return ""
			-- 		elseif line_ratio == 1 then
			-- 			return ""
			-- 		else
			-- 			return chars[index]
			-- 		end
			-- 	end,
			-- 	padding = 0,
			-- 	color = { fg = colors.nocdBG },
			-- }
			--  ⢾⡷   ⠙⢿⡿⠋⣠⣾⣷⣄  ⢀⣴⣦⡀⠈⠻⠟⠁ ⣶⡆⢰⣶  ⠿⠇⠸⠿  ⠰⠶⠆  ⠰⠶⡷  ⡇⢸  ▏▕

			-- extensions
			-- local minimap_bar = { sections = {}, filetypes = { "minimap" } }

			return {
				options = {
					icons_enabled = true,
					theme = templer,
					always_divide_middle = false,
					globalstatus = true,
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					ignore_focus = {},
					disabled_filetypes = {
						statusline = {
							"alpha",
							"dashboard",
							"help",
							"Outline",
						},
						winbar = {
							"alpha",
							"dapui_scopes",
							"dapui_breakpoints",
							"dapui_stacks",
							"dapui_watches",
							"dap-repl",
							"diff",
							"help",
							"man",
							"neo-tree",
							"toggleterm",
							"Trouble",
						},
					},
				},
				sections = {
					lualine_a = { surroundL, mode, noice },
					lualine_b = { "branch" },
					lualine_c = { diagnostics },
					lualine_x = { diff, "encoding", filetype },
					lualine_y = { spaces, "location", "searchcount" },
					lualine_z = { minimap, surroundR },
				},
				inactive_sections = {
					lualine_a = { surroundL },
					lualine_b = { "filename" },
					lualine_c = {},
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				winbar = { lualine_a = { winbarL, spread, navic } },
				inactive_winbar = { lualine_a = { winbarL } },
				-- tabline = { lualine_a = { spread, tabs, tabclose } },

				extensions = { "nvim-dap-ui", "toggleterm" },
				-- require('lualine').hide({ place = { "tabline" } })
			}
		end,
	},
}
