return {
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
       local treesitter = require("nvim-treesitter.configs") 
        treesitter.setup({})
    end
}


 -- return {
 --         "nvim-treesitter/nvim-treesitter",
 --            event = { "BufReadPre", "BufNewFile" },
 --            build = ":TSUpdate",
 --            config = function()
 --                -- import nvim-treesitter plugin
 --                local treesitter = require("nvim-treesitter.configs")
 --
 --                -- configure treesitter
 --                treesitter.setup({ -- enable syntax highlighting
 --                          highlight = {
 --                          enable = true,
 --                          },
 --                          -- enable indentation
 --                          indent = { enable = true },
 --
 --                          -- ensure these languages parsers are installed
 --                          -- ensure_installed = {
 --                          -- "json",
 --                          -- "javascript",
 --                          -- "typescript",
 --                          -- "tsx",
 --                          -- "go",
 --                          -- "yaml",
 --                          -- "html",
 --                          -- "css",
 --                          -- "python",
 --                          -- "http",
 --                          -- "prisma",
 --                          -- "markdown",
 --                          -- "markdown_inline",
 --                          -- "svelte",
 --                          -- "graphql",
 --                          -- "bash",
 --                          -- -lua",
 --                          -- "vim",
 --                          -- "dockerfile",
 --                          -- "gitignore",
 --                          -- "query",
 --                          -- "vimdoc",
 --                          -- "c",
 --                          -- "java",
 --                          -- "rust",
 --                          -- },
 --                         })
 --         end,
 --     }
