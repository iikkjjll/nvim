-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- }

return { 
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		vim.g.gruvbox_underline = 0
	end,
}
