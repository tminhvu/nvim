-- Parsers must be installed manually via :TSInstall
require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "java", "bash", "css", "lua", "html", "javascript", "typescript", "tsx", "json" },
    sync_install = false,
    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = true
    },
    incremental_selection = {
        enable = false,
    },
    indent = {
        enable = true,
    },
    textobjects = {
        select = {
            enable = false,
        },
        move = {
            enable = false,
        },
    },
}
