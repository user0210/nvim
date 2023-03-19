return {
  {
    "folke/which-key.nvim",
    opts = function()
      -- Modes
      --   normal_mode = "n",
      --   insert_mode = "i",
      --   visual_mode = "v",
      --   visual_block_mode = "x",
      --   term_mode = "t",
      --   command_mode = "c",

      local nopts = {
        mode = "n", -- NORMAL mode
        buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
        silent = true, -- use `silent` when creating keymaps
        noremap = true, -- use `noremap` when creating keymaps
        nowait = true, -- use `nowait` when creating keymaps
      }
      local nmappings = {
        ["<leader>"] = {
          d = { name = "DAP" },
          t = { name = "Terminal" },
          ["e"] = {
            function()
              vim.cmd("UndotreeHide")
              vim.cmd("Neotree toggle show")
            end,
            "Explorer",
          },
          ["U"] = {
            function()
              vim.cmd("Neotree close")
              vim.cmd("UndotreeToggle")
            end,
            "UndoTree",
          },
          l = {
            name = "LSP",
            a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
            d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics" },
            w = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics" },
            f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
            i = { "<cmd>LspInfo<cr>", "Info" },
            I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
            j = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
            k = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
            L = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
            q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
            r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
            s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
            S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
            v = { "<cmd>lua vim.diagnostic.hide()<cr>", "VirtText Off" },
            V = { "<cmd>lua vim.diagnostic.show()<cr>", "VirtText On" },
          },
        },
      }

      local which_key = require("which-key")
      which_key.register(nmappings, nopts)
    end,
  },
}
