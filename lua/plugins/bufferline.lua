return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup{}
		vim.api.nvim_set_keymap("n", "H", "<cmd>BufferLineCyclePrev<cr>", {noremap = true, silent = true})
		vim.api.nvim_set_keymap("n", "L", "<cmd>BufferLineCycleNext<cr>", {noremap = true, silent = true})
	end,
}
