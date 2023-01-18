require("nvim-tree").setup({
	renderer = {
		icons = {
			show = {
				git = false,
			},
		},
	},
	diagnostics = {
		enable = true,
		severity = {
			min = vim.diagnostic.severity.WARN,
			max = vim.diagnostic.severity.ERROR,
		},
		-- show_on_dirs = true,
	},
	view = {
		hide_root_folder = true,
	},
	filters = {
		custom = {
			".git$",
		},
	},
	git = {
		ignore = true,
	},
})
