return {
	{
		"vimwiki/vimwiki",
		init = function()
			vim.g.vimwiki_list = {
				{
					path = "~/notes/",
					syntax = "markdown",
					ext = ".md",
					auto_diary_index = 1,
				},
			}

			vim.g.vimwiki_global_ext = 0
			vim.g.vimwiki_markdown_link_ext = 1
			vim.g.vimwiki_conceallevel = 0
			vim.g.vimwiki_use_calendar = 1
		end,
	},
}
