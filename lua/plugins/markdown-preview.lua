return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  config = function()
	vim.fn.system("cd app && yarn install")
	-- wyeb have a bug: delete line display error. So don't use that browser.
    vim.g.mkdp_browser = "surf"
	vim.g.mkdp_preview_option = {
		mkit = {},
        katex = {},
        uml = {},
        maid = {},
        disable_sync_scroll = 0,
        sync_scroll_type = "middle",
        hide_yaml_meta = 1,
        sequence_diagrams = {},
        flowchart_diagrams = {},
        content_editable = false,
        disable_filename = 1,
        toc = {}
	}
  end,
  keys = {
	  {"<leader>r", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle preview window in normal mode", mode = "n" },
	  {",,", "<++>", desc = "default tamplate", mode = "i" },
	  {",f", "<Esc>/<++><CR>:nohlsearch<CR>c4l", desc = "find next in insert mode", mode = "i" },
	  {",f", "<Esc>/<++><CR>:nohlsearch<CR>c4l", desc = "find next in normal mode", mode = "n" },
	  {",i", "** <++><Esc>F*i", desc = "italic font", mode = "i" },
	  {",b", "**** <++><Esc>F*hi", desc = "bold font", mode = "i" },
	  {",n", "---<CR>", desc = "draw a line", mode = "i" },
	  {",s", "~~~~ <++><Esc>F~hi", desc = "delete line on font", mode = "i" },
	  {",d", "``<++><Esc>F`i", desc = "inline code", mode = "i" },
	  {",c", "```<CR><++><CR>```<CR><++><Esc>kkkA", desc = "block code", mode = "i" },
  },
}
