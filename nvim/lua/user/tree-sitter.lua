local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"json",
		"lua",
		"python",
		"css",
		"rust",
		"yaml",
		"markdown",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true },
	incremental_selection = { enable = true },
})
