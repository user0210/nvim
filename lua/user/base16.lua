local status_ok, base16 = pcall(require, "base16-colorscheme")
if not status_ok then
	return
end

-- MONDO-BEGIN
base16.setup({
	base00 = "#000d1d",
	base01 = "#24303d",
	base02 = "#49525e",
	base03 = "#6d757e",
	base04 = "#92979e",
	base05 = "#b6babe",
	base06 = "#dbdcdf",
	base07 = "#ffffff",
	base08 = "#ac8056",
	base09 = "#ac844d",
	base0A = "#ad8f52",
	base0B = "#97a978",
	base0C = "#73a47f",
	base0D = "#508f89",
	base0E = "#43848b",
	base0F = "#2b89dc",
	base08a = "#7a5a3c",
	base09a = "#80694c",
	base0Aa = "#786339",
	base0Ba = "#55633f",
	base0Ca = "#3c5d44",
	base0Da = "#345e5b",
	base0Ea = "#39747b",
	base0Fa = "#1667a4",
	base00a = "#000B18",
	base01a = "#121E2D",
})
-- MONDO-END

require "user.themes.theme-dark"
