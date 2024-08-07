local function get_default_branch_name()
	local res = vim.system({ "git", "rev-parse", "--verify", "main" }, { capture_output = true }):wait()
	return res.code == 0 and "main" or "master"
end

return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{
			"<leader>do",
			"<cmd>DiffviewOpen<cr>",
			desc = "Compare local changes",
		},
		{
			"<leader>dm",
			function()
				vim.cmd("DiffviewOpen origin/" .. "main" .. "...")
			end,
			desc = "Compare local branch with main",
		},
		{
			"<leader>dc",
			"<cmd>DiffviewClose<cr>",
			desc = "Close diff view",
		},
		{ "<leader>dr", "<cmd>DiffviewFileHistory<cr>", desc = "Repo history" },
		{ "<leader>df", "<cmd>DiffviewFileHistory --follow %<cr>", desc = "File history" },
	},
}
