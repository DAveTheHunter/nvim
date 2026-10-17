return {
{
"nvim-tree/nvim-tree.lua",
version = "*",
lazy = false,
dependencies = {
"nvim-tree/nvim-web-devicons", -- Optional, for file icons
    },
    config = function()
        -- Disable netrw to avoid conflicts
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        
        -- Optionally enable 24-bit color
        vim.opt.termguicolors = true
        
        -- Setup nvim-tree with custom options
        require("nvim-tree").setup({
        sort = {
        sorter = "case_sensitive",
    },
    view = {
    width = 30,
    side = "left",
},
renderer = {
group_empty = true,
        },
        filters = {
        dotfiles = false, -- Show dotfiles by default
    },
    -- Optional: Add keymaps
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        -- Default mappings
        api.config.mappings.default_on_attach(bufnr)
        -- Custom mappings
        vim.keymap.set("n", "<C-t>", api.tree.toggle, opts("Toggle"))
    end,
})
    end,
},
}
