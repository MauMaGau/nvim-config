return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        -- Add blade to the list of parsers to install
        ensure_installed = {
            "bash",
            "c",
            "diff",
            "html",
            "javascript", 
            "jsdoc",
            "json",
            "jsonc",
            "lua",
            "luadoc", 
            "luap",
            "markdown",
            "markdown_inline",
            "php",
            "blade",  -- Blade parser
            "query",
            "regex",
            "toml",
            "tsx",
            "typescript", 
            "vim",
            "vimdoc",
            "xml",
            "yaml",
        },
        -- Enable highlighting
        highlight = {
            enable = true,
        },
        -- Enable indentation
        indent = {
            enable = true,
        },
        -- Enable incremental selection
        incremental_selection = {
            enable = true,
        },
    },
}
