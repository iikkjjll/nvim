return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown", -- load the plugin only for markdown files
  config = function()
    -- some configuration for the plugin
    vim.g.mkdp_browser = "wyeb" -- set the browser to wyeb
	vim.fn.system("cd app && yarn install") -- install the dependencies
  end,
  keys = {
	  {"<leader>r", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle preview window in normal mode" },
  },
}
