-- lualine-底部添加状态横条 --
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options = {
                theme = 'dracula'
            }
        })
    end
}
