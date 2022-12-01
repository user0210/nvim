local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

base16.with_config ({
    telescope = false,
    indentblankline = true,
    cmp = true,
    illuminate = true,
})

-- MONDO-BEGIN
base16.setup({
	base00 = "#303030",
	base01 = "#3f3f3f",
	base02 = "#4b575a",
	base03 = "#445e67",
	base04 = "#6e776e",
	base05 = "#8d938d",
	base06 = "#a4a493",
	base07 = "#babaa9",
	base08 = "#F4867D",
	base09 = "#EC9853",
	base0A = "#D5A920",
	base0B = "#81A56E",
	base0C = "#5EB9BF",
	base0D = "#6CA3CD",
	base0E = "#A979C8",
	base0F = "#D182A6",
	base08a = "#d4665d",
	base09a = "#cc7833",
	base0Aa = "#b58900",
	base0Ba = "#61854e",
	base0Ca = "#3e999f",
	base0Da = "#4c83ad",
	base0Ea = "#8959a8",
	base0Fa = "#b16286",
	base00a = "#282828",
	base01a = "#373737",
})
-- MONDO-END

require "user.themes.theme-dark"
