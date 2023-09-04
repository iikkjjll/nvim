return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
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
	opts = {
		options = {
			always_show_bufferline = false,
			offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					}
				}
		}
	},
}
