-- Use a protected call so we don"t error out on first use
local status_ok, nvim_comment = pcall(require, "nvim_comment")
if not status_ok then
	return
end

nvim_comment.setup()
