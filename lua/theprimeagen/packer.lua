-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'thembones79/gruvbox.nvim',
      as = 'gruvbox',
      config = function()
          vim.cmd('colorscheme mine-pine')
      end
  })

  -- use({
  --     "folke/trouble.nvim",
  --     config = function()
  --         require("trouble").setup {
  --             icons = false,
  --             -- your configuration comes here
  --             -- or leave it empty to use the default settings
  --             -- refer to the configuration section below
  --         }
  --     end
  -- })

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,}
      use {
          "folke/which-key.nvim",
          config = function()
              vim.o.timeout = true
              vim.o.timeoutlen = 300
              require("which-key").setup {
                  -- your configuration comes here
                  -- or leave it empty to use the default settings
                  -- refer to the configuration section below
              }
          end
      }
      use("nvim-lualine/lualine.nvim")
      use("theprimeagen/harpoon")
      -- use("theprimeagen/refactoring.nvim")
      use("mbbill/undotree")
      use("numToStr/Comment.nvim")
      -- use("echasnovski/mini.animate")
      use("craftzdog/solarized-osaka.nvim")
      use("tpope/vim-fugitive")
      use("tpope/vim-surround")
      use("tpope/vim-repeat")
      use("ggandor/leap.nvim")
      use("mg979/vim-visual-multi")
      use("sbdchd/neoformat")
      use("rose-pine/neovim")
      use("thembones79/mine-pine")
      use("sainnhe/gruvbox-material")
      use("rebelot/kanagawa.nvim")
      use("Mofiqul/adwaita.nvim")
      use("arturgoms/moonbow.nvim")
      use("folke/tokyonight.nvim")
      use("ajmwagar/vim-deus")
      use {
          'jinh0/eyeliner.nvim',
          config = function()
              require'eyeliner'.setup {
                  highlight_on_key = true, -- show highlights only after keypress
                  dim = true              -- dim all other characters if set to true (recommended!)
              }
          end
      }
      -- use("nvim-treesitter/nvim-treesitter-context");
      use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {

              -- LSP Support
              {'neovim/nvim-lspconfig'},
              {'williamboman/mason.nvim'},
              {'williamboman/mason-lspconfig.nvim'},
              -- { "ttytm/mason-lspconfig.nvim", branch = "ts-ls"},

              -- Autocompletion
              {'hrsh7th/nvim-cmp'},
              {'hrsh7th/cmp-buffer'},
              {'hrsh7th/cmp-path'},
              {'saadparwaiz1/cmp_luasnip'},
              {'hrsh7th/cmp-nvim-lsp'},
              {'hrsh7th/cmp-nvim-lua'},

              -- Snippets
              {'L3MON4D3/LuaSnip'},
              {'rafamadriz/friendly-snippets'},
          }
      }

  -- use("folke/zen-mode.nvim")
  use("eandrju/cellular-automaton.nvim")
  -- use("laytan/cloak.nvim")

end)

