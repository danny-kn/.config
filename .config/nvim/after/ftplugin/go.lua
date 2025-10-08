vim.keymap.set("n", "<leader>gr", function()
	local curr_fname = vim.fn.expand("%")
	local cmd
	if string.match(curr_fname, "_test%.go$") then
		cmd = "go test -v " .. vim.fn.expand("%:h")
	elseif vim.fn.filereadable("main.go") then
		cmd = "go run ."
	else
		cmd = "go run " .. curr_fname
	end
	require("toggleterm").exec(cmd, 1, nil, nil, "float")
end, { silent = true, buffer = true, desc = "run current file/package" })

vim.keymap.set("n", "<leader>gt", function()
	local pkg = vim.fn.expand("%:h")
	if pkg == "." then
		pkg = ""
	end
	require("toggleterm").exec("go test -v " .. pkg, 1, nil, nil, "horizontal")
end, { silent = true, buffer = true, desc = "run package tests" })

vim.keymap.set("n", "<leader>gT", function()
	require("toggleterm").exec("go test -v ./...", 1, nil, nil, "horizontal")
end, { silent = true, buffer = true, desc = "run all tests" })

vim.keymap.set("n", "<leader>gb", function()
	require("toggleterm").exec("go build .", 1, nil, nil, "horizontal")
end, { silent = true, buffer = true, desc = "build current package" })

vim.keymap.set("n", "<leader>gG", function()
	local curr_fname = vim.fn.expand("%")
	local test_fname = vim.fn.expand("%:r") .. "_test.go"
	local cmd = string.format("gotests -all -w %s", curr_fname)
	vim.fn.system(cmd)
	vim.cmd("e " .. test_fname)
end, { silent = true, buffer = true, desc = "generate tests for current file" })
