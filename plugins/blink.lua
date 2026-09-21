return {
  "saghen/blink.cmp",
  -- Tagged release ships a prebuilt fuzzy-matcher binary, so no Rust toolchain needed
  version = "1.*",
  -- Not lazy-loaded: init.lua requires it at startup for LSP capabilities,
  -- and blink.cmp handles its own internal lazy loading.
  opts = {
    keymap = { preset = "default" },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 200 },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
