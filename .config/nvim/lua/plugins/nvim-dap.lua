require("dapui").setup()

require("dap").listeners.before.attach.dapui_config = function() require("dapui").open() end
require("dap").listeners.before.launch.dapui_config = function() require("dapui").open() end
require("dap").listeners.before.event_terminated.dapui_config = function() require("dapui").close() end
require("dap").listeners.before.event_exited.dapui_config = function() require("dapui").close() end

vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", function() require("dap").clear_breakpoints() end, { desc = "clear breakpoints" })

vim.keymap.set("n", "<leader>dh", function() require("dap").step_out() end, { desc = "step out" })
vim.keymap.set("n", "<leader>dj", function() require("dap").step_over() end, { desc = "step over" })
vim.keymap.set("n", "<leader>dk", function() require("dap").step_into() end, { desc = "step into" })
vim.keymap.set("n", "<leader>dl", function() require("dap").continue() end, { desc = "continue" })
