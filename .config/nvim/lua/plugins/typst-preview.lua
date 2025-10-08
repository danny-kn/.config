-- require("typst-preview").setup()
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "typst",
-- 	callback = function()
-- 		-- vim.keymap.set("n", "<leader>tt", "<cmd>TypstPreview<cr>",
-- 		-- 	{ silent = true, buffer = true, desc = "start compilation/preview" })
-- 		-- vim.keymap.set("n", "<leader>ts", "<cmd>TypstPreviewStop<cr>",
-- 		-- 	{ silent = true, buffer = true, desc = "stop compilation/preview" })
--
-- 		vim.keymap.set("n", "<leader>tt", "<cmd>TypstPreviewToggle<cr>",
-- 			{ silent = true, buffer = true, desc = "toggle compilation/preview" })
-- 	end
-- })

require("typst-preview").setup()
