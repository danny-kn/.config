require("luasnip").setup({ enable_autosnippets = true })

require("luasnip.loaders.from_lua").load({ paths = { "./snippets" } })
require("luasnip.loaders.from_vscode").load({ paths = { "./snippets" } })
