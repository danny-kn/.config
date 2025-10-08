vim.pack.add({
	-- { src = "https://github.com/catppuccin/nvim" },
	-- { src = "https://github.com/rose-pine/neovim" },
	--
	{ src = "https://github.com/vague2k/vague.nvim" },

	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },

	{ src = "https://github.com/saghen/blink.cmp" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },

	{ src = "https://github.com/stevearc/oil.nvim" },

	{ src = "https://github.com/echasnovski/mini.ai" },
	{ src = "https://github.com/echasnovski/mini.move" },
	{ src = "https://github.com/echasnovski/mini.pairs" },
	{ src = "https://github.com/echasnovski/mini.surround" },
	{ src = "https://github.com/echasnovski/mini.pick" },

	{ src = "https://github.com/tpope/vim-dadbod" },
	{ src = "https://github.com/kristijanhusak/vim-dadbod-ui" },
	{ src = "https://github.com/kristijanhusak/vim-dadbod-completion" },

	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/folke/flash.nvim" },
	{ src = "https://github.com/monkoose/neocodeium" },
	{ src = "https://github.com/lervag/vimtex" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = "https://github.com/kdheepak/lazygit.nvim" },

	{ src = "https://github.com/mrcjkb/rustaceanvim" },
	{ src = "https://github.com/mfussenegger/nvim-dap" },
	{ src = "https://github.com/rcarriga/nvim-dap-ui" },
	{ src = "https://github.com/nvim-neotest/nvim-nio" },
	{ src = "https://github.com/folke/lazydev.nvim" }
})

-- require("plugins.catppuccin")
-- require("plugins.rose-pine")

require("plugins.vague")

require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.nvim-treesitter")

require("plugins.blink")
require("plugins.luasnip")

require("plugins.oil")

require("plugins.mini")

require("plugins.vim-dadbod")

require("plugins.toggleterm")
require("plugins.flash")
require("plugins.neocodeium")
require("plugins.vimtex")
require("plugins.typst-preview")
require("plugins.lazygit")

require("plugins.rustaceanvim")
require("plugins.nvim-dap")
require("plugins.lazydev")
