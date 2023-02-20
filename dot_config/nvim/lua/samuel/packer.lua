-- https://www.youtube.com/watch?v=w7i4amO_zaE

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-commentary')
    -- use('liuchengxu/vim-which-key')
    -- use {
    -- 'AckslD/nvim-whichkey-setup.lua',
    -- requires = {'liuchengxu/vim-which-key'},
    -- }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Requirpacker not sourceded
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            -- { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require 'cmp'.setup {
                snippet = {
                    expand = function(args)
                        require 'luasnip'.lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = 'luasnip' },
                    -- more sources
                },
            }
        end
    }
    use { 'saadparwaiz1/cmp_luasnip' }

    use {
        'lervag/vimtex',
        branch = 'feat/zathura-wayland',
        opt = true,
        config = function()
            vim.g.vimtex_view_method = 'zathura_simple'
            vim.g.tex_comment_nospell = 1
        end,
        ft = 'tex'
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }


    use('xiyaowong/nvim-transparent')
    use('sainnhe/sonokai')
    use { "akinsho/toggleterm.nvim", tag = '*' }

    -- use {
    --     "smjonas/snippet-converter.nvim",
    --     -- SnippetConverter uses semantic versioning. Example: use version = "1.*" to avoid breaking changes on version 1.
    --     -- Uncomment the next line to follow stable releases only.
    --     -- tag = "*",
    --     config = function()
    --         local template = {
    --             -- name = "t1", (optionally give your template a name to refer to it in the `ConvertSnippets` command)
    --             sources = {
    --                 ultisnips = {
    --                     -- Add snippets from (plugin) folders or individual files on your runtimepath...
    --                     -- "./vim-snippets/UltiSnips",
    --                     -- "./latex-snippets/tex.snippets",
    --                     -- ...or use absolute paths on your system.
    --                     vim.fn.stdpath("config") .. "/UltiSnips",
    --                 },
    --                 -- snipmate = {
    --                 --     "vim-snippets/snippets",
    --                 -- },
    --             },
    --             output = {
    --                 -- Specify the output formats and paths
    --                 vscode_luasnip = {
    --                     "/home/samuel/.config/nvim/vscode_snippets/",
    --                 },
    --             },
    --         }

    --         require("snippet_converter").setup {
    --             templates = { template },
    --             -- To change the default settings (see configuration section in the documentation)
    --             -- settings = {},
    --         }
    --     end
    -- }
end)
