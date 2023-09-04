-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	cmd = "Neotree",
	dependencies = { -- use dependencies instead of requires
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{"<leader>e", "<cmd>Neotree toggle<cr>", desc = "NeoTree"},
		-- using <leader>h to focus NeoTree window.
		-- {"<leader><leader>e", "<cmd>Neotree focus<cr>", desc = "Focus NeoTree"},
	},
	opt = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			}
		}
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "left",
				-- 调整文件目录的初始宽度
				width = 30,
			}
		})
	end,
}
