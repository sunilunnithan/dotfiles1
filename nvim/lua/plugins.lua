return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Development
    use {'tpope/vim-dispatch'}

    -- Git
    use {
        'tpope/vim-fugitive',
        config = function() require('config.fugitive') end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    --comment management

    use {'tpope/vim-commentary'}

    -- surround chars handling
    use {'tpope/vim-surround'}
    use {'wellle/targets.vim'}

    use {'tpope/vim-vinegar'}

    -- easy motions
    use {'easymotion/vim-easymotion'}
    use {'tpope/vim-sleuth'}


    -- color scheme
    use {'Mofiqul/vscode.nvim'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'sainnhe/gruvbox-material'}
    use {'NLKNguyen/papercolor-theme'}
    use {'folke/lsp-colors.nvim'}

    -- File Tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require("config.devicon") end
    }

    -- Formatting
    use {'sbdchd/neoformat'}

    use {'sindrets/diffview.nvim'}
    use {'unblevable/quick-scope'}
    use {
        'folke/which-key.nvim',
        config = function()
           require("which-key").setup { }
        end
    }
    use {'chrisbra/NrrwRgn'}
    use {
        'windwp/nvim-spectre',
        config = function() require("config.spectre") end
    -- use {'voldikss/vim-floaterm'}
    }
    use {
        'ruifm/gitlinker.nvim',
        config = function() require("gitlinker").setup() end
    }
    use {
        'windwp/nvim-autopairs',
        run = 'make',
        config = function() require('nvim-autopairs').setup {} end
    }


    -- Telescope
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/popup.nvim'}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-telescope/telescope-project.nvim',
            'nvim-telescope/telescope-symbols.nvim',
            'nvim-telescope/telescope-github.nvim',
            'nvim-telescope/telescope-hop.nvim'
        },
        config = function()
            require("config.telescope")
            require("config.project")
        end
    }
    use { "tami5/sqlite.lua" }
    use {
        'nvim-telescope/telescope-frecency.nvim',
        requires = {'tami5/sql.nvim'},
        config = function()
            require('telescope').load_extension('frecency')
        end
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use {
        "ahmedkhalf/project.nvim",
        config = function() require("project_nvim").setup {} end
    }

    -- Better syntax
    use {
        { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-refactor',
        'nvim-treesitter/playground',
        'lewis6991/spellsitter.nvim'
    }

    -- Status line
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function() require 'statusline' end
    }

    use {
        'TimUntersberger/neogit',
        config = function()
            require('neogit').setup {integrations = {diffview = true}}
            require('config.neogit')
        end
    }

    use {'mhinz/vim-startify'}

    -- Snippets
    use {'cstrap/python-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'golang/vscode-go'}
    use {'rust-lang/vscode-rust'}
    use {
        'hrsh7th/vim-vsnip',
        'rafamadriz/friendly-snippets',
      }

    use {'szw/vim-maximizer'}
    use {'dyng/ctrlsf.vim'}
    use {'dbeniamine/cheat.sh-vim'}
    use {'kevinhwang91/nvim-bqf'}

    --indent lines
    use { "lukas-reineke/indent-blankline.nvim",
      config = function() require('config.indentline') end
   }

   --Markdown Preview
   use {"ellisonleao/glow.nvim", run = "GlowInstall"}

   --Colorizer
   use {'norcalli/nvim-colorizer.lua'}

   -- presentation
   use {'sotte/presenting.vim'}


   -- Better profiling output for startup.
    use {
      "dstein64/vim-startuptime",
      cmd = "StartupTime",
    }

   --split join
   use {
      "AndrewRadev/splitjoin.vim",
      keys = { "gJ", "gS" },
    }

   use "tjdevries/standard.vim"
   use "tjdevries/conf.vim"
   use "tjdevries/fold_search.vim"

   -- Zen Mode
   use {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup {
            window = {
                width = 240
            }
        }
    end
    }

     -- Better language support
    use 'euclidianAce/BetterLua.vim' -- Lua
    use 'google/vim-jsonnet' -- Jsonnet
    use 'jparise/vim-graphql' -- Graphql
    use 'stephenway/postcss.vim' -- Postcss
    use 'tpope/vim-git' -- Postcss

    -- terminal handling
    use { 'kassio/neoterm',
          config = function() require('config.neoterm') end
       }
    use { 'norcalli/nvim-terminal.lua' }

    use { 'neovim/nvim-lspconfig',
          config = function() require('config.lspconfig') end
   }


end)


