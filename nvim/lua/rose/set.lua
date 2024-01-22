vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.ts = 4
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.showmatch = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.isfname:append("@-@")

-- reload file when external changes
vim.opt.autoread = true

vim.opt.updatetime = 50

vim.opt.clipboard = "unnamed" -- allow yy, etc. to interact with OS X clipboard

vim.g.mapleader = " "

-- File explorer window size
vim.g.netrw_winsize = 20
