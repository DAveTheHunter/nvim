return {
   "nvim-telescope/telescope.nvim",
   brach = "0.1.x",
   dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"andrew-george/telescope-themes",
	},

   config = function()
     local telescope = require("telescope")
     local actions = require("telescope.actions")
     local builtin = require("telescope.builtin")
    telescope.load_extension("themes") 
   
    telescope.setup({
        extensions = {
            themes = {
                enable_previewwer = true,
                enable_live_previewer = true,
                persist = {
                    enabled = true,
                    path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",                }
            },
        }
    }) 


    vim.keymap.set('n', '<leader>jf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>gr', builtin.git_files, { desc = 'Telescope live grep' })
    vim.keymap.set("n", "<leader>ths", "<cmd>Telescope themes<CR>", { noremap = true, silent = true, desc = "Theme Switcher" })
end
}
