require("lsp.lua_ls")
require("lsp.gopls")

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "format current buffer" })

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "show diagnostics" })
vim.keymap.set("n", "<leader>lp", function() vim.diagnostic.jump({ count = -1, wrap = true }) end,
	{ desc = "previous diagnostic" })
vim.keymap.set("n", "<leader>ln", function() vim.diagnostic.jump({ count = 1, wrap = true }) end,
	{ desc = "next diagnostic" })

-- vim.lsp.enable({ "lua_ls" })
--
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
-- 		if client:supports_method("textDocument/completion") then
-- 			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
-- 		end
-- 	end
-- })
--
-- vim.cmd("set completeopt+=noselect")
