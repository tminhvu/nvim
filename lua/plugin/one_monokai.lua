require("one_monokai").setup({
    colors = {
        bg = "#161819"
    },
    themes = function(colors)
        return {
            StatusLine = { fg = colors.light_gray, bg = colors.black, bold = true },
            WinBarError = { fg = colors.red, italic = true, bold = true },
            WinBar = { fg = colors.fg, bold = true },
            WinBarNC = { fg = colors.dark_gray },
            EndOfBuffer = { fg = colors.bg },
            DiagnosticUnderlineWarn = { sp = colors.yellow, underline = false, undercurl = true },
            DiagnosticUnderlineError = { sp = colors.red, underline = false, undercurl = true },
            DiagnosticUnderlineHint = { sp = colors.cyan, underline = false, undercurl = true },
            DiagnosticUnderlineInfo = { sp = colors.green, underline = false, undercurl = true },
            DiagnosticWarn = { fg = colors.yellow, bold = true },
            DiagnosticError = { fg = colors.red, bold = true },
            DiagnosticHint = { fg = colors.cyan, bold = true },
            DiagnosticInfo = { fg = colors.green, bold = true },
            DiagnosticVirtualTextWarn = { fg = colors.light_gray, bold = true, italic = true },
            DiagnosticVirtualTextError = { fg = colors.red, bold = true, italic = true },
            DiagnosticVirtualTextHint = { fg = colors.cyan, bold = true, italic = true },
            DiagnosticVirtualTextInfo = { fg = colors.green, bold = true, italic = true }
        }
    end,
})

--        colors.default = {
--    fg = "#abb2bf",
--    bg = "#282c34",
--    gray = "#676e7b",
--    pink = "#e06c75",
--    green = "#98c379",
--    cyan = "#56b6c2",
--    aqua = "#61afef",
--    yellow = "#e5c07b",
--    purple = "#c678dd",
--    peanut = "#f6d5a4",
--    orange = "#d19a66",
--    dark_pink = "#ff008c",
--    dark_cyan = "#2b8db3",
--    red = "#f75f5f",
--    dark_red = "#d03770",
--    white = "#d7d7ff",
--    light_gray = "#9ca3b2",
--    dark_gray = "#4b5261",
--    vulcan = "#383a3e",
--    dark_green = "#2d2e27",
--    dark_blue = "#26292f",
--    black = "#1e2024",
--    none = "NONE",
--}
--
