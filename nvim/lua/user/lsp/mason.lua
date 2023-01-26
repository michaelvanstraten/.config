require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"rust_analyzer",
	},
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

require("mason-lspconfig").setup_handlers({
	function(server_name)
		opts = {
			on_attach = require("user.lsp.setup").on_attach,
			capabilities = require("user.lsp.setup").capabilities,
		}

		local server = vim.split(server_name, "@")[1]

		local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
		if require_ok then
			opts = vim.tbl_deep_extend("force", conf_opts, opts)
		end

		lspconfig[server].setup(opts)
	end,
})
