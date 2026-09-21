-- Mason: install and manage LSP servers.
--
-- NOTE: this file previously returned ONE table holding two positional plugin
-- entries plus a `config` key. lazy.nvim treats a table with multiple
-- positional entries as a LIST of specs and silently drops sibling keys, so
-- that `config` function never ran. Each plugin now gets its own spec.
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "\u{2713}",
          package_pending = "\u{279C}",
          package_uninstalled = "\u{2717}",
        },
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      -- These are lspconfig names, not mason package names (v2 maps them
      -- internally: cssls -> css-lsp, ts_ls -> typescript-language-server).
      ensure_installed = {
        "intelephense", -- PHP
        "ts_ls",        -- TypeScript/JavaScript
        "vue_ls",       -- Vue
        "lua_ls",       -- Lua
        "tailwindcss",  -- Tailwind CSS
        "cssls",        -- CSS
        "emmet_ls",     -- HTML/template expansion
        "html",         -- HTML
        "eslint",       -- JS/TS linting
      },
      -- `automatic_installation` was REMOVED in mason-lspconfig v2; the
      -- equivalent is `automatic_enable`, which defaults to true.
    },
  },
}
