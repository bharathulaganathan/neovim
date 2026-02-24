-- which-key.nvim ( https://github.com/folke/which-key.nvim )

-- Requirements
    -- Neovim
    -- Plugins
        -- mini.icons (optional) ( https://github.com/nvim-mini/mini.icons )
        -- nvim-web-devicons (optional) ( https://github.com/nvim-tree/nvim-web-devicons )
    -- Nerd Font (optional)

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "helix",
        spec = {
            { "<leader>w", proxy = "<c-w>", group = "windows" },
        }
    },
    keys = {
        {
            "<leader>?",
            function()
              require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    dependencies = {
        -- optional
        { 'nvim-mini/mini.icons', version = false },
        { "nvim-tree/nvim-web-devicons", opts = {} }
    }

}
