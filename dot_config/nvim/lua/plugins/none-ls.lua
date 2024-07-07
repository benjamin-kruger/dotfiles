return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.zprint,
				null_ls.builtins.formatting.ruff,
				null_ls.builtins.diagnostics.clj_kondo,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.diagnostics.fish,
				null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.diagnostics.sqlfluff,
				null_ls.builtins.hover.rust_analyzer,
				null_ls.builtins.hover.ruff,
			},
		})

		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
	end,
}
