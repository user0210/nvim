local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
--	[[                               __                ]],
--	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
	[[                                        68b                 ]],
	[[                                        Y89                 ]],
	[[___  __     ____     _____  ____    ___ ___ ___  __    __   ]],
	[[`MM 6MMb   6MMMMb   6MMMMMb `MM(    )M' `MM `MM 6MMb  6MMb  ]],
	[[ MMM9 `Mb 6M'  `Mb 6M'   `Mb `Mb    d'   MM  MM69 `MM69 `Mb ]],
	[[ MM'   MM MM    MM MM     MM  YM.  ,P    MM  MM'   MM'   MM ]],
	[[ MM    MM MMMMMMMM MM     MM   MM  M     MM  MM    MM    MM ]],
	[[ MM    MM MM       MM     MM   `Mbd'     MM  MM    MM    MM ]],
	[[ MM    MM YM    d9 YM.   ,M9    YMP      MM  MM    MM    MM ]],
	[[_MM_  _MM_ YMMMM9   YMMMMM9      M      _MM__MM_  _MM_  _MM_]],
	[[                                                            ]],
	[[                                                            ]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"",
	"--  neovim.io  --",
	"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
