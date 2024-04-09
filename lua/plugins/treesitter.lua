-- 语法高亮 --
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "vim", "vimdoc", "javascript", "html", "go", "python", "bash"}, -- 添加需要支持高亮的语言
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
