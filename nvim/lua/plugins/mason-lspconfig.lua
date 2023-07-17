require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "pyright" },
    automatic_installation = false,
    handlers = nil
}
