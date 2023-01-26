-- Use a protected call so we don"t error out on first use
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
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
