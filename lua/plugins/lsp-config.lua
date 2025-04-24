return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "omnisharp", "pylsp", "csharp_ls", "emmet_ls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })
            lspconfig.omnisharp.setup({
                capabilities = capabilities
            })
            lspconfig.pylsp.setup({
                capabilities = capabilities
            })
            lspconfig.csharp_ls.setup({
                capabilities = capabilities
            })
            lspconfig.emmet_ls.setup({
                capabilities = capabilities
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        end,
    },
}
