vim.keymap.set("n", "<leader>|", "<cmd>vs<cr>", { desc = "split vertically" })
vim.keymap.set("n", "<leader>-", "<cmd>sp<cr>", { desc = "split horizontally" })

vim.keymap.set({ "n", "t" }, "<C-l>", "<cmd>winc l<cr>", { desc = "move to right window" })
vim.keymap.set({ "n", "t" }, "<C-h>", "<cmd>winc h<cr>", { desc = "move to left window" })
vim.keymap.set({ "n", "t" }, "<C-k>", "<cmd>winc k<cr>", { desc = "move to top window" })
vim.keymap.set({ "n", "t" }, "<C-j>", "<cmd>winc j<cr>", { desc = "move to bottom window" })

vim.keymap.set({ "n", "t" }, "<C-Up>", "<cmd>resize +2<cr>", { desc = "increase window height" })
vim.keymap.set({ "n", "t" }, "<C-Down>", "<cmd>resize -2<cr>", { desc = "decrease window height" })
vim.keymap.set({ "n", "t" }, "<C-Right>", "<cmd>vert resize +2<cr>", { desc = "increase window width" })
vim.keymap.set({ "n", "t" }, "<C-Left>", "<cmd>vert resize -2<cr>", { desc = "decrease window width" })

vim.keymap.set("n", "<leader>=", "<cmd>wincmd =<cr>", { desc = "equalize windows" })

vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "previous buffer" })

vim.keymap.set("n", "<leader>tb", "<cmd>tabn<cr>", { desc = "next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "previous tab" })

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write entire buffer to current file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit current window" })

vim.keymap.set("i", "jk", "<esc>", { desc = "exit insert mode" })

vim.keymap.set({ "n", "x", "o" }, "S", "^", { desc = "jump to start of line" })
vim.keymap.set({ "n", "x", "o" }, "E", "$", { desc = "jump to end of line" })

vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "copy to system clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>d", '"+d', { desc = "cut to system clipboard" })
