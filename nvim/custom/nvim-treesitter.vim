lua << EOF
require'nvim-treesitter.configs'.setup {
    -- 支持那些语言可以TSInstallInfo看
    ensure_installed = { "lua","c_sharp","python"  },
    sync_install = true,
    -- ignore_install = { "javascript" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "gaa",
          }
    },
    indent = {
        enable = true
    },
  -- vim.wo.foldmethod = "expr",
  -- vim.wo.foldexpr = "nvim_treesitter#foldexpr()",
  -- vim.wo.foldlevel = 99,
}
EOF
