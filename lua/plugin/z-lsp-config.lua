require("nvim-lsp-installer").setup {}

-- LSP SERVER CONFIG
local opts = { noremap = true, silent = true }
local on_attach = function(client, bufnr)
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl',
        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
end

local lspconfig = require 'lspconfig'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities()

-- CLANGD for C
lspconfig.clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'src',
            '.clangd',
            'README.md',
            '.clang-tidy',
            --'.clang-format',
            'compile_commands.json',
            'compile_flags.txt',
            'configure.ac',
            '.git')(fname) or vim.fn.getcwd()
    end
    ,
    single_file_support = true
}

-- JDTLS for Java
lspconfig.jdtls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'src',
            'build.xml',
            'pom.xml',
            'README.md',
            'settings.gradle',
            'settings.gradle.kts',
            '.git')(fname) or vim.fn.getcwd()
    end,
    filetypes = { "java" },
    single_file_support = true,
    settings = {
        java = {
            completion = {
                overwrite = true
            }
        }
    },
}

-- BashLS for bash
lspconfig.bashls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "bash-language-server", "start" },
    cmd_env = {
        GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
    },
    filetypes = { "sh" },
    root_dir = function()
        return vim.fn.getcwd()
    end,
    single_file_support = true
}

-- CSSLS for CSS
lspconfig.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "scss", "less" },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git',
            'src')(fname) or vim.fn.getcwd()
    end,
    settings = {
        css = {
            validate = true
        },
        less = {
            validate = true
        },
        scss = {
            validate = true
        }
    },
    single_file_support = true
}

-- TSSERVER for Javascript and Typescript
--https://github.com/Microsoft/typescript-styled-plugin for styled components
lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    cmd = { "typescript-language-server", "--stdio" },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git',
            'src')(fname) or vim.fn.getcwd()
    end,
    single_file_support = true
}

-- ESLINT for JS diagnostics
-- run "npm install eslint" and "eslint --init" on project's root first
lspconfig.eslint.setup {
    autostart = false,
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            '.eslintrc.json',
            '.gitignore',
            'package.json',
            'README.md',
            '.git',
            'src')(fname) or vim.fn.getcwd()
    end,
    single_file_support = true
}

-- HTML for html
lspconfig.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "html" },
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    },
    opts = {
        settings = {
            html = {
                format = {
                    templating = true,
                    wrapLineLength = 120,
                    wrapAttributes = 'auto',
                },
                hover = {
                    documentation = true,
                    references = true,
                },
            },
        },
    },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git',
            'src')(fname) or vim.fn.getcwd()
    end,
    settings = {},
    single_file_support = true
}

-- For astro
lspconfig.astro.setup({
    autostart = false,
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git')(fname) or vim.fn.getcwd()
    end,
})

-- tailwind
lspconfig.tailwindcss.setup({
    autostart = false,
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git',
            'src')(fname) or vim.fn.getcwd()
    end,
})

-- JsonLS for Json
lspconfig.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'json' },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'package.json',
            '.gitignore',
            'README.md',
            '.git')(fname) or vim.fn.getcwd()
    end,
    single_file_support = true
}

lspconfig.marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            'src',
            'index.md',
            'README.md',
            '.marksman.toml',
            '.git')(fname) or vim.fn.getcwd()
    end,
    single_file_support = true
}

-- SUMNEKO_LUA for Lua
local function lib()
    if vim.fn.getcwd() == "~/.config/nvim" then
        -- Make the server aware of Neovim runtime files
        -- Make runtime files discoverable to the server
        return vim.api.nvim_get_runtime_file('', true)
    end
    return {}
end

local function run_path()
    local runtime_path = vim.split(package.path, ';')
    table.insert(runtime_path, 'lua/?.lua')
    table.insert(runtime_path, 'lua/?/init.lua')
end

lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    debounce_text_changes = 150,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = run_path(),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = lib(),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    root_dir = function(fname)
        return lspconfig.util.root_pattern(
            '.gitignore',
            'README.md',
            '.luarc.json',
            'src',
            'main.lua',
            'init.lua',
            '.git')(fname) or vim.fn.getcwd()
    end,
    single_file_support = true
}
