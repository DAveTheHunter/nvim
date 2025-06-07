return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
           
        },
       keys = {
           {"<leader>lg", function() require("snacks").lazygit() end,desc = "Lazygit"},
           {"<leader>gl", function() require("snacks").lazygit.log() end,desc = "Lazygit log"},
           {"<leader>es", function() require("snacks").explorer() end,desc = "explorer"},
           {"<leader>rn", function() require("snacks").rename.rename_file() end,desc = "rename current file"},
       }  
    }

}
