-- Typescript's tsserver predates LSP protocol. This is a translation layer.
return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
}
