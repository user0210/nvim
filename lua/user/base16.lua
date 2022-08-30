local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#171525",
	base01 = "#383644",
	base02 = "#595863",
	base03 = "#7a7982",
	base04 = "#9c9ba2",
	base05 = "#bdbcc1",
	base06 = "#dedee0",
	base07 = "#ffffff",
	base08 = "#fa5d9e",
	base09 = "#d38e98",
	base0A = "#b6c1df",
	base0B = "#dd6fc3",
	base0C = "#dd61be",
	base0D = "#de9dc6",
	base0E = "#e05fa8",
	base0F = "#c56189",
	base08a = "#d0075a",
	base09a = "#a23f4e",
	base0Aa = "#5e74b8",
	base0Ba = "#a52788",
	base0Ca = "#9c227e",
	base0Da = "#bd3f8f",
	base0Ea = "#a01f68",
	base0Fa = "#7a2d4b",
	base00a = "#13111F",
	base01a = "#272534",
})
-- MONDO-END

require "user.themes.theme-dark"
