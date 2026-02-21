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
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
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
