return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      char = "▏",
      -- char = "│",
      filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
    },
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = true },
    },
  },
}
