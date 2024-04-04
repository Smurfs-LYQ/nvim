-- vim.g.rnu = true -- 设置绝对行号
-- vim.g.number = true

-- vim.g.neovide_fullscreen = false -- 默认全屏
-- vim.g.neovide_theme = 'auto'    -- 设置主题

vim.g.neovide_cursor_animate_in_insert_mode = true -- 在插入模式下依旧现实动画

vim.g.neovide_remember_window_size = true   -- 记住当前窗口大小

vim.g.neovide_refresh_rate = 120    -- 设置刷新率

vim.g.neovide_cursor_smooth_blink = false   -- 光标闪烁

vim.g.neovide_cursor_vfx_mode = "railgun"   -- 粒子特效
vim.g.neovide_cursor_vfx_opacity = 500.0    -- 粒子不透明度
vim.g.neovide_cursor_vfx_particle_lifetime = 1.2    -- 粒子寿命
vim.g.neovide_cursor_vfx_particle_density = 10.0     -- 粒子密度
vim.g.neovide_cursor_vfx_particle_speed = 30.0      -- 粒子速度

vim.o.guifont = "Meslo LG M for Powerline:h16"  -- 设置字体和行号

vim.g.neovide_window_blurred = true -- 设置窗口模糊
vim.g.neovide_transparency = 0.8    -- 设置窗口透明度

-- 系统粘贴 start
if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
-- 系统粘贴 end

-- 浮影 start
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
-- 浮影 end
