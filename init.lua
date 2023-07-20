vim.loader.enable()
require("core.options")
require("core.keymaps")
require("core.autocmd")
require("core.fcitx")
-- require("core.debug").vim_structure()


require("lazy_init")
require("lazy").setup("plugins")

-- 加载 colorscheme 目录下的插件配置文件
-- require("lazy").load("plugins/colorscheme")
-- require("lazy").load("plugins/markdown")

vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")


