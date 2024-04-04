-- 插件中心
return {
    -- 通过文件名，快速查找当前目录下的文件
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- 语法高亮 --
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    -- 文件树 --
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    }
}
