-- Press <leader>p to turn paste ON
vim.keymap.set("n", "<leader>p", "<cmd>set paste<CR>", { desc = "Enable paste mode" })

-- Press <leader>P to turn paste OFF
vim.keymap.set("n", "<leader>P", "<cmd>set nopaste<CR>", { desc = "Disable paste mode" })

