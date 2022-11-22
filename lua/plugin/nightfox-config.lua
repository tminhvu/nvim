require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = 'bold',
            strings = "italic",
            functions = "bold",
            constants = "bold",
            types = "bold",
        },
        modules = {
            cmp = true,
            native_lsp = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            --diagnostic = true,
            tsrainbow = true
        },
        transparent = false,
        inverse = {
            visual = false
        },
    },
    groups = {
        all = {
            NvimTreeNormal = { style = 'bold' },
            DiagnosticError = { style = 'bold' },
            DiagnosticWarn = { style = 'bold' },
            DiagnosticHint = { style = 'bold' },
            DiagnosticInfo = { style = 'bold' },
            DiagnosticVirtualTextError = { style = 'italic,underline' },
            DiagnosticVirtualTextWarn = { style = 'italic,underline' },
            DiagnosticVirtualTextHint = { style = 'italic,underline' },
            DiagnosticVirtualTextInfo = { style = 'italic,underline' },
        },
        terafox = {
            CursorLineNr = { fg = "#fda47f", bg = "#254147", style = 'bold' },
            StatusLine = { fg = "#0f1c1e", bg = "#81b29a", style = 'bold' },
            WinBar = { fg = "#81b29a", style = 'bold' },
            WinBarError = { fg = "#e85c51", style = 'bold,italic' },
        },
        nightfox = {
            CursorLineNr = { fg = "#bdc074", bg = "#29394f", style = 'bold' },
            StatusLine = { fg = "#0f1c1e", bg = "#71839b", style = 'bold' },
            WinBar = { fg = "#81b29a", style = 'bold' },
            WinBarError = { fg = "#c94f6d", style = 'bold,italic' },
        },
        dayfox = {
            CursorLineNr = { style = 'bold' },
            StatusLine = { style = 'bold' },
            WinBarError = { fg = "#b95d76", style = 'bold,italic' },
        },
        carbonfox = {
            CursorLineNr = { fg = "#be95ff", bg = "#353535", style = 'bold' },
            StatusLine = { fg = "#161616", bg = "#519aba", style = 'bold' },
            WinBar = { fg = "#3ddbd9", style = 'bold' },
            WinBarError = { fg = "#ee5395", style = 'bold,italic' },
            DiagnosticWarn = { fg = '#ffa61a', style = 'bold' },
            DiagnosticVirtualTextWarn = { fg = '#ffa61a', style = 'italic,bold' },
            DiagnosticUnderlineWarn = { sp = '#ffa61a' },
        },
    },
})

vim.api.nvim_command [[colorscheme nightfox]]
