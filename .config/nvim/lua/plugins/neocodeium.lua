require("neocodeium").setup({ silent = true })

vim.keymap.set("i", "<A-f>", function()
	require("neocodeium").accept()
end, { desc = "accept suggestion" })

vim.keymap.set("i", "<A-e>", function()
	require("neocodeium").cycle_or_complete()
end, { desc = "next suggestion" })

vim.keymap.set("i", "<A-r>", function()
	require("neocodeium").cycle_or_complete(-1)
end, { desc = "previous suggestion" })

vim.keymap.set("i", "<A-c>", function()
	require("neocodeium").clear()
end, { desc = "clear suggestion" })

-- enable neocodeium completion in the current buffer:
vim.keymap.set("n", "<leader>nn", function()
	require("neocodeium.commands").enable_buffer()
end, { desc = "enable neocodeium in current buffer" })

-- disable neocodeium completion in the current buffer:
vim.keymap.set("n", "<leader>ns", function()
	require("neocodeium.commands").disable_buffer()
end, { desc = "disable neocodeium in current buffer" })

-- open windsurf chat:
vim.keymap.set("n", "<leader>nc", function()
	require("neocodeium.commands").chat()
end, { desc = "open windsurf chat" })

-- local filetypes = { "lua" }
-- require("neocodeium").setup({
-- 	filter = function(bufnr)
-- 		if vim.tbl_contains(filetypes, vim.api.nvim_get_option_value("filetype", { buf = bufnr })) then
-- 			return true
-- 		end
-- 		return false
-- 	end
-- })

-- require("neocodeium").setup({
-- 	filter = function(bufnr)
-- 		if vim.endswith(vim.api.nvim_buf_get_name(bufnr), ".env") then
-- 			return false
-- 		end
-- 		return true
-- 	end
-- })
