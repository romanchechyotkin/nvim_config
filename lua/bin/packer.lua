vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Gruvbox Theme
  use "ellisonleao/gruvbox.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ( 'nvim-treesitter/playground' )
  
  -- LSP 
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})
  use({'mfussenegger/nvim-dap'})
  use({'leoluz/nvim-dap-go'})
  use({'nvim-neotest/nvim-nio'})
  use({'rcarriga/nvim-dap-ui'})
  use({'sebdah/vim-delve'})

  -- Commenting Text
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Golang
  use('nvim-lua/plenary.nvim')
  use('crispgm/nvim-go')
  use('rcarriga/nvim-notify')

end)
