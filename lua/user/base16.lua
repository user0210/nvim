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
	base00 = "#2d2d2d",
	base01 = "#393939",
	base02 = "#515151",
	base03 = "#999999",
	base04 = "#b4b7b4",
	base05 = "#cccccc",
	base06 = "#e0e0e0",
	base07 = "#ffffff",
	base08 = "#f2777a",
	base09 = "#f99157",
	base0A = "#ffcc66",
	base0B = "#99cc99",
	base0C = "#66cccc",
	base0D = "#6699cc",
	base0E = "#cc99cc",
	base0F = "#a3685a",
	base08a = "#D2575A",
	base09a = "#D97137",
	base0Aa = "#DFAC46",
	base0Ba = "#79AC79",
	base0Ca = "#46ACAC",
	base0Da = "#4679AC",
	base0Ea = "#AC79AC",
	base0Fa = "#83483A",
	base00a = "#262626",
	base01a = "#333333",
})
-- MONDO-END

require "user.themes.theme-dark"
