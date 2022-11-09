require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    --invert_indent_guides = true,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    overrides = {
        DiagnosticVirtualTextError = { fg = "#fb4934", italic = true},
        DiagnosticVirtualTextWarn = { fg = "#fabd2f", italic = true},
        DiagnosticVirtualTextHint = { fg = "#8ec07c", italic = true},
        DiagnosticVirtualTextInfo = { fg = "#83a598", italic = true},
        DiagnosticSignError = { fg = "#fb4934" },
        DiagnosticSignWarn = { fg = "#fabd2f" },
        DiagnosticSignHint = { fg = "#8ec07c" },
        DiagnosticSignInfo = { fg = "#83a598" },
        EndOfBuffer = { fg = "#1D2021" },
        SignColumn = { bg = "NONE" },
        WinBar = { fg = "#ebdbb2", bg = "NONE", bold = true },
        WinBarError = { bg = "#1D2021", fg = "#fb4934", italic = true, bold = true },
        StatusLine = { fg = "#1D2021", bg = "#ebdbb2", bold = true },
        NvimTreeNormal = { fg = "#d5c4a1", bg = "#181a1b" },
    },
    dim_inactive = false,
    transparent_mode = false,
})

vim.api.nvim_command [[colorscheme gruvbox]]
