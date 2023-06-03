return {
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        ft_ignore = {
          "neo-tree",
          "alpha",
          "Trouble",
          "minimap",
          "toggleterm",
          "help",
          "man",
          "undotree",
          "diff",
          "diffpanel",
          "mason",
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
