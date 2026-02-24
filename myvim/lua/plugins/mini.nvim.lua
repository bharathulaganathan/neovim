-- mini.nvim ( https://github.com/nvim-mini/mini.nvim )

return {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
        require('mini.ai').setup()
        require('mini.bracketed').setup()
        require('mini.cmdline').setup()
        require('mini.comment').setup()
        require('mini.cursorword').setup()
        require('mini.diff').setup()
        require('mini.files').setup()
        require('mini.icons').setup()
        require('mini.indentscope').setup()
        require('mini.jump').setup()
        require('mini.map').setup()
        require('mini.move').setup()
        require('mini.operators').setup()
        require('mini.pairs').setup()
        require('mini.sessions').setup()
        require('mini.snippets').setup()
        require('mini.splitjoin').setup()
        require('mini.starter').setup()
        require('mini.surround').setup()
        require('mini.tabline').setup()
        require('mini.trailspace').setup()
        require('mini.visits').setup()
    end,
}
