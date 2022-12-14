--local ensure_packer = function()
--    local fn = vim.fn
--    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
--    if fn.empty(fn.glob(install_path)) > 0 then
--        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
--        vim.cmd [[packadd packer.nvim]]
--        return true
--    end
--    return false
--end
--
--local packer_bootstrap = ensure_packer()
vim.cmd [[packadd packer.nvim]]

-- install plugins
return require('packer').startup(
    function(use)
        use {
            'wbthomason/packer.nvim', -- Package manager
            opt = true
        }

        -- improve startup time
        use { 'lewis6991/impatient.nvim' }

        -- smooth scrolls
        use { 'karb94/neoscroll.nvim',
            event = 'BufRead',
            config = function()
                require('plugin.neoscroll-config')
            end
        }

        -- color schemes

        -- use { 'kvrohit/mellow.nvim',
        --     as = 'mellow.nvim-original',
        --     opt = true,
        --     config = function()
        --         require('plugin.mellow-original-config')
        --     end
        -- }

        -- use { 'sainnhe/gruvbox-material',
        --     opt = true,
        --     config = function()
        --         require('plugin.gruvbox-material-config')
        --     end
        -- }

        use { "~/Dev/lua/darkplus.nvim",
            config = function()
                vim.cmd [[colorscheme darkplus]]
            end
        }

        use { '~/Dev/lua/vim-nightfly-colors',
            opt = true,
            config = function()
                require('plugin.nightfly-config')
            end
        }

        -- Git signs
        use {
            'lewis6991/gitsigns.nvim',
            event = 'BufRead',
            config = function()
                require('plugin.gitsigns-config')
            end
        }

        -- Add indentation guides even on blank lines
        use { 'lukas-reineke/indent-blankline.nvim',
            --event = 'UIEnter',
            after = 'nvim-treesitter',
            config = function()
                require('plugin.indent-blankline-config')
            end
        }

        -- Code symbols outline
        use { 'simrat39/symbols-outline.nvim',
            cmd = 'SymbolsOutline',
            config = function()
                require('plugin.symbols-outline-config')
            end
        }

        -- Code completion
        use { 'hrsh7th/nvim-cmp',
            --event = 'InsertEnter',
            after = 'nvim-lsp-installer',
            wants = { 'LuaSnip', 'lspkind.nvim' },
            config = function()
                require('plugin.y-cmp-config')
            end
        }

        use { 'L3MON4D3/LuaSnip', opt = true }
        use { 'onsails/lspkind.nvim',
            opt = true,
            config = function()
                require('plugin.lspkind-config')
            end
        }

        use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
        use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
        use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }
        use { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' }
        use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }

        -- LSP
        use {
            "williamboman/nvim-lsp-installer",
            event = 'UIEnter',
        }

        use {
            "neovim/nvim-lspconfig",
            after = 'cmp-nvim-lsp',
            config = function()
                require("plugin.z-lsp-config")
            end
        }

        -- Hightlight and parser
        use { 'nvim-treesitter/nvim-treesitter',
            --commit = 'e53950f646b0c11624280ee7c4eff97a9e0904f1',
            event = "BufRead",
            config = function()
                require('plugin.treesitter-config')
            end,
        }
        use { 'nvim-treesitter/playground',
            cmd = 'TSHighlightCapturesUnderCursor'
        }

        -- generate doc
        use { 'danymat/neogen',
            cmd = 'Neogen',
            config = function()
                require('plugin.neogen-config')
            end
        }

        -- color preview
        use { 'norcalli/nvim-colorizer.lua',
            cmd = { 'ColorizerAttachToBuffer' },
        }

        -- auto close brackets
        use { 'windwp/nvim-autopairs',
            event = 'InsertEnter',
            config = function()
                require('plugin.autopairs-config')
            end
        }

        -- Telescope
        use { 'nvim-telescope/telescope.nvim',
            cmd = { "Telescope" },
            wants = {
                'plenary.nvim',
                'nvim-web-devicons',
            },
            config = function()
                require('plugin.telescope-config')
            end
        }

        -- icons
        use { 'kyazdani42/nvim-web-devicons',
            opt = true,
            config = function()
                require('plugin.devicons-config')
                require('statusline-config').icon = true
            end
        }

        use {
            'nvim-lua/plenary.nvim',
            opt = true,
        }

        -- nvim tree
        use {
            'kyazdani42/nvim-tree.lua',
            cmd = { 'NvimTreeToggle' },
            wants = { 'nvim-web-devicons' },
            config = function()
                require('plugin.nvimtree-config')
            end
        }

        -- markdown preview
        use { 'davidgranstrom/nvim-markdown-preview',
            cmd = { 'MarkdownPreview' }
        }
    end
)
