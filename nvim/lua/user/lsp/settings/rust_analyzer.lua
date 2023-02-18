return {
	settings = {
		["rust-analyzer"] = {
			completion = { privateEditable = { enable = true } },
			diagnostics = { experimental = { enable = true } },
			cargo = {
				features = "all",
				buildScripts = {
					enable = true,
				},
			},
			check = {
				features = "all",
			},
			procMacro = {
				enable = true,
			},
		},
	},
}
