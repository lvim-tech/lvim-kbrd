local group = vim.api.nvim_create_augroup("LvimKbrd", {
	clear = true,
})

local M = {}

function M.enable()
	vim.api.nvim_create_autocmd("InsertEnter", {
		pattern = "*",
		command = 'lua require"lvim-kbrd.switch".insert_enter()',
		group = group,
	})

	vim.api.nvim_create_autocmd("InsertLeave", {
		pattern = "*",
		command = 'lua require"lvim-kbrd.switch".insert_leave()',
		group = group,
	})
end

function M.disable()
	local autocommands = vim.api.nvim_get_autocmds({
		group = "LvimKbrd",
	})
	vim.api.nvim_del_autocmd(autocommands[1]["id"])
	vim.api.nvim_del_autocmd(autocommands[2]["id"])
end

return M
