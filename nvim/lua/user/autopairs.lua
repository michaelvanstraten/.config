-- Use a protected call so we don"t error out on first use
local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
	return
end

local Rule = require("nvim-autopairs.rule")

autopairs.setup()
autopairs.add_rule(Rule("<", ">", "rust"))
