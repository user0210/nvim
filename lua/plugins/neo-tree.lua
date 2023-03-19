return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- disable the keymap to grep files
    opts = {
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      window = {
        width = 28,
      },
    },
  },
}
