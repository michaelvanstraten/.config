local autopairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")

autopairs.setup()
autopairs.add_rule(Rule("<", ">", "rust")) 
