return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "emmet_ls",
        "lua_ls",
        "eslint",
        "prismals",
        "vue-language-server",
      },
      automatic_installation = true,
    })
  end,
}
