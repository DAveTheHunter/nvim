return {
  "stevearc/oil.nvim",
  dependencies = {
      "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("oil").setup({
        default_file_explorer = true,
        columns = { },
        keymaps = {
            ["<C-h>"] = false,
            ["<C-c>"] = false,
            ["q"] = "actions.close",
        },
        delete_to_trash = true,
        view_options = {
                show_hidden = true,
        },
        skip_confirm_for_simple_edits = true,
    })
   --the key maps 
   vim.keymap.set("n", "<leader>e", vim.cmd.Oil, {desc = "open oil"})
   vim.keymap.set("n", "<leader>r", require("oil").toggle_float, {desc = "open oil in a floating mode"})


  end,
}
