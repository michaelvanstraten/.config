local set = vim.opt

set.number = true
set.relativenumber = true

set.scrolloff = 10

set.autowriteall = true

set.clipboard = "unnamedplus"

set.smartcase = true
set.ignorecase = true

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.autoindent = true
set.smartindent = true

set.iskeyword:append("-")

set.mouse:append("a")

set.spell = true
set.spelllang = { "en", "de" }

set.background = "dark"
set.termguicolors = true

set.wrap = false

pcall(vim.cmd.colorscheme, "ayu-dark")
