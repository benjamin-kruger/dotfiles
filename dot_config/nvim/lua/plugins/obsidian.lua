return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = false,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local obsidian = require("obsidian")
		obsidian.setup({
			workspaces = {
				{
					name = "Notes",
					path = "~/Documents/Obsidian/Notes",
				},
			},
			notes_subdir = "Inbox",
			new_notes_location = "notes_subdir",

			disable_frontmatter = true,
			templates = {
				subdir = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},
			mappings = {
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
			},
		})
		vim.cmd("autocmd FileType markdown setlocal conceallevel=1")
	end,
}
