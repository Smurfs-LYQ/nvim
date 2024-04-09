-- 主题配色 tokyonight
return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.cmd.colorscheme "tokyonight-storm"
        vim.cmd.colorscheme "tokyonight-night"
        -- vim.cmd.colorscheme "tokyonight-moon"
    end
    -- opts = {
    --     theme = 'tokyonight-storm',
    -- }
}
