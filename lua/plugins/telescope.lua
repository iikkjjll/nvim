return {
	"nvim-telescope/telescope.nvim",
	tag = '0.1.2',
	cmd = "Telescope",
	dependencies = {
		{
			'nvim-lua/plenary.nvim'
		},
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make'
		}
	},
	keys = {
		{ "<leader><leader>", "<cmd>Telescope find_files<Cr>", desc = "find files" },
		{ "<leader>fh", "<cmd>Telescope help_tags<Cr>", desc = "find help" },
		{ "<leader>fg", "<cmd>Telescope live_grep<Cr>", desc = "find content" },
		{ "<leader>fb", "<cmd>Telescope buffers<Cr>", desc = "find buffers" },
	},
	config = function()

		-- You dont need to set any of these options. These are the default ones. Only
		-- the loading is important
		require('telescope').setup {
			extensions = {
				fzf = {
					fuzzy = true,                    -- false will only do exact matching
					override_generic_sorter = true,  -- override the generic sorter
					override_file_sorter = true,     -- override the file sorter
					case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				}
			}
		}
		-- To get fzf loaded and working with telescope, you need to call
		-- load_extension, somewhere after setup function:
		require('telescope').load_extension('fzf')
	end,
}
