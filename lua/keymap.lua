-- keymap --
vim.keymap.set('n', '<C-s>', ':source %<CR>', {})   -- 按 ctrl+s 快速刷新配置文件

-- 分屏快捷键
vim.keymap.set('n', "vsp", ":vsp<CR>", {})   -- 水平分屏
vim.keymap.set('n', "sp", ":sp<CR>", {})    -- 垂直分屏
vim.keymap.set('n', "sc", "<C-w>c", {})     -- 关闭当前分屏窗口
vim.keymap.set('n', "so", "<C-w>o", {})     -- 关闭other分屏窗口
-- 快捷键，控制分屏模式切换窗口，按 ctrl+h j k l 切换左下上右窗口
vim.keymap.set('n', "<C-h>", "<C-w>h", {})
vim.keymap.set('n', "<C-j>", "<C-w>j", {})
vim.keymap.set('n', "<C-k>", "<C-w>k", {})
vim.keymap.set('n', "<C-l>", "<C-w>l", {})

-- 比例控制（不常用，因为支持鼠标拖拽）
-- vim.keymap.set("n", "s>", ":vertical resize +20<CR>", {})
-- vim.keymap.set("n", "s<", ":vertical resize -20<CR>", {})
-- vim.keymap.set("n", "s=", "<C-w>=", {})
-- vim.keymap.set("n", "sj", ":resize +10<CR>",{})
-- vim.keymap.set("n", "sk", ":resize -10<CR>",{})
