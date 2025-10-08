require("blink.cmp").setup({
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		per_filetype = {
			sql = { "dadbod", "buffer" },
			mysql = { "dadbod", "buffer" },
			plsql = { "dadbod", "buffer" }
		},
		providers = {
			dadbod = {
				module = "vim_dadbod_completion.blink",
				enabled = true
			}
		}
	},
	signature = { enabled = true },
	completion = {
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = {
					{ "kind_icon", "label", "label_description", gap = 1 },
					{ "kind" }
				}
			}
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 0
		}
	},
	keymap = {
		preset = "default",
		["<cr>"] = { "accept", "fallback" },
		["<A-k>"] = { "select_prev", "fallback" },
		["<A-j>"] = { "select_next", "fallback" },
		["<C-c>"] = { "hide", "fallback" }
	}
})
