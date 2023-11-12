vim.opt.mousemoveevent = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.winblend = 6
vim.opt.pumblend = 10
vim.opt.showtabline = 2
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.scrolloff = 4
vim.opt.spelllang = "en_us,de_de"
vim.opt.swapfile = false
vim.opt.title = true
vim.opt.titlestring = "Vim  %t"
vim.opt.linebreak = true
vim.g.autoformat = false

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("tab: ⋅ ")
vim.opt.listchars:append("eol:↴")

vim.opt.fillchars:append("eob: ")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
vim.opt.fillchars:append("diff:")
vim.opt.fillchars:append("vert     :▊")
vim.opt.fillchars:append("horiz	   :▇")
vim.opt.fillchars:append("horizup  :▇")
vim.opt.fillchars:append("horizdown:█")
vim.opt.fillchars:append("vertleft :▊")
vim.opt.fillchars:append("vertright:▊")
vim.opt.fillchars:append("verthoriz:▊")

vim.opt.clipboard = ""
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = { "clip.exe" },
    ["*"] = { "clip.exe" },
  },
  paste = {
    ["+"] = { 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))' },
    ["*"] = { 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))' },
  },
  cache_enabled = true,
}
