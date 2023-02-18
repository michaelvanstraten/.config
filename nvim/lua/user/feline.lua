-- Use a protected call so we don"t error out on first use
local status_ok, feline = pcall(require, "feline")
if not status_ok then
	return
end

feline.setup()
