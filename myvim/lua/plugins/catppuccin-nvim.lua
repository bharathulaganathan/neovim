-- catppuccin nvim ( https://github.com/catppuccin/nvim )
-- modified with GitHub Primer theme ( https://primer.style/primitives/storybook/?path=/story/color-base-scales--all-scales&globals=theme:light-dark-split )

local github_colours = require("plugins.github_theme_palette.github_palette")
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
                frappe = {
                    rosewater = github_colours.palette.light.coral[3], -- base-color-coral-2
                    flamingo = github_colours.palette.light.red[4], -- base-color-red-3
                    pink = github_colours.palette.light.pink[6], -- base-color-pink-5
                    mauve = github_colours.palette.light.purple[7], -- base-color-purple-6
                    red = github_colours.palette.light.red[8], -- base-color-red-7 -- inverted from dark
                    maroon = github_colours.palette.light.red[6], -- base-color-red-5 -- inverted from dark
                    peach = github_colours.palette.light.orange[7], -- base-color-orange-6
                    yellow = github_colours.palette.light.yellow[6], -- base-color-yellow-5
                    green = github_colours.palette.light.green[7], -- base-color-green-6 -- inverted from dark
                    teal = github_colours.palette.light.green[5], -- base-color-green-5 -- inverted from dark
                    sky = github_colours.palette.light.blue[7], -- base-color-blue-6 -- inverted from dark
                    sapphire = github_colours.palette.light.blue[8], -- base-color-blue-7 -- inverted from dark
                    blue = github_colours.palette.light.blue[9], -- base-color-blue-8 -- inverted from dark
                    lavender = github_colours.palette.light.purple[6], -- base-color-purple-5
                    text = github_colours.palette.light.text, -- text
                    subtext1 = github_colours.palette.light.neutral[13], -- base-color-neutral-12
                    subtext0 = github_colours.palette.light.neutral[12], -- base-color-neutral-11
                    overlay2 = github_colours.palette.light.neutral[11], -- base-color-neutral-10
                    overlay1 = github_colours.palette.light.neutral[10], -- base-color-neutral-9
                    overlay0 = github_colours.palette.light.neutral[9], -- base-color-neutral-8
                    surface2 = github_colours.palette.light.neutral[8], -- base-color-neutral-7
                    surface1 = github_colours.palette.light.neutral[7], -- base-color-neutral-6
                    surface0 = github_colours.palette.light.neutral[6], -- base-color-neutral-5
                    base = github_colours.palette.light.neutral[2], -- base-color-neutral-1 -- inverted order
                    mantle = github_colours.palette.light.neutral[3], -- base-color-neutral-2 -- inverted order
                    crust = github_colours.palette.light.neutral[4], -- base-color-neutral-3 -- inverted order
                },
                -- Custom GitHub Dark
                macchiato = {
                    rosewater = github_colours.palette.dark.coral[1], -- base-color-coral-0
                    flamingo = github_colours.palette.dark.red[2], -- base-color-red-1
                    pink = github_colours.palette.dark.pink[3], -- base-color-pink-2
                    mauve = github_colours.palette.dark.purple[4], -- base-color-purple-3
                    red = github_colours.palette.dark.red[4], -- base-color-red-3
                    maroon = github_colours.palette.dark.red[3], -- base-color-red-2
                    peach = github_colours.palette.dark.orange[3], -- base-color-orange-2
                    yellow = github_colours.palette.dark.yellow[3], -- base-color-yellow-2
                    green = github_colours.palette.dark.green[3], -- base-color-green-2
                    teal = github_colours.palette.dark.green[2], -- base-color-green-1
                    sky = github_colours.palette.dark.blue[2], -- base-color-blue-1
                    sapphire = github_colours.palette.dark.blue[3], -- base-color-blue-2
                    blue = github_colours.palette.dark.blue[4], -- base-color-blue-3
                    lavender = github_colours.palette.dark.purple[3], -- base-color-purple-2
                    text = github_colours.palette.dark.text, --text
                    subtext1 = github_colours.palette.dark.neutral[14], -- base-color-neutral-13
                    subtext0 = github_colours.palette.dark.neutral[13], -- base-color-neutral-12
                    overlay2 = github_colours.palette.dark.neutral[11], -- base-color-neutral-10
                    overlay1 = github_colours.palette.dark.neutral[10], -- base-color-neutral-9
                    overlay0 = github_colours.palette.dark.neutral[9], -- base-color-neutral-8
                    surface2 = github_colours.palette.dark.neutral[7], -- base-color-neutral-6
                    surface1 = github_colours.palette.dark.neutral[6], -- base-color-neutral-5
                    surface0 = github_colours.palette.dark.neutral[5], -- base-color-neutral-4
                    base = github_colours.palette.dark.neutral[2], -- base-color-neutral-1
                    mantle = github_colours.palette.dark.neutral[2], -- base-color-neutral-1
                    crust = github_colours.palette.dark.neutral[1], -- base-color-neutral-0
                },
            },
        }
        vim.cmd.colorscheme "catppuccin-macchiato"
    end,
}
