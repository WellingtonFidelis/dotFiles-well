return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Nord theme
	use 'shaunsingh/nord.nvim'

	-- Tree sitter
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  -- Lua line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Buffer line
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- Nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- Nvim TS Auto tag
  use {'windwp/nvim-ts-autotag'}

  -- Nvim TS Rainbow
  use {'p00f/nvim-ts-rainbow'}

  -- Nvim Auto Pairs
  use {'windwp/nvim-autopairs'}

  -- Nvim Which Key
  use {'folke/which-key.nvim'}

  -- Nvim Telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Nvim CMD
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- LSP kind
  use 'onsails/lspkind-nvim'

end)
