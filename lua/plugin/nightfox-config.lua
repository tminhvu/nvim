require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = 'bold,italic',
            strings = "italic",
            functions = "bold",
            constants = "italic,bold",
            types = "bold",
        },
        modules = {
            cmp = true,
            native_lsp = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            diagnostic = true,
            --tsrainbow = true
            gitsigns = true
        },
        transparent = false,
        inverse = {
            visual = false
        },
    },
    palettes = {
    },
    groups = {
        all = {
            NvimTreeNormal = { style = 'bold' },
            DiagnosticError = { style = 'bold' },
            DiagnosticWarn = { style = 'bold' },
            DiagnosticHint = { style = 'bold' },
            DiagnosticInfo = { style = 'bold' },
            DiagnosticVirtualTextError = { style = 'italic,bold,underline', fg = '#738091' },
            DiagnosticVirtualTextWarn = { style = 'italic,bold,underline', fg = '#738091' },
            DiagnosticVirtualTextHint = { style = 'italic,bold,underline', fg = '#738091' },
            DiagnosticVirtualTextInfo = { style = 'italic,bold,underline', fg = '#738091' },
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
            StatusLine = { fg = "#0f1c1e", bg = "#71839b", style = 'bold' },
            WinBar = { fg = "#3ddbd9", style = 'bold' },
            WinBarError = { fg = "#ee5395", style = 'bold,italic' },
            DiagnosticWarn = { fg = '#ffa61a', style = 'bold' },
            DiagnosticVirtualTextWarn = { fg = '#ffa61a', style = 'italic,bold' },
            DiagnosticUnderlineWarn = { sp = '#ffa61a' },
        },
    },
})

vim.api.nvim_command [[colorscheme nightfox]]
