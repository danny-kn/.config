require("flash").setup({
	modes = { search = { enabled = true } },
	char = { jump_labels = true },
	prompt = { prefix = { { " ", "FlashPromptIcon" } } }
})

vim.keymap.set({ "n", "x", "o" }, "<leader>s", function()
	require("flash").jump()
end, { desc = "flash jump" })

vim.keymap.set({ "n", "x", "o" }, "<leader>S", function()
	require("flash").treesitter()
end, { desc = "flash treesitter" })
