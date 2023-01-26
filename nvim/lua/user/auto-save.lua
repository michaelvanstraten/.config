-- Use a protected call so we don"t error out on first use
local status_ok, auto_save = pcall(require, "auto-save")
if not status_ok then
	return
end

auto_save.setup({
    trigger_events = {"TextChanged", "TextChangedI"}
})
