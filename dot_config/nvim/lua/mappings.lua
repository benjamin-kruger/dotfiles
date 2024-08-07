-- Leader Keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Escape highlights from search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Disable arrow keys
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")

-- Half page centers
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- Switch between files
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- Obsidian binds
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")

-- Copilot Disable
vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>")
vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>")
