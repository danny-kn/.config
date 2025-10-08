local win_config = function()
	local x_val = math.floor(0.75 * vim.o.columns)
	local y_val = math.floor(0.75 * vim.o.lines)

	return {
		border = "rounded",
		width = x_val,
		height = y_val,
		row = math.floor(0.5 * (vim.o.lines - y_val)),
		col = math.floor(0.5 * (vim.o.columns - x_val))
	}
end

require("toggleterm").setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return 0.35 * vim.o.columns
		end
	end,
	shade_terminals = false,
	float_opts = win_config()
})

vim.keymap.set("n", "<leader>ttf", "<cmd>ToggleTerm direction=float<cr>", { desc = "toggle terminal (float)" })
vim.keymap.set("n", "<leader>tt|", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "toggle terminal (vertical)" })
vim.keymap.set("n", "<leader>tt-", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "toggle terminal (horizontal)" })

vim.keymap.set("v", "<A-f>", function()
	local trim_spaces = true
	require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
end, { desc = "send selection to terminal" })
