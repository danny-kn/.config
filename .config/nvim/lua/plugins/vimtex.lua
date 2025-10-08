-- vim.g.vimtex_view_method = "zathura"
--
-- vim.g.vimtex_compiler_method = "latexmk"
-- vim.g.vimtex_compiler_latexmk_engines = { _ = "-lualatex" }
--
-- vim.g.vimtex_quickfix_mode = 1
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "tex",
-- 	callback = function()
-- 		vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<cr>",
-- 			{ silent = true, buffer = true, desc = "toggle compilation/preview" })
-- 		vim.keymap.set("n", "<leader>lt", "<cmd>VimtexTocToggle<cr>",
-- 			{ silent = true, buffer = true, desc = "toggle table of contents (toc)" })
--
-- 		-- vim.keymap.set("n", "<leader>lT", function()
-- 		-- 	require("vimtex.fzf-lua").run()
-- 		-- end, { silent = true, buffer = true, desc = "fzf" })
--
-- 		vim.keymap.set("n", "<leader>li", "<cmd>VimtexInfo<cr>",
-- 			{ silent = true, buffer = true, desc = "show information" })
-- 		vim.keymap.set("n", "<leader>lc", "<cmd>VimtexClean<cr>",
-- 			{ silent = true, buffer = true, desc = "clean auxiliary files" })
-- 	end
-- })

vim.g.vimtex_view_method = "zathura"

vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk_engines = { _ = "-lualatex" }

vim.g.vimtex_quickfix_mode = 1
