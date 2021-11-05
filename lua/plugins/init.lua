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

end)
