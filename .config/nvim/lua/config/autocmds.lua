vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	callback = function()
		local curr_pos = vim.fn.getpos(".")
		pcall(function() vim.cmd [[%s/\s\+$//e]] end)
		vim.fn.setpos(".", curr_pos)
	end
})

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end
})
