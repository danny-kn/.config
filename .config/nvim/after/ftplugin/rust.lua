vim.keymap.set("n", "<leader>a", function()
	vim.cmd.RustLsp("codeAction")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "code actions"
})

vim.keymap.set("n", "K", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "hover actions"
})

vim.keymap.set("n", "<leader>rr", function()
	vim.cmd.RustLsp("runnables")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "runnables"
})

vim.keymap.set("n", "<leader>rt", function()
	vim.cmd.RustLsp("testables")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "testables"
})

vim.keymap.set("n", "<leader>rd", function()
	vim.cmd.RustLsp("debuggables")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "debuggables"
})

vim.keymap.set("n", "<leader>re", function()
	vim.cmd.RustLsp("explainError")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "explain errors"
})

vim.keymap.set("n", "<leader>rD", function()
	vim.cmd.RustLsp("renderDiagnostic")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "render diagnostics"
})

vim.keymap.set("n", "<leader>rc", function()
	vim.cmd.RustLsp("openCargo")
end, {
	silent = true,
	buffer = vim.api.nvim_get_current_buf(),
	desc = "open cargo.toml"
})
