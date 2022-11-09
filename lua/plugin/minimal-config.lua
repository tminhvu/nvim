--vim.g.minimal_transparent_background = false
vim.api.nvim_command [[colorscheme minimal]]

--vim.api.nvim_set_hl(0, 'CursorLine', { bg = nil })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bold = true, bg = "#2c2d32" })
vim.api.nvim_set_hl(0, 'Visual', { bg = "#5e697e" })
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = "#555b6c", bold = true })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = "#1d1f21" })

vim.api.nvim_set_hl(0, 'NvimTreeCursorLine', { bg = "#555b6c" })
vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { fg = "#1d1f21" })

vim.api.nvim_set_hl(0, 'WinBar', { bold = true, fg = '#cacbd4', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'WinBarError', { bold = true, italic = true, bg = 'NONE', fg = '#d95555' })

vim.api.nvim_set_hl(0, 'TelescopeSelection', { bold = true, fg = '#94dd8e', bg = '#272923' })

vim.api.nvim_set_hl(0, 'DiagnosticSignError', { fg = '#d95555', bold = true, bg = '#1e2026' })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { fg = '#cc8a5b', bold = true, bg = '#1e2026' })
vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', { fg = '#d7b66f', bold = true, bg = '#1e2026' })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { fg = '#8badcd', bold = true, bg = '#1e2026' })
--IndentBlanklineSpaceChar xxx guifg=#cfd0d7
--IndentBlanklineContextChar xxx guifg=#6e7380
--IndentBlanklineChar xxx guifg=#272932

--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { link = "Comment" })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { link = "Comment" })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { link = "Comment" })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { link = "Comment" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = '#d95555', italic = true, underline = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = '#cc8a5b', italic = true, underline = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = '#d7b66f', italic = true, underline = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = '#8badcd', italic = true, underline = true })

vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp = '#d95555', undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp = '#cc8a5b', undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp = '#d7b66f', undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp = '#8badcd', undercurl = true })

vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { strikethrough = true, fg = "#808080" })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = "#569CD6" })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'CmpItemAbbrMatch' })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = "#9CDCFE" })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = "#C586C0" })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'CmpItemKindFunction' })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'CmpItemKindKeyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'CmpItemKindKeyword' })
