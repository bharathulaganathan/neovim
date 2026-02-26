-- mason-lspconfig.nvim ( https://github.com/mason-org/mason-lspconfig.nvim )

-- Requirements
    -- Neovim
    -- Plugins
        -- mason.nvim
        -- nvim-lspconfig

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
        automatic_installation = true,
    },  dependencies = {
        "neovim/nvim-lspconfig",
        { "mason-org/mason.nvim", opts = {} },
    },
}
