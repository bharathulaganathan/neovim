-- catppuccin nvim ( https://github.com/catppuccin/nvim )
-- modified with GitHub Primer theme ( https://primer.style/primitives/storybook/?path=/story/color-base-scales--all-scales&globals=theme:light-dark-split )

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup {
            auto_integrations = true,
            custom_highlights = function(colors)
                return {
                    Comment = { fg = colors.overlay0},
                    LineNr = { fg = colors.overlay0},
                }
            end,
            color_overrides = {
                -- Custom GitHub Light
                latte  = {
                    rosewater = "#ffb4a1", -- base-color-coral-2
                    flamingo = "#ff8182", -- base-color-red-3
                    pink = "#bf3989", -- base-color-pink-5
                    mauve = "#6639ba", -- base-color-purple-6
                    red = "#82071e", -- base-color-red-7 -- inverted from dark
                    maroon = "#cf222e", -- base-color-red-5 -- inverted from dark
                    peach = "#953800", -- base-color-orange-6
                    yellow = "#9a6700", -- base-color-yellow-5
                    green = "#116329", -- base-color-green-6 -- inverted from dark
                    teal = "#1a7f37", -- base-color-green-5 -- inverted from dark
                    sky = "#0550ae", -- base-color-blue-6 -- inverted from dark
                    sapphire = "#033d8b", -- base-color-blue-7 -- inverted from dark
                    blue = "#0a3069", -- base-color-blue-8 -- inverted from dark
                    lavender = "#8250df", -- base-color-purple-5
                    text = "#1f2328", -- base-color-neutral-13
                    subtext1 = "#25292e", -- base-color-neutral-12
                    subtext0 = "#393f46", -- base-color-neutral-11
                    overlay2 = "#454c54", -- base-color-neutral-10
                    overlay1 = "#59636e", -- base-color-neutral-9
                    overlay0 = "#818b98", -- base-color-neutral-8
                    surface2 = "#c8d1da", -- base-color-neutral-7
                    surface1 = "#d1d9e0", -- base-color-neutral-6
                    surface0 = "#dae0e7", -- base-color-neutral-5
                    base = "#f6f8fa", -- base-color-neutral-1 -- inverted order
                    mantle = "#eff2f5", -- base-color-neutral-2 -- inverted order
                    crust = "#e6eaef", -- base-color-neutral-3 -- inverted order
                },
                -- Custom GitHub Dark Dimmer
                frappe = {
                    rosewater = "#ffddd2", -- base-color-coral-0
                    flamingo = "#ffc1ba", -- base-color-red-1
                    pink = "#ff9bce", -- base-color-pink-2
                    mauve = "#be8fff", -- base-color-purple-3
                    red = "#ff7b72", -- base-color-red-3
                    maroon = "#ffa198", -- base-color-red-2
                    peach = "#ffa657", -- base-color-orange-2
                    yellow = "#e3b341", -- base-color-yellow-2
                    green = "#56d364", -- base-color-green-2
                    teal = "#7ee787", -- base-color-green-1
                    sky = "#a5d6ff", -- base-color-blue-1
                    sapphire = "#79c0ff", -- base-color-blue-2
                    blue = "#58a6ff", -- base-color-blue-3
                    lavender = "#d2a8ff", -- base-color-purple-2
                    text = "#e6edf3",
                    subtext1 = "#ffffff", -- base-color-neutral-13
                    subtext0 = "#f0f6fc", -- base-color-neutral-12
                    overlay2 = "#b7bdc8", -- base-color-neutral-10
                    overlay1 = "#9198a1", -- base-color-neutral-9
                    overlay0 = "#656c76", -- base-color-neutral-8
                    surface2 = "#2f3742", -- base-color-neutral-6
                    surface1 = "#2a313c", -- base-color-neutral-5
                    surface0 = "#262c36", -- base-color-neutral-4
                    base = "#151b23", -- base-color-neutral-2
                    mantle = "#0d1117", -- base-color-neutral-1
                    crust = "#010409", -- base-color-neutral-0
                },
                -- Custom GitHub Dark
                macchiato = {
                    rosewater = "#ffddd2", -- base-color-coral-0
                    flamingo = "#ffc1ba", -- base-color-red-1
                    pink = "#ff9bce", -- base-color-pink-2
                    mauve = "#be8fff", -- base-color-purple-3
                    red = "#ff7b72", -- base-color-red-3
                    maroon = "#ffa198", -- base-color-red-2
                    peach = "#ffa657", -- base-color-orange-2
                    yellow = "#e3b341", -- base-color-yellow-2
                    green = "#56d364", -- base-color-green-2
                    teal = "#7ee787", -- base-color-green-1
                    sky = "#a5d6ff", -- base-color-blue-1
                    sapphire = "#79c0ff", -- base-color-blue-2
                    blue = "#58a6ff", -- base-color-blue-3
                    lavender = "#d2a8ff", -- base-color-purple-2
                    text = "#e6edf3",
                    subtext1 = "#ffffff", -- base-color-neutral-13
                    subtext0 = "#f0f6fc", -- base-color-neutral-12
                    overlay2 = "#b7bdc8", -- base-color-neutral-10
                    overlay1 = "#9198a1", -- base-color-neutral-9
                    overlay0 = "#656c76", -- base-color-neutral-8
                    surface2 = "#2f3742", -- base-color-neutral-6
                    surface1 = "#2a313c", -- base-color-neutral-5
                    surface0 = "#262c36", -- base-color-neutral-4
                    base = "#0d1117", -- base-color-neutral-1
                    mantle = "#0d1117", -- base-color-neutral-1
                    crust = "#010409", -- base-color-neutral-0
                },
                -- Custom GitHub Dark High Contrast
                mocha = {
                    rosewater = "#ffddd2", -- base-color-coral-0
                    flamingo = "#ffc1ba", -- base-color-red-1
                    pink = "#ff9bce", -- base-color-pink-2
                    mauve = "#be8fff", -- base-color-purple-3
                    red = "#ff7b72", -- base-color-red-3
                    maroon = "#ffa198", -- base-color-red-2
                    peach = "#ffa657", -- base-color-orange-2
                    yellow = "#e3b341", -- base-color-yellow-2
                    green = "#56d364", -- base-color-green-2
                    teal = "#7ee787", -- base-color-green-1
                    sky = "#a5d6ff", -- base-color-blue-1
                    sapphire = "#79c0ff", -- base-color-blue-2
                    blue = "#58a6ff", -- base-color-blue-3
                    lavender = "#d2a8ff", -- base-color-purple-2
                    text = "#e6edf3",
                    subtext1 = "#ffffff", -- base-color-neutral-13
                    subtext0 = "#f0f6fc", -- base-color-neutral-12
                    overlay2 = "#b7bdc8", -- base-color-neutral-10
                    overlay1 = "#9198a1", -- base-color-neutral-9
                    overlay0 = "#656c76", -- base-color-neutral-8
                    surface2 = "#2f3742", -- base-color-neutral-6
                    surface1 = "#2a313c", -- base-color-neutral-5
                    surface0 = "#262c36", -- base-color-neutral-4
                    base = "#010409", -- base-color-neutral-0
                    mantle = "#151b23", -- base-color-neutral-2
                    crust = "#000000", -- black
                },
            },
        }
        vim.cmd.colorscheme "catppuccin-macchiato"
    end,
}
