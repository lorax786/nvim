return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ansiblels",
                    "azure_pipelines_ls",
                    "cssls",
                    "html",
                    "dockerls",
                    "docker_compose_language_service",
                    "tsserver",
                    "pylsp",
                    "tailwindcss",
                    "templ",
                    "terraformls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsconfig = require("lspconfig")
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true
            lsconfig.lua_ls.setup({})
            lsconfig.ansiblels.setup({})
            lsconfig.azure_pipelines_ls.setup({})
            lsconfig.cssls.setup({})
            lsconfig.html.setup({
                capabilities = capabilities,
            })
            lsconfig.dockerls.setup({})
            lsconfig.tsserver.setup({})
            lsconfig.pylsp.setup({})
            lsconfig.tailwindcss.setup({})
            lsconfig.templ.setup({})
            lsconfig.terraformls.setup({})

            vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
