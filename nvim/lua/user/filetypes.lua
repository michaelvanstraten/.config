vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.wgsl" },
	callback = function(_)
		vim.bo.filetype = "wgsl"
	end,
})
