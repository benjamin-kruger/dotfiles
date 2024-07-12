local M = {
	"neanias/everforest-nvim",
	lazy = false,
	priority = 1000,
}

function M.config()
	local everforest = require("everforest")
	everforest.setup({
		background = "hard",
		transparent_background_level = 0,
		italics = true,
		disable_italic_comments = false,
	})
	everforest.load()
end
return M
