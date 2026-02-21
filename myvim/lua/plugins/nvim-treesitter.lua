-- nvim-treesitter (https://github.com/nvim-treesitter/nvim-treesitter)

-- Requirements
    -- Neovim
    -- tar
    -- curl
    -- tree-sitter-cli (https://github.com/tree-sitter/tree-sitter/tree/master/crates/cli)
    -- C compiler

local languages = {'bash', 'c', 'csv', 'gitignore', 'html', 'javascript', 'jinja', 'jinja_inline', 'json', 'lua', 'markdown', 'markdown_inline', 'powershell', 'python', 'r', 'rust', 'sql', 'toml', 'tsv', 'vim', 'zsh'}

return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',

    config = function()

        -- Languages (https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md)
        require'nvim-treesitter'.install(languages)

        -- Highlighting
        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function()
                vim.treesitter.start()
            end,
        })

        -- Folds
        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function()
                vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                vim.wo[0][0].foldmethod = 'expr'
            end,
        })
        
        -- Indentation 
        vim.api.nvim_create_autocmd('FileType', {
            pattern = languages,
            callback = function()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })

    end,
}
