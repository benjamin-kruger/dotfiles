-- Tab length
vim.opt.expandtab = true
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Line Numbering
vim.opt.number = false
vim.opt.relativenumber = true

-- Sync Clipboard between OS and nvim
vim.opt.clipboard = "unnamedplus"

-- Highlighting for searches, clearing with esc
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Disable arrow keys
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")

-- Spell check
vim.opt.spell = true

-- Half page centers
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- Switch between files
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true
