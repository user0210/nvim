local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#101010",
	base01 = "#31302b",
	base02 = "#535146",
	base03 = "#747161",
	base04 = "#96927b",
	base05 = "#b7b296",
	base06 = "#d9d3b1",
	base07 = "#faf3cc",
	base08 = "#dd7e86",
	base09 = "#baaa74",
	base0A = "#8499cc",
	base0B = "#9caad5",
	base0C = "#a9a9ca",
	base0D = "#9670c8",
	base0E = "#d1b1d7",
	base0F = "#c380a8",
	base08a = "#ad2e39",
	base09a = "#75673a",
	base0Aa = "#3d5793",
	base0Ba = "#485faa",
	base0Ca = "#5d5d96",
	base0Da = "#573385",
	base0Ea = "#9f5cac",
	base0Fa = "#853f69",
	base00a = "#0D0D0D",
	base01a = "#20201D",
})
-- MONDO-END

-- require "themes.theme-dark"
