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
require('packer').startup(
    function(use)
        use {
            'wbthomason/packer.nvim', -- Package manager
            opt = true
        }

        -- improve startup time
        use 'lewis6991/impatient.nvim'

        use { 'karb94/neoscroll.nvim',
            opt = true,
            event = 'CursorMoved',
            config = function()
                require('plugin.neoscroll-config')
            end
        }

        -- use { 'Yazeed1s/minimal.nvim',
        --     opt = true,
        --     config = function()
        --         require('plugin.minimal-config')
        --     end
        -- }

        use { 'EdenEast/nightfox.nvim',
             opt = true,
            config = function()
                require('plugin.nightfox-config')
            end
        }

        use { 'tminhvu/mellow.nvim',
            config = function()
                require('plugin.mellow-config-tminhvu')
            end
        }

        use { 'kvrohit/mellow.nvim',
            as = 'mellow.nvim-original',
            opt = true,
            config = function()
                require('plugin.mellow-config')
            end
        }
               -- use { "ellisonleao/gruvbox.nvim",
        --     opt = true,
        --     --after = 'nvim-treesitter',
        --     config = function()
        --         require('plugin.gruvbox-config')
        --     end
        -- }

      --  use { 'Mofiqul/vscode.nvim',
      --   --   opt = true,
      --      --after = 'nvim-treesitter',
      --      config = function()
      --          require('plugin.vscode-config')
      --      end
      --  }

        --use { 'pappasam/papercolor-theme-slim',
        --    config = function()
        --        require('plugin.papercolor-config')
        --    end
        --}

        -- Add indentation guides even on blank lines
        use { 'lukas-reineke/indent-blankline.nvim',
            --event = 'UIEnter',
            after = 'nvim-treesitter',
            --opt = true,
            config = function()
                require('plugin.indent-blankline-config')
            end
        }

        -- Code completion
        use { 'hrsh7th/nvim-cmp',
            event = 'InsertEnter',
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

        -- LSP
        use {
            "williamboman/nvim-lsp-installer",
            event = 'VimEnter'
        }

        use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-lsp-installer' }
        use {
            "neovim/nvim-lspconfig",
            after = 'cmp-nvim-lsp',
            config = function()
                require("plugin.z-lsp-config")
            end
        }

        -- Hightlight matching brackets
        use { 'p00f/nvim-ts-rainbow', after = 'nvim-treesitter' }
        -- Hightlight and parser
        use { 'nvim-treesitter/nvim-treesitter',
            --commit = 'e53950f646b0c11624280ee7c4eff97a9e0904f1',
            event = "VimEnter",
            config = function()
                require('plugin.treesitter-config')
            end,
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
            ft = { 'html', 'css' },
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
