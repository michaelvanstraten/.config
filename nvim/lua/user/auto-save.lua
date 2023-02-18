-- Use a protected call so we don"t error out on first use
local auto_save_require_ok, auto_save = pcall(require, "auto-save")
if not auto_save_require_ok then
	return
end

auto_save.setup({
	trigger_events = { "TextChanged", "TextChangedI" },
})
