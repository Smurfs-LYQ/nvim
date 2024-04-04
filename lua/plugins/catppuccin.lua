-- 主题配色
return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end
}

-- 主题配色相关配置 --
-- require("catppuccin").setup()
-- vim.cmd.colorscheme "tokyonight-storm"
-- 主题配色相关配置 --
