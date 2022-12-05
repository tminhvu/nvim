require('github-theme').setup({
    theme_style = 'dark_default',
    dev = true,
    colors = {
        --    warning = 'eeeeb3',
        hint = 'cyan',
        warning = '#eeeeb3'
    },
    overrides = function(c)
        return {
            WinBarError = { fg = c.error, bg = 'NONE', style = 'bold,italic' },
            WinBarNC = { fg = c.line_nr, bg = 'NONE', style = 'NONE' },
            StatusLine = { fg = c.fg, bg = c.pmenu.bg, style = 'bold' },
            CursorLineNr = { fg = c.blue, style = 'bold' },
            DiagnosticError = { fg = c.error, bg = 'NONE', style = 'bold' },
            DiagnosticWarn = { fg = c.warning, bg = 'NONE', style = 'bold' },
            DiagnosticHint = { fg = c.hint, bg = 'NONE', style = 'bold' },
            DiagnosticInfo = { fg = c.info, bg = 'NONE', style = 'bold' },
            DiagnosticUnderlineHint = { link = 'LspDiagnosticsUnderlineHint' }
        }
    end,
    comment_style = 'italic',
    function_style = 'bold',
    keyword_style = 'bold,italic',
    msg_area_style = 'bold',
    variable_style = 'italic',
    dark_float = true,
    dark_sidebar = true,
    sidebars = { 'NvimTree', 'Outline', 'packer', 'terminal' },
    hide_end_of_buffer = true,
    hide_inactive_statusline = true,
    transparent = false,
})
