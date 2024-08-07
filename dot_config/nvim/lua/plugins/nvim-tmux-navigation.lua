return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		require("nvim-tmux-navigation").setup({})
		vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
		vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
		vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
		vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})
    vim.keymap.set("n", "<C-1>", "<Cmd>NvimTmuxNavigatePane1<CR>", {})
    vim.keymap.set("n", "<C-2>", "<Cmd>NvimTmuxNavigatePane2<CR>", {})
    vim.keymap.set("n", "<C-3>", "<Cmd>NvimTmuxNavigatePane3<CR>", {})
	end,
}
