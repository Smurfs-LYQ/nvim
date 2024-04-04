--------------- nvim config ---------------
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 显示绝对行号
vim.cmd("set nu")
-- 高亮所在行
vim.wo.cursorline = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 鼠标支持
-- vim.o.mouse = "a"
-- 定义 leader 键
vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4") vim.cmd("set shiftwidth=4")
