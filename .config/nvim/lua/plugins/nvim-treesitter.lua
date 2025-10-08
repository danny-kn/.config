require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"lua",
		"latex",
		"typst",
		"java",
		"typescript",
		"html",
		"templ",
		"css",
		"scss",
		"go",
		"rust",
		"ruby",
		"json",
		"yaml",
		"toml"
	},
	highlight = { enable = true },
	indent = { enable = true }
})
