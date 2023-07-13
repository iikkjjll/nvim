require("core.options")
require("core.keymaps")
require("core.autocmd")


require("lazy_init")
require("lazy").setup("plugins")

vim.cmd.colorscheme("base16-tender")
