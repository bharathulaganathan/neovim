vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 300
vim.opt.timeoutlen = 1000

vim.opt.clipboard = "unnamedplus"

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.mouse = "a"
vim.opt.completeopt = "menuone,noselect"
vim.opt.iskeyword:append("-")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove("o")
    vim.opt.formatoptions:remove("r")
    vim.opt.formatoptions:remove("c")
  end,
})
