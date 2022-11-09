--vim.g.mellow_italic_comments = true --Make comments italic
--vim.g.mellow_italic_keywords = false --Make keywords italic
--vim.g.mellow_italic_booleans = false --Make booleans italic
--vim.g.mellow_italic_functions = false --Make functions italic
--vim.g.mellow_italic_variables = false --Make variables italic
--vim.g.mellow_bold_comments = false --Make comments bold
vim.g.mellow_bold_keywords = true --Make keywords bold
vim.g.mellow_bold_booleans = true --Make booleans bold
vim.g.mellow_bold_functions = true --Make functions bold
--vim.g.mellow_bold_variables = false --Make variables bold
--vim.g.mellow_transparent = false --Disable background color

vim.cmd [[colorscheme mellow]]

vim.api.nvim_set_hl(0, 'Visual', { bg = "#3e3e43" })
vim.api.nvim_set_hl(0, 'VisualNOS', { bg = "#4e4e4e" })

vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = "#ea83a5" })
vim.api.nvim_set_hl(0, 'TelescopeSelection', { link = "CursorLine" })

vim.api.nvim_set_hl(0, 'WinBar', { bold = true })
vim.api.nvim_set_hl(0, 'WinBarError', { fg = "#ea83a5", bold = true, italic = true })
vim.api.nvim_set_hl(0, 'StatusLine', { bg = "#1b1b1d", fg = "#c1c0d4", bold = true })

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = "#757581", undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = "#757581", undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = "#757581", undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = "#757581", undercurl = true, bold = true })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = "#ea83a5", italic = true, undercurl = true, bold = true })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = "#e6b99d", italic = true, undercurl = true, bold = true })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = "#90b99f", italic = true, undercurl = true, bold = true })
--vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = "#aca1cf", italic = true, undercurl = true, bold = true })

vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = "#ea83a5", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = "#e6b99d", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = "#90b99f", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = "#aca1cf", bold = true })
--
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp = "#ea83a5", undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp = "#e6b99d", undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp = "#90b99f", undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp = "#aca1cf", undercurl = true })

vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = "#181a1b" })

vim.api.nvim_set_hl(0, 'rainbowcol1', { fg = "#b16286" })
vim.api.nvim_set_hl(0, 'rainbowcol3', { fg = "#458588" })
vim.api.nvim_set_hl(0, 'rainbowcol6', { fg = "#ea83a5" })
vim.api.nvim_set_hl(0, 'rainbowcol7', { fg = "#d65d0e" })

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
