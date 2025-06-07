return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
           exporer = {
               enabled = true,
               layout = {
                   cycle = false,
               },  
           }, 
           quickfile = {
               enabled = true,
               exclude = {"latex"},
           },
       },
       keys = {
           {"<leader>lg", function() require("snacks").lazygit() end,desc = "Lazygit"},
           {"<leader>gl", function() require("snacks").lazygit.log() end,desc = "Lazygit log"},
           {"<leader>es", function() require("snacks").explorer() end,desc = "explorer"},
           {"<leader>rn", function() require("snacks").rename.rename_file() end,desc = "rename current file"},
           {"<leader>bd", function() require("snacks").bufdelete()  end,desc = "rename current file"},
           {"<leader>th", function() require("snacks").picker.colorschemes({ layout = "ivy" })  end,desc = "pick a color theme"},
       }  
    }

}
