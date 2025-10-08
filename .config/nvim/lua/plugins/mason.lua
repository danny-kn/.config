require("mason").setup({
	ui = {
		border = "rounded",
		backdrop = 100,
		width = math.floor(0.75 * vim.o.columns),
		height = math.floor(0.75 * vim.o.lines),
		icons = {
			package_installed = "",
			package_pending = "",
			package_uninstalled = ""
		}
	}
})

vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "open mason" })
