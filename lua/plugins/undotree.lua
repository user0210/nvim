return {
	{
		"mbbill/undotree",
		cmd = { "UndotreeToggle", "UndotreeHide" },
		config = function()
			vim.g.undotree_WindowLayout = 2

			-- e.g. using 'd' instead of 'days' to save some space.
			vim.g.undotree_ShortIndicators = 1

			-- undotree window width
			if vim.g.undotree_ShortIndicators == 1 then
				vim.g.undotree_SplitWidth = 28
			elseif vim.g.undotree_ShortIndicators == 3 then
				vim.g.undotree_SplitWidth = 28
			else
				vim.g.undotree_SplitWidth = 30
			end

			-- diff window height
			vim.g.undotree_DiffpanelHeight = 6

			-- auto open diff window
			vim.g.undotree_DiffAutoOpen = 0

			-- if set, let undotree window get focus after being opened, otherwise
			-- focus will stay in current window.
			vim.g.undotree_SetFocusWhenToggle = 0

			-- tree node shape.
			vim.g.undotree_TreeNodeShape = "*"

			-- tree vertical shape.
			vim.g.undotree_TreeVertShape = "|"

			-- tree split shape.
			vim.g.undotree_TreeSplitShape = "/"

			-- tree return shape.
			-- vim.g.undotree_TreeReturnShape = '\\'

			vim.g.undotree_DiffCommand = "diff"

			-- relative timestamp
			vim.g.undotree_RelativeTimestamp = 1

			-- Highlight changed text
			vim.g.undotree_HighlightChangedText = 1

			-- Highlight changed text using signs in the gutter
			vim.g.undotree_HighlightChangedWithSign = 0

			-- Show help line
			vim.g.undotree_HelpLine = 0

			-- Show cursorline
			vim.g.undotree_CursorLine = 1

			-- Highlight linked syntax type.
			-- You may chose your favorite through ":hi" command

			vim.g.undotree_HighlightSyntaxAdd = "DiffAdd"
			vim.g.undotree_HighlightSyntaxChange = "DiffChange"
			vim.g.undotree_HighlightSyntaxDel = "DiffDelete"
		end,
	},
}
