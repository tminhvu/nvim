local luasnip = require 'luasnip'

require("luasnip/loaders/from_vscode").lazy_load { paths = { "~/.config/nvim/snippets" } }

local cmp = require('cmp')

-- nvim-cmp setup
cmp.setup {
    --    view = {
    --        entries = { name = 'custom', selection_order = 'near_cursor' }
    --    },
    sorting = {
        comparators = {
            cmp.config.compare.exact,
            cmp.config.compare.locality,
            cmp.config.compare.recently_used,
            cmp.config.compare.score,
            cmp.config.compare.kind,
            cmp.config.compare.offset,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
    formatting = {
        format = require('lspkind').cmp_format({
            maxwidth = 40,
            mode = "symbol_text",
            menu = ({
                nvim_lsp = "[L]",
                luasnip = "[S]",
                buffer = "[B]",
                path = "[P]"
            })
        }),
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<C-j>'] = cmp.mapping(function(fallback)
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<C-k>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp', keyword_length = 5, max_item_count = 20 },
        { name = 'luasnip', max_item_count = 5 },
        { name = 'path', max_item_count = 10 },
        { name = 'buffer', max_item_count = 10 }
    }),
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
        { name = 'cmdline' }
    }
})
