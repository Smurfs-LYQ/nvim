-- 通过文件名，快速查找当前目录下的文件
-- 注意：需要安装ripgrep, 'brew install ripgrep'
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        -- telescope config --
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})        -- 按空格键开启
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})   -- 按leader键+ff开启
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})    -- 按leader键+fg开启
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})      -- 按leader键+fb开启
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})    -- 按leader键+fh开启
        -- telescope config --
    end
}
