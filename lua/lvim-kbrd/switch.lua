local config = require("lvim-kbrd.config")

local M = {}

M.insert_enter = function()
    os.execute("xkb-switch -s " .. config.insert_language)
end

M.insert_leave = function()
    os.execute("xkb-switch -s " .. config.default_language)
end

return M
