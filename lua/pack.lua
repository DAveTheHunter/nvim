vim.pack.add({
    "https://github.com/bluz71/vim-moonfly-colors",
    "https://github.com/ellisonleao/gruvbox.nvim",
    "https://github.com/nvim-mini/mini.nvim",
    "https://github.com/nvim-tree/nvim-tree.lua",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/rebelot/kanagawa.nvim",
    "https://github.com/rose-pine/neovim",
    -- "https//github.com/trope/vim-fugitive",
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
})


--mini files
require("mini.files").setup()

-- nvim tree


require("nvim-tree").setup()

  -- OR setup with a config

  ---@type nvim_tree.config
  local config = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
  require("nvim-tree").setup(config)

  local function my_on_attach(bufnr)
      local api = require "nvim-tree.api"

      local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.map.on_attach.default(bufnr)

      -- custom mappings
      vim.keymap.set("n", "E", "<cmd> NvimTreeToggle<CR>", { desc = "Toggle NvimTree file explorer" })
      vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent,        opts("Up"))
      vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
  end

  -- pass to setup along with your other config
  require("nvim-tree").setup({
      ---
      on_attach = my_on_attach,
      ---
  })


  -- MINI NOTIFY -- 
  
  require("mini.notify").setup({
     content = {
         format = function(notif)
             return notif.msg
         end,
     },
})

-- mini cmdline completion 

require("mini.cmdline").setup({
    autocorrect = { enable = false }
})

-- mini surround

require("mini.surround").setup()

-- telescope 

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>jf', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>jg', telescope.live_grep, { desc = 'Telescope live grep ' })
vim.keymap.set('n', '<leader>jh', telescope.help_tags, { desc = 'Telescope help tags' })


-- mini completions

local MiniCompletions = require("mini.completion")

require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
        process_items = function(items,base)
            return MiniCompletions.default_process_items(items,base, {
                filtersort = "fuzzy",
            })
        end,
    }
})

--- mini snippets ---
local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang(), -- loads friendly-snippets
    },
})

MiniSnippets.start_lsp_server({ match = false })

-- treesitter

require("treesitter")

-- lsp
require("lsp")

-- --- mini diff and fugitive ---
-- local MiniDiff = require("mini.diff")
-- MiniDiff.setup({
-- 	source = MiniDiff.gen_source.git({ index = false }),
-- })
--
--
-- vim.keymap.set("n", "<leader>gg", "<cmd>tabnew | Git | only<cr>", { desc = "Fugitive Full Page New Tab" })
-- vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>", { desc = "Git diff split", })
--

