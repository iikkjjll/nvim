

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('n', 'n', 'nzz', {noremap = true, silent = true})
vim.keymap.set('n', 'N', 'Nzz', {noremap = true, silent = true})


vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv", {noremap = true, silent = true})


vim.keymap.set('v', '>', ">gv", {noremap = true, silent = true})
vim.keymap.set('v', '<', "<gv", {noremap = true, silent = true})


vim.keymap.set('n', 'L', 'gt', {noremap = true, silent = true})
vim.keymap.set('n', 'H', 'gT', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>sv', '<C-w>v', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>sh', '<C-w>s', {noremap = true, silent = true})


vim.keymap.set('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})




-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
vim.keymap.set("n", "j", [[v:count > 0 ? "m'" . v:count . "j" : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count > 0 ? "m'" . v:count . "k" : 'gk']], { noremap = true, expr = true })




