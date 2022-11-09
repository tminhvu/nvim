vim.cmd [[colorscheme PaperColorSlim]]

vim.api.nvim_set_hl(0, 'Visual', { bg = "#4e4e4e" })
vim.api.nvim_set_hl(0, 'VisualNOS', { bg = "#4e4e4e" })

vim.api.nvim_set_hl(0, 'WinBar', { bold = true })
vim.api.nvim_set_hl(0, 'WinBarError', { bg = "#5f0000", bold = true, italic = true })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = "#1c1c1c", bg = "#5f8787", bold = true })

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = "#fb4934", italic = true, undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = "#fabd2f", italic = true, undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = "#8ec07c", italic = true, undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = "#83a598", italic = true, undercurl = true, bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = "#fb4934", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = "#fabd2f", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = "#8ec07c", bold = true })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = "#83a598", bold = true })

vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp = "#fb4934", undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp = "#fabd2f",undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp = "#8ec07c",undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp = "#83a598",undercurl = true })

vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = "#181a1b" })

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
