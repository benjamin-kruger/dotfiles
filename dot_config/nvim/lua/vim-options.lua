-- Tab length
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Global Leader
vim.g.mapleader = " "

-- Line Numbering
vim.opt.number = false
vim.opt.relativenumber = true

-- Sync Clipboard between OS and nvim
vim.opt.clipboard = "unnamedplus"

-- Highlighting for searches, clearing with esc
vim.opt.hlsearch = true

-- Spell check
vim.opt.spell = true

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true
