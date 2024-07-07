return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "canary",
	dependancies = {
		{ "zbirenbaum/copilot.lua" },
		{ "nvim-lua/plenary.nvim" },
	},
	opts = {
		auto_insert_mode = true,
		window = {
			layout = "float",
			width = 0.8,
			height = 0.8,
		},
	},
	keys = {
		{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Open Copilot chat" },
	},
}
