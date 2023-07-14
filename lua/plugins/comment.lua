return {
	"numToStr/Comment.nvim",
	config = function()
		require('Comment').setup({
			extra = {
				above = 'gcO',
				below = 'gco',
				eol = 'gcA',
			},
		})
	end,
}
