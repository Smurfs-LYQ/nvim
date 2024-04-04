-- 引入 lua 目录中的配置 --
require('neovide')
-- 引入 lua 目录中的配置 --

--------------- nvim config ---------------
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 使用相对行号
-- vim.wo.number = true
-- vim.wo.relativenumber = true
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
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
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

-- 插件中心
local plugins = {
    -- 主题配色
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    -- 通过文件名，快速查找当前目录下的文件
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- 语法高亮 --
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

require("lazy").setup(plugins, opts)
--------------- lazy ---------------

-- 主题配色相关配置 --
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "tokyonight-storm"
-- 主题配色相关配置 --

-- telescope config --
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})     -- 按空格键开启
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   -- 按leader键+ff开启
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})    -- 按leader键+fg开启
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})      -- 按leader键+fb开启
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})    -- 按leader键+fh开启
-- telescope config --

-- treesitter config --
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "vim", "vimdoc", "javascript", "html", "go", "python"}, -- 添加需要支持高亮的语言
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
-- treesitter config --
