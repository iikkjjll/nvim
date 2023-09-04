-- 复制内容后，高亮一下复制的内容范围，方便观察
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})

-- 高亮Tab键，缩进，空格
-- vim.highlight.create("DisplayTabAndSpace",{ctermbg = "red"}, false)
-- vim.api.nvim_set_hl(0, "DisplayTabAndSpace", { bg = "red" })
-- vim.api.nvim_create_autocmd({ "InsertEnter", "CursorMovedI" }, {
--   pattern = { "*" },
--   -- command = "match DisplayTabAndSpace  '/\%.l\%#\@<!\s\+$/'",
--   callback = function()
--      vim.cmd[[":match DisplayTabAndSpace /\%.l\%#\@<!\s\+$/"]]
--   end,
-- })
-- vim.api.nvim_create_autocmd({"InsertLeave"}, {
--   pattern = { "*" },
--   callback = function()
--     vim.fn.clearmatches()
--   end,
-- })

vim.api.nvim_create_autocmd({"BufRead"}, {
	pattern = "*.md",
	callback = function()
		vim.cmd[[syn match markdownError "\w\@<=\w\@="]]
	end,
})








