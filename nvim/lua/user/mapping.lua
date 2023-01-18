vim.g.mapleader = " "

local set_keymap = vim.keymap.set

local M = {}

-- Control-f to format file
set_keymap("n", "<leader>f", vim.lsp.buf.format)

-- jk for exit into normal mode
set_keymap("i", "jk", "<ESC>")
set_keymap("i", "kj", "<ESC>")

-- Control-hjkl in insert mode to mode
set_keymap("i", "<C-j>", "<Down>")
set_keymap("i", "<C-k>", "<Up>")
set_keymap("i", "<C-h>", "<Left>")
set_keymap("i", "<C-l>", "<Right>")

-- Control-j/k to move lines
set_keymap("n", "<C-j>", ":m+<cr>")
set_keymap("n", "<C-k>", ":m-2<cr>")

set_keymap("v", "<C-j>", ":m'>+1<cr>gv")
set_keymap("v", "<C-k>", ":m'<-2<cr>gv")

-- Leader-cs to clear search'
set_keymap("n", "<leader>cs", ":nohlsearch<cr>")

-- Leader-et to toggle the exporer
set_keymap("n", "<leader>et", vim.cmd.NvimTreeToggle)

-- Leader-ef to focus the exporer
set_keymap("n", "<leader>ef", vim.cmd.NvimTreeFocus)

local telescope = require('telescope.builtin')

-- Leader-ff to find files
set_keymap("n", "<leader>ff", telescope.find_files)

-- Leader-fs to find string
set_keymap("n", "<leader>fs", telescope.live_grep)

-- Lsp mapping stuff
M.lsp_mapping = function(buffer_number)
	local opts = { buffer = buffer_number }

	set_keymap("n", "<leader>i", vim.lsp.buf.hover, opts)

	set_keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)

	set_keymap("n", "<leader>gd", vim.lsp.buf.definition, opts)

	set_keymap("n", "<leader>gr", telescope.lsp_references, opts)

	set_keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)

    set_keymap("n", "<leader>ne", vim.diagnostic.goto_next, opts)

    set_keymap("n", "<leader>pe", vim.diagnostic.goto_prev, opts)
end

return M
