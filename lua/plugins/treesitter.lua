return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {
                "go",
                "lua",
                "vim",
                "vimdoc",
                "html",
                "javascript",
                "css",
                "csv",
                "python",
                "dockerfile",
                "groovy",
                "json",
                "markdown",
                "terraform",
                "typescript",
                "bash"
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}

