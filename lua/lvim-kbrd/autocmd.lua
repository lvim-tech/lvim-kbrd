local utils = require("lvim-kbrd.utils")

local M = {}

function M.enable()
    local autocmds = {}

    autocmds["lvim_kbrd"] = {
        {
            "InsertEnter",
            "*",
            'lua require"lvim-kbrd.switch".insert_enter()'
        },
        {
            "InsertLeave",
            "*",
            'lua require"lvim-kbrd.switch".insert_leave()'
        }
    }

    utils.create_augroups(autocmds)
end

function M.disable()
    local autocmds = {}

    autocmds["lvim_kbrd"] = {}

    utils.create_augroups(autocmds)
end

return M
