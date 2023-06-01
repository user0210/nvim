return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      add_blank_line_at_top = true,
      source_selector = {
        winbar = true,
        padding = { left = 0, right = 0 },
        -- separator = { left = "", right = "" },
        -- separator = "│",
        separator = "▊",
        tabs_layout = "start",
        separator_active = nil,
        show_separator_on_edge = false,
      },
      close_if_last_window = true,
      window = {
        width = 29,
      },
      renderers = {
        directory = {
          { "indent" },
          { "icon" },
          { "current_filter" },
          {
            "container",
            content = {
              { "name", zindex = 10 },
              { "clipboard", zindex = 10 },
              { "git_status", zindex = 20, align = "right", hide_when_expanded = true },
              { "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
            },
          },
        },
        file = {
          { "indent" },
          { "icon" },
          {
            "container",
            content = {
              {
                "name",
                zindex = 10,
              },
              { "clipboard", zindex = 10 },
              { "bufnr", zindex = 10 },
              { "modified", zindex = 20, align = "right" },
              { "git_status", zindex = 20, align = "right" },
              { "diagnostics", zindex = 20, align = "right" },
            },
          },
        },
      },
      event_handlers = {
        {
          event = "neo_tree_window_before_open",
          handler = function()
						local colors = require("tokyonight.colors").setup()
            vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = colors.nocdBG })
            vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = colors.nocdBG })
            vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = colors.cursBG })
          end,
        },
        {
          event = "neo_tree_buffer_enter",
          handler = function()
						local colors = require("tokyonight.colors").setup()
            vim.api.nvim_set_hl(0, "Cursor", { bg = colors.nocdBG, blend = 100 })
						vim.opt.sidescrolloff = 0
          end,
        },
        {
          event = "neo_tree_buffer_leave",
          handler = function()
            vim.api.nvim_set_hl(0, "Cursor", { blend = 0 })
						vim.opt.sidescrolloff = 8
          end,
        },
      },
    },
  },
}
