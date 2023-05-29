return {
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require("statuscol.builtin")
      local colors = MiniBase16.config.palette
      vim.api.nvim_set_hl(0, "StatusColSign", { bg = colors.nocdBG, fg = colors.base01a })
      require("statuscol").setup({
        ft_ignore = {
          "neo-tree",
          "alpha",
          "Trouble",
				},
        segments = {
          {
            sign = { name = { ".*" }, maxwidth = 1, colwidth = 1, wrap = true },
            -- sign = { name = { ".*" }, maxwidth = 1, colwidth = 1, fillchar = "▕", fillcharhl = "StatusColSign", auto = true, wrap = true },
            click = "v:lua.ScSa",
          },
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          {
            text = { " ", builtin.lnumfunc, " " },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
          },
        },
      })
    end,
  },
}
