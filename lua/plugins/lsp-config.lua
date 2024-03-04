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
                ensure_installed = { "lua_ls", "html" }
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
            lsconfig.html.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}