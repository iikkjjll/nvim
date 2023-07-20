return {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	cmd = "Telescope",
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{"<leader><leader>", "<cmd>Telescope find_files<Cr>", desc = "find files"},
		{"<leader>fh", "<cmd>Telescope help_tags<Cr>", desc = "find help"},
		{"<leader>fg", "<cmd>Telescope live_grep<Cr>", desc = "find content"},
		{"<leader>fb", "<cmd>Telescope live_grep<Cr>", desc = "find buffers"},
	}
}
