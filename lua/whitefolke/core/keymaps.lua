local opt = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " " 


--spliting the window 
vim.keymap.set("n", "vg", vim.cmd.vsplit)
vim.keymap.set("n", "vh", vim.cmd.split)


--nvim tree
--
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

