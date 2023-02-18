-- Use a protected call so we don"t error out on first use
local mason_require_ok, mason = pcall(require, "mason")
if not mason_require_ok then
	return
end

mason.setup({})

-- Use a protected call so we don"t error out on first use
local mason_lspconfig_require_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_require_ok then
	return
end

mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
	},
})

-- Use a protected call so we don"t error out on first use
local lspconfig_require_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_require_ok then
	return
end

local function load_opts(server)
	local opts = {
		on_attach = require("user.lsp.setup").on_attach,
		capabilities = require("user.lsp.setup").capabilities,
	}

	local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	return opts
end

lspconfig.sourcekit.setup(load_opts("sourcekit"))

mason_lspconfig.setup_handlers({
	function(server_name)
		local server = vim.split(server_name, "@")[1]

		local opts = load_opts(server)

		lspconfig[server].setup(opts)
	end,
})
