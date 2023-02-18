local null_ls_require_ok, null_ls = pcall(require, "null-ls")
if not null_ls_require_ok then
	return
end

null_ls.setup({
	autostart = true,
	on_attach = require("user.lsp.setup").on_attach,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier.with({
			extra_args = function(params)
				return params.options
					and params.options.tabSize
					and {
						"--tab-width",
						params.options.tabSize,
					}
			end,
		}),
	},
})
