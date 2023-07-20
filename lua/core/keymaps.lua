

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })



vim.keymap.set('n', '<leader>\\', '<C-w>v', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>-', '<C-w>s', { noremap = true, silent = true })




-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Go to right window" })


-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true, desc = "Increase window width" })


-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { noremap = true, silent = true, desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { noremap = true, silent = true, desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { noremap = true, silent = true, desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { noremap = true, silent = true, desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = "Move up" })

vim.keymap.set('v', '>', ">gv", { noremap = true, silent = true })
vim.keymap.set('v', '<', "<gv", { noremap = true, silent = true })


vim.keymap.set('n', 'L', 'gt', { noremap = true, silent = true })
vim.keymap.set('n', 'H', 'gT', { noremap = true, silent = true })




vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', '<cmd>bdelete<CR>', { noremap = true, silent = true })



vim.keymap.set('n', '<leader>=', ':normal gg=G<CR>', { noremap = true, silent = true })


vim.keymap.set('n', '<leader>;', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>nohlsearch<cr><esc>", { noremap = true, silent = true, desc = "Escape and clear hlsearch" })


vim.keymap.set('i', '<C-v>', '<C-R>+', { noremap = true, silent = true })
-- save file
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { noremap = true, silent = true, desc = "Save file" })
vim.keymap.set('n', 'yie', ':%yank<CR>', { noremap = true, silent = true })




-- new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<CR>", { noremap = true, silent = true, desc = "New File" })







-- ============================================================================================ --

-- nunmap J and nunmap K
-- vim.keymap.set('n', 'J', '3gj', {noremap = true, silent = true})
-- vim.keymap.set('n', 'K', '3gk', {noremap = true, silent = true})


-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- vim.keymap.set("n", "j", [[v:count > 0 ? "m'" . v:count . "j" : 'gj']], { noremap = true, expr = true })
-- vim.keymap.set("n", "k", [[v:count > 0 ? "m'" . v:count . "k" : 'gk']], { noremap = true, expr = true })


-- vim.keymap.set('n', '<leader>x', ':qall<CR>', { noremap = true, silent = true })


-- vim.keymap.set('n', '<C-enter>', 'o<Esc>"9S<Esc>', { noremap = true, silent = true })



-- vim.keymap.set('n', '<leader>L', ':Lazy<CR>', {noremap = true, silent = true})




-- slipt window
-- vim.keymap.set('n', '<leader><leader>l', '<C-w>v', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader><leader>j', '<C-w>s', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader><leader>k', '<C-w>s<C-W>k', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader><leader>h', '<C-w>v<C-W>h', {noremap = true, silent = true})




-- vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
-- vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv", {noremap = true, silent = true})
-- vim.keymap.set('v', 'J', ":t '>+1<CR>gvd=gv", {noremap = true, silent = true})
-- vim.keymap.set('v', 'K', ":t '<-2<CR>gvd=gv", {noremap = true, silent = true})


-- vim.keymap.set('n', '<leader>k', '<C-w>k', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader>j', '<C-w>j', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader>h', '<C-w>h', {noremap = true, silent = true})
-- vim.keymap.set('n', '<leader>l', '<C-w>l', {noremap = true, silent = true})



-- delete the vimwiki default global keybindings.
-- vim.keymap.del("n", "<leader>ww", "<Plug>VimwikiIndex<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>wt", "<Plug>VimwikiTabIndex<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>ws", "<Plug>VimwikiUISelect<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>wi", "<Plug>VimwikiDiaryIndex<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>w<leader>w", "<Plug>VimwikiMakeDiaryNote<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>w<leader>t", "<Plug>VimwikiTabMakeDiaryNote<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>w<leader>y", "<Plug>VimwikiMakeYesterdayDiaryNote<CR>",{ noremap = false, silent = true })
-- vim.keymap.del("n", "<leader>w<leader>m", "<Plug>VimwikiMakeTomorrowDiaryNote<CR>",{ noremap = false, silent = true })
--

