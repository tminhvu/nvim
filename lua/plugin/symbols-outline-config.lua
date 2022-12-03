require("symbols-outline").setup({
    wrap = true,
    keymaps = {
        goto_location = "gd",
    },
    symbols = {
        File = { icon = "", hl = "@uri" },
        Module = { icon = "", hl = "@namespace" },
        Namespace = { icon = "", hl = "@namespace" },
        Package = { icon = "", hl = "@namespace" },
        Class = { icon = "", hl = "@type" },
        Method = { icon = "", hl = "@method" },
        Property = { icon = "ﰠ", hl = "@method" },
        Field = { icon = "ﰠ", hl = "@field" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "", hl = "@type" },
        Interface = { icon = "ﰮ", hl = "@type" },
        Function = { icon = "", hl = "@function" },
        Variable = { icon = "", hl = "@constant" },
        String = { icon = "", hl = "@string" },
        Number = { icon = "#", hl = "@number" },
        Boolean = { icon = "", hl = "@boolean" },
        Array = { icon = "", hl = "@constant" },
        Object = { icon = "", hl = "@type" },
        Key = { icon = "", hl = "@type" },
        Null = { icon = "NULL", hl = "@type" },
        EnumMember = { icon = "", hl = "@field" },
        Constant = { icon = "", hl = "@constant" },
        Struct = { icon = "", hl = "@type" },
        Event = { icon = "", hl = "@type" },
        Operator = { icon = "", hl = "@operator" },
        TypeParameter = { icon = "", hl = "@parameter" }
    }
})
