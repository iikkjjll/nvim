vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = { -- use dependencies instead of requires
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{"<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
	}
}
