local config = require("lvim-kbrd.config")
local utils = require("lvim-kbrd.utils")
local autocmd = require("lvim-kbrd.autocmd")
local switch = require("lvim-kbrd.switch")

local M = {}

M.setup = function(user_config)
    if user_config ~= nil then
        utils.merge(config, user_config)
    end
    M.init()
end

M.init = function()
    if config.active_plugin == 1 then
        autocmd.enable()
    end
end

M.toggle = function()
    if config.active_plugin == 1 then
        autocmd.disable()
        switch.insert_leave()
        config.active_plugin = 0
    elseif config.active_plugin == 0 then
        config.active_plugin = 1
        autocmd.enable()
    end
end

return M
