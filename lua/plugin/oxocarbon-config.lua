vim.g.oxocarbon_lua_alternative_telescope = true
vim.g.oxocarbon_lua_transparent = false
vim.g.oxocarbon_lua_keep_terminal = false

vim.cmd [[colorscheme oxocarbon-lua]]

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { link = "Comment" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { link = "Comment" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { link = "Comment" })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { link = "Comment" })
