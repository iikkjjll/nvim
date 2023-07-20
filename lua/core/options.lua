-- local o = vim.o
-- local g = vim.g

-- disable the default file Explore.
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1


vim.o.number = true
vim.o.relativenumber = false
vim.o.timeoutlen = 1000


-- use plugin replace this option.
vim.o.showmode = false

vim.opt.swapfile = false
vim.opt.backup = false

-- exit file, and into again, you can press 'u' key to undo.
-- vim.opt.undofile = true
-- vim.opt.undodir = vim.fn.expand("$HOME/.local/share/nvim/undo")

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

vim.opt.clipboard = 'unnamedplus'
-- vim.opt.clipboard:append("unnamedplus")

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = false
vim.opt.autoindent = true

vim.opt.exrc = true

vim.opt.cursorline = true

vim.opt.wrap = false

vim.opt.mouse:append("a")

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"


vim.opt.splitright = true
vim.opt.splitbelow = true

-- vim.opt.autochdir = true

vim.opt.completeopt = {"menuone", "noselect"}


