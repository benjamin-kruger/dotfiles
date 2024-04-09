-- Configuration of LSP servers
-- List of servers to set up along with custom configuration
local servers = {
	-- Lua
	lua_ls = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim", "use" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
	pyright = {
		python = {
			analysis = {
				useLibraryCodeForTypes = true,
			},
		},
	},
	ruff_lsp = {},
	cssls = {},
	-- clojure_lsp = {},
}

-- LSP uses an `on_attach` function which runs whenever a server is connected to a buffer
local on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	-- Formatting provided by 'conform' plugin, which falls back to LSP formatting
	-- nmap("<leader>lf", vim.lsp.buf.format, "Format")
	nmap("<leader>lr", vim.lsp.buf.rename, "LSP: Rename")
	nmap("<leader>la", vim.lsp.buf.code_action, "Code action")

	nmap("gd", vim.lsp.buf.definition, "Go to definition")
	nmap("gr", require("telescope.builtin").lsp_references, "Go to references")
	nmap("gI", vim.lsp.buf.implementation, "Go to implementation")
	nmap("gD", vim.lsp.buf.declaration, "Go to declaration")

	nmap("<leader>lh", vim.lsp.buf.hover, "LSP: Hover")
	nmap("<leader>ld", vim.diagnostic.open_float, "LSP: Diagnostics")
	nmap("<leader>lD", require("telescope.builtin").diagnostics, "Search for diagnostics")

	nmap("<leader>ls", require("telescope.builtin").lsp_document_symbols, "Document symbols")
	nmap("<leader>lS", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace symbols")
end

-- Capabilities define what the LSP server should support
local capabilities = vim.tbl_deep_extend(
	"force",
	vim.lsp.protocol.make_client_capabilities(),
	require("cmp_nvim_lsp").default_capabilities()
)
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false -- Bugs out python with latest lsp version

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		opts = {
			diagnostics = {
				virtual_text = true,
				update_in_insert = true,
				severity_sort = true,
				float = {
					border = "rounded",
				},
			},
		},
		config = function(_, opts)
			-- Setup servers
			for server, settings in pairs(servers) do
				require("lspconfig")[server].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					settings = settings,
				})
			end
			require("lspconfig").clojure_lsp.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				cmd = {
					"clojure-lsp",
					"-XX:MaximumHeapSizePercent=25",
				},
				settings = {},
			})

			-- Diagnostics
			local diagnosticsIcons = {
				Error = "",
				Warn = "",
				Hint = "",
				Info = "",
			}
			for name, icon in pairs(diagnosticsIcons) do
				name = "DiagnosticSign" .. name
				vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
			end
			vim.diagnostic.config(opts.diagnostics)
		end,
	},
}
