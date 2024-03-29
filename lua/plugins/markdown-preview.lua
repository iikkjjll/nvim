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
-- set keymaps for markdown filetype
    vim.keymap.set('n', '<leader>r', "<cmd>MarkdownPreviewToggle<cr>", {noremap = true, silent = true})
    vim.keymap.set('i', ',,', "<++>", {noremap = true, silent = true})
    vim.keymap.set('i', ',f', "<Esc>/<++><CR>:nohlsearch<CR>\"ac4l", {noremap = true, silent = true})
    vim.keymap.set('n', ',f', "<Esc>/<++><CR>:nohlsearch<CR>\"ac4l", {noremap = true, silent = true})
    vim.keymap.set('i', ',i', "**<++><Esc>F*i", {noremap = true, silent = true})
    vim.keymap.set('i', ',b', "****<++><Esc>F*hi", {noremap = true, silent = true})
    vim.keymap.set('i', ',n', "---<CR>", {noremap = true, silent = true})
    vim.keymap.set('i', ',s', "~~~~<++><Esc>F~hi", {noremap = true, silent = true})
    vim.keymap.set('i', ',u', "<u></u><++><Esc>F/hi", {noremap = true, silent = true})
    vim.keymap.set('i', ',a', "[](<++>) <++><Esc>F[a", {noremap = true, silent = true})
    vim.keymap.set('i', ',p', "![](<++>) <Enter><++><Esc>kF[a", {noremap = true, silent = true})
    vim.keymap.set('i', ',g', "- [ ] <Enter><++><ESC>kA", {noremap = true, silent = true})
	-- vim.keymap.set('n', ',x', "/\%.l<CR>/[<CR>:nohlsearch<CR>lrX", {noremap = true, silent = true})
    vim.keymap.set('i', ',d', "``<++><Esc>F`i", {noremap = true, silent = true})
    vim.keymap.set('i', ',c', "```<CR><++><CR>```<CR><++><Esc>kkkA", {noremap = true, silent = true})
    vim.keymap.set('i', ',1', "#<Space>", {noremap = true, silent = true})
    vim.keymap.set('i', ',2', "##<Space>", {noremap = true, silent = true})
    vim.keymap.set('i', ',3', "###<Space>", {noremap = true, silent = true})
    vim.keymap.set('i', ',4', "####<Space>", {noremap = true, silent = true})
    vim.keymap.set('i', ',5', "#####<Space>", {noremap = true, silent = true})
    vim.keymap.set('i', ',6', "######<Space>", {noremap = true, silent = true})
    vim.keymap.set('n', ',1', "0dt<Space><Esc>i#<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',2', "0dt<Space><Esc>i##<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',3', "0dt<Space><Esc>i###<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',4', "0dt<Space><Esc>i####<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',5', "0dt<Space><Esc>i#####<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',6', "0dt<Space><Esc>i######<Esc>", {noremap = true, silent = true})
    vim.keymap.set('n', ',t', "<C-R>=strftime('%Y-%m-%d %H:%M:%S')<CR>", {noremap = true, silent = true})
  end,
  -- keys = {
	 --  {"<leader>r", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle preview window in normal mode", mode = "n" },
	 --  {",,", "<++>", desc = "default tamplate", mode = "i" },
	 --  {",f", "<Esc>/<++><CR>:nohlsearch<CR>c4l", desc = "find next in insert mode", mode = "i" },
	 --  {",f", "<Esc>/<++><CR>:nohlsearch<CR>c4l", desc = "find next in normal mode", mode = "n" },
	 --  {",i", "** <++><Esc>F*i", desc = "italic font", mode = "i" },
	 --  {",b", "**** <++><Esc>F*hi", desc = "bold font", mode = "i" },
	 --  {",n", "---<CR>", desc = "draw a line", mode = "i" },
	 --  {",s", "~~~~ <++><Esc>F~hi", desc = "delete line on font", mode = "i" },
	 --  {",d", "``<++><Esc>F`i", desc = "inline code", mode = "i" },
	 --  {",c", "```<CR><++><CR>```<CR><++><Esc>kkkA", desc = "block code", mode = "i" },
  -- },
}
