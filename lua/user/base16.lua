local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#282936",
	base01 = "#3a3c4e",
	base02 = "#4d4f68",
	base03 = "#626483",
	base04 = "#62d6e8",
	base05 = "#e9e9f4",
	base06 = "#f1f2f8",
	base07 = "#f7f7fb",
	base08 = "#ea51b2",
	base09 = "#b45bcf",
	base0A = "#00f769",
	base0B = "#ebff87",
	base0C = "#a1efe4",
	base0D = "#62d6e8",
	base0E = "#b45bcf",
	base0F = "#00f769",
	base08a = "#CA3192",
	base09a = "#943BAF",
	base0Aa = "#00D749",
	base0Ba = "#CBDF67",
	base0Ca = "#81CFC4",
	base0Da = "#42B6C8",
	base0Ea = "#943BAF",
	base0Fa = "#00D749",
	base00a = "#22222D",
	base01a = "#313242",
})
-- MONDO-END

require "user.themes.theme-dark"
