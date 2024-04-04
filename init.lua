-- 引入 lua 目录中的配置 --
require('neovide')
require('keymap')
-- 引入 lua 目录中的配置 --

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

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4") vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "   -- 定义leader键
--------------- nvim config ---------------

--------------- lazy ---------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
--------------- lazy ---------------
