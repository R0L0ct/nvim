require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

--Lsp Config

require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer" }
})

