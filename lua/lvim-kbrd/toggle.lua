local config = require("lvim-kbrd.config")
local autocmd = require("lvim-kbrd.autocmd")

local M = {}

M.toggle = function()
	if config.active_plugin == 1 then
		config.active_plugin = 0
		autocmd.disable()
		vim.notify("Lvim Kbrd is now deactivated!", "error", {
			title = "LVIM KBRD",
		})
	elseif config.active_plugin == 0 then
		config.active_plugin = 1
		autocmd.enable()
		vim.notify("Lvim Kbrd is now activated!", "info", {
			title = "LVIM KBRD",
		})
	end
end

return M
