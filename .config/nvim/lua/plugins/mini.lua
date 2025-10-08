-- mini.ai configuration:
require("mini.ai").setup()

-- mini.move configuration:
require("mini.move").setup({
	mappings = {
		left = "<A-h>",
		right = "<A-l>",
		up = "<A-k>",
		down = "<A-j>",

		line_left = "<A-h>",
		line_right = "<A-l>",
		line_up = "<A-k>",
		line_down = "<A-j>"
	}
})

-- mini.pairs configuration:
require("mini.pairs").setup()

-- mini.surround configuration:
require("mini.surround").setup()

-- mini.pick configuration:
require("mini.pick").setup({
	window = {
		config = {
			border = "rounded",
			anchor = "NW",
			width = math.floor(0.5 * vim.o.columns),
			height = math.floor(0.5 * vim.o.lines)
		},
		prompt_prefix = "> ",
		prompt_caret = " "
	},
	mappings = {
		move_up = "<A-k>",
		move_down = "<A-j>"
	}
})

local no_show_icons = function(buf_id, items, query)
	return MiniPick.default_show(buf_id, items, query, { show_icons = false })
end

-- vim.keymap.set("n", "<leader>f", "<cmd>Pick files<cr>", { desc = "search files" })
vim.keymap.set("n", "<leader>f", function()
	require("mini.pick").builtin.files({}, { source = { show = no_show_icons } })
end, { desc = "search files" })

-- vim.keymap.set("n", "<leader>bb", "<cmd>Pick buffers<cr>", { desc = "search buffers" })
vim.keymap.set("n", "<leader>bb", function()
	require("mini.pick").builtin.buffers({}, { source = { show = no_show_icons } })
end, { desc = "search buffers" })

local win_config = function()
	local x_val = math.floor(0.75 * vim.o.columns)
	local y_val = math.floor(0.75 * vim.o.lines)

	return {
		border = "rounded",
		anchor = "NW",
		width = x_val,
		height = y_val,
		row = math.floor(0.5 * (vim.o.lines - y_val)),
		col = math.floor(0.5 * (vim.o.columns - x_val))
	}
end

-- vim.keymap.set("n", "<leader>g", "<cmd>Pick grep_live<cr>", { desc = "search live grep" })
vim.keymap.set("n", "<leader>g", function()
	require("mini.pick").builtin.grep_live({}, {
		source = { show = no_show_icons },
		window = { config = win_config }
	})
end, { desc = "search live grep" })

-- vim.keymap.set("n", "<leader>h", "<cmd>Pick help<cr>", { desc = "search help" })
vim.keymap.set("n", "<leader>h", function()
	require("mini.pick").builtin.help({ default_split = "vertical" }, {})
end, { desc = "search help" })
