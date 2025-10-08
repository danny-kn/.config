require("oil").setup({
	keymaps = {
		["<leader>c"] = { "actions.close", mode = "n" },
		["<leader>|"] = { "actions.select", opts = { vertical = true } },
		["<leader>-"] = { "actions.select", opts = { horizontal = true } }
	},
	view_options = { show_hidden = true },
	float = {
		border = "rounded",
		max_width = math.floor(0.75 * vim.o.columns),
		max_height = math.floor(0.75 * vim.o.lines),
		win_options = { winblend = 0 }
	},
	confirmation = {
		border = "rounded",
		win_options = { winblend = 0 }
	},
	progress = {
		border = "rounded",
		win_options = { winblend = 0 }
	},
	ssh = { border = "rounded" },
	keymaps_help = { border = "rounded" }
})

-- vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "open file explorer" })
-- vim.keymap.set("n", "-", require("oil").open_float, { desc = "open floating file explorer" })

-- vim.keymap.set("n", "<leader>e", require("oil").open_float, { desc = "open file explorer" })

vim.keymap.set("n", "<leader>e", function()
	require("oil").open_float(nil, { preview = {} })
end, { desc = "open file explorer" })
