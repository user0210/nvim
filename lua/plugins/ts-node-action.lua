return {
  {
    "ckolkey/ts-node-action",
    dependencies = { "nvim-treesitter" },
	keys = {
		{ "<leader>j", "<cmd>lua require'ts-node-action'.node_action()<cr>", desc = "Trigger Node Action", },
	},
    opts = {},
  },
}
