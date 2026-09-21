-- nvim-treesitter, pinned to the `master` branch.
--
-- IMPORTANT: upstream switched its DEFAULT branch to `main`, a rewrite that
-- requires Neovim 0.12 (nightly) -- it calls vim.list.unique(), which does not
-- exist on 0.11.x. Because this spec pinned no branch, lazy.nvim followed that
-- new default, parser installation failed silently, and the `opts` below were
-- ignored (main's setup() takes only `install_dir`). Pinning master keeps the
-- classic ensure_installed/highlight interface working on Neovim 0.11.
--
-- If Neovim is ever upgraded to 0.12+, revisit this and move back to `main`.
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  -- On master the setup entry point is `nvim-treesitter.configs`, NOT
  -- `nvim-treesitter`. Without this, lazy calls the wrong module's setup()
  -- and these options are quietly discarded.
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'blade', -- Laravel Blade
      'c',
      'diff',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'jsonc',
      'lua',
      'luadoc',
      'luap',
      'markdown',
      'markdown_inline',
      'php',
      'query',
      'regex',
      'toml',
      'tsx',
      'typescript',
      'vim',
      'vimdoc',
      'xml',
      'yaml',
    },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = { enable = true },
  },
}
