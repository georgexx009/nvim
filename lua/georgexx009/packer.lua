vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- harpoon
  use('theprimeagen/harpoon')

  -- lps-zero
  use {
  	  'VonHeikemen/lsp-zero.nvim',
  	  branch = 'v1.x',
  	  requires = {
  		  -- LSP Support
  		  {'neovim/nvim-lspconfig'},             -- Required
  		  {'williamboman/mason.nvim'},           -- Optional
  		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

  		  -- Autocompletion
  		  {'hrsh7th/nvim-cmp'},         -- Required
  		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
  		  {'hrsh7th/cmp-buffer'},       -- Optional
  		  {'hrsh7th/cmp-path'},         -- Optional
  		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
  		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

  		  -- Snippets
  		  {'L3MON4D3/LuaSnip'},             -- Required
  		  {'rafamadriz/friendly-snippets'}, -- Optional
  	  }
    }

  -- treesitter
  use { -- Highlight, edit, and navigate code
  	  'nvim-treesitter/nvim-treesitter',
  	  run = function()
  		  pcall(require('nvim-treesitter.install').update { with_sync = true })
  	  end,
    }

  use { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  -- telescope
  use ({
    'nvim-telescope/telescope-fzf-native.nvim',
    run = "make"
  })

  use { -- Fuzzy finder
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- one dark theme
  use 'navarasu/onedark.nvim'

  -- VScode like tree file explorer
  use 'nvim-tree/nvim-tree.lua'

  -- auto complete
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
end)
